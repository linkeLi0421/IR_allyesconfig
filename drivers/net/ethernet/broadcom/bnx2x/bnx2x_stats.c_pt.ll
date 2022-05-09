; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.153 = type { ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.bnx2x_fp_stats = type { %struct.tstorm_per_queue_stats, %struct.ustorm_per_queue_stats, %struct.xstorm_per_queue_stats, %struct.bnx2x_eth_q_stats, %struct.bnx2x_eth_q_stats_old }
%struct.tstorm_per_queue_stats = type { %struct.regpair, i32, i32, %struct.regpair, i32, i32, %struct.regpair, i32, i32, i16, i16, i32 }
%struct.regpair = type { i32, i32 }
%struct.ustorm_per_queue_stats = type { %struct.regpair, %struct.regpair, %struct.regpair, i32, i32, i32, i32, %struct.regpair, i32, i32 }
%struct.xstorm_per_queue_stats = type { %struct.regpair, %struct.regpair, %struct.regpair, i32, i32, i32, i32 }
%struct.bnx2x_eth_q_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_eth_q_stats_old = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.stats_query_header = type { i8, i8, i16, i32, %struct.regpair }
%struct.bnx2x_fw_stats_req = type { %struct.stats_query_header, [19 x %struct.stats_query_entry] }
%struct.stats_query_entry = type { i8, i8, i16, i32, %struct.regpair }
%struct.bnx2x_fastpath = type { ptr, %struct.napi_struct, %union.host_hc_status_block, ptr, ptr, i32, i32, i32, i32, i32, i8, [3 x ptr], ptr, ptr, ptr, i32, ptr, i32, ptr, i32, [16 x i64], i32, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, ptr, ptr, [24 x i8], %struct.bnx2x_alloc_pool }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bnx2x_alloc_pool = type { ptr, i32 }
%struct.bnx2x_fw_stats_data = type { %struct.stats_counter, %struct.per_port_stats, %struct.per_pf_stats, %struct.fcoe_statistics_params, [1 x %struct.per_queue_stats] }
%struct.stats_counter = type { i16, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i32 }
%struct.per_port_stats = type { %struct.tstorm_per_port_stats }
%struct.tstorm_per_port_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.per_pf_stats = type { %struct.tstorm_per_pf_stats }
%struct.tstorm_per_pf_stats = type { %struct.regpair }
%struct.fcoe_statistics_params = type { %struct.fcoe_tx_stat_params, %struct.fcoe_rx_stat_params_section0, %struct.fcoe_rx_stat_params_section1, %struct.fcoe_rx_stat_params_section2 }
%struct.fcoe_tx_stat_params = type { i32, i32, i32, i32 }
%struct.fcoe_rx_stat_params_section0 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section1 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.per_queue_stats = type { %struct.tstorm_per_queue_stats, %struct.ustorm_per_queue_stats, %struct.xstorm_per_queue_stats }
%struct.afex_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bnx2x_stats_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015bnx2x: [%s:%d(%s)]Unlikely stats' lock contention [event %d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_stats_handle\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_stats_handle._entry_ptr = internal global ptr @bnx2x_stats_handle._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@bnx2x_stats_handle._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013bnx2x: [%s:%d(%s)]Failed to take stats lock [event %d]\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_stats_handle._entry_ptr.6 = internal global ptr @bnx2x_stats_handle._entry.4, section ".printk_index", align 4
@bnx2x_stats_stm = internal constant { [2 x [4 x %struct.anon.153]], [32 x i8] } { [2 x [4 x %struct.anon.153]] [[4 x %struct.anon.153] [%struct.anon.153 { ptr @bnx2x_stats_pmf_update, i32 0 }, %struct.anon.153 { ptr @bnx2x_stats_start, i32 1 }, %struct.anon.153 { ptr @bnx2x_stats_do_nothing, i32 0 }, %struct.anon.153 { ptr @bnx2x_stats_do_nothing, i32 0 }], [4 x %struct.anon.153] [%struct.anon.153 { ptr @bnx2x_stats_pmf_start, i32 1 }, %struct.anon.153 { ptr @bnx2x_stats_restart, i32 1 }, %struct.anon.153 { ptr @bnx2x_stats_update, i32 1 }, %struct.anon.153 { ptr @bnx2x_stats_stop, i32 0 }]], [32 x i8] zeroinitializer }, align 32
@bnx2x_stats_handle._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015bnx2x: [%s:%d(%s)]state %d -> event %d -> state %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_stats_handle._entry_ptr.9 = internal global ptr @bnx2x_stats_handle._entry.7, section ".printk_index", align 4
@bnx2x_stats_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]port_stx 0x%x  func_stx 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_stats_init\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_stats_init._entry_ptr = internal global ptr @bnx2x_stats_init._entry, section ".printk_index", align 4
@bnx2x_stats_safe_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013bnx2x: [%s:%d(%s)]Failed to take statistics lock for safe execution\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_stats_safe_exec\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_stats_safe_exec._entry_ptr = internal global ptr @bnx2x_stats_safe_exec._entry, section ".printk_index", align 4
@bnx2x_stats_safe_exec._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013bnx2x: [%s:%d(%s)]Failed to wait for stats pending to clear [possibly FW is stuck]\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_stats_safe_exec._entry_ptr.16 = internal global ptr @bnx2x_stats_safe_exec._entry.14, section ".printk_index", align 4
@bnx2x_stats_pmf_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013bnx2x: [%s:%d(%s)]BUG!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_stats_pmf_update\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_stats_pmf_update._entry_ptr = internal global ptr @bnx2x_stats_pmf_update._entry, section ".printk_index", align 4
@dmae_reg_go_c = external dso_local local_unnamed_addr constant [0 x i32], align 4
@bnx2x_port_stats_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_port_stats_init\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_port_stats_init._entry_ptr = internal global ptr @bnx2x_port_stats_init._entry, section ".printk_index", align 4
@bnx2x_storm_stats_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015bnx2x: [%s:%d(%s)]Sending statistics ramrod %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_storm_stats_post\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_post._entry_ptr = internal global ptr @bnx2x_storm_stats_post._entry, section ".printk_index", align 4
@bnx2x_dp_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [182 x i8], [42 x i8] } { [182 x i8] c"\015bnx2x: [%s:%d(%s)]dumping stats:\0Afw_stats_req\0A    hdr\0A        cmd_num %d\0A        reserved0 %d\0A        drv_stats_counter %d\0A        reserved1 %d\0A        stats_counters_addrs %x %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2x_dp_stats\00", [17 x i8] zeroinitializer }, align 32
@bnx2x_dp_stats._entry_ptr = internal global ptr @bnx2x_dp_stats._entry, section ".printk_index", align 4
@bnx2x_dp_stats._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"\015bnx2x: [%s:%d(%s)]query[%d]\0A              kind %d\0A              index %d\0A              funcID %d\0A              reserved %d\0A              address %x %x\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_dp_stats._entry_ptr.26 = internal global ptr @bnx2x_dp_stats._entry.24, section ".printk_index", align 4
@bnx2x_stats_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013bnx2x: [%s:%d(%s)]storm stats were not updated for 3 times\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_stats_update\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_stats_update._entry_ptr = internal global ptr @bnx2x_stats_update._entry, section ".printk_index", align 4
@bnx2x_stats_update._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2x: [%s:%d(%s)]driver assert\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_stats_update._entry_ptr.31 = internal global ptr @bnx2x_stats_update._entry.29, section ".printk_index", align 4
@bnx2x_stats_update.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bnx2x\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"brb drops %u  brb truncate %u\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2x_hw_stats_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015bnx2x: [%s:%d(%s)]stats updated by DMAE but no MAC active\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_hw_stats_update\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_hw_stats_update._entry_ptr = internal global ptr @bnx2x_hw_stats_update._entry, section ".printk_index", align 4
@bnx2x_hw_stats_update._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2x: [%s:%d(%s)]Unknown MAC type\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_hw_stats_update._entry_ptr.38 = internal global ptr @bnx2x_hw_stats_update._entry.36, section ".printk_index", align 4
@bnx2x_hw_stats_update._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2x: [%s:%d(%s)]NIG timer max (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_hw_stats_update._entry_ptr.41 = internal global ptr @bnx2x_hw_stats_update._entry.39, section ".printk_index", align 4
@bnx2x_port_stats_base_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.42, ptr @.str.2, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_port_stats_base_init\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_port_stats_base_init._entry_ptr = internal global ptr @bnx2x_port_stats_base_init._entry, section ".printk_index", align 4
@bnx2x_func_stats_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.43, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_func_stats_init\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_func_stats_init._entry_ptr = internal global ptr @bnx2x_func_stats_init._entry, section ".printk_index", align 4
@bnx2x_stats_comp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013bnx2x: [%s:%d(%s)]timeout waiting for stats finished\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_stats_comp\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_stats_comp._entry_ptr = internal global ptr @bnx2x_stats_comp._entry, section ".printk_index", align 4
@bnx2x_storm_stats_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015bnx2x: [%s:%d(%s)]queue[%d]: ucast_sent 0x%x, bcast_sent 0x%x mcast_sent 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_storm_stats_update\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_update._entry_ptr = internal global ptr @bnx2x_storm_stats_update._entry, section ".printk_index", align 4
@bnx2x_storm_stats_update._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015bnx2x: [%s:%d(%s)]---------------\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_update._entry_ptr.50 = internal global ptr @bnx2x_storm_stats_update._entry.48, section ".printk_index", align 4
@bnx2x_storm_stats_validate_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015bnx2x: [%s:%d(%s)]stats not updated by xstorm  xstorm counter (0x%x) != stats_counter (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bnx2x_storm_stats_validate_counters\00", [60 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_validate_counters._entry_ptr = internal global ptr @bnx2x_storm_stats_validate_counters._entry, section ".printk_index", align 4
@bnx2x_storm_stats_validate_counters._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015bnx2x: [%s:%d(%s)]stats not updated by ustorm  ustorm counter (0x%x) != stats_counter (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_validate_counters._entry_ptr.55 = internal global ptr @bnx2x_storm_stats_validate_counters._entry.53, section ".printk_index", align 4
@bnx2x_storm_stats_validate_counters._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015bnx2x: [%s:%d(%s)]stats not updated by cstorm  cstorm counter (0x%x) != stats_counter (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_validate_counters._entry_ptr.58 = internal global ptr @bnx2x_storm_stats_validate_counters._entry.56, section ".printk_index", align 4
@bnx2x_storm_stats_validate_counters._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015bnx2x: [%s:%d(%s)]stats not updated by tstorm  tstorm counter (0x%x) != stats_counter (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_storm_stats_validate_counters._entry_ptr.61 = internal global ptr @bnx2x_storm_stats_validate_counters._entry.59, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [17 x i64] [i64 15, i64 16, i64 5693, i64 5694, i64 5695, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5803, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.66 = internal global [9 x i64] [i64 7, i64 16, i64 5693, i64 5770, i64 5774, i64 5797, i64 5801, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.67 = internal global [10 x i64] [i64 8, i64 16, i64 5694, i64 5695, i64 5773, i64 5793, i64 5794, i64 5796, i64 5803, i64 5805]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1384, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1387, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"bnx2x_stats_stm\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1353, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1399, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1622, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1984, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1993, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 229, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 278, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 138, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 90, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 106, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1235, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1236, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1257, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 830, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 835, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 871, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1410, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 496, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 207, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 961, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 965, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 890, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 897, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 904, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [53 x i8] c"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 911, i32 3 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @bnx2x_dp_stats._entry, ptr @bnx2x_dp_stats._entry.24, ptr @bnx2x_dp_stats._entry_ptr, ptr @bnx2x_dp_stats._entry_ptr.26, ptr @bnx2x_func_stats_init._entry, ptr @bnx2x_func_stats_init._entry_ptr, ptr @bnx2x_hw_stats_update._entry, ptr @bnx2x_hw_stats_update._entry.36, ptr @bnx2x_hw_stats_update._entry.39, ptr @bnx2x_hw_stats_update._entry_ptr, ptr @bnx2x_hw_stats_update._entry_ptr.38, ptr @bnx2x_hw_stats_update._entry_ptr.41, ptr @bnx2x_port_stats_base_init._entry, ptr @bnx2x_port_stats_base_init._entry_ptr, ptr @bnx2x_port_stats_init._entry, ptr @bnx2x_port_stats_init._entry_ptr, ptr @bnx2x_stats_comp._entry, ptr @bnx2x_stats_comp._entry_ptr, ptr @bnx2x_stats_handle._entry, ptr @bnx2x_stats_handle._entry.4, ptr @bnx2x_stats_handle._entry.7, ptr @bnx2x_stats_handle._entry_ptr, ptr @bnx2x_stats_handle._entry_ptr.6, ptr @bnx2x_stats_handle._entry_ptr.9, ptr @bnx2x_stats_init._entry, ptr @bnx2x_stats_init._entry_ptr, ptr @bnx2x_stats_pmf_update._entry, ptr @bnx2x_stats_pmf_update._entry_ptr, ptr @bnx2x_stats_safe_exec._entry, ptr @bnx2x_stats_safe_exec._entry.14, ptr @bnx2x_stats_safe_exec._entry_ptr, ptr @bnx2x_stats_safe_exec._entry_ptr.16, ptr @bnx2x_stats_update._entry, ptr @bnx2x_stats_update._entry.29, ptr @bnx2x_stats_update._entry_ptr, ptr @bnx2x_stats_update._entry_ptr.31, ptr @bnx2x_storm_stats_post._entry, ptr @bnx2x_storm_stats_post._entry_ptr, ptr @bnx2x_storm_stats_update._entry, ptr @bnx2x_storm_stats_update._entry.48, ptr @bnx2x_storm_stats_update._entry_ptr, ptr @bnx2x_storm_stats_update._entry_ptr.50, ptr @bnx2x_storm_stats_validate_counters._entry, ptr @bnx2x_storm_stats_validate_counters._entry.53, ptr @bnx2x_storm_stats_validate_counters._entry.56, ptr @bnx2x_storm_stats_validate_counters._entry.59, ptr @bnx2x_storm_stats_validate_counters._entry_ptr, ptr @bnx2x_storm_stats_validate_counters._entry_ptr.55, ptr @bnx2x_storm_stats_validate_counters._entry_ptr.58, ptr @bnx2x_storm_stats_validate_counters._entry_ptr.61, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @bnx2x_stats_stm, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_handle._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_stm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_handle._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_safe_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_safe_exec._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_pmf_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_port_stats_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dp_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 182, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dp_stats._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_update._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_hw_stats_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_hw_stats_update._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_hw_stats_update._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_port_stats_base_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_func_stats_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_stats_comp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_update._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_validate_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_validate_counters._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_validate_counters._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_storm_stats_validate_counters._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_stats_handle(ptr noundef %bp, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_state = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 142
  %0 = ptrtoint ptr %stats_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_state, align 8
  %panic = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 47
  %2 = ptrtoint ptr %panic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %panic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !128

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_lock = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 143
  %call = tail call i32 @down_trylock(ptr noundef %stats_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.end50_crit_edge, label %if.then4

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %do.body

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then4
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end21_crit_edge, label %do.end, !prof !128

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool16.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool16.not, ptr @.str.3, ptr %7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1385, ptr noundef nonnull %spec.select, i32 noundef %event) #10
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %call23 = tail call i32 @down_timeout(ptr noundef %stats_lock, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end21.if.end50_crit_edge, label %do.end35, !prof !128

do.end21.if.end50_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end35:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev37 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev37, align 4
  %tobool38.not = icmp eq ptr %9, null
  %spec.select117 = select i1 %tobool38.not, ptr @.str.3, ptr %9
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1388, ptr noundef nonnull %spec.select117, i32 noundef %event) #10
  br label %cleanup

if.end50:                                         ; preds = %do.end21.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %arrayidx51 = getelementptr [2 x [4 x %struct.anon.153]], ptr @bnx2x_stats_stm, i32 0, i32 %1, i32 %event
  %10 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx51, align 4
  tail call void %11(ptr noundef %bp) #7
  %next_state = getelementptr [2 x [4 x %struct.anon.153]], ptr @bnx2x_stats_stm, i32 0, i32 %1, i32 %event, i32 1
  %12 = ptrtoint ptr %next_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_state, align 4
  %14 = ptrtoint ptr %stats_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %stats_state, align 8
  tail call void @up(ptr noundef %stats_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp56.not = icmp eq i32 %event, 2
  br i1 %cmp56.not, label %lor.lhs.false, label %if.end50.do.body61_crit_edge

if.end50.do.body61_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

lor.lhs.false:                                    ; preds = %if.end50
  %msg_enable57 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %15 = ptrtoint ptr %msg_enable57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable57, align 8
  %and58 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body61_crit_edge

lor.lhs.false.do.body61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body61:                                        ; preds = %lor.lhs.false.do.body61_crit_edge, %if.end50.do.body61_crit_edge
  %msg_enable62 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %17 = ptrtoint ptr %msg_enable62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable62, align 8
  %and63 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body61.cleanup_crit_edge, label %do.end74, !prof !128

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end74:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %dev76 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %19 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev76, align 4
  %tobool77.not = icmp eq ptr %20, null
  %spec.select118 = select i1 %tobool77.not, ptr @.str.3, ptr %20
  %21 = ptrtoint ptr %stats_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats_state, align 8
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1400, ptr noundef nonnull %spec.select118, i32 noundef %1, i32 noundef %event, i32 noundef %22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %do.body61.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end35, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_memset_stats(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42 = icmp sgt i32 %1, 0
  br i1 %cmp42, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %num_cnic_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %fp_stats3 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 2
  %stats_init = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 152
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %14, %for.inc.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %num_cnic_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_cnic_queues, align 4
  %sub = sub i32 %2, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.043, i32 %sub)
  %cmp2 = icmp eq i32 %i.043, %sub
  br i1 %cmp2, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %7 = ptrtoint ptr %fp_stats3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fp_stats3, align 8
  %arrayidx = getelementptr %struct.bnx2x_fp_stats, ptr %8, i32 %i.043
  %9 = call ptr @memset(ptr %arrayidx, i32 0, i32 152)
  %10 = ptrtoint ptr %stats_init to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stats_init, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.else.for.inc_crit_edge, label %if.then5

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %eth_q_stats = getelementptr %struct.bnx2x_fp_stats, ptr %8, i32 %i.043, i32 3
  %12 = call ptr @memset(ptr %eth_q_stats, i32 0, i32 360)
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.else.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %13 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_queues, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36
  %17 = call ptr @memset(ptr %stats, i32 0, i32 92)
  %stats_init7 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 152
  %18 = ptrtoint ptr %stats_init7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stats_init7, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %for.end.if.end10_crit_edge, label %if.then9

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %eth_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147
  %20 = call ptr @memset(ptr %eth_stats, i32 0, i32 652)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.end.if.end10_crit_edge
  %stats_state = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 142
  %21 = ptrtoint ptr %stats_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %stats_state, align 8
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not = icmp eq i32 %23, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true12:                                  ; preds = %if.end10
  %port_stx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %24 = ptrtoint ptr %port_stx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %land.lhs.true12.if.end16_crit_edge, label %if.end.i

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %land.lhs.true12
  %slowpath.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %26 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slowpath.i, align 4
  %stats_comp1.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 9
  %executer_idx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 145
  %dmae10.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %executer_idx.i, align 4
  %call12.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 0, i8 noundef zeroext 2, i1 noundef zeroext true, i8 noundef zeroext 0) #7
  %29 = ptrtoint ptr %dmae10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call12.i, ptr %dmae10.i, align 4
  %slowpath_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %30 = ptrtoint ptr %slowpath_mapping.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slowpath_mapping.i, align 8
  %add.i = add i32 %31, 3964
  %src_addr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 1
  %32 = ptrtoint ptr %src_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %src_addr_lo.i, align 4
  %src_addr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 2
  %33 = ptrtoint ptr %src_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %src_addr_hi.i, align 4
  %34 = ptrtoint ptr %port_stx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_stx, align 4
  %shr20.i = lshr i32 %35, 2
  %dst_addr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 3
  %36 = ptrtoint ptr %dst_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr20.i, ptr %dst_addr_lo.i, align 4
  %dst_addr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 4
  %37 = ptrtoint ptr %dst_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dst_addr_hi.i, align 4
  %shmem2_base.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %38 = ptrtoint ptr %shmem2_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shmem2_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.then23.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.then23.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %regview.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %40 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regview.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %39
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !130
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %43)
  %cmp.i.i = icmp ugt i32 %43, 312
  br i1 %cmp.i.i, label %if.end21.i.i, label %land.lhs.true.i.i.if.then23.i.i_crit_edge

land.lhs.true.i.i.if.then23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true.i.i
  %44 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regview.i.i, align 8
  %46 = ptrtoint ptr %shmem2_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %shmem2_base.i.i, align 4
  %add9.i.i = add i32 %47, 312
  %add.ptr10.i.i = getelementptr i8, ptr %45, i32 %add9.i.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not.i.i = icmp eq i32 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %conv.i.i = trunc i32 %49 to i16
  %50 = tail call i16 @llvm.umin.i16(i16 %conv.i.i, i16 648) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool22.not73.i.i = icmp eq i16 %50, 0
  %tobool22.not.i.i = select i1 %tobool14.not.i.i, i1 true, i1 %tobool22.not73.i.i
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.then23.i.i_crit_edge, label %if.end21.i.i.bnx2x_port_stats_base_init.exit_crit_edge

if.end21.i.i.bnx2x_port_stats_base_init.exit_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_port_stats_base_init.exit

if.end21.i.i.if.then23.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i.if.then23.i.i_crit_edge, %land.lhs.true.i.i.if.then23.i.i_crit_edge, %if.end.i.if.then23.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool24.not.i.i, i16 624, i16 640
  br label %bnx2x_port_stats_base_init.exit

bnx2x_port_stats_base_init.exit:                  ; preds = %if.then23.i.i, %if.end21.i.i.bnx2x_port_stats_base_init.exit_crit_edge
  %res.2.i.i = phi i16 [ %50, %if.end21.i.i.bnx2x_port_stats_base_init.exit_crit_edge ], [ %spec.select.i.i, %if.then23.i.i ]
  %53 = lshr i16 %res.2.i.i, 2
  %len.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 6
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %len.i, align 2
  %55 = ptrtoint ptr %slowpath_mapping.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slowpath_mapping.i, align 8
  %add23.i = add i32 %56, 3432
  %comp_addr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 7
  %57 = ptrtoint ptr %comp_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add23.i, ptr %comp_addr_lo.i, align 4
  %comp_addr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 8
  %58 = ptrtoint ptr %comp_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %comp_addr_hi.i, align 4
  %comp_val.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %27, i32 0, i32 8, i32 0, i32 9
  %59 = ptrtoint ptr %comp_val.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1624297646, ptr %comp_val.i, align 4
  %60 = ptrtoint ptr %stats_comp1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %stats_comp1.i, align 4
  tail call fastcc void @bnx2x_hw_stats_post(ptr noundef %bp) #7
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp) #7
  br label %if.end16

if.end16:                                         ; preds = %bnx2x_port_stats_base_init.exit, %land.lhs.true12.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %61 = ptrtoint ptr %stats_init7 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %stats_init7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_stats_init(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pfid, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  %2 = lshr i32 %conv, 1
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %common, align 8
  %shr6 = lshr i32 %4, 16
  %shr6.off = add nsw i32 %shr6, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr6.off)
  %switch = icmp ult i32 %shr6.off, 3
  br i1 %switch, label %entry.lor.end.thread_crit_edge, label %lor.end

entry.lor.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end:                                          ; preds = %entry
  %chip_port_mode = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 9
  %5 = ptrtoint ptr %chip_port_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chip_port_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp21 = icmp eq i8 %6, 0
  br i1 %cmp21, label %lor.end.lor.end.thread_crit_edge, label %lor.end._crit_edge

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %7

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %entry.lor.end.thread_crit_edge
  br label %7

7:                                                ; preds = %lor.end.thread, %lor.end._crit_edge
  %8 = phi i32 [ 2, %lor.end.thread ], [ 1, %lor.end._crit_edge ]
  %mul = mul nuw nsw i32 %8, %2
  %add = add nuw nsw i32 %mul, %and
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and23 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %if.end, label %.cleanup_crit_edge

.cleanup_crit_edge:                               ; preds = %7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %7
  %stats_pending = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 45
  %11 = ptrtoint ptr %stats_pending to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %stats_pending, align 8
  %executer_idx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 145
  %12 = ptrtoint ptr %executer_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %executer_idx, align 4
  %stats_counter = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 146
  %13 = ptrtoint ptr %stats_counter to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %stats_counter, align 8
  %and25 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %14 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regview, align 8
  %shmem_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 2
  %16 = ptrtoint ptr %shmem_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shmem_base, align 8
  %18 = shl nuw nsw i32 %and, 4
  %19 = or i32 %18, 1640
  %add29 = add i32 %19, %17
  %add.ptr = getelementptr i8, ptr %15, i32 %add29
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !130
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %port_stx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %22 = ptrtoint ptr %port_stx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %port_stx, align 4
  %23 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regview, align 8
  %25 = ptrtoint ptr %shmem_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %shmem_base, align 8
  %27 = mul nuw nsw i32 %add, 44
  %28 = add nuw nsw i32 %27, 1680
  %add37 = add i32 %28, %26
  %add.ptr38 = getelementptr i8, ptr %24, i32 %add37
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #7, !srcloc !130
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port_stx43 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %31 = ptrtoint ptr %port_stx43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %port_stx43, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then27
  %.sink = phi i32 [ %30, %if.then27 ], [ 0, %if.else ]
  %32 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 65
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %32, align 4
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and46 = and i32 %35, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body.do.end62_crit_edge, label %do.end, !prof !128

do.body.do.end62_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %tobool53.not = icmp eq ptr %37, null
  %spec.select = select i1 %tobool53.not, ptr @.str.3, ptr %37
  %port_stx57 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %38 = ptrtoint ptr %port_stx57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_stx57, align 4
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %32, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1623, ptr noundef nonnull %spec.select, i32 noundef %39, i32 noundef %41) #10
  br label %do.end62

do.end62:                                         ; preds = %do.end, %do.body.do.end62_crit_edge
  %stats_init = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 152
  %42 = ptrtoint ptr %stats_init to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stats_init, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool63.not = icmp eq i8 %43, 0
  br i1 %tobool63.not, label %land.lhs.true, label %do.end62.if.end71_crit_edge

do.end62.if.end71_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true:                                    ; preds = %do.end62
  %port64 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %44 = ptrtoint ptr %port64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool65.not = icmp eq i32 %45, 0
  br i1 %tobool65.not, label %land.lhs.true.if.end71_crit_edge, label %land.lhs.true66

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true66:                                  ; preds = %land.lhs.true
  %port_stx68 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %46 = ptrtoint ptr %port_stx68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_stx68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool69.not = icmp eq i32 %47, 0
  br i1 %tobool69.not, label %land.lhs.true66.if.end71_crit_edge, label %if.then70

land.lhs.true66.if.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bnx2x_stats_handle(ptr noundef %bp, i32 noundef 0)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true66.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %do.end62.if.end71_crit_edge
  %48 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pfid, align 1
  %50 = and i8 %49, 1
  %and74 = zext i8 %50 to i32
  %old_nig_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7
  %51 = call ptr @memset(ptr %old_nig_stats, i32 0, i32 72)
  %regview78 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %52 = ptrtoint ptr %regview78 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regview78, align 8
  %mul79 = mul nuw nsw i32 %and74, 56
  %add80 = add nuw nsw i32 %mul79, 67056
  %add.ptr81 = getelementptr i8, ptr %53, i32 %add80
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #7, !srcloc !130
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %56 = ptrtoint ptr %old_nig_stats to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %old_nig_stats, align 8
  %57 = ptrtoint ptr %regview78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regview78, align 8
  %add91 = add nuw nsw i32 %mul79, 67064
  %add.ptr92 = getelementptr i8, ptr %58, i32 %add91
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #7, !srcloc !130
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %brb_truncate = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 2
  %61 = ptrtoint ptr %brb_truncate to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %brb_truncate, align 8
  %62 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %common, align 8
  %shr100 = lshr i32 %63, 16
  %trunc = trunc i32 %shr100 to i16
  %64 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.body188 [
    i16 5770, label %if.end71.if.end205_crit_edge
    i16 5797, label %if.end71.if.end205_crit_edge286
    i16 5801, label %if.end71.if.end205_crit_edge287
    i16 5774, label %if.end71.if.end205_crit_edge288
    i16 5806, label %if.end71.if.end205_crit_edge289
    i16 5807, label %if.end71.if.end205_crit_edge290
    i16 5693, label %if.end71.if.end205_crit_edge291
    i16 5694, label %if.end71.if.end205_crit_edge292
    i16 5695, label %if.end71.if.end205_crit_edge293
    i16 5793, label %if.end71.if.end205_crit_edge294
    i16 5794, label %if.end71.if.end205_crit_edge295
    i16 5773, label %if.end71.if.end205_crit_edge296
    i16 5796, label %if.end71.if.end205_crit_edge297
    i16 5803, label %if.end71.if.end205_crit_edge298
    i16 5805, label %if.end71.if.end205_crit_edge299
  ]

if.end71.if.end205_crit_edge299:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge298:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge297:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge296:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge295:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge294:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge293:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge292:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge291:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge290:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge289:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge288:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge287:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge286:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end71.if.end205_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

do.body188:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %mul189 = mul nuw nsw i32 %and74, 80
  %add190 = add nuw nsw i32 %mul189, 67408
  tail call void @bnx2x_read_dmae(ptr noundef %bp, i32 noundef %add190, i32 noundef 2) #7
  %65 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 14
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %66 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %slowpath, align 4
  %wb_data = getelementptr inbounds %struct.bnx2x_slowpath, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %wb_data to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %wb_data, align 4
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %65, align 8
  %add197 = add nuw nsw i32 %mul189, 67424
  tail call void @bnx2x_read_dmae(ptr noundef %bp, i32 noundef %add197, i32 noundef 2) #7
  %71 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 15
  %72 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %slowpath, align 4
  %wb_data201 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %wb_data201 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %wb_data201, align 4
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %71, align 8
  br label %if.end205

if.end205:                                        ; preds = %do.body188, %if.end71.if.end205_crit_edge, %if.end71.if.end205_crit_edge286, %if.end71.if.end205_crit_edge287, %if.end71.if.end205_crit_edge288, %if.end71.if.end205_crit_edge289, %if.end71.if.end205_crit_edge290, %if.end71.if.end205_crit_edge291, %if.end71.if.end205_crit_edge292, %if.end71.if.end205_crit_edge293, %if.end71.if.end205_crit_edge294, %if.end71.if.end205_crit_edge295, %if.end71.if.end205_crit_edge296, %if.end71.if.end205_crit_edge297, %if.end71.if.end205_crit_edge298, %if.end71.if.end205_crit_edge299
  %fw_stats_req.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 111
  %77 = ptrtoint ptr %fw_stats_req.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fw_stats_req.i, align 4
  %fw_stats_num.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 108
  %79 = ptrtoint ptr %fw_stats_num.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fw_stats_num.i, align 1
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %78, align 4
  %drv_stats_counter.i = getelementptr inbounds %struct.stats_query_header, ptr %78, i32 0, i32 2
  %82 = ptrtoint ptr %drv_stats_counter.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %drv_stats_counter.i, align 2
  %fw_stats_data_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 115
  %83 = ptrtoint ptr %fw_stats_data_mapping.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw_stats_data_mapping.i, align 4
  %stats_counters_addrs.i = getelementptr inbounds %struct.stats_query_header, ptr %78, i32 0, i32 4
  %hi.i = getelementptr inbounds %struct.stats_query_header, ptr %78, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %hi.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  %87 = ptrtoint ptr %stats_counters_addrs.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %stats_counters_addrs.i, align 4
  %fw_stats_data.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 114
  %88 = ptrtoint ptr %fw_stats_data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw_stats_data.i, align 8
  %90 = call ptr @memset(ptr %89, i32 255, i32 32)
  %91 = ptrtoint ptr %fw_stats_data_mapping.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fw_stats_data_mapping.i, align 4
  %add6.i = add i32 %92, 32
  %93 = ptrtoint ptr %fw_stats_req.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fw_stats_req.i, align 4
  %query.i = getelementptr inbounds %struct.bnx2x_fw_stats_req, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %query.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %query.i, align 4
  %96 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pfid, align 1
  %98 = and i8 %97, 1
  %index.i = getelementptr inbounds %struct.bnx2x_fw_stats_req, ptr %94, i32 0, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %index.i, align 1
  %100 = load i8, ptr %pfid, align 1
  %conv12.i = zext i8 %100 to i16
  %101 = shl nuw i16 %conv12.i, 8
  %funcID.i = getelementptr inbounds %struct.bnx2x_fw_stats_req, ptr %94, i32 0, i32 1, i32 0, i32 2
  %102 = ptrtoint ptr %funcID.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %funcID.i, align 2
  %address.i = getelementptr inbounds %struct.bnx2x_fw_stats_req, ptr %94, i32 0, i32 1, i32 0, i32 4
  %hi16.i = getelementptr inbounds %struct.bnx2x_fw_stats_req, ptr %94, i32 0, i32 1, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %hi16.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %hi16.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %add6.i) #7
  %105 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %address.i, align 4
  %106 = ptrtoint ptr %fw_stats_data_mapping.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fw_stats_data_mapping.i, align 4
  %add23.i = add i32 %107, 56
  %108 = ptrtoint ptr %fw_stats_req.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fw_stats_req.i, align 4
  %arrayidx26.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %109, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 2, ptr %arrayidx26.i, align 4
  %111 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %pfid, align 1
  %113 = and i8 %112, 1
  %index32.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %109, i32 0, i32 1, i32 1, i32 1
  %114 = ptrtoint ptr %index32.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %index32.i, align 1
  %115 = load i8, ptr %pfid, align 1
  %conv34.i = zext i8 %115 to i16
  %116 = shl nuw i16 %conv34.i, 8
  %funcID35.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %109, i32 0, i32 1, i32 1, i32 2
  %117 = ptrtoint ptr %funcID35.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %funcID35.i, align 2
  %address39.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %109, i32 0, i32 1, i32 1, i32 4
  %hi40.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %109, i32 0, i32 1, i32 1, i32 4, i32 1
  %118 = ptrtoint ptr %hi40.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %hi40.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %add23.i) #7
  %120 = ptrtoint ptr %address39.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %address39.i, align 4
  %121 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags, align 4
  %and46.i = and i32 %122, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end205.if.end.i_crit_edge

if.end205.if.end.i_crit_edge:                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %fw_stats_data_mapping.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %fw_stats_data_mapping.i, align 4
  %add48.i = add i32 %124, 64
  %125 = ptrtoint ptr %fw_stats_req.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fw_stats_req.i, align 4
  %arrayidx51.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %126, i32 0, i32 1, i32 2
  %127 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 4, ptr %arrayidx51.i, align 4
  %128 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pfid, align 1
  %130 = and i8 %129, 1
  %index57.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %126, i32 0, i32 1, i32 2, i32 1
  %131 = ptrtoint ptr %index57.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %index57.i, align 1
  %132 = load i8, ptr %pfid, align 1
  %conv59.i = zext i8 %132 to i16
  %133 = shl nuw i16 %conv59.i, 8
  %funcID60.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %126, i32 0, i32 1, i32 2, i32 2
  %134 = ptrtoint ptr %funcID60.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %funcID60.i, align 2
  %address64.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %126, i32 0, i32 1, i32 2, i32 4
  %hi65.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %126, i32 0, i32 1, i32 2, i32 4, i32 1
  %135 = ptrtoint ptr %hi65.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %hi65.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %add48.i) #7
  %137 = ptrtoint ptr %address64.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %address64.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end205.if.end.i_crit_edge
  %138 = ptrtoint ptr %fw_stats_data_mapping.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fw_stats_data_mapping.i, align 4
  %add72.i = add i32 %139, 128
  %140 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags, align 4
  %and74.i = and i32 %141, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %..i = select i1 %tobool75.not.i, i32 3, i32 2
  %num_ethernet_queues.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %142 = ptrtoint ptr %num_ethernet_queues.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_ethernet_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp223.not.i = icmp eq i32 %143, 0
  br i1 %cmp223.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %bnx2x_stats_id.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cur_data_offset.0226.i = phi i32 [ %add99.i, %bnx2x_stats_id.exit.i.for.body.i_crit_edge ], [ %add72.i, %if.end.i.for.body.i_crit_edge ]
  %i.0224.i = phi i32 [ %inc.i, %bnx2x_stats_id.exit.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %144 = ptrtoint ptr %fw_stats_req.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %fw_stats_req.i, align 4
  %add81.i = add i32 %i.0224.i, %..i
  %arrayidx82.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %145, i32 0, i32 1, i32 %add81.i
  %146 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx82.i, align 4
  %147 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bp, align 8
  %arrayidx84.i = getelementptr %struct.bnx2x_fastpath, ptr %148, i32 %i.0224.i
  %149 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx84.i, align 8
  %common.i.i = getelementptr inbounds %struct.bnx2x, ptr %150, i32 0, i32 72
  %151 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %common.i.i, align 8
  %shr.i.i = lshr i32 %152, 16
  %shr.off.i.i = add nsw i32 %shr.i.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off.i.i)
  %switch.i.i = icmp ult i32 %shr.off.i.i, 3
  br i1 %switch.i.i, label %if.end21.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %index.i.i = getelementptr %struct.bnx2x_fastpath, ptr %148, i32 %i.0224.i, i32 23
  %153 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %index.i.i, align 2
  %conv.i.i = zext i8 %154 to i32
  %num_queues.i.i = getelementptr inbounds %struct.bnx2x, ptr %150, i32 0, i32 93
  %155 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_queues.i.i, align 4
  %num_cnic_queues.i.i = getelementptr inbounds %struct.bnx2x, ptr %150, i32 0, i32 95
  %157 = ptrtoint ptr %num_cnic_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_cnic_queues.i.i, align 4
  %sub.i.i = sub i32 %156, %158
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i.i)
  %cmp13.i.i = icmp eq i32 %sub.i.i, %conv.i.i
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end.i.i

if.then15.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cnic_base_cl_id.i.i = getelementptr inbounds %struct.bnx2x, ptr %150, i32 0, i32 138
  %159 = ptrtoint ptr %cnic_base_cl_id.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cnic_base_cl_id.i.i, align 8
  %pf_num.i.i = getelementptr inbounds %struct.bnx2x, ptr %150, i32 0, i32 7
  %161 = ptrtoint ptr %pf_num.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %pf_num.i.i, align 2
  %163 = lshr i8 %162, 1
  %add19.i.i = add i8 %163, %160
  br label %bnx2x_stats_id.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cl_id.i.i = getelementptr %struct.bnx2x_fastpath, ptr %148, i32 %i.0224.i, i32 25
  %164 = ptrtoint ptr %cl_id.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %cl_id.i.i, align 8
  br label %bnx2x_stats_id.exit.i

if.end21.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %cl_id22.i.i = getelementptr %struct.bnx2x_fastpath, ptr %148, i32 %i.0224.i, i32 25
  %166 = ptrtoint ptr %cl_id22.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %cl_id22.i.i, align 8
  %pfid.i.i = getelementptr inbounds %struct.bnx2x, ptr %150, i32 0, i32 8
  %168 = ptrtoint ptr %pfid.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %pfid.i.i, align 1
  %170 = shl i8 %169, 4
  %171 = and i8 %170, 16
  %add25.i.i = add i8 %171, %167
  br label %bnx2x_stats_id.exit.i

bnx2x_stats_id.exit.i:                            ; preds = %if.end21.i.i, %if.end.i.i, %if.then15.i.i
  %retval.0.i.i = phi i8 [ %add25.i.i, %if.end21.i.i ], [ %add19.i.i, %if.then15.i.i ], [ %165, %if.end.i.i ]
  %index85.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %145, i32 0, i32 1, i32 %add81.i, i32 1
  %172 = ptrtoint ptr %index85.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %retval.0.i.i, ptr %index85.i, align 1
  %173 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %pfid, align 1
  %conv87.i = zext i8 %174 to i16
  %175 = shl nuw i16 %conv87.i, 8
  %funcID88.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %145, i32 0, i32 1, i32 %add81.i, i32 2
  %176 = ptrtoint ptr %funcID88.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %funcID88.i, align 2
  %address92.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %145, i32 0, i32 1, i32 %add81.i, i32 4
  %hi93.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %145, i32 0, i32 1, i32 %add81.i, i32 4, i32 1
  %177 = ptrtoint ptr %hi93.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %hi93.i, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %cur_data_offset.0226.i) #7
  %179 = ptrtoint ptr %address92.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %address92.i, align 4
  %add99.i = add i32 %cur_data_offset.0226.i, 152
  %inc.i = add nuw i32 %i.0224.i, 1
  %180 = ptrtoint ptr %num_ethernet_queues.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %num_ethernet_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %181
  br i1 %cmp.i, label %bnx2x_stats_id.exit.i.for.body.i_crit_edge, label %bnx2x_stats_id.exit.i.for.end.i_crit_edge

bnx2x_stats_id.exit.i.for.end.i_crit_edge:        ; preds = %bnx2x_stats_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

bnx2x_stats_id.exit.i.for.body.i_crit_edge:       ; preds = %bnx2x_stats_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %bnx2x_stats_id.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %inc.i, %bnx2x_stats_id.exit.i.for.end.i_crit_edge ]
  %cur_data_offset.0.lcssa.i = phi i32 [ %add72.i, %if.end.i.for.end.i_crit_edge ], [ %add99.i, %bnx2x_stats_id.exit.i.for.end.i_crit_edge ]
  %182 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %flags, align 4
  %and101.i = and i32 %183, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %if.then103.i, label %for.end.i.bnx2x_prep_fw_stats_req.exit_crit_edge

for.end.i.bnx2x_prep_fw_stats_req.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_prep_fw_stats_req.exit

if.then103.i:                                     ; preds = %for.end.i
  %184 = ptrtoint ptr %fw_stats_req.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fw_stats_req.i, align 4
  %add106.i = add i32 %i.0.lcssa.i, %..i
  %arrayidx107.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %185, i32 0, i32 1, i32 %add106.i
  %186 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %arrayidx107.i, align 4
  %187 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bp, align 8
  %num_queues.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %189 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_queues.i, align 4
  %num_cnic_queues.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %191 = ptrtoint ptr %num_cnic_queues.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_cnic_queues.i, align 4
  %sub.i = sub i32 %190, %192
  %arrayidx111.i = getelementptr %struct.bnx2x_fastpath, ptr %188, i32 %sub.i
  %193 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx111.i, align 8
  %common.i200.i = getelementptr inbounds %struct.bnx2x, ptr %194, i32 0, i32 72
  %195 = ptrtoint ptr %common.i200.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %common.i200.i, align 8
  %shr.i201.i = lshr i32 %196, 16
  %shr.off.i202.i = add nsw i32 %shr.i201.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off.i202.i)
  %switch.i203.i = icmp ult i32 %shr.off.i202.i, 3
  br i1 %switch.i203.i, label %if.end21.i220.i, label %if.then.i210.i

if.then.i210.i:                                   ; preds = %if.then103.i
  %index.i204.i = getelementptr %struct.bnx2x_fastpath, ptr %188, i32 %sub.i, i32 23
  %197 = ptrtoint ptr %index.i204.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %index.i204.i, align 2
  %conv.i205.i = zext i8 %198 to i32
  %num_queues.i206.i = getelementptr inbounds %struct.bnx2x, ptr %194, i32 0, i32 93
  %199 = ptrtoint ptr %num_queues.i206.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %num_queues.i206.i, align 4
  %num_cnic_queues.i207.i = getelementptr inbounds %struct.bnx2x, ptr %194, i32 0, i32 95
  %201 = ptrtoint ptr %num_cnic_queues.i207.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %num_cnic_queues.i207.i, align 4
  %sub.i208.i = sub i32 %200, %202
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i208.i, i32 %conv.i205.i)
  %cmp13.i209.i = icmp eq i32 %sub.i208.i, %conv.i205.i
  br i1 %cmp13.i209.i, label %if.then15.i214.i, label %if.end.i216.i

if.then15.i214.i:                                 ; preds = %if.then.i210.i
  call void @__sanitizer_cov_trace_pc() #9
  %cnic_base_cl_id.i211.i = getelementptr inbounds %struct.bnx2x, ptr %194, i32 0, i32 138
  %203 = ptrtoint ptr %cnic_base_cl_id.i211.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %cnic_base_cl_id.i211.i, align 8
  %pf_num.i212.i = getelementptr inbounds %struct.bnx2x, ptr %194, i32 0, i32 7
  %205 = ptrtoint ptr %pf_num.i212.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pf_num.i212.i, align 2
  %207 = lshr i8 %206, 1
  %add19.i213.i = add i8 %207, %204
  br label %bnx2x_stats_id.exit222.i

if.end.i216.i:                                    ; preds = %if.then.i210.i
  call void @__sanitizer_cov_trace_pc() #9
  %cl_id.i215.i = getelementptr %struct.bnx2x_fastpath, ptr %188, i32 %sub.i, i32 25
  %208 = ptrtoint ptr %cl_id.i215.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %cl_id.i215.i, align 8
  br label %bnx2x_stats_id.exit222.i

if.end21.i220.i:                                  ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  %cl_id22.i217.i = getelementptr %struct.bnx2x_fastpath, ptr %188, i32 %sub.i, i32 25
  %210 = ptrtoint ptr %cl_id22.i217.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %cl_id22.i217.i, align 8
  %pfid.i218.i = getelementptr inbounds %struct.bnx2x, ptr %194, i32 0, i32 8
  %212 = ptrtoint ptr %pfid.i218.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %pfid.i218.i, align 1
  %214 = shl i8 %213, 4
  %215 = and i8 %214, 16
  %add25.i219.i = add i8 %215, %211
  br label %bnx2x_stats_id.exit222.i

bnx2x_stats_id.exit222.i:                         ; preds = %if.end21.i220.i, %if.end.i216.i, %if.then15.i214.i
  %retval.0.i221.i = phi i8 [ %add25.i219.i, %if.end21.i220.i ], [ %add19.i213.i, %if.then15.i214.i ], [ %209, %if.end.i216.i ]
  %index113.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %185, i32 0, i32 1, i32 %add106.i, i32 1
  %216 = ptrtoint ptr %index113.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %retval.0.i221.i, ptr %index113.i, align 1
  %217 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %pfid, align 1
  %conv115.i = zext i8 %218 to i16
  %219 = shl nuw i16 %conv115.i, 8
  %funcID116.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %185, i32 0, i32 1, i32 %add106.i, i32 2
  %220 = ptrtoint ptr %funcID116.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %funcID116.i, align 2
  %address120.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %185, i32 0, i32 1, i32 %add106.i, i32 4
  %hi121.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %185, i32 0, i32 1, i32 %add106.i, i32 4, i32 1
  %221 = ptrtoint ptr %hi121.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %hi121.i, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %cur_data_offset.0.lcssa.i) #7
  %223 = ptrtoint ptr %address120.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %address120.i, align 4
  br label %bnx2x_prep_fw_stats_req.exit

bnx2x_prep_fw_stats_req.exit:                     ; preds = %bnx2x_stats_id.exit222.i, %for.end.i.bnx2x_prep_fw_stats_req.exit_crit_edge
  %224 = ptrtoint ptr %stats_init to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %stats_init, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool207.not = icmp eq i8 %225, 0
  br i1 %tobool207.not, label %bnx2x_prep_fw_stats_req.exit.cleanup_crit_edge, label %if.then208

bnx2x_prep_fw_stats_req.exit.cleanup_crit_edge:   ; preds = %bnx2x_prep_fw_stats_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then208:                                       ; preds = %bnx2x_prep_fw_stats_req.exit
  %226 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool210.not = icmp eq i32 %227, 0
  br i1 %tobool210.not, label %if.then208.cleanup_crit_edge, label %if.then211

if.then208.cleanup_crit_edge:                     ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then211:                                       ; preds = %if.then208
  %slowpath212 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %228 = ptrtoint ptr %slowpath212 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %slowpath212, align 4
  %func_stats = getelementptr inbounds %struct.bnx2x_slowpath, ptr %229, i32 0, i32 13
  %230 = call ptr @memset(ptr %func_stats, i32 0, i32 80)
  %231 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i284 = icmp eq i32 %232, 0
  br i1 %tobool.not.i284, label %do.end.i, label %if.end.i285

do.end.i:                                         ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %233 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i, align 4
  %tobool3.not.i = icmp eq ptr %234, null
  %spec.select.i = select i1 %tobool3.not.i, ptr @.str.3, ptr %234
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.43, i32 noundef 496, ptr noundef nonnull %spec.select.i) #10
  br label %bnx2x_func_stats_init.exit

if.end.i285:                                      ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #9
  %235 = ptrtoint ptr %slowpath212 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %slowpath212, align 4
  %stats_comp1.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %236, i32 0, i32 9
  %stats_dmae.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144
  %237 = call ptr @memset(ptr %stats_dmae.i, i32 0, i32 60)
  %call7.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 0, i8 noundef zeroext 2, i1 noundef zeroext true, i8 noundef zeroext 0) #7
  %238 = ptrtoint ptr %stats_dmae.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %call7.i, ptr %stats_dmae.i, align 4
  %slowpath_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %239 = ptrtoint ptr %slowpath_mapping.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %slowpath_mapping.i, align 8
  %add.i = add i32 %240, 4612
  %src_addr_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 1
  %241 = ptrtoint ptr %src_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %add.i, ptr %src_addr_lo.i, align 4
  %src_addr_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 2
  %242 = ptrtoint ptr %src_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %src_addr_hi.i, align 4
  %243 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %32, align 4
  %shr14.i = lshr i32 %244, 2
  %dst_addr_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 3
  %245 = ptrtoint ptr %dst_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %shr14.i, ptr %dst_addr_lo.i, align 4
  %dst_addr_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 4
  %246 = ptrtoint ptr %dst_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 0, ptr %dst_addr_hi.i, align 4
  %len.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 6
  %247 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 20, ptr %len.i, align 2
  %add16.i = add i32 %240, 3432
  %comp_addr_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 7
  %248 = ptrtoint ptr %comp_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %add16.i, ptr %comp_addr_lo.i, align 4
  %comp_addr_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 8
  %249 = ptrtoint ptr %comp_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %comp_addr_hi.i, align 4
  %comp_val.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 9
  %250 = ptrtoint ptr %comp_val.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1624297646, ptr %comp_val.i, align 4
  %251 = ptrtoint ptr %stats_comp1.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %stats_comp1.i, align 4
  br label %bnx2x_func_stats_init.exit

bnx2x_func_stats_init.exit:                       ; preds = %if.end.i285, %do.end.i
  tail call fastcc void @bnx2x_hw_stats_post(ptr noundef %bp)
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %bnx2x_func_stats_init.exit, %if.then208.cleanup_crit_edge, %bnx2x_prep_fw_stats_req.exit.cleanup_crit_edge, %.cleanup_crit_edge
  tail call void @bnx2x_memset_stats(ptr noundef %bp)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_read_dmae(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_hw_stats_post(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_dmae = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %0 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slowpath, align 4
  %stats_comp1 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1624297646, ptr %stats_comp1, align 4
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %common, align 8
  %and = and i32 %4, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and)
  %cmp = icmp ugt i32 %and, 20480
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %func_stx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 65
  %5 = ptrtoint ptr %func_stx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %func_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slowpath, align 4
  %func_stats = getelementptr inbounds %struct.bnx2x_slowpath, ptr %8, i32 0, i32 13
  %func_stats4 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148
  %9 = call ptr @memcpy(ptr %func_stats, ptr %func_stats4, i32 80)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %executer_idx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 145
  %10 = ptrtoint ptr %executer_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %executer_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %12 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pfid, align 1
  %14 = shl i8 %13, 3
  %15 = and i8 %14, 8
  %16 = or i8 %15, 4
  %add = zext i8 %16 to i32
  %call = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 0, i8 noundef zeroext 2, i1 noundef zeroext true, i8 noundef zeroext 1) #7
  %call9 = tail call i32 @bnx2x_dmae_opcode_clr_src_reset(i32 noundef %call) #7
  %17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 5
  %18 = call ptr @memset(ptr %17, i32 0, i32 36)
  %19 = ptrtoint ptr %stats_dmae to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call9, ptr %stats_dmae, align 4
  %slowpath_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %20 = ptrtoint ptr %slowpath_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slowpath_mapping, align 8
  %add11 = add i32 %21, 2984
  %src_addr_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 1
  %22 = ptrtoint ptr %src_addr_lo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add11, ptr %src_addr_lo, align 4
  %src_addr_hi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 2
  %23 = ptrtoint ptr %src_addr_hi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %src_addr_hi, align 4
  %add19 = or i32 %add, 1
  %add21 = mul nuw nsw i32 %add19, 14
  %shr22 = or i32 %add21, 264448
  %dst_addr_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 3
  %24 = ptrtoint ptr %dst_addr_lo to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr22, ptr %dst_addr_lo, align 4
  %dst_addr_hi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 4
  %25 = ptrtoint ptr %dst_addr_hi to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dst_addr_hi, align 4
  %len = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 6
  %26 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %common, align 8
  %shr25.mask = and i32 %27, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 374210560, i32 %shr25.mask)
  %cmp26 = icmp eq i32 %shr25.mask, 374210560
  %spec.store.select = select i1 %cmp26, i16 13, i16 14
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %spec.store.select, ptr %len, align 2
  %arrayidx = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add19
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %shr32 = lshr i32 %30, 2
  %comp_addr_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 7
  %31 = ptrtoint ptr %comp_addr_lo to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr32, ptr %comp_addr_lo, align 4
  %comp_val = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 9
  %32 = ptrtoint ptr %comp_val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %comp_val, align 4
  %33 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %stats_comp1, align 4
  tail call void @bnx2x_post_dmae(ptr noundef %bp, ptr noundef %stats_dmae, i32 noundef %add) #7
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %34 = ptrtoint ptr %func_stx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %func_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool34.not = icmp eq i32 %35, 0
  br i1 %tobool34.not, label %if.else.cleanup_crit_edge, label %if.then35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %stats_comp1, align 4
  %call36 = tail call i32 @bnx2x_issue_dmae_with_comp(ptr noundef %bp, ptr noundef %stats_dmae, ptr noundef %stats_comp1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.else.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_stats_comp(ptr nocapture noundef readonly %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %0 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slowpath, align 4
  %stats_comp1 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 9
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 204) #7
  %2 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %3)
  %cmp.not16 = icmp eq i32 %3, 1624297646
  br i1 %cmp.not16, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %4 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %5)
  %cmp.not = icmp eq i32 %5, 1624297646
  br i1 %cmp.not, label %while.body.preheader.while.end_crit_edge, label %while.body.1

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end8:                                          ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 207, ptr noundef nonnull %spec.select) #10
  br label %while.end

while.body.1:                                     ; preds = %while.body.preheader
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %8 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %9)
  %cmp.not.1 = icmp eq i32 %9, 1624297646
  br i1 %cmp.not.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %10 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %11)
  %cmp.not.2 = icmp eq i32 %11, 1624297646
  br i1 %cmp.not.2, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %12 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %13)
  %cmp.not.3 = icmp eq i32 %13, 1624297646
  br i1 %cmp.not.3, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %14 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %15)
  %cmp.not.4 = icmp eq i32 %15, 1624297646
  br i1 %cmp.not.4, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %16 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %17)
  %cmp.not.5 = icmp eq i32 %17, 1624297646
  br i1 %cmp.not.5, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %18 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %19)
  %cmp.not.6 = icmp eq i32 %19, 1624297646
  br i1 %cmp.not.6, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %20 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %21)
  %cmp.not.7 = icmp eq i32 %21, 1624297646
  br i1 %cmp.not.7, label %while.body.7.while.end_crit_edge, label %while.body.8

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %22 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %23)
  %cmp.not.8 = icmp eq i32 %23, 1624297646
  br i1 %cmp.not.8, label %while.body.8.while.end_crit_edge, label %while.body.9

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %24 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %25)
  %cmp.not.9 = icmp eq i32 %25, 1624297646
  br i1 %cmp.not.9, label %while.body.9.while.end_crit_edge, label %do.end8

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %do.end8, %while.body.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_save_statistics(ptr nocapture noundef %bp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %num_ethernet_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %2 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ethernet_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp123.not = icmp eq i32 %3, 0
  br i1 %cmp123.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fp_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 8
  %6 = ptrtoint ptr %fp_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp_stats, align 8
  %index = getelementptr %struct.bnx2x_fastpath, ptr %5, i32 %i.0124, i32 23
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 2
  %idxprom = zext i8 %9 to i32
  %eth_q_stats = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3
  %eth_q_stats_old = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4
  %10 = ptrtoint ptr %eth_q_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eth_q_stats, align 4
  %12 = ptrtoint ptr %eth_q_stats_old to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %eth_q_stats_old, align 4
  %total_unicast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 1
  %13 = ptrtoint ptr %total_unicast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_unicast_bytes_received_lo, align 4
  %total_unicast_bytes_received_lo9 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 1
  %15 = ptrtoint ptr %total_unicast_bytes_received_lo9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %total_unicast_bytes_received_lo9, align 4
  %total_broadcast_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 2
  %16 = ptrtoint ptr %total_broadcast_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_broadcast_bytes_received_hi, align 4
  %total_broadcast_bytes_received_hi13 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 2
  %18 = ptrtoint ptr %total_broadcast_bytes_received_hi13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %total_broadcast_bytes_received_hi13, align 4
  %total_broadcast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 3
  %19 = ptrtoint ptr %total_broadcast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_broadcast_bytes_received_lo, align 4
  %total_broadcast_bytes_received_lo17 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 3
  %21 = ptrtoint ptr %total_broadcast_bytes_received_lo17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %total_broadcast_bytes_received_lo17, align 4
  %total_multicast_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 4
  %22 = ptrtoint ptr %total_multicast_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_multicast_bytes_received_hi, align 4
  %total_multicast_bytes_received_hi21 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 4
  %24 = ptrtoint ptr %total_multicast_bytes_received_hi21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %total_multicast_bytes_received_hi21, align 4
  %total_multicast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 5
  %25 = ptrtoint ptr %total_multicast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_multicast_bytes_received_lo, align 4
  %total_multicast_bytes_received_lo25 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 5
  %27 = ptrtoint ptr %total_multicast_bytes_received_lo25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %total_multicast_bytes_received_lo25, align 4
  %total_unicast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 8
  %28 = ptrtoint ptr %total_unicast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_unicast_bytes_transmitted_hi, align 4
  %total_unicast_bytes_transmitted_hi29 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 6
  %30 = ptrtoint ptr %total_unicast_bytes_transmitted_hi29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %total_unicast_bytes_transmitted_hi29, align 4
  %total_unicast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 9
  %31 = ptrtoint ptr %total_unicast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_unicast_bytes_transmitted_lo, align 4
  %total_unicast_bytes_transmitted_lo33 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 7
  %33 = ptrtoint ptr %total_unicast_bytes_transmitted_lo33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %total_unicast_bytes_transmitted_lo33, align 4
  %total_broadcast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 10
  %34 = ptrtoint ptr %total_broadcast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %total_broadcast_bytes_transmitted_hi, align 4
  %total_broadcast_bytes_transmitted_hi37 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 8
  %36 = ptrtoint ptr %total_broadcast_bytes_transmitted_hi37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %total_broadcast_bytes_transmitted_hi37, align 4
  %total_broadcast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 11
  %37 = ptrtoint ptr %total_broadcast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %total_broadcast_bytes_transmitted_lo, align 4
  %total_broadcast_bytes_transmitted_lo41 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 9
  %39 = ptrtoint ptr %total_broadcast_bytes_transmitted_lo41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %total_broadcast_bytes_transmitted_lo41, align 4
  %total_multicast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 12
  %40 = ptrtoint ptr %total_multicast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total_multicast_bytes_transmitted_hi, align 4
  %total_multicast_bytes_transmitted_hi45 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 10
  %42 = ptrtoint ptr %total_multicast_bytes_transmitted_hi45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %total_multicast_bytes_transmitted_hi45, align 4
  %total_multicast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 13
  %43 = ptrtoint ptr %total_multicast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_multicast_bytes_transmitted_lo, align 4
  %total_multicast_bytes_transmitted_lo49 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 11
  %45 = ptrtoint ptr %total_multicast_bytes_transmitted_lo49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %total_multicast_bytes_transmitted_lo49, align 4
  %total_tpa_bytes_hi = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 48
  %46 = ptrtoint ptr %total_tpa_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total_tpa_bytes_hi, align 4
  %total_tpa_bytes_hi53 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 12
  %48 = ptrtoint ptr %total_tpa_bytes_hi53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %total_tpa_bytes_hi53, align 4
  %total_tpa_bytes_lo = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 3, i32 49
  %49 = ptrtoint ptr %total_tpa_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %total_tpa_bytes_lo, align 4
  %total_tpa_bytes_lo57 = getelementptr %struct.bnx2x_fp_stats, ptr %7, i32 %idxprom, i32 4, i32 13
  %51 = ptrtoint ptr %total_tpa_bytes_lo57 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %total_tpa_bytes_lo57, align 4
  %inc = add nuw i32 %i.0124, 1
  %52 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ethernet_queues, align 8
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %54 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_dropped, align 4
  %net_stats_old = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 150
  %56 = ptrtoint ptr %net_stats_old to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %net_stats_old, align 4
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not = icmp eq i32 %58, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %land.lhs.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %mf_mode = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 79
  %59 = ptrtoint ptr %mf_mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mf_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp61.not = icmp eq i8 %60, 0
  br i1 %cmp61.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %fw_stats_old = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151
  %mac_filter_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 37
  %61 = ptrtoint ptr %mac_filter_discard to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mac_filter_discard, align 4
  %63 = ptrtoint ptr %fw_stats_old to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %fw_stats_old, align 4
  %mf_tag_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 38
  %64 = ptrtoint ptr %mf_tag_discard to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mf_tag_discard, align 4
  %mf_tag_discard68 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151, i32 1
  %66 = ptrtoint ptr %mf_tag_discard68 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %mf_tag_discard68, align 4
  %brb_truncate_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 39
  %67 = ptrtoint ptr %brb_truncate_discard to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brb_truncate_discard, align 4
  %brb_truncate_discard72 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151, i32 2
  %69 = ptrtoint ptr %brb_truncate_discard72 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %brb_truncate_discard72, align 4
  %mac_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 40
  %70 = ptrtoint ptr %mac_discard to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mac_discard, align 4
  %mac_discard76 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151, i32 3
  %72 = ptrtoint ptr %mac_discard76 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %mac_discard76, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_afex_collect_stats(ptr nocapture noundef readonly %bp, ptr noundef %void_afex_stats, i32 noundef %stats_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_stats_data = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 114
  %0 = ptrtoint ptr %fw_stats_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_stats_data, align 8
  %num_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queues, align 4
  %num_cnic_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %4 = ptrtoint ptr %num_cnic_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cnic_queues, align 4
  %sub = sub i32 %3, %5
  %arrayidx = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub
  %xstorm_queue_statistics = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2
  %fcoe = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 3
  %6 = call ptr @memset(ptr %void_afex_stats, i32 0, i32 128)
  %num_ethernet_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %7 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ethernet_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp836.not = icmp eq i32 %8, 0
  br i1 %cmp836.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fp_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 2
  %rx_unicast_bytes_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 19
  %rx_unicast_bytes_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 18
  %rx_broadcast_bytes_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 27
  %rx_broadcast_bytes_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 26
  %rx_multicast_bytes_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 23
  %rx_multicast_bytes_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 22
  %rx_unicast_frames_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 17
  %rx_unicast_frames_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 16
  %rx_broadcast_frames_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 25
  %rx_broadcast_frames_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 24
  %rx_multicast_frames_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 21
  %rx_multicast_frames_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 20
  %rx_frames_discarded_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 29
  %rx_frames_discarded_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 28
  %rx_frames_dropped_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 31
  %rx_frames_dropped_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 30
  %tx_unicast_bytes_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 3
  %tx_unicast_bytes_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 2
  %tx_broadcast_bytes_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 11
  %tx_broadcast_bytes_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 10
  %tx_multicast_bytes_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 7
  %tx_multicast_bytes_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 6
  %tx_unicast_frames_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 1
  %tx_broadcast_frames_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 9
  %tx_broadcast_frames_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 8
  %tx_multicast_frames_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 5
  %tx_multicast_frames_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 4
  %tx_frames_dropped_lo = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 15
  %tx_frames_dropped_hi = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0837 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %fp_stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fp_stats, align 8
  %eth_q_stats = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3
  %total_unicast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 1
  %11 = ptrtoint ptr %total_unicast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_unicast_bytes_received_lo, align 4
  %13 = ptrtoint ptr %rx_unicast_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_unicast_bytes_lo, align 4
  %add3 = add i32 %14, %12
  store i32 %add3, ptr %rx_unicast_bytes_lo, align 4
  %15 = ptrtoint ptr %eth_q_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eth_q_stats, align 4
  %17 = load i32, ptr %total_unicast_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %17)
  %cmp6 = icmp ult i32 %add3, %17
  %cond = zext i1 %cmp6 to i32
  %18 = ptrtoint ptr %rx_unicast_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_unicast_bytes_hi, align 4
  %add7 = add i32 %19, %16
  %add8 = add i32 %add7, %cond
  store i32 %add8, ptr %rx_unicast_bytes_hi, align 4
  %total_broadcast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 3
  %20 = ptrtoint ptr %total_broadcast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_broadcast_bytes_received_lo, align 4
  %22 = ptrtoint ptr %rx_broadcast_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_broadcast_bytes_lo, align 4
  %add10 = add i32 %23, %21
  store i32 %add10, ptr %rx_broadcast_bytes_lo, align 4
  %total_broadcast_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 2
  %24 = ptrtoint ptr %total_broadcast_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_broadcast_bytes_received_hi, align 4
  %26 = load i32, ptr %total_broadcast_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %26)
  %cmp13 = icmp ult i32 %add10, %26
  %cond14 = zext i1 %cmp13 to i32
  %27 = ptrtoint ptr %rx_broadcast_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_broadcast_bytes_hi, align 4
  %add15 = add i32 %28, %25
  %add16 = add i32 %add15, %cond14
  store i32 %add16, ptr %rx_broadcast_bytes_hi, align 4
  %total_multicast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 5
  %29 = ptrtoint ptr %total_multicast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_multicast_bytes_received_lo, align 4
  %31 = ptrtoint ptr %rx_multicast_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_multicast_bytes_lo, align 4
  %add20 = add i32 %32, %30
  store i32 %add20, ptr %rx_multicast_bytes_lo, align 4
  %total_multicast_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 4
  %33 = ptrtoint ptr %total_multicast_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_multicast_bytes_received_hi, align 4
  %35 = load i32, ptr %total_multicast_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %35)
  %cmp23 = icmp ult i32 %add20, %35
  %cond24 = zext i1 %cmp23 to i32
  %36 = ptrtoint ptr %rx_multicast_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_multicast_bytes_hi, align 4
  %add25 = add i32 %37, %34
  %add26 = add i32 %add25, %cond24
  store i32 %add26, ptr %rx_multicast_bytes_hi, align 4
  %total_unicast_packets_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 17
  %38 = ptrtoint ptr %total_unicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_unicast_packets_received_lo, align 4
  %40 = ptrtoint ptr %rx_unicast_frames_lo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_unicast_frames_lo, align 4
  %add30 = add i32 %41, %39
  store i32 %add30, ptr %rx_unicast_frames_lo, align 4
  %total_unicast_packets_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 16
  %42 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %total_unicast_packets_received_hi, align 4
  %44 = load i32, ptr %total_unicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %44)
  %cmp33 = icmp ult i32 %add30, %44
  %cond34 = zext i1 %cmp33 to i32
  %45 = ptrtoint ptr %rx_unicast_frames_hi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_unicast_frames_hi, align 4
  %add35 = add i32 %46, %43
  %add36 = add i32 %add35, %cond34
  store i32 %add36, ptr %rx_unicast_frames_hi, align 4
  %total_broadcast_packets_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 21
  %47 = ptrtoint ptr %total_broadcast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  %49 = ptrtoint ptr %rx_broadcast_frames_lo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_broadcast_frames_lo, align 4
  %add40 = add i32 %50, %48
  store i32 %add40, ptr %rx_broadcast_frames_lo, align 4
  %total_broadcast_packets_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 20
  %51 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total_broadcast_packets_received_hi, align 4
  %53 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %53)
  %cmp43 = icmp ult i32 %add40, %53
  %cond44 = zext i1 %cmp43 to i32
  %54 = ptrtoint ptr %rx_broadcast_frames_hi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_broadcast_frames_hi, align 4
  %add45 = add i32 %55, %52
  %add46 = add i32 %add45, %cond44
  store i32 %add46, ptr %rx_broadcast_frames_hi, align 4
  %total_multicast_packets_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 19
  %56 = ptrtoint ptr %total_multicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %total_multicast_packets_received_lo, align 4
  %58 = ptrtoint ptr %rx_multicast_frames_lo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_multicast_frames_lo, align 4
  %add50 = add i32 %59, %57
  store i32 %add50, ptr %rx_multicast_frames_lo, align 4
  %total_multicast_packets_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 18
  %60 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %total_multicast_packets_received_hi, align 4
  %62 = load i32, ptr %total_multicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %62)
  %cmp53 = icmp ult i32 %add50, %62
  %cond54 = zext i1 %cmp53 to i32
  %63 = ptrtoint ptr %rx_multicast_frames_hi to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_multicast_frames_hi, align 4
  %add55 = add i32 %64, %61
  %add56 = add i32 %add55, %cond54
  store i32 %add56, ptr %rx_multicast_frames_hi, align 4
  %total_packets_received_checksum_discarded_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 39
  %65 = ptrtoint ptr %total_packets_received_checksum_discarded_lo to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %total_packets_received_checksum_discarded_lo, align 4
  %67 = ptrtoint ptr %rx_frames_discarded_lo to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_frames_discarded_lo, align 4
  %add60 = add i32 %68, %66
  store i32 %add60, ptr %rx_frames_discarded_lo, align 4
  %total_packets_received_checksum_discarded_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 38
  %69 = ptrtoint ptr %total_packets_received_checksum_discarded_hi to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %total_packets_received_checksum_discarded_hi, align 4
  %71 = load i32, ptr %total_packets_received_checksum_discarded_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %71)
  %cmp63 = icmp ult i32 %add60, %71
  %cond64 = zext i1 %cmp63 to i32
  %72 = ptrtoint ptr %rx_frames_discarded_hi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_frames_discarded_hi, align 4
  %add65 = add i32 %73, %70
  %add66 = add i32 %add65, %cond64
  store i32 %add66, ptr %rx_frames_discarded_hi, align 4
  %total_packets_received_ttl0_discarded_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 41
  %74 = ptrtoint ptr %total_packets_received_ttl0_discarded_lo to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %total_packets_received_ttl0_discarded_lo, align 4
  %add71 = add i32 %75, %add60
  %76 = ptrtoint ptr %rx_frames_discarded_lo to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add71, ptr %rx_frames_discarded_lo, align 4
  %total_packets_received_ttl0_discarded_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 40
  %77 = ptrtoint ptr %total_packets_received_ttl0_discarded_hi to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %total_packets_received_ttl0_discarded_hi, align 4
  %79 = load i32, ptr %total_packets_received_ttl0_discarded_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %79)
  %cmp74 = icmp ult i32 %add71, %79
  %cond75 = zext i1 %cmp74 to i32
  %add76 = add i32 %78, %add66
  %add78 = add i32 %add76, %cond75
  %80 = ptrtoint ptr %rx_frames_discarded_hi to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add78, ptr %rx_frames_discarded_hi, align 4
  %etherstatsoverrsizepkts_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 31
  %81 = ptrtoint ptr %etherstatsoverrsizepkts_lo to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %etherstatsoverrsizepkts_lo, align 4
  %add83 = add i32 %82, %add71
  %83 = ptrtoint ptr %rx_frames_discarded_lo to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add83, ptr %rx_frames_discarded_lo, align 4
  %etherstatsoverrsizepkts_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 30
  %84 = ptrtoint ptr %etherstatsoverrsizepkts_hi to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %etherstatsoverrsizepkts_hi, align 4
  %86 = load i32, ptr %etherstatsoverrsizepkts_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add83, i32 %86)
  %cmp86 = icmp ult i32 %add83, %86
  %cond87 = zext i1 %cmp86 to i32
  %add88 = add i32 %add78, %85
  %add90 = add i32 %add88, %cond87
  %87 = ptrtoint ptr %rx_frames_discarded_hi to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add90, ptr %rx_frames_discarded_hi, align 4
  %no_buff_discard_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 33
  %88 = ptrtoint ptr %no_buff_discard_lo to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %no_buff_discard_lo, align 4
  %90 = ptrtoint ptr %rx_frames_dropped_lo to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_frames_dropped_lo, align 4
  %add94 = add i32 %91, %89
  store i32 %add94, ptr %rx_frames_dropped_lo, align 4
  %no_buff_discard_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 32
  %92 = ptrtoint ptr %no_buff_discard_hi to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %no_buff_discard_hi, align 4
  %94 = load i32, ptr %no_buff_discard_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %94)
  %cmp97 = icmp ult i32 %add94, %94
  %cond98 = zext i1 %cmp97 to i32
  %95 = ptrtoint ptr %rx_frames_dropped_hi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_frames_dropped_hi, align 4
  %add99 = add i32 %96, %93
  %add100 = add i32 %add99, %cond98
  store i32 %add100, ptr %rx_frames_dropped_hi, align 4
  %total_unicast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 9
  %97 = ptrtoint ptr %total_unicast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %total_unicast_bytes_transmitted_lo, align 4
  %99 = ptrtoint ptr %tx_unicast_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_unicast_bytes_lo, align 4
  %add104 = add i32 %100, %98
  store i32 %add104, ptr %tx_unicast_bytes_lo, align 4
  %total_unicast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 8
  %101 = ptrtoint ptr %total_unicast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %total_unicast_bytes_transmitted_hi, align 4
  %103 = load i32, ptr %total_unicast_bytes_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add104, i32 %103)
  %cmp107 = icmp ult i32 %add104, %103
  %cond108 = zext i1 %cmp107 to i32
  %104 = ptrtoint ptr %tx_unicast_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_unicast_bytes_hi, align 4
  %add109 = add i32 %105, %102
  %add110 = add i32 %add109, %cond108
  store i32 %add110, ptr %tx_unicast_bytes_hi, align 4
  %total_broadcast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 11
  %106 = ptrtoint ptr %total_broadcast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %total_broadcast_bytes_transmitted_lo, align 4
  %108 = ptrtoint ptr %tx_broadcast_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_broadcast_bytes_lo, align 4
  %add114 = add i32 %109, %107
  store i32 %add114, ptr %tx_broadcast_bytes_lo, align 4
  %total_broadcast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 10
  %110 = ptrtoint ptr %total_broadcast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %total_broadcast_bytes_transmitted_hi, align 4
  %112 = load i32, ptr %total_broadcast_bytes_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add114, i32 %112)
  %cmp117 = icmp ult i32 %add114, %112
  %cond118 = zext i1 %cmp117 to i32
  %113 = ptrtoint ptr %tx_broadcast_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_broadcast_bytes_hi, align 4
  %add119 = add i32 %114, %111
  %add120 = add i32 %add119, %cond118
  store i32 %add120, ptr %tx_broadcast_bytes_hi, align 4
  %total_multicast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 13
  %115 = ptrtoint ptr %total_multicast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %total_multicast_bytes_transmitted_lo, align 4
  %117 = ptrtoint ptr %tx_multicast_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_multicast_bytes_lo, align 4
  %add124 = add i32 %118, %116
  store i32 %add124, ptr %tx_multicast_bytes_lo, align 4
  %total_multicast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 12
  %119 = ptrtoint ptr %total_multicast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %total_multicast_bytes_transmitted_hi, align 4
  %121 = load i32, ptr %total_multicast_bytes_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add124, i32 %121)
  %cmp127 = icmp ult i32 %add124, %121
  %cond128 = zext i1 %cmp127 to i32
  %122 = ptrtoint ptr %tx_multicast_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tx_multicast_bytes_hi, align 4
  %add129 = add i32 %123, %120
  %add130 = add i32 %add129, %cond128
  store i32 %add130, ptr %tx_multicast_bytes_hi, align 4
  %total_unicast_packets_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 23
  %124 = ptrtoint ptr %total_unicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %total_unicast_packets_transmitted_lo, align 4
  %126 = ptrtoint ptr %tx_unicast_frames_lo to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_unicast_frames_lo, align 4
  %add134 = add i32 %127, %125
  store i32 %add134, ptr %tx_unicast_frames_lo, align 4
  %total_unicast_packets_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 22
  %128 = ptrtoint ptr %total_unicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %total_unicast_packets_transmitted_hi, align 4
  %130 = load i32, ptr %total_unicast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add134, i32 %130)
  %cmp137 = icmp ult i32 %add134, %130
  %cond138 = zext i1 %cmp137 to i32
  %131 = ptrtoint ptr %void_afex_stats to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %void_afex_stats, align 4
  %add139 = add i32 %132, %129
  %add140 = add i32 %add139, %cond138
  store i32 %add140, ptr %void_afex_stats, align 4
  %total_broadcast_packets_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 27
  %133 = ptrtoint ptr %total_broadcast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %total_broadcast_packets_transmitted_lo, align 4
  %135 = ptrtoint ptr %tx_broadcast_frames_lo to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_broadcast_frames_lo, align 4
  %add144 = add i32 %136, %134
  store i32 %add144, ptr %tx_broadcast_frames_lo, align 4
  %total_broadcast_packets_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 26
  %137 = ptrtoint ptr %total_broadcast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %total_broadcast_packets_transmitted_hi, align 4
  %139 = load i32, ptr %total_broadcast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add144, i32 %139)
  %cmp147 = icmp ult i32 %add144, %139
  %cond148 = zext i1 %cmp147 to i32
  %140 = ptrtoint ptr %tx_broadcast_frames_hi to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_broadcast_frames_hi, align 4
  %add149 = add i32 %141, %138
  %add150 = add i32 %add149, %cond148
  store i32 %add150, ptr %tx_broadcast_frames_hi, align 4
  %total_multicast_packets_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 25
  %142 = ptrtoint ptr %total_multicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %total_multicast_packets_transmitted_lo, align 4
  %144 = ptrtoint ptr %tx_multicast_frames_lo to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_multicast_frames_lo, align 4
  %add154 = add i32 %145, %143
  store i32 %add154, ptr %tx_multicast_frames_lo, align 4
  %total_multicast_packets_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 24
  %146 = ptrtoint ptr %total_multicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %total_multicast_packets_transmitted_hi, align 4
  %148 = load i32, ptr %total_multicast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add154, i32 %148)
  %cmp157 = icmp ult i32 %add154, %148
  %cond158 = zext i1 %cmp157 to i32
  %149 = ptrtoint ptr %tx_multicast_frames_hi to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tx_multicast_frames_hi, align 4
  %add159 = add i32 %150, %147
  %add160 = add i32 %add159, %cond158
  store i32 %add160, ptr %tx_multicast_frames_hi, align 4
  %total_transmitted_dropped_packets_error_lo = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 43
  %151 = ptrtoint ptr %total_transmitted_dropped_packets_error_lo to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %total_transmitted_dropped_packets_error_lo, align 4
  %153 = ptrtoint ptr %tx_frames_dropped_lo to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_frames_dropped_lo, align 4
  %add164 = add i32 %154, %152
  store i32 %add164, ptr %tx_frames_dropped_lo, align 4
  %total_transmitted_dropped_packets_error_hi = getelementptr %struct.bnx2x_fp_stats, ptr %10, i32 %i.0837, i32 3, i32 42
  %155 = ptrtoint ptr %total_transmitted_dropped_packets_error_hi to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %total_transmitted_dropped_packets_error_hi, align 4
  %157 = load i32, ptr %total_transmitted_dropped_packets_error_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add164, i32 %157)
  %cmp167 = icmp ult i32 %add164, %157
  %cond168 = zext i1 %cmp167 to i32
  %158 = ptrtoint ptr %tx_frames_dropped_hi to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tx_frames_dropped_hi, align 4
  %add169 = add i32 %159, %156
  %add170 = add i32 %add169, %cond168
  store i32 %add170, ptr %tx_frames_dropped_hi, align 4
  %inc = add nuw i32 %i.0837, 1
  %160 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_ethernet_queues, align 8
  %cmp = icmp ult i32 %inc, %161
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %162 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags, align 4
  %and = and i32 %163, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body173, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body173:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_stat0 = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 3, i32 1
  %fcoe_rx_byte_cnt = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 3, i32 1, i32 1
  %164 = ptrtoint ptr %fcoe_rx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %fcoe_rx_byte_cnt, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165)
  %rx_unicast_bytes_lo174 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 19
  %167 = ptrtoint ptr %rx_unicast_bytes_lo174 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rx_unicast_bytes_lo174, align 4
  %add175 = add i32 %168, %166
  store i32 %add175, ptr %rx_unicast_bytes_lo174, align 4
  %169 = ptrtoint ptr %fcoe_rx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %fcoe_rx_byte_cnt, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170)
  call void @__sanitizer_cov_trace_cmp4(i32 %add175, i32 %171)
  %cmp179 = icmp ult i32 %add175, %171
  %cond180 = zext i1 %cmp179 to i32
  %rx_unicast_bytes_hi182 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 18
  %172 = ptrtoint ptr %rx_unicast_bytes_hi182 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rx_unicast_bytes_hi182, align 4
  %add183 = add i32 %173, %cond180
  store i32 %add183, ptr %rx_unicast_bytes_hi182, align 4
  %174 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx, align 4
  %176 = tail call i32 @llvm.bswap.i32(i32 %175)
  %add188 = add i32 %176, %add175
  %177 = ptrtoint ptr %rx_unicast_bytes_lo174 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add188, ptr %rx_unicast_bytes_lo174, align 4
  %hi = getelementptr inbounds %struct.regpair, ptr %arrayidx, i32 0, i32 1
  %178 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %hi, align 4
  %180 = tail call i32 @llvm.bswap.i32(i32 %179)
  %181 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  call void @__sanitizer_cov_trace_cmp4(i32 %add188, i32 %183)
  %cmp193 = icmp ult i32 %add188, %183
  %cond194 = zext i1 %cmp193 to i32
  %add195 = add i32 %180, %add183
  %add197 = add i32 %add195, %cond194
  %184 = ptrtoint ptr %rx_unicast_bytes_hi182 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add197, ptr %rx_unicast_bytes_hi182, align 4
  %rcv_bcast_bytes = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 3
  %185 = ptrtoint ptr %rcv_bcast_bytes to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rcv_bcast_bytes, align 4
  %187 = tail call i32 @llvm.bswap.i32(i32 %186)
  %rx_broadcast_bytes_lo202 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 27
  %188 = ptrtoint ptr %rx_broadcast_bytes_lo202 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rx_broadcast_bytes_lo202, align 4
  %add203 = add i32 %189, %187
  store i32 %add203, ptr %rx_broadcast_bytes_lo202, align 4
  %hi205 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 3, i32 1
  %190 = ptrtoint ptr %hi205 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %hi205, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191)
  %193 = ptrtoint ptr %rcv_bcast_bytes to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rcv_bcast_bytes, align 4
  %195 = tail call i32 @llvm.bswap.i32(i32 %194)
  call void @__sanitizer_cov_trace_cmp4(i32 %add203, i32 %195)
  %cmp209 = icmp ult i32 %add203, %195
  %cond210 = zext i1 %cmp209 to i32
  %rx_broadcast_bytes_hi212 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 26
  %196 = ptrtoint ptr %rx_broadcast_bytes_hi212 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rx_broadcast_bytes_hi212, align 4
  %add211 = add i32 %197, %192
  %add213 = add i32 %add211, %cond210
  store i32 %add213, ptr %rx_broadcast_bytes_hi212, align 4
  %rcv_mcast_bytes = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 6
  %198 = ptrtoint ptr %rcv_mcast_bytes to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rcv_mcast_bytes, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199)
  %rx_multicast_bytes_lo218 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 23
  %201 = ptrtoint ptr %rx_multicast_bytes_lo218 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %rx_multicast_bytes_lo218, align 4
  %add219 = add i32 %202, %200
  store i32 %add219, ptr %rx_multicast_bytes_lo218, align 4
  %hi221 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 6, i32 1
  %203 = ptrtoint ptr %hi221 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %hi221, align 4
  %205 = tail call i32 @llvm.bswap.i32(i32 %204)
  %206 = ptrtoint ptr %rcv_mcast_bytes to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %rcv_mcast_bytes, align 4
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  call void @__sanitizer_cov_trace_cmp4(i32 %add219, i32 %208)
  %cmp225 = icmp ult i32 %add219, %208
  %cond226 = zext i1 %cmp225 to i32
  %rx_multicast_bytes_hi228 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 22
  %209 = ptrtoint ptr %rx_multicast_bytes_hi228 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %rx_multicast_bytes_hi228, align 4
  %add227 = add i32 %210, %205
  %add229 = add i32 %add227, %cond226
  store i32 %add229, ptr %rx_multicast_bytes_hi228, align 4
  %211 = ptrtoint ptr %rx_stat0 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rx_stat0, align 4
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  %rx_unicast_frames_lo234 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 17
  %214 = ptrtoint ptr %rx_unicast_frames_lo234 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %rx_unicast_frames_lo234, align 4
  %add235 = add i32 %215, %213
  store i32 %add235, ptr %rx_unicast_frames_lo234, align 4
  %216 = ptrtoint ptr %rx_stat0 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %rx_stat0, align 4
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  call void @__sanitizer_cov_trace_cmp4(i32 %add235, i32 %218)
  %cmp239 = icmp ult i32 %add235, %218
  %cond240 = zext i1 %cmp239 to i32
  %rx_unicast_frames_hi242 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 16
  %219 = ptrtoint ptr %rx_unicast_frames_hi242 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %rx_unicast_frames_hi242, align 4
  %add243 = add i32 %220, %cond240
  store i32 %add243, ptr %rx_unicast_frames_hi242, align 4
  %rcv_ucast_pkts = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 1
  %221 = ptrtoint ptr %rcv_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rcv_ucast_pkts, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  %add248 = add i32 %223, %add235
  %224 = ptrtoint ptr %rx_unicast_frames_lo234 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %add248, ptr %rx_unicast_frames_lo234, align 4
  %225 = ptrtoint ptr %rcv_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %rcv_ucast_pkts, align 4
  %227 = tail call i32 @llvm.bswap.i32(i32 %226)
  call void @__sanitizer_cov_trace_cmp4(i32 %add248, i32 %227)
  %cmp251 = icmp ult i32 %add248, %227
  %cond252 = zext i1 %cmp251 to i32
  %add255 = add i32 %add243, %cond252
  %228 = ptrtoint ptr %rx_unicast_frames_hi242 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %add255, ptr %rx_unicast_frames_hi242, align 4
  %rcv_bcast_pkts = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 4
  %229 = ptrtoint ptr %rcv_bcast_pkts to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %rcv_bcast_pkts, align 4
  %231 = tail call i32 @llvm.bswap.i32(i32 %230)
  %rx_broadcast_frames_lo259 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 25
  %232 = ptrtoint ptr %rx_broadcast_frames_lo259 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rx_broadcast_frames_lo259, align 4
  %add260 = add i32 %233, %231
  store i32 %add260, ptr %rx_broadcast_frames_lo259, align 4
  %234 = ptrtoint ptr %rcv_bcast_pkts to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %rcv_bcast_pkts, align 4
  %236 = tail call i32 @llvm.bswap.i32(i32 %235)
  call void @__sanitizer_cov_trace_cmp4(i32 %add260, i32 %236)
  %cmp263 = icmp ult i32 %add260, %236
  %cond264 = zext i1 %cmp263 to i32
  %rx_broadcast_frames_hi266 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 24
  %237 = ptrtoint ptr %rx_broadcast_frames_hi266 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %rx_broadcast_frames_hi266, align 4
  %add267 = add i32 %238, %cond264
  store i32 %add267, ptr %rx_broadcast_frames_hi266, align 4
  %239 = ptrtoint ptr %rcv_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rcv_ucast_pkts, align 4
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  %rx_multicast_frames_lo272 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 21
  %242 = ptrtoint ptr %rx_multicast_frames_lo272 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rx_multicast_frames_lo272, align 4
  %add273 = add i32 %243, %241
  store i32 %add273, ptr %rx_multicast_frames_lo272, align 4
  %244 = ptrtoint ptr %rcv_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %rcv_ucast_pkts, align 4
  %246 = tail call i32 @llvm.bswap.i32(i32 %245)
  call void @__sanitizer_cov_trace_cmp4(i32 %add273, i32 %246)
  %cmp276 = icmp ult i32 %add273, %246
  %cond277 = zext i1 %cmp276 to i32
  %rx_multicast_frames_hi279 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 20
  %247 = ptrtoint ptr %rx_multicast_frames_hi279 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rx_multicast_frames_hi279, align 4
  %add280 = add i32 %248, %cond277
  store i32 %add280, ptr %rx_multicast_frames_hi279, align 4
  %checksum_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 2
  %249 = ptrtoint ptr %checksum_discard to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %checksum_discard, align 4
  %251 = tail call i32 @llvm.bswap.i32(i32 %250)
  %rx_frames_discarded_lo284 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 29
  %252 = ptrtoint ptr %rx_frames_discarded_lo284 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rx_frames_discarded_lo284, align 4
  %add285 = add i32 %253, %251
  store i32 %add285, ptr %rx_frames_discarded_lo284, align 4
  %254 = ptrtoint ptr %checksum_discard to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %checksum_discard, align 4
  %256 = tail call i32 @llvm.bswap.i32(i32 %255)
  call void @__sanitizer_cov_trace_cmp4(i32 %add285, i32 %256)
  %cmp288 = icmp ult i32 %add285, %256
  %cond289 = zext i1 %cmp288 to i32
  %rx_frames_discarded_hi291 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 28
  %257 = ptrtoint ptr %rx_frames_discarded_hi291 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %rx_frames_discarded_hi291, align 4
  %add292 = add i32 %258, %cond289
  store i32 %add292, ptr %rx_frames_discarded_hi291, align 4
  %pkts_too_big_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 5
  %259 = ptrtoint ptr %pkts_too_big_discard to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %pkts_too_big_discard, align 4
  %261 = tail call i32 @llvm.bswap.i32(i32 %260)
  %add297 = add i32 %261, %add285
  %262 = ptrtoint ptr %rx_frames_discarded_lo284 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %add297, ptr %rx_frames_discarded_lo284, align 4
  %263 = ptrtoint ptr %pkts_too_big_discard to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %pkts_too_big_discard, align 4
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  call void @__sanitizer_cov_trace_cmp4(i32 %add297, i32 %265)
  %cmp300 = icmp ult i32 %add297, %265
  %cond301 = zext i1 %cmp300 to i32
  %add304 = add i32 %add292, %cond301
  %266 = ptrtoint ptr %rx_frames_discarded_hi291 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %add304, ptr %rx_frames_discarded_hi291, align 4
  %ttl0_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 8
  %267 = ptrtoint ptr %ttl0_discard to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %ttl0_discard, align 4
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  %add309 = add i32 %269, %add297
  %270 = ptrtoint ptr %rx_frames_discarded_lo284 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %add309, ptr %rx_frames_discarded_lo284, align 4
  %271 = ptrtoint ptr %ttl0_discard to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %ttl0_discard, align 4
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  call void @__sanitizer_cov_trace_cmp4(i32 %add309, i32 %273)
  %cmp312 = icmp ult i32 %add309, %273
  %cond313 = zext i1 %cmp312 to i32
  %add316 = add i32 %add304, %cond313
  %274 = ptrtoint ptr %rx_frames_discarded_hi291 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %add316, ptr %rx_frames_discarded_hi291, align 4
  %no_buff_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx, i32 0, i32 9
  %275 = ptrtoint ptr %no_buff_discard to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %no_buff_discard, align 4
  %277 = tail call i16 @llvm.bswap.i16(i16 %276)
  %conv = zext i16 %277 to i32
  %rx_frames_dropped_lo320 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 31
  %278 = ptrtoint ptr %rx_frames_dropped_lo320 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %rx_frames_dropped_lo320, align 4
  %add321 = add i32 %279, %conv
  store i32 %add321, ptr %rx_frames_dropped_lo320, align 4
  %280 = ptrtoint ptr %no_buff_discard to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %no_buff_discard, align 4
  %282 = tail call i16 @llvm.bswap.i16(i16 %281)
  %conv324 = zext i16 %282 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add321, i32 %conv324)
  %cmp325 = icmp ult i32 %add321, %conv324
  %cond327 = zext i1 %cmp325 to i32
  %rx_frames_dropped_hi329 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 30
  %283 = ptrtoint ptr %rx_frames_dropped_hi329 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %rx_frames_dropped_hi329, align 4
  %add330 = add i32 %284, %cond327
  store i32 %add330, ptr %rx_frames_dropped_hi329, align 4
  %ucast_no_buff_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 1, i32 3
  %285 = ptrtoint ptr %ucast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ucast_no_buff_pkts, align 4
  %287 = tail call i32 @llvm.bswap.i32(i32 %286)
  %add335 = add i32 %287, %add321
  %288 = ptrtoint ptr %rx_frames_dropped_lo320 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %add335, ptr %rx_frames_dropped_lo320, align 4
  %289 = ptrtoint ptr %ucast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %ucast_no_buff_pkts, align 4
  %291 = tail call i32 @llvm.bswap.i32(i32 %290)
  call void @__sanitizer_cov_trace_cmp4(i32 %add335, i32 %291)
  %cmp338 = icmp ult i32 %add335, %291
  %cond340 = zext i1 %cmp338 to i32
  %add343 = add i32 %add330, %cond340
  %292 = ptrtoint ptr %rx_frames_dropped_hi329 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %add343, ptr %rx_frames_dropped_hi329, align 4
  %mcast_no_buff_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 1, i32 4
  %293 = ptrtoint ptr %mcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %mcast_no_buff_pkts, align 4
  %295 = tail call i32 @llvm.bswap.i32(i32 %294)
  %add348 = add i32 %295, %add335
  %296 = ptrtoint ptr %rx_frames_dropped_lo320 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %add348, ptr %rx_frames_dropped_lo320, align 4
  %297 = ptrtoint ptr %mcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %mcast_no_buff_pkts, align 4
  %299 = tail call i32 @llvm.bswap.i32(i32 %298)
  call void @__sanitizer_cov_trace_cmp4(i32 %add348, i32 %299)
  %cmp351 = icmp ult i32 %add348, %299
  %cond353 = zext i1 %cmp351 to i32
  %add356 = add i32 %add343, %cond353
  %300 = ptrtoint ptr %rx_frames_dropped_hi329 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %add356, ptr %rx_frames_dropped_hi329, align 4
  %bcast_no_buff_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 1, i32 5
  %301 = ptrtoint ptr %bcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %bcast_no_buff_pkts, align 4
  %303 = tail call i32 @llvm.bswap.i32(i32 %302)
  %add361 = add i32 %303, %add348
  %304 = ptrtoint ptr %rx_frames_dropped_lo320 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %add361, ptr %rx_frames_dropped_lo320, align 4
  %305 = ptrtoint ptr %bcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %bcast_no_buff_pkts, align 4
  %307 = tail call i32 @llvm.bswap.i32(i32 %306)
  call void @__sanitizer_cov_trace_cmp4(i32 %add361, i32 %307)
  %cmp364 = icmp ult i32 %add361, %307
  %cond366 = zext i1 %cmp364 to i32
  %add369 = add i32 %add356, %cond366
  %308 = ptrtoint ptr %rx_frames_dropped_hi329 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %add369, ptr %rx_frames_dropped_hi329, align 4
  %fcoe_rx_drop_pkt_cnt = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 3, i32 2, i32 1
  %309 = ptrtoint ptr %fcoe_rx_drop_pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %fcoe_rx_drop_pkt_cnt, align 4
  %311 = tail call i32 @llvm.bswap.i32(i32 %310)
  %add374 = add i32 %311, %add361
  %312 = ptrtoint ptr %rx_frames_dropped_lo320 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %add374, ptr %rx_frames_dropped_lo320, align 4
  %313 = ptrtoint ptr %fcoe_rx_drop_pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %fcoe_rx_drop_pkt_cnt, align 4
  %315 = tail call i32 @llvm.bswap.i32(i32 %314)
  call void @__sanitizer_cov_trace_cmp4(i32 %add374, i32 %315)
  %cmp378 = icmp ult i32 %add374, %315
  %cond380 = zext i1 %cmp378 to i32
  %add383 = add i32 %add369, %cond380
  %316 = ptrtoint ptr %rx_frames_dropped_hi329 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %add383, ptr %rx_frames_dropped_hi329, align 4
  %fcoe_rx_drop_pkt_cnt387 = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 3, i32 3, i32 5
  %317 = ptrtoint ptr %fcoe_rx_drop_pkt_cnt387 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %fcoe_rx_drop_pkt_cnt387, align 4
  %319 = tail call i32 @llvm.bswap.i32(i32 %318)
  %add389 = add i32 %319, %add374
  %320 = ptrtoint ptr %rx_frames_dropped_lo320 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %add389, ptr %rx_frames_dropped_lo320, align 4
  %321 = ptrtoint ptr %fcoe_rx_drop_pkt_cnt387 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %fcoe_rx_drop_pkt_cnt387, align 4
  %323 = tail call i32 @llvm.bswap.i32(i32 %322)
  call void @__sanitizer_cov_trace_cmp4(i32 %add389, i32 %323)
  %cmp393 = icmp ult i32 %add389, %323
  %cond395 = zext i1 %cmp393 to i32
  %add398 = add i32 %add383, %cond395
  %324 = ptrtoint ptr %rx_frames_dropped_hi329 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %add398, ptr %rx_frames_dropped_hi329, align 4
  %fcoe_tx_byte_cnt = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %325 = ptrtoint ptr %fcoe_tx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %fcoe_tx_byte_cnt, align 4
  %327 = tail call i32 @llvm.bswap.i32(i32 %326)
  %tx_unicast_bytes_lo402 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 3
  %328 = ptrtoint ptr %tx_unicast_bytes_lo402 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %tx_unicast_bytes_lo402, align 4
  %add403 = add i32 %329, %327
  store i32 %add403, ptr %tx_unicast_bytes_lo402, align 4
  %330 = ptrtoint ptr %fcoe_tx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %fcoe_tx_byte_cnt, align 4
  %332 = tail call i32 @llvm.bswap.i32(i32 %331)
  call void @__sanitizer_cov_trace_cmp4(i32 %add403, i32 %332)
  %cmp407 = icmp ult i32 %add403, %332
  %cond409 = zext i1 %cmp407 to i32
  %tx_unicast_bytes_hi411 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 2
  %333 = ptrtoint ptr %tx_unicast_bytes_hi411 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %tx_unicast_bytes_hi411, align 4
  %add412 = add i32 %334, %cond409
  store i32 %add412, ptr %tx_unicast_bytes_hi411, align 4
  %335 = ptrtoint ptr %xstorm_queue_statistics to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %xstorm_queue_statistics, align 4
  %337 = tail call i32 @llvm.bswap.i32(i32 %336)
  %add418 = add i32 %337, %add403
  %338 = ptrtoint ptr %tx_unicast_bytes_lo402 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %add418, ptr %tx_unicast_bytes_lo402, align 4
  %hi420 = getelementptr inbounds %struct.regpair, ptr %xstorm_queue_statistics, i32 0, i32 1
  %339 = ptrtoint ptr %hi420 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %hi420, align 4
  %341 = tail call i32 @llvm.bswap.i32(i32 %340)
  %342 = ptrtoint ptr %xstorm_queue_statistics to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %xstorm_queue_statistics, align 4
  %344 = tail call i32 @llvm.bswap.i32(i32 %343)
  call void @__sanitizer_cov_trace_cmp4(i32 %add418, i32 %344)
  %cmp424 = icmp ult i32 %add418, %344
  %cond426 = zext i1 %cmp424 to i32
  %add427 = add i32 %341, %add412
  %add429 = add i32 %add427, %cond426
  %345 = ptrtoint ptr %tx_unicast_bytes_hi411 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %add429, ptr %tx_unicast_bytes_hi411, align 4
  %bcast_bytes_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 2
  %346 = ptrtoint ptr %bcast_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %bcast_bytes_sent, align 4
  %348 = tail call i32 @llvm.bswap.i32(i32 %347)
  %tx_broadcast_bytes_lo434 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 11
  %349 = ptrtoint ptr %tx_broadcast_bytes_lo434 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %tx_broadcast_bytes_lo434, align 4
  %add435 = add i32 %350, %348
  store i32 %add435, ptr %tx_broadcast_bytes_lo434, align 4
  %hi437 = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 2, i32 1
  %351 = ptrtoint ptr %hi437 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %hi437, align 4
  %353 = tail call i32 @llvm.bswap.i32(i32 %352)
  %354 = ptrtoint ptr %bcast_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %bcast_bytes_sent, align 4
  %356 = tail call i32 @llvm.bswap.i32(i32 %355)
  call void @__sanitizer_cov_trace_cmp4(i32 %add435, i32 %356)
  %cmp441 = icmp ult i32 %add435, %356
  %cond443 = zext i1 %cmp441 to i32
  %tx_broadcast_bytes_hi445 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 10
  %357 = ptrtoint ptr %tx_broadcast_bytes_hi445 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %tx_broadcast_bytes_hi445, align 4
  %add444 = add i32 %358, %353
  %add446 = add i32 %add444, %cond443
  store i32 %add446, ptr %tx_broadcast_bytes_hi445, align 4
  %mcast_bytes_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 1
  %359 = ptrtoint ptr %mcast_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %mcast_bytes_sent, align 4
  %361 = tail call i32 @llvm.bswap.i32(i32 %360)
  %tx_multicast_bytes_lo451 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 7
  %362 = ptrtoint ptr %tx_multicast_bytes_lo451 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %tx_multicast_bytes_lo451, align 4
  %add452 = add i32 %363, %361
  store i32 %add452, ptr %tx_multicast_bytes_lo451, align 4
  %hi454 = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 1, i32 1
  %364 = ptrtoint ptr %hi454 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %hi454, align 4
  %366 = tail call i32 @llvm.bswap.i32(i32 %365)
  %367 = ptrtoint ptr %mcast_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %mcast_bytes_sent, align 4
  %369 = tail call i32 @llvm.bswap.i32(i32 %368)
  call void @__sanitizer_cov_trace_cmp4(i32 %add452, i32 %369)
  %cmp458 = icmp ult i32 %add452, %369
  %cond460 = zext i1 %cmp458 to i32
  %tx_multicast_bytes_hi462 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 6
  %370 = ptrtoint ptr %tx_multicast_bytes_hi462 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %tx_multicast_bytes_hi462, align 4
  %add461 = add i32 %371, %366
  %add463 = add i32 %add461, %cond460
  store i32 %add463, ptr %tx_multicast_bytes_hi462, align 4
  %372 = ptrtoint ptr %fcoe to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %fcoe, align 4
  %374 = tail call i32 @llvm.bswap.i32(i32 %373)
  %tx_unicast_frames_lo468 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 1
  %375 = ptrtoint ptr %tx_unicast_frames_lo468 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %tx_unicast_frames_lo468, align 4
  %add469 = add i32 %376, %374
  store i32 %add469, ptr %tx_unicast_frames_lo468, align 4
  %377 = ptrtoint ptr %fcoe to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %fcoe, align 4
  %379 = tail call i32 @llvm.bswap.i32(i32 %378)
  call void @__sanitizer_cov_trace_cmp4(i32 %add469, i32 %379)
  %cmp473 = icmp ult i32 %add469, %379
  %cond475 = zext i1 %cmp473 to i32
  %380 = ptrtoint ptr %void_afex_stats to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %void_afex_stats, align 4
  %add478 = add i32 %381, %cond475
  store i32 %add478, ptr %void_afex_stats, align 4
  %ucast_pkts_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 3
  %382 = ptrtoint ptr %ucast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %ucast_pkts_sent, align 4
  %384 = tail call i32 @llvm.bswap.i32(i32 %383)
  %add483 = add i32 %384, %add469
  %385 = ptrtoint ptr %tx_unicast_frames_lo468 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %add483, ptr %tx_unicast_frames_lo468, align 4
  %386 = ptrtoint ptr %ucast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %ucast_pkts_sent, align 4
  %388 = tail call i32 @llvm.bswap.i32(i32 %387)
  call void @__sanitizer_cov_trace_cmp4(i32 %add483, i32 %388)
  %cmp486 = icmp ult i32 %add483, %388
  %cond488 = zext i1 %cmp486 to i32
  %add491 = add i32 %add478, %cond488
  %389 = ptrtoint ptr %void_afex_stats to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %add491, ptr %void_afex_stats, align 4
  %bcast_pkts_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 5
  %390 = ptrtoint ptr %bcast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %bcast_pkts_sent, align 4
  %392 = tail call i32 @llvm.bswap.i32(i32 %391)
  %tx_broadcast_frames_lo495 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 9
  %393 = ptrtoint ptr %tx_broadcast_frames_lo495 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %tx_broadcast_frames_lo495, align 4
  %add496 = add i32 %394, %392
  store i32 %add496, ptr %tx_broadcast_frames_lo495, align 4
  %395 = ptrtoint ptr %bcast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %bcast_pkts_sent, align 4
  %397 = tail call i32 @llvm.bswap.i32(i32 %396)
  call void @__sanitizer_cov_trace_cmp4(i32 %add496, i32 %397)
  %cmp499 = icmp ult i32 %add496, %397
  %cond501 = zext i1 %cmp499 to i32
  %tx_broadcast_frames_hi503 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 8
  %398 = ptrtoint ptr %tx_broadcast_frames_hi503 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %tx_broadcast_frames_hi503, align 4
  %add504 = add i32 %399, %cond501
  store i32 %add504, ptr %tx_broadcast_frames_hi503, align 4
  %mcast_pkts_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 4
  %400 = ptrtoint ptr %mcast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %mcast_pkts_sent, align 4
  %402 = tail call i32 @llvm.bswap.i32(i32 %401)
  %tx_multicast_frames_lo508 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 5
  %403 = ptrtoint ptr %tx_multicast_frames_lo508 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %tx_multicast_frames_lo508, align 4
  %add509 = add i32 %404, %402
  store i32 %add509, ptr %tx_multicast_frames_lo508, align 4
  %405 = ptrtoint ptr %mcast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %mcast_pkts_sent, align 4
  %407 = tail call i32 @llvm.bswap.i32(i32 %406)
  call void @__sanitizer_cov_trace_cmp4(i32 %add509, i32 %407)
  %cmp512 = icmp ult i32 %add509, %407
  %cond514 = zext i1 %cmp512 to i32
  %tx_multicast_frames_hi516 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 4
  %408 = ptrtoint ptr %tx_multicast_frames_hi516 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %tx_multicast_frames_hi516, align 4
  %add517 = add i32 %409, %cond514
  store i32 %add517, ptr %tx_multicast_frames_hi516, align 4
  %error_drop_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 4, i32 %sub, i32 2, i32 6
  %410 = ptrtoint ptr %error_drop_pkts to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %error_drop_pkts, align 4
  %412 = tail call i32 @llvm.bswap.i32(i32 %411)
  %tx_frames_dropped_lo521 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 15
  %413 = ptrtoint ptr %tx_frames_dropped_lo521 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %tx_frames_dropped_lo521, align 4
  %add522 = add i32 %414, %412
  store i32 %add522, ptr %tx_frames_dropped_lo521, align 4
  %415 = ptrtoint ptr %error_drop_pkts to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %error_drop_pkts, align 4
  %417 = tail call i32 @llvm.bswap.i32(i32 %416)
  call void @__sanitizer_cov_trace_cmp4(i32 %add522, i32 %417)
  %cmp525 = icmp ult i32 %add522, %417
  %cond527 = zext i1 %cmp525 to i32
  %tx_frames_dropped_hi529 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 14
  %418 = ptrtoint ptr %tx_frames_dropped_hi529 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %tx_frames_dropped_hi529, align 4
  %add530 = add i32 %419, %cond527
  store i32 %add530, ptr %tx_frames_dropped_hi529, align 4
  br label %if.end

if.end:                                           ; preds = %do.body173, %for.end.if.end_crit_edge
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %420 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %421)
  %tobool533.not = icmp ne i32 %421, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stats_type)
  %cmp534 = icmp eq i32 %stats_type, 2
  %or.cond = and i1 %cmp534, %tobool533.not
  br i1 %or.cond, label %do.body537, label %if.end.if.end576_crit_edge

if.end.if.end576_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end576

do.body537:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mac_filter_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 37
  %422 = ptrtoint ptr %mac_filter_discard to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %mac_filter_discard, align 4
  %rx_frames_dropped_lo538 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 31
  %424 = ptrtoint ptr %rx_frames_dropped_lo538 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %rx_frames_dropped_lo538, align 4
  %add539 = add i32 %425, %423
  store i32 %add539, ptr %rx_frames_dropped_lo538, align 4
  %426 = load i32, ptr %mac_filter_discard, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add539, i32 %426)
  %cmp542 = icmp ult i32 %add539, %426
  %cond544 = zext i1 %cmp542 to i32
  %rx_frames_dropped_hi546 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 30
  %427 = ptrtoint ptr %rx_frames_dropped_hi546 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %rx_frames_dropped_hi546, align 4
  %add547 = add i32 %428, %cond544
  store i32 %add547, ptr %rx_frames_dropped_hi546, align 4
  %brb_truncate_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 39
  %429 = ptrtoint ptr %brb_truncate_discard to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %brb_truncate_discard, align 4
  %add552 = add i32 %430, %add539
  %431 = ptrtoint ptr %rx_frames_dropped_lo538 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %add552, ptr %rx_frames_dropped_lo538, align 4
  %432 = load i32, ptr %brb_truncate_discard, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add552, i32 %432)
  %cmp555 = icmp ult i32 %add552, %432
  %cond557 = zext i1 %cmp555 to i32
  %add560 = add i32 %add547, %cond557
  %433 = ptrtoint ptr %rx_frames_dropped_hi546 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %add560, ptr %rx_frames_dropped_hi546, align 4
  %mac_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 40
  %434 = ptrtoint ptr %mac_discard to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %mac_discard, align 4
  %rx_frames_discarded_lo564 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 29
  %436 = ptrtoint ptr %rx_frames_discarded_lo564 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %rx_frames_discarded_lo564, align 4
  %add565 = add i32 %437, %435
  store i32 %add565, ptr %rx_frames_discarded_lo564, align 4
  %438 = load i32, ptr %mac_discard, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add565, i32 %438)
  %cmp568 = icmp ult i32 %add565, %438
  %cond570 = zext i1 %cmp568 to i32
  %rx_frames_discarded_hi572 = getelementptr inbounds %struct.afex_stats, ptr %void_afex_stats, i32 0, i32 28
  %439 = ptrtoint ptr %rx_frames_discarded_hi572 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %rx_frames_discarded_hi572, align 4
  %add573 = add i32 %440, %cond570
  store i32 %add573, ptr %rx_frames_discarded_hi572, align 4
  br label %if.end576

if.end576:                                        ; preds = %do.body537, %if.end.if.end576_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_stats_safe_exec(ptr noundef %bp, ptr nocapture noundef readonly %func_to_exec, ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_lock = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 143
  %call = tail call i32 @down_timeout(ptr noundef %stats_lock, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !128

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %1
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 1984, ptr noundef nonnull %spec.select) #10
  br label %out_no_lock

if.end:                                           ; preds = %entry
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  %stats_pending = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 45
  %2 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9.not49 = icmp eq i16 %3, 0
  br i1 %tobool9.not49, label %if.end.if.end35_crit_edge, label %land.rhs.preheader

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.preheader:                               ; preds = %if.end
  %call11 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.rhs.preheader.if.end14_crit_edge, label %if.then13

land.rhs.preheader.if.end14_crit_edge:            ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.rhs.preheader.if.end14_crit_edge
  %4 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %if.end14.if.end35_crit_edge, label %land.rhs.1

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.1:                                       ; preds = %if.end14
  %call11.1 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %land.rhs.1.if.end14.1_crit_edge, label %if.then13.1

land.rhs.1.if.end14.1_crit_edge:                  ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1

if.then13.1:                                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.1

if.end14.1:                                       ; preds = %if.then13.1, %land.rhs.1.if.end14.1_crit_edge
  %6 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not.1 = icmp eq i16 %7, 0
  br i1 %tobool9.not.1, label %if.end14.1.if.end35_crit_edge, label %land.rhs.2

if.end14.1.if.end35_crit_edge:                    ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.2:                                       ; preds = %if.end14.1
  %call11.2 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %tobool12.not.2 = icmp eq i32 %call11.2, 0
  br i1 %tobool12.not.2, label %land.rhs.2.if.end14.2_crit_edge, label %if.then13.2

land.rhs.2.if.end14.2_crit_edge:                  ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.2

if.then13.2:                                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.2

if.end14.2:                                       ; preds = %if.then13.2, %land.rhs.2.if.end14.2_crit_edge
  %8 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool9.not.2 = icmp eq i16 %9, 0
  br i1 %tobool9.not.2, label %if.end14.2.if.end35_crit_edge, label %land.rhs.3

if.end14.2.if.end35_crit_edge:                    ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.3:                                       ; preds = %if.end14.2
  %call11.3 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.3)
  %tobool12.not.3 = icmp eq i32 %call11.3, 0
  br i1 %tobool12.not.3, label %land.rhs.3.if.end14.3_crit_edge, label %if.then13.3

land.rhs.3.if.end14.3_crit_edge:                  ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.3

if.then13.3:                                      ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.3

if.end14.3:                                       ; preds = %if.then13.3, %land.rhs.3.if.end14.3_crit_edge
  %10 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool9.not.3 = icmp eq i16 %11, 0
  br i1 %tobool9.not.3, label %if.end14.3.if.end35_crit_edge, label %land.rhs.4

if.end14.3.if.end35_crit_edge:                    ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.4:                                       ; preds = %if.end14.3
  %call11.4 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.4)
  %tobool12.not.4 = icmp eq i32 %call11.4, 0
  br i1 %tobool12.not.4, label %land.rhs.4.if.end14.4_crit_edge, label %if.then13.4

land.rhs.4.if.end14.4_crit_edge:                  ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.4

if.then13.4:                                      ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.4

if.end14.4:                                       ; preds = %if.then13.4, %land.rhs.4.if.end14.4_crit_edge
  %12 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not.4 = icmp eq i16 %13, 0
  br i1 %tobool9.not.4, label %if.end14.4.if.end35_crit_edge, label %land.rhs.5

if.end14.4.if.end35_crit_edge:                    ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.5:                                       ; preds = %if.end14.4
  %call11.5 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.5)
  %tobool12.not.5 = icmp eq i32 %call11.5, 0
  br i1 %tobool12.not.5, label %land.rhs.5.if.end14.5_crit_edge, label %if.then13.5

land.rhs.5.if.end14.5_crit_edge:                  ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.5

if.then13.5:                                      ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.5

if.end14.5:                                       ; preds = %if.then13.5, %land.rhs.5.if.end14.5_crit_edge
  %14 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool9.not.5 = icmp eq i16 %15, 0
  br i1 %tobool9.not.5, label %if.end14.5.if.end35_crit_edge, label %land.rhs.6

if.end14.5.if.end35_crit_edge:                    ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.6:                                       ; preds = %if.end14.5
  %call11.6 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.6)
  %tobool12.not.6 = icmp eq i32 %call11.6, 0
  br i1 %tobool12.not.6, label %land.rhs.6.if.end14.6_crit_edge, label %if.then13.6

land.rhs.6.if.end14.6_crit_edge:                  ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.6

if.then13.6:                                      ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.6

if.end14.6:                                       ; preds = %if.then13.6, %land.rhs.6.if.end14.6_crit_edge
  %16 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool9.not.6 = icmp eq i16 %17, 0
  br i1 %tobool9.not.6, label %if.end14.6.if.end35_crit_edge, label %land.rhs.7

if.end14.6.if.end35_crit_edge:                    ; preds = %if.end14.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.7:                                       ; preds = %if.end14.6
  %call11.7 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.7)
  %tobool12.not.7 = icmp eq i32 %call11.7, 0
  br i1 %tobool12.not.7, label %land.rhs.7.if.end14.7_crit_edge, label %if.then13.7

land.rhs.7.if.end14.7_crit_edge:                  ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.7

if.then13.7:                                      ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.7

if.end14.7:                                       ; preds = %if.then13.7, %land.rhs.7.if.end14.7_crit_edge
  %18 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool9.not.7 = icmp eq i16 %19, 0
  br i1 %tobool9.not.7, label %if.end14.7.if.end35_crit_edge, label %land.rhs.8

if.end14.7.if.end35_crit_edge:                    ; preds = %if.end14.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.8:                                       ; preds = %if.end14.7
  %call11.8 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.8)
  %tobool12.not.8 = icmp eq i32 %call11.8, 0
  br i1 %tobool12.not.8, label %land.rhs.8.if.end14.8_crit_edge, label %if.then13.8

land.rhs.8.if.end14.8_crit_edge:                  ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.8

if.then13.8:                                      ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.8

if.end14.8:                                       ; preds = %if.then13.8, %land.rhs.8.if.end14.8_crit_edge
  %20 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool9.not.8 = icmp eq i16 %21, 0
  br i1 %tobool9.not.8, label %if.end14.8.if.end35_crit_edge, label %land.rhs.9

if.end14.8.if.end35_crit_edge:                    ; preds = %if.end14.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs.9:                                       ; preds = %if.end14.8
  %call11.9 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.9)
  %tobool12.not.9 = icmp eq i32 %call11.9, 0
  br i1 %tobool12.not.9, label %land.rhs.9.if.end14.9_crit_edge, label %if.then13.9

land.rhs.9.if.end14.9_crit_edge:                  ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.9

if.then13.9:                                      ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end14.9

if.end14.9:                                       ; preds = %if.then13.9, %land.rhs.9.if.end14.9_crit_edge
  %22 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool9.not.9 = icmp eq i16 %23, 0
  br i1 %tobool9.not.9, label %if.end14.9.if.end35_crit_edge, label %do.end21

if.end14.9.if.end35_crit_edge:                    ; preds = %if.end14.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end21:                                         ; preds = %if.end14.9
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %24 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev23, align 4
  %tobool24.not = icmp eq ptr %25, null
  %spec.select48 = select i1 %tobool24.not, ptr @.str.3, ptr %25
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 1993, ptr noundef nonnull %spec.select48) #10
  br label %out

if.end35:                                         ; preds = %if.end14.9.if.end35_crit_edge, %if.end14.8.if.end35_crit_edge, %if.end14.7.if.end35_crit_edge, %if.end14.6.if.end35_crit_edge, %if.end14.5.if.end35_crit_edge, %if.end14.4.if.end35_crit_edge, %if.end14.3.if.end35_crit_edge, %if.end14.2.if.end35_crit_edge, %if.end14.1.if.end35_crit_edge, %if.end14.if.end35_crit_edge, %if.end.if.end35_crit_edge
  tail call void %func_to_exec(ptr noundef %cookie) #7
  br label %out

out:                                              ; preds = %if.end35, %do.end21
  %rc.0 = phi i32 [ -16, %do.end21 ], [ 0, %if.end35 ]
  tail call void @up(ptr noundef %stats_lock) #7
  br label %out_no_lock

out_no_lock:                                      ; preds = %out, %do.end
  %rc.1 = phi i32 [ %call, %do.end ], [ %rc.0, %out ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_stats_data = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 114
  %0 = ptrtoint ptr %fw_stats_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_stats_data, align 8
  %port = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 1
  %pf = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 2
  %func_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148
  %eth_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147
  %eth_stats_old = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 149
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stats_counter.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 146
  %4 = ptrtoint ptr %stats_counter.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stats_counter.i, align 8
  %sub.i = add i16 %5, -1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %sub.i)
  %cmp.not.i = icmp eq i16 %8, %sub.i
  br i1 %cmp.not.i, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %9 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !128

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %tobool9.not.i = icmp eq ptr %12, null
  %spec.select.i = select i1 %tobool9.not.i, ptr @.str.3, ptr %12
  %conv12.i = zext i16 %8 to i32
  %conv14.i = zext i16 %5 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 892, ptr noundef nonnull %spec.select.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #10
  br label %cleanup

if.end17.i:                                       ; preds = %land.lhs.true
  %ustats_counter.i = getelementptr inbounds %struct.stats_counter, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %ustats_counter.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ustats_counter.i, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %sub.i)
  %cmp20.not.i = icmp eq i16 %15, %sub.i
  br i1 %cmp20.not.i, label %if.end55.i, label %do.body23.i

do.body23.i:                                      ; preds = %if.end17.i
  %msg_enable24.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %16 = ptrtoint ptr %msg_enable24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable24.i, align 8
  %and25.i = and i32 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body23.i.cleanup_crit_edge, label %do.end36.i, !prof !128

do.body23.i.cleanup_crit_edge:                    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev38.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %18 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev38.i, align 4
  %tobool39.not.i = icmp eq ptr %19, null
  %spec.select163.i = select i1 %tobool39.not.i, ptr @.str.3, ptr %19
  %conv48.i = zext i16 %15 to i32
  %conv50.i = zext i16 %5 to i32
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 899, ptr noundef nonnull %spec.select163.i, i32 noundef %conv48.i, i32 noundef %conv50.i) #10
  br label %cleanup

if.end55.i:                                       ; preds = %if.end17.i
  %cstats_counter.i = getelementptr inbounds %struct.stats_counter, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %cstats_counter.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cstats_counter.i, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %sub.i)
  %cmp58.not.i = icmp eq i16 %22, %sub.i
  br i1 %cmp58.not.i, label %if.end93.i, label %do.body61.i

do.body61.i:                                      ; preds = %if.end55.i
  %msg_enable62.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %23 = ptrtoint ptr %msg_enable62.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable62.i, align 8
  %and63.i = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %do.body61.i.cleanup_crit_edge, label %do.end74.i, !prof !128

do.body61.i.cleanup_crit_edge:                    ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end74.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev76.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %25 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev76.i, align 4
  %tobool77.not.i = icmp eq ptr %26, null
  %spec.select164.i = select i1 %tobool77.not.i, ptr @.str.3, ptr %26
  %conv86.i = zext i16 %22 to i32
  %conv88.i = zext i16 %5 to i32
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52, i32 noundef 906, ptr noundef nonnull %spec.select164.i, i32 noundef %conv86.i, i32 noundef %conv88.i) #10
  br label %cleanup

if.end93.i:                                       ; preds = %if.end55.i
  %tstats_counter.i = getelementptr inbounds %struct.stats_counter, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %tstats_counter.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tstats_counter.i, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %sub.i)
  %cmp96.not.i = icmp eq i16 %29, %sub.i
  br i1 %cmp96.not.i, label %if.end93.i.if.end_crit_edge, label %do.body99.i

if.end93.i.if.end_crit_edge:                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body99.i:                                      ; preds = %if.end93.i
  %msg_enable100.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %30 = ptrtoint ptr %msg_enable100.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable100.i, align 8
  %and101.i = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %do.body99.i.cleanup_crit_edge, label %do.end112.i, !prof !128

do.body99.i.cleanup_crit_edge:                    ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end112.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev114.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %32 = ptrtoint ptr %dev114.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev114.i, align 4
  %tobool115.not.i = icmp eq ptr %33, null
  %spec.select165.i = select i1 %tobool115.not.i, ptr @.str.3, ptr %33
  %conv124.i = zext i16 %29 to i32
  %conv126.i = zext i16 %5 to i32
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.52, i32 noundef 913, ptr noundef nonnull %spec.select165.i, i32 noundef %conv124.i, i32 noundef %conv126.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end93.i.if.end_crit_edge, %entry.if.end_crit_edge
  %error_bytes_received_hi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 18
  %34 = ptrtoint ptr %error_bytes_received_hi to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %error_bytes_received_hi, align 4
  %error_bytes_received_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 19
  %35 = ptrtoint ptr %error_bytes_received_lo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %error_bytes_received_lo, align 4
  %num_ethernet_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %36 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ethernet_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2485.not = icmp eq i32 %37, 0
  br i1 %cmp2485.not, label %if.end.do.body1511_crit_edge, label %for.body.lr.ph

if.end.do.body1511_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1511

for.body.lr.ph:                                   ; preds = %if.end
  %fp_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 2
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %etherstatsoverrsizepkts_lo207 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 21
  %etherstatsoverrsizepkts_hi212 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 20
  %no_buff_discard_lo237 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 23
  %no_buff_discard_hi243 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 22
  %total_tpa_aggregations_lo699 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 47
  %total_tpa_aggregations_hi705 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 46
  %total_tpa_aggregated_frames_lo729 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 49
  %total_tpa_aggregated_frames_hi735 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 48
  %total_tpa_bytes_lo760 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 51
  %total_tpa_bytes_hi769 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 50
  %total_bytes_received_lo830 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 2
  %total_bytes_received_hi839 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 1
  %total_bytes_received_lo896 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 1
  %total_bytes_transmitted_lo906 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 4
  %total_bytes_transmitted_hi915 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 3
  %total_bytes_transmitted_hi970 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 2
  %total_bytes_transmitted_lo972 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 3
  %total_unicast_packets_received_lo982 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 6
  %total_unicast_packets_received_hi991 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 5
  %total_unicast_packets_received_hi1046 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 4
  %total_unicast_packets_received_lo1048 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 5
  %total_multicast_packets_received_lo1058 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 8
  %total_multicast_packets_received_hi1067 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 7
  %total_multicast_packets_received_hi1122 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 6
  %total_multicast_packets_received_lo1124 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 7
  %total_broadcast_packets_received_lo1134 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 10
  %total_broadcast_packets_received_hi1143 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 9
  %total_broadcast_packets_received_hi1198 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 8
  %total_broadcast_packets_received_lo1200 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 9
  %total_unicast_packets_transmitted_lo1210 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 12
  %total_unicast_packets_transmitted_hi1219 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 11
  %total_unicast_packets_transmitted_hi1274 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 10
  %total_unicast_packets_transmitted_lo1276 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 11
  %total_multicast_packets_transmitted_lo1286 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 14
  %total_multicast_packets_transmitted_hi1295 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 13
  %total_multicast_packets_transmitted_hi1350 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 12
  %total_multicast_packets_transmitted_lo1352 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 13
  %total_broadcast_packets_transmitted_lo1362 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 16
  %total_broadcast_packets_transmitted_hi1371 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 15
  %total_broadcast_packets_transmitted_hi1426 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 14
  %total_broadcast_packets_transmitted_lo1428 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 15
  %valid_bytes_received_lo1438 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 18
  %valid_bytes_received_hi1447 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 17
  %valid_bytes_received_hi1502 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 16
  %valid_bytes_received_lo1504 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 17
  br label %for.body

for.body:                                         ; preds = %do.end1500.for.body_crit_edge, %for.body.lr.ph
  %i.02486 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end1500.for.body_crit_edge ]
  %38 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bp, align 8
  %40 = ptrtoint ptr %fw_stats_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw_stats_data, align 8
  %arrayidx5 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486
  %42 = ptrtoint ptr %fp_stats to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fp_stats, align 8
  %index = getelementptr %struct.bnx2x_fastpath, ptr %39, i32 %i.02486, i32 23
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index, align 2
  %idxprom = zext i8 %45 to i32
  %arrayidx6 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom
  %xstorm_queue_statistics = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2
  %eth_q_stats = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3
  %eth_q_stats_old = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 8
  %and32 = and i32 %47, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %for.body.do.body44_crit_edge, label %do.end, !prof !128

for.body.do.body44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %tobool38.not = icmp eq ptr %49, null
  %spec.select = select i1 %tobool38.not, ptr @.str.3, ptr %49
  %ucast_pkts_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 3
  %50 = ptrtoint ptr %ucast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ucast_pkts_sent, align 4
  %bcast_pkts_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 5
  %52 = ptrtoint ptr %bcast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bcast_pkts_sent, align 4
  %mcast_pkts_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 4
  %54 = ptrtoint ptr %mcast_pkts_sent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mcast_pkts_sent, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 963, ptr noundef nonnull %spec.select, i32 noundef %i.02486, i32 noundef %51, i32 noundef %53, i32 noundef %55) #10
  br label %do.body44

do.body44:                                        ; preds = %do.end, %for.body.do.body44_crit_edge
  %56 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable, align 8
  %and46 = and i32 %57, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body44.do.body72_crit_edge, label %do.end57, !prof !128

do.body44.do.body72_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

do.end57:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %tobool60.not = icmp eq ptr %59, null
  %spec.select2482 = select i1 %tobool60.not, ptr @.str.3, ptr %59
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 965, ptr noundef nonnull %spec.select2482) #10
  br label %do.body72

do.body72:                                        ; preds = %do.end57, %do.body44.do.body72_crit_edge
  %total_broadcast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 3
  %60 = ptrtoint ptr %total_broadcast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %total_broadcast_bytes_received_lo, align 4
  %rcv_bcast_bytes = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 3
  %62 = ptrtoint ptr %rcv_bcast_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rcv_bcast_bytes, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %add = add i32 %64, %61
  %total_broadcast_bytes_received_lo73 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 3
  %65 = ptrtoint ptr %total_broadcast_bytes_received_lo73 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %total_broadcast_bytes_received_lo73, align 4
  %total_broadcast_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 2
  %66 = ptrtoint ptr %total_broadcast_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %total_broadcast_bytes_received_hi, align 4
  %hi = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hi, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %add75 = add i32 %70, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %61)
  %cmp78 = icmp ult i32 %add, %61
  %cond79 = zext i1 %cmp78 to i32
  %add80 = add i32 %add75, %cond79
  %total_broadcast_bytes_received_hi81 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 2
  %71 = ptrtoint ptr %total_broadcast_bytes_received_hi81 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add80, ptr %total_broadcast_bytes_received_hi81, align 4
  %total_multicast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 5
  %72 = ptrtoint ptr %total_multicast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %total_multicast_bytes_received_lo, align 4
  %rcv_mcast_bytes = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 6
  %74 = ptrtoint ptr %rcv_mcast_bytes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rcv_mcast_bytes, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %add86 = add i32 %76, %73
  %total_multicast_bytes_received_lo87 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 5
  %77 = ptrtoint ptr %total_multicast_bytes_received_lo87 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add86, ptr %total_multicast_bytes_received_lo87, align 4
  %total_multicast_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 4
  %78 = ptrtoint ptr %total_multicast_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %total_multicast_bytes_received_hi, align 4
  %hi89 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %hi89 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hi89, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %add90 = add i32 %82, %79
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %73)
  %cmp93 = icmp ult i32 %add86, %73
  %cond94 = zext i1 %cmp93 to i32
  %add95 = add i32 %add90, %cond94
  %total_multicast_bytes_received_hi96 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 4
  %83 = ptrtoint ptr %total_multicast_bytes_received_hi96 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add95, ptr %total_multicast_bytes_received_hi96, align 4
  %total_unicast_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 1
  %84 = ptrtoint ptr %total_unicast_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %total_unicast_bytes_received_lo, align 4
  %86 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx5, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %add101 = add i32 %88, %85
  %total_unicast_bytes_received_lo102 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 1
  %89 = ptrtoint ptr %total_unicast_bytes_received_lo102 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add101, ptr %total_unicast_bytes_received_lo102, align 4
  %90 = ptrtoint ptr %eth_q_stats_old to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %eth_q_stats_old, align 4
  %hi104 = getelementptr inbounds %struct.regpair, ptr %arrayidx5, i32 0, i32 1
  %92 = ptrtoint ptr %hi104 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hi104, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %add105 = add i32 %94, %91
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %85)
  %cmp108 = icmp ult i32 %add101, %85
  %cond109 = zext i1 %cmp108 to i32
  %add110 = add i32 %add105, %cond109
  %95 = ptrtoint ptr %eth_q_stats to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add110, ptr %eth_q_stats, align 4
  %total_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 6
  %total_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 7
  %add119 = add i32 %add86, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add119, i32 %add86)
  %cmp123 = icmp ult i32 %add119, %add86
  %cond124 = zext i1 %cmp123 to i32
  %add125 = add i32 %add80, %cond124
  %add127 = add i32 %add125, %add95
  %add133 = add i32 %add101, %add119
  %96 = ptrtoint ptr %total_bytes_received_lo to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add133, ptr %total_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add133, i32 %add101)
  %cmp137 = icmp ult i32 %add133, %add101
  %cond138 = zext i1 %cmp137 to i32
  %add139 = add i32 %add127, %cond138
  %add141 = add i32 %add139, %add110
  %97 = ptrtoint ptr %total_bytes_received_hi to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add141, ptr %total_bytes_received_hi, align 4
  %valid_bytes_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 28
  %98 = ptrtoint ptr %valid_bytes_received_hi to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add141, ptr %valid_bytes_received_hi, align 4
  %valid_bytes_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 29
  %99 = ptrtoint ptr %valid_bytes_received_lo to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add133, ptr %valid_bytes_received_lo, align 4
  %rcv_ucast_pkts = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 1
  %100 = ptrtoint ptr %rcv_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rcv_ucast_pkts, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %rcv_ucast_pkts147 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 1
  %103 = ptrtoint ptr %rcv_ucast_pkts147 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rcv_ucast_pkts147, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %sub = sub i32 %102, %105
  %106 = ptrtoint ptr %rcv_ucast_pkts147 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %101, ptr %rcv_ucast_pkts147, align 4
  %total_unicast_packets_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 17
  %107 = ptrtoint ptr %total_unicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %total_unicast_packets_received_lo, align 4
  %add151 = add i32 %108, %sub
  store i32 %add151, ptr %total_unicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add151, i32 %sub)
  %cmp153 = icmp ult i32 %add151, %sub
  %cond154 = zext i1 %cmp153 to i32
  %total_unicast_packets_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 16
  %109 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %total_unicast_packets_received_hi, align 4
  %add155 = add i32 %110, %cond154
  store i32 %add155, ptr %total_unicast_packets_received_hi, align 4
  %rcv_mcast_pkts = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 7
  %111 = ptrtoint ptr %rcv_mcast_pkts to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rcv_mcast_pkts, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %rcv_mcast_pkts161 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 7
  %114 = ptrtoint ptr %rcv_mcast_pkts161 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rcv_mcast_pkts161, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %sub162 = sub i32 %113, %116
  %117 = ptrtoint ptr %rcv_mcast_pkts161 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %112, ptr %rcv_mcast_pkts161, align 4
  %total_multicast_packets_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 19
  %118 = ptrtoint ptr %total_multicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %total_multicast_packets_received_lo, align 4
  %add166 = add i32 %119, %sub162
  store i32 %add166, ptr %total_multicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add166, i32 %sub162)
  %cmp168 = icmp ult i32 %add166, %sub162
  %cond169 = zext i1 %cmp168 to i32
  %total_multicast_packets_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 18
  %120 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %total_multicast_packets_received_hi, align 4
  %add170 = add i32 %121, %cond169
  store i32 %add170, ptr %total_multicast_packets_received_hi, align 4
  %rcv_bcast_pkts = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 4
  %122 = ptrtoint ptr %rcv_bcast_pkts to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rcv_bcast_pkts, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %rcv_bcast_pkts176 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 4
  %125 = ptrtoint ptr %rcv_bcast_pkts176 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rcv_bcast_pkts176, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %sub177 = sub i32 %124, %127
  %128 = ptrtoint ptr %rcv_bcast_pkts176 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %123, ptr %rcv_bcast_pkts176, align 4
  %total_broadcast_packets_received_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 21
  %129 = ptrtoint ptr %total_broadcast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  %add181 = add i32 %130, %sub177
  store i32 %add181, ptr %total_broadcast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add181, i32 %sub177)
  %cmp183 = icmp ult i32 %add181, %sub177
  %cond184 = zext i1 %cmp183 to i32
  %total_broadcast_packets_received_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 20
  %131 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %total_broadcast_packets_received_hi, align 4
  %add185 = add i32 %132, %cond184
  store i32 %add185, ptr %total_broadcast_packets_received_hi, align 4
  %pkts_too_big_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 5
  %133 = ptrtoint ptr %pkts_too_big_discard to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pkts_too_big_discard, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  %pkts_too_big_discard192 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 5
  %136 = ptrtoint ptr %pkts_too_big_discard192 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pkts_too_big_discard192, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %sub193 = sub i32 %135, %138
  %139 = ptrtoint ptr %pkts_too_big_discard192 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %134, ptr %pkts_too_big_discard192, align 4
  %etherstatsoverrsizepkts_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 31
  %140 = ptrtoint ptr %etherstatsoverrsizepkts_lo to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %etherstatsoverrsizepkts_lo, align 4
  %add197 = add i32 %141, %sub193
  store i32 %add197, ptr %etherstatsoverrsizepkts_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add197, i32 %sub193)
  %cmp199 = icmp ult i32 %add197, %sub193
  %cond200 = zext i1 %cmp199 to i32
  %etherstatsoverrsizepkts_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 30
  %142 = ptrtoint ptr %etherstatsoverrsizepkts_hi to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %etherstatsoverrsizepkts_hi, align 4
  %add201 = add i32 %143, %cond200
  store i32 %add201, ptr %etherstatsoverrsizepkts_hi, align 4
  %144 = ptrtoint ptr %etherstatsoverrsizepkts_lo207 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %etherstatsoverrsizepkts_lo207, align 4
  %add208 = add i32 %145, %sub193
  store i32 %add208, ptr %etherstatsoverrsizepkts_lo207, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add208, i32 %sub193)
  %cmp210 = icmp ult i32 %add208, %sub193
  %cond211 = zext i1 %cmp210 to i32
  %146 = ptrtoint ptr %etherstatsoverrsizepkts_hi212 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %etherstatsoverrsizepkts_hi212, align 4
  %add213 = add i32 %147, %cond211
  store i32 %add213, ptr %etherstatsoverrsizepkts_hi212, align 4
  %no_buff_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 9
  %148 = ptrtoint ptr %no_buff_discard to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %no_buff_discard, align 4
  %150 = tail call i16 @llvm.bswap.i16(i16 %149)
  %conv = zext i16 %150 to i32
  %no_buff_discard220 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 9
  %151 = ptrtoint ptr %no_buff_discard220 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %no_buff_discard220, align 4
  %153 = tail call i16 @llvm.bswap.i16(i16 %152)
  %conv221 = zext i16 %153 to i32
  %sub222 = sub nsw i32 %conv, %conv221
  %154 = ptrtoint ptr %no_buff_discard220 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %149, ptr %no_buff_discard220, align 4
  %no_buff_discard_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 33
  %155 = ptrtoint ptr %no_buff_discard_lo to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %no_buff_discard_lo, align 4
  %add226 = add i32 %sub222, %156
  store i32 %add226, ptr %no_buff_discard_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add226, i32 %sub222)
  %cmp228 = icmp ult i32 %add226, %sub222
  %cond230 = zext i1 %cmp228 to i32
  %no_buff_discard_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 32
  %157 = ptrtoint ptr %no_buff_discard_hi to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %no_buff_discard_hi, align 4
  %add231 = add i32 %158, %cond230
  store i32 %add231, ptr %no_buff_discard_hi, align 4
  %159 = ptrtoint ptr %no_buff_discard_lo237 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %no_buff_discard_lo237, align 4
  %add238 = add i32 %160, %sub222
  store i32 %add238, ptr %no_buff_discard_lo237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add238, i32 %sub222)
  %cmp240 = icmp ult i32 %add238, %sub222
  %cond242 = zext i1 %cmp240 to i32
  %161 = ptrtoint ptr %no_buff_discard_hi243 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %no_buff_discard_hi243, align 4
  %add244 = add i32 %162, %cond242
  store i32 %add244, ptr %no_buff_discard_hi243, align 4
  %ucast_no_buff_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 3
  %163 = ptrtoint ptr %ucast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ucast_no_buff_pkts, align 4
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  %ucast_no_buff_pkts250 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 1, i32 3
  %166 = ptrtoint ptr %ucast_no_buff_pkts250 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ucast_no_buff_pkts250, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %sub251 = sub i32 %165, %168
  %169 = ptrtoint ptr %total_unicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %total_unicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %sub251)
  %cmp256 = icmp ult i32 %170, %sub251
  br i1 %cmp256, label %if.then258, label %if.else282

if.then258:                                       ; preds = %do.body72
  %171 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %total_unicast_packets_received_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp263.not = icmp eq i32 %172, 0
  br i1 %cmp263.not, label %if.else, label %if.then265

if.then265:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %172, -1
  %173 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %dec, ptr %total_unicast_packets_received_hi, align 4
  %add270 = sub i32 %170, %sub251
  br label %do.body299

if.else:                                          ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %total_unicast_packets_received_hi, align 4
  br label %do.body299

if.else282:                                       ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %sub287 = sub i32 %170, %sub251
  br label %do.body299

do.body299:                                       ; preds = %if.else282, %if.else, %if.then265
  %.sink = phi i32 [ 0, %if.else ], [ %add270, %if.then265 ], [ %sub287, %if.else282 ]
  %175 = ptrtoint ptr %total_unicast_packets_received_lo to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %.sink, ptr %total_unicast_packets_received_lo, align 4
  %mcast_no_buff_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 4
  %176 = ptrtoint ptr %mcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mcast_no_buff_pkts, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  %mcast_no_buff_pkts300 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 1, i32 4
  %179 = ptrtoint ptr %mcast_no_buff_pkts300 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mcast_no_buff_pkts300, align 4
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %sub301 = sub i32 %178, %181
  %182 = ptrtoint ptr %total_multicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %total_multicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %sub301)
  %cmp306 = icmp ult i32 %183, %sub301
  br i1 %cmp306, label %if.then308, label %if.else334

if.then308:                                       ; preds = %do.body299
  %184 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %total_multicast_packets_received_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp313.not = icmp eq i32 %185, 0
  br i1 %cmp313.not, label %if.else323, label %if.then315

if.then315:                                       ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #9
  %dec317 = add i32 %185, -1
  %186 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %dec317, ptr %total_multicast_packets_received_hi, align 4
  %add321 = sub i32 %183, %sub301
  br label %do.body351

if.else323:                                       ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %total_multicast_packets_received_hi, align 4
  br label %do.body351

if.else334:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #9
  %sub339 = sub i32 %183, %sub301
  br label %do.body351

do.body351:                                       ; preds = %if.else334, %if.else323, %if.then315
  %.sink2488 = phi i32 [ 0, %if.else323 ], [ %add321, %if.then315 ], [ %sub339, %if.else334 ]
  %188 = ptrtoint ptr %total_multicast_packets_received_lo to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %.sink2488, ptr %total_multicast_packets_received_lo, align 4
  %bcast_no_buff_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 5
  %189 = ptrtoint ptr %bcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %bcast_no_buff_pkts, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %190)
  %bcast_no_buff_pkts352 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 1, i32 5
  %192 = ptrtoint ptr %bcast_no_buff_pkts352 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %bcast_no_buff_pkts352, align 4
  %194 = tail call i32 @llvm.bswap.i32(i32 %193)
  %sub353 = sub i32 %191, %194
  %195 = ptrtoint ptr %total_broadcast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %sub353)
  %cmp358 = icmp ult i32 %196, %sub353
  br i1 %cmp358, label %if.then360, label %if.else386

if.then360:                                       ; preds = %do.body351
  %197 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %total_broadcast_packets_received_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp365.not = icmp eq i32 %198, 0
  br i1 %cmp365.not, label %if.else375, label %if.then367

if.then367:                                       ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #9
  %dec369 = add i32 %198, -1
  %199 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %dec369, ptr %total_broadcast_packets_received_hi, align 4
  %add373 = sub i32 %196, %sub353
  br label %do.body404

if.else375:                                       ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %total_broadcast_packets_received_hi, align 4
  br label %do.body404

if.else386:                                       ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #9
  %sub391 = sub i32 %196, %sub353
  br label %do.body404

do.body404:                                       ; preds = %if.else386, %if.else375, %if.then367
  %sub391.sink = phi i32 [ %sub391, %if.else386 ], [ %add373, %if.then367 ], [ 0, %if.else375 ]
  %201 = ptrtoint ptr %total_broadcast_packets_received_lo to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %sub391.sink, ptr %total_broadcast_packets_received_lo, align 4
  %202 = ptrtoint ptr %ucast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ucast_no_buff_pkts, align 4
  %204 = tail call i32 @llvm.bswap.i32(i32 %203)
  %205 = ptrtoint ptr %ucast_no_buff_pkts250 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %ucast_no_buff_pkts250, align 4
  %207 = tail call i32 @llvm.bswap.i32(i32 %206)
  %sub407 = sub i32 %204, %207
  %208 = ptrtoint ptr %ucast_no_buff_pkts250 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %203, ptr %ucast_no_buff_pkts250, align 4
  %209 = ptrtoint ptr %no_buff_discard_lo to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %no_buff_discard_lo, align 4
  %add412 = add i32 %210, %sub407
  store i32 %add412, ptr %no_buff_discard_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add412, i32 %sub407)
  %cmp414 = icmp ult i32 %add412, %sub407
  %cond416 = zext i1 %cmp414 to i32
  %211 = ptrtoint ptr %no_buff_discard_hi to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %no_buff_discard_hi, align 4
  %add418 = add i32 %212, %cond416
  store i32 %add418, ptr %no_buff_discard_hi, align 4
  %213 = ptrtoint ptr %no_buff_discard_lo237 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %no_buff_discard_lo237, align 4
  %add425 = add i32 %214, %sub407
  store i32 %add425, ptr %no_buff_discard_lo237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add425, i32 %sub407)
  %cmp427 = icmp ult i32 %add425, %sub407
  %cond429 = zext i1 %cmp427 to i32
  %215 = ptrtoint ptr %no_buff_discard_hi243 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %no_buff_discard_hi243, align 4
  %add431 = add i32 %216, %cond429
  store i32 %add431, ptr %no_buff_discard_hi243, align 4
  %217 = ptrtoint ptr %mcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %mcast_no_buff_pkts, align 4
  %219 = tail call i32 @llvm.bswap.i32(i32 %218)
  %220 = ptrtoint ptr %mcast_no_buff_pkts300 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %mcast_no_buff_pkts300, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %221)
  %sub440 = sub i32 %219, %222
  %223 = ptrtoint ptr %mcast_no_buff_pkts300 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %218, ptr %mcast_no_buff_pkts300, align 4
  %224 = ptrtoint ptr %no_buff_discard_lo to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %no_buff_discard_lo, align 4
  %add445 = add i32 %225, %sub440
  store i32 %add445, ptr %no_buff_discard_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add445, i32 %sub440)
  %cmp447 = icmp ult i32 %add445, %sub440
  %cond449 = zext i1 %cmp447 to i32
  %226 = ptrtoint ptr %no_buff_discard_hi to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %no_buff_discard_hi, align 4
  %add451 = add i32 %227, %cond449
  store i32 %add451, ptr %no_buff_discard_hi, align 4
  %228 = ptrtoint ptr %no_buff_discard_lo237 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %no_buff_discard_lo237, align 4
  %add458 = add i32 %229, %sub440
  store i32 %add458, ptr %no_buff_discard_lo237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add458, i32 %sub440)
  %cmp460 = icmp ult i32 %add458, %sub440
  %cond462 = zext i1 %cmp460 to i32
  %230 = ptrtoint ptr %no_buff_discard_hi243 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %no_buff_discard_hi243, align 4
  %add464 = add i32 %231, %cond462
  store i32 %add464, ptr %no_buff_discard_hi243, align 4
  %232 = ptrtoint ptr %bcast_no_buff_pkts to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bcast_no_buff_pkts, align 4
  %234 = tail call i32 @llvm.bswap.i32(i32 %233)
  %235 = ptrtoint ptr %bcast_no_buff_pkts352 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %bcast_no_buff_pkts352, align 4
  %237 = tail call i32 @llvm.bswap.i32(i32 %236)
  %sub473 = sub i32 %234, %237
  %238 = ptrtoint ptr %bcast_no_buff_pkts352 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %233, ptr %bcast_no_buff_pkts352, align 4
  %239 = ptrtoint ptr %no_buff_discard_lo to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %no_buff_discard_lo, align 4
  %add478 = add i32 %240, %sub473
  store i32 %add478, ptr %no_buff_discard_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add478, i32 %sub473)
  %cmp480 = icmp ult i32 %add478, %sub473
  %cond482 = zext i1 %cmp480 to i32
  %241 = ptrtoint ptr %no_buff_discard_hi to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %no_buff_discard_hi, align 4
  %add484 = add i32 %242, %cond482
  store i32 %add484, ptr %no_buff_discard_hi, align 4
  %243 = ptrtoint ptr %no_buff_discard_lo237 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %no_buff_discard_lo237, align 4
  %add491 = add i32 %244, %sub473
  store i32 %add491, ptr %no_buff_discard_lo237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add491, i32 %sub473)
  %cmp493 = icmp ult i32 %add491, %sub473
  %cond495 = zext i1 %cmp493 to i32
  %245 = ptrtoint ptr %no_buff_discard_hi243 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %no_buff_discard_hi243, align 4
  %add497 = add i32 %246, %cond495
  store i32 %add497, ptr %no_buff_discard_hi243, align 4
  %total_broadcast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 9
  %247 = ptrtoint ptr %total_broadcast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %total_broadcast_bytes_transmitted_lo, align 4
  %bcast_bytes_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 2
  %249 = ptrtoint ptr %bcast_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %bcast_bytes_sent, align 4
  %251 = tail call i32 @llvm.bswap.i32(i32 %250)
  %add504 = add i32 %251, %248
  %total_broadcast_bytes_transmitted_lo505 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 11
  %252 = ptrtoint ptr %total_broadcast_bytes_transmitted_lo505 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %add504, ptr %total_broadcast_bytes_transmitted_lo505, align 4
  %total_broadcast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 8
  %253 = ptrtoint ptr %total_broadcast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %total_broadcast_bytes_transmitted_hi, align 4
  %hi507 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 2, i32 1
  %255 = ptrtoint ptr %hi507 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %hi507, align 4
  %257 = tail call i32 @llvm.bswap.i32(i32 %256)
  %add508 = add i32 %257, %254
  call void @__sanitizer_cov_trace_cmp4(i32 %add504, i32 %248)
  %cmp511 = icmp ult i32 %add504, %248
  %cond513 = zext i1 %cmp511 to i32
  %add514 = add i32 %add508, %cond513
  %total_broadcast_bytes_transmitted_hi515 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 10
  %258 = ptrtoint ptr %total_broadcast_bytes_transmitted_hi515 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %add514, ptr %total_broadcast_bytes_transmitted_hi515, align 4
  %total_multicast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 11
  %259 = ptrtoint ptr %total_multicast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %total_multicast_bytes_transmitted_lo, align 4
  %mcast_bytes_sent = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 1
  %261 = ptrtoint ptr %mcast_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %mcast_bytes_sent, align 4
  %263 = tail call i32 @llvm.bswap.i32(i32 %262)
  %add520 = add i32 %263, %260
  %total_multicast_bytes_transmitted_lo521 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 13
  %264 = ptrtoint ptr %total_multicast_bytes_transmitted_lo521 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %add520, ptr %total_multicast_bytes_transmitted_lo521, align 4
  %total_multicast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 10
  %265 = ptrtoint ptr %total_multicast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %total_multicast_bytes_transmitted_hi, align 4
  %hi523 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 1, i32 1
  %267 = ptrtoint ptr %hi523 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %hi523, align 4
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  %add524 = add i32 %269, %266
  call void @__sanitizer_cov_trace_cmp4(i32 %add520, i32 %260)
  %cmp527 = icmp ult i32 %add520, %260
  %cond529 = zext i1 %cmp527 to i32
  %add530 = add i32 %add524, %cond529
  %total_multicast_bytes_transmitted_hi531 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 12
  %270 = ptrtoint ptr %total_multicast_bytes_transmitted_hi531 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %add530, ptr %total_multicast_bytes_transmitted_hi531, align 4
  %total_unicast_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 7
  %271 = ptrtoint ptr %total_unicast_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %total_unicast_bytes_transmitted_lo, align 4
  %273 = ptrtoint ptr %xstorm_queue_statistics to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %xstorm_queue_statistics, align 4
  %275 = tail call i32 @llvm.bswap.i32(i32 %274)
  %add536 = add i32 %275, %272
  %total_unicast_bytes_transmitted_lo537 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 9
  %276 = ptrtoint ptr %total_unicast_bytes_transmitted_lo537 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %add536, ptr %total_unicast_bytes_transmitted_lo537, align 4
  %total_unicast_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 6
  %277 = ptrtoint ptr %total_unicast_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %total_unicast_bytes_transmitted_hi, align 4
  %hi539 = getelementptr inbounds %struct.regpair, ptr %xstorm_queue_statistics, i32 0, i32 1
  %279 = ptrtoint ptr %hi539 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %hi539, align 4
  %281 = tail call i32 @llvm.bswap.i32(i32 %280)
  %add540 = add i32 %281, %278
  call void @__sanitizer_cov_trace_cmp4(i32 %add536, i32 %272)
  %cmp543 = icmp ult i32 %add536, %272
  %cond545 = zext i1 %cmp543 to i32
  %add546 = add i32 %add540, %cond545
  %total_unicast_bytes_transmitted_hi547 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 8
  %282 = ptrtoint ptr %total_unicast_bytes_transmitted_hi547 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %add546, ptr %total_unicast_bytes_transmitted_hi547, align 4
  %total_bytes_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 14
  %total_bytes_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 15
  %add555 = add i32 %add536, %add504
  call void @__sanitizer_cov_trace_cmp4(i32 %add555, i32 %add504)
  %cmp559 = icmp ult i32 %add555, %add504
  %cond561 = zext i1 %cmp559 to i32
  %add562 = add i32 %add514, %cond561
  %add564 = add i32 %add562, %add546
  %add570 = add i32 %add555, %add520
  %283 = ptrtoint ptr %total_bytes_transmitted_lo to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %add570, ptr %total_bytes_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add570, i32 %add520)
  %cmp574 = icmp ult i32 %add570, %add520
  %cond576 = zext i1 %cmp574 to i32
  %add577 = add i32 %add530, %cond576
  %add579 = add i32 %add577, %add564
  %284 = ptrtoint ptr %total_bytes_transmitted_hi to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %add579, ptr %total_bytes_transmitted_hi, align 4
  %ucast_pkts_sent583 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 3
  %285 = ptrtoint ptr %ucast_pkts_sent583 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ucast_pkts_sent583, align 4
  %287 = tail call i32 @llvm.bswap.i32(i32 %286)
  %ucast_pkts_sent584 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 2, i32 3
  %288 = ptrtoint ptr %ucast_pkts_sent584 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %ucast_pkts_sent584, align 4
  %290 = tail call i32 @llvm.bswap.i32(i32 %289)
  %sub585 = sub i32 %287, %290
  %291 = ptrtoint ptr %ucast_pkts_sent584 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %286, ptr %ucast_pkts_sent584, align 4
  %total_unicast_packets_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 23
  %292 = ptrtoint ptr %total_unicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %total_unicast_packets_transmitted_lo, align 4
  %add589 = add i32 %293, %sub585
  store i32 %add589, ptr %total_unicast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add589, i32 %sub585)
  %cmp591 = icmp ult i32 %add589, %sub585
  %cond593 = zext i1 %cmp591 to i32
  %total_unicast_packets_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 22
  %294 = ptrtoint ptr %total_unicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %total_unicast_packets_transmitted_hi, align 4
  %add594 = add i32 %295, %cond593
  store i32 %add594, ptr %total_unicast_packets_transmitted_hi, align 4
  %mcast_pkts_sent600 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 4
  %296 = ptrtoint ptr %mcast_pkts_sent600 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %mcast_pkts_sent600, align 4
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  %mcast_pkts_sent601 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 2, i32 4
  %299 = ptrtoint ptr %mcast_pkts_sent601 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %mcast_pkts_sent601, align 4
  %301 = tail call i32 @llvm.bswap.i32(i32 %300)
  %sub602 = sub i32 %298, %301
  %302 = ptrtoint ptr %mcast_pkts_sent601 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %297, ptr %mcast_pkts_sent601, align 4
  %total_multicast_packets_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 25
  %303 = ptrtoint ptr %total_multicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %total_multicast_packets_transmitted_lo, align 4
  %add606 = add i32 %304, %sub602
  store i32 %add606, ptr %total_multicast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add606, i32 %sub602)
  %cmp608 = icmp ult i32 %add606, %sub602
  %cond610 = zext i1 %cmp608 to i32
  %total_multicast_packets_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 24
  %305 = ptrtoint ptr %total_multicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %total_multicast_packets_transmitted_hi, align 4
  %add611 = add i32 %306, %cond610
  store i32 %add611, ptr %total_multicast_packets_transmitted_hi, align 4
  %bcast_pkts_sent617 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 5
  %307 = ptrtoint ptr %bcast_pkts_sent617 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %bcast_pkts_sent617, align 4
  %309 = tail call i32 @llvm.bswap.i32(i32 %308)
  %bcast_pkts_sent618 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 2, i32 5
  %310 = ptrtoint ptr %bcast_pkts_sent618 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %bcast_pkts_sent618, align 4
  %312 = tail call i32 @llvm.bswap.i32(i32 %311)
  %sub619 = sub i32 %309, %312
  %313 = ptrtoint ptr %bcast_pkts_sent618 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %308, ptr %bcast_pkts_sent618, align 4
  %total_broadcast_packets_transmitted_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 27
  %314 = ptrtoint ptr %total_broadcast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %total_broadcast_packets_transmitted_lo, align 4
  %add623 = add i32 %315, %sub619
  store i32 %add623, ptr %total_broadcast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add623, i32 %sub619)
  %cmp625 = icmp ult i32 %add623, %sub619
  %cond627 = zext i1 %cmp625 to i32
  %total_broadcast_packets_transmitted_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 26
  %316 = ptrtoint ptr %total_broadcast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %total_broadcast_packets_transmitted_hi, align 4
  %add628 = add i32 %317, %cond627
  store i32 %add628, ptr %total_broadcast_packets_transmitted_hi, align 4
  %checksum_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 2
  %318 = ptrtoint ptr %checksum_discard to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %checksum_discard, align 4
  %320 = tail call i32 @llvm.bswap.i32(i32 %319)
  %checksum_discard634 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 2
  %321 = ptrtoint ptr %checksum_discard634 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %checksum_discard634, align 4
  %323 = tail call i32 @llvm.bswap.i32(i32 %322)
  %sub635 = sub i32 %320, %323
  %324 = ptrtoint ptr %checksum_discard634 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %319, ptr %checksum_discard634, align 4
  %total_packets_received_checksum_discarded_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 39
  %325 = ptrtoint ptr %total_packets_received_checksum_discarded_lo to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %total_packets_received_checksum_discarded_lo, align 4
  %add639 = add i32 %326, %sub635
  store i32 %add639, ptr %total_packets_received_checksum_discarded_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add639, i32 %sub635)
  %cmp641 = icmp ult i32 %add639, %sub635
  %cond643 = zext i1 %cmp641 to i32
  %total_packets_received_checksum_discarded_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 38
  %327 = ptrtoint ptr %total_packets_received_checksum_discarded_hi to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %total_packets_received_checksum_discarded_hi, align 4
  %add644 = add i32 %328, %cond643
  store i32 %add644, ptr %total_packets_received_checksum_discarded_hi, align 4
  %ttl0_discard = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx5, i32 0, i32 8
  %329 = ptrtoint ptr %ttl0_discard to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %ttl0_discard, align 4
  %331 = tail call i32 @llvm.bswap.i32(i32 %330)
  %ttl0_discard650 = getelementptr inbounds %struct.tstorm_per_queue_stats, ptr %arrayidx6, i32 0, i32 8
  %332 = ptrtoint ptr %ttl0_discard650 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %ttl0_discard650, align 4
  %334 = tail call i32 @llvm.bswap.i32(i32 %333)
  %sub651 = sub i32 %331, %334
  %335 = ptrtoint ptr %ttl0_discard650 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %330, ptr %ttl0_discard650, align 4
  %total_packets_received_ttl0_discarded_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 41
  %336 = ptrtoint ptr %total_packets_received_ttl0_discarded_lo to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %total_packets_received_ttl0_discarded_lo, align 4
  %add655 = add i32 %337, %sub651
  store i32 %add655, ptr %total_packets_received_ttl0_discarded_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add655, i32 %sub651)
  %cmp657 = icmp ult i32 %add655, %sub651
  %cond659 = zext i1 %cmp657 to i32
  %total_packets_received_ttl0_discarded_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 40
  %338 = ptrtoint ptr %total_packets_received_ttl0_discarded_hi to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %total_packets_received_ttl0_discarded_hi, align 4
  %add660 = add i32 %339, %cond659
  store i32 %add660, ptr %total_packets_received_ttl0_discarded_hi, align 4
  %error_drop_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 2, i32 6
  %340 = ptrtoint ptr %error_drop_pkts to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %error_drop_pkts, align 4
  %342 = tail call i32 @llvm.bswap.i32(i32 %341)
  %error_drop_pkts666 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 2, i32 6
  %343 = ptrtoint ptr %error_drop_pkts666 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %error_drop_pkts666, align 4
  %345 = tail call i32 @llvm.bswap.i32(i32 %344)
  %sub667 = sub i32 %342, %345
  %346 = ptrtoint ptr %error_drop_pkts666 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %341, ptr %error_drop_pkts666, align 4
  %total_transmitted_dropped_packets_error_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 43
  %347 = ptrtoint ptr %total_transmitted_dropped_packets_error_lo to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %total_transmitted_dropped_packets_error_lo, align 4
  %add671 = add i32 %348, %sub667
  store i32 %add671, ptr %total_transmitted_dropped_packets_error_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add671, i32 %sub667)
  %cmp673 = icmp ult i32 %add671, %sub667
  %cond675 = zext i1 %cmp673 to i32
  %total_transmitted_dropped_packets_error_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 42
  %349 = ptrtoint ptr %total_transmitted_dropped_packets_error_hi to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %total_transmitted_dropped_packets_error_hi, align 4
  %add676 = add i32 %350, %cond675
  store i32 %add676, ptr %total_transmitted_dropped_packets_error_hi, align 4
  %coalesced_events = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 8
  %351 = ptrtoint ptr %coalesced_events to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %coalesced_events, align 4
  %353 = tail call i32 @llvm.bswap.i32(i32 %352)
  %coalesced_events683 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 1, i32 8
  %354 = ptrtoint ptr %coalesced_events683 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %coalesced_events683, align 4
  %356 = tail call i32 @llvm.bswap.i32(i32 %355)
  %sub684 = sub i32 %353, %356
  %357 = ptrtoint ptr %coalesced_events683 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %352, ptr %coalesced_events683, align 4
  %total_tpa_aggregations_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 45
  %358 = ptrtoint ptr %total_tpa_aggregations_lo to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %total_tpa_aggregations_lo, align 4
  %add688 = add i32 %359, %sub684
  store i32 %add688, ptr %total_tpa_aggregations_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add688, i32 %sub684)
  %cmp690 = icmp ult i32 %add688, %sub684
  %cond692 = zext i1 %cmp690 to i32
  %total_tpa_aggregations_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 44
  %360 = ptrtoint ptr %total_tpa_aggregations_hi to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %total_tpa_aggregations_hi, align 4
  %add693 = add i32 %361, %cond692
  store i32 %add693, ptr %total_tpa_aggregations_hi, align 4
  %362 = ptrtoint ptr %total_tpa_aggregations_lo699 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %total_tpa_aggregations_lo699, align 4
  %add700 = add i32 %363, %sub684
  store i32 %add700, ptr %total_tpa_aggregations_lo699, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add700, i32 %sub684)
  %cmp702 = icmp ult i32 %add700, %sub684
  %cond704 = zext i1 %cmp702 to i32
  %364 = ptrtoint ptr %total_tpa_aggregations_hi705 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %total_tpa_aggregations_hi705, align 4
  %add706 = add i32 %365, %cond704
  store i32 %add706, ptr %total_tpa_aggregations_hi705, align 4
  %coalesced_pkts = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 6
  %366 = ptrtoint ptr %coalesced_pkts to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %coalesced_pkts, align 4
  %368 = tail call i32 @llvm.bswap.i32(i32 %367)
  %coalesced_pkts713 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 1, i32 6
  %369 = ptrtoint ptr %coalesced_pkts713 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %coalesced_pkts713, align 4
  %371 = tail call i32 @llvm.bswap.i32(i32 %370)
  %sub714 = sub i32 %368, %371
  %372 = ptrtoint ptr %coalesced_pkts713 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %367, ptr %coalesced_pkts713, align 4
  %total_tpa_aggregated_frames_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 47
  %373 = ptrtoint ptr %total_tpa_aggregated_frames_lo to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %total_tpa_aggregated_frames_lo, align 4
  %add718 = add i32 %374, %sub714
  store i32 %add718, ptr %total_tpa_aggregated_frames_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add718, i32 %sub714)
  %cmp720 = icmp ult i32 %add718, %sub714
  %cond722 = zext i1 %cmp720 to i32
  %total_tpa_aggregated_frames_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 46
  %375 = ptrtoint ptr %total_tpa_aggregated_frames_hi to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %total_tpa_aggregated_frames_hi, align 4
  %add723 = add i32 %376, %cond722
  store i32 %add723, ptr %total_tpa_aggregated_frames_hi, align 4
  %377 = ptrtoint ptr %total_tpa_aggregated_frames_lo729 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %total_tpa_aggregated_frames_lo729, align 4
  %add730 = add i32 %378, %sub714
  store i32 %add730, ptr %total_tpa_aggregated_frames_lo729, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add730, i32 %sub714)
  %cmp732 = icmp ult i32 %add730, %sub714
  %cond734 = zext i1 %cmp732 to i32
  %379 = ptrtoint ptr %total_tpa_aggregated_frames_hi735 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %total_tpa_aggregated_frames_hi735, align 4
  %add736 = add i32 %380, %cond734
  store i32 %add736, ptr %total_tpa_aggregated_frames_hi735, align 4
  %total_tpa_bytes_lo = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 13
  %381 = ptrtoint ptr %total_tpa_bytes_lo to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %total_tpa_bytes_lo, align 4
  %coalesced_bytes = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 7
  %383 = ptrtoint ptr %coalesced_bytes to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %coalesced_bytes, align 4
  %385 = tail call i32 @llvm.bswap.i32(i32 %384)
  %add743 = add i32 %385, %382
  %total_tpa_bytes_lo744 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 49
  %386 = ptrtoint ptr %total_tpa_bytes_lo744 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %add743, ptr %total_tpa_bytes_lo744, align 4
  %total_tpa_bytes_hi = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 12
  %387 = ptrtoint ptr %total_tpa_bytes_hi to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %total_tpa_bytes_hi, align 4
  %hi746 = getelementptr %struct.bnx2x_fw_stats_data, ptr %41, i32 0, i32 4, i32 %i.02486, i32 1, i32 7, i32 1
  %389 = ptrtoint ptr %hi746 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %hi746, align 4
  %391 = tail call i32 @llvm.bswap.i32(i32 %390)
  %add747 = add i32 %391, %388
  call void @__sanitizer_cov_trace_cmp4(i32 %add743, i32 %382)
  %cmp750 = icmp ult i32 %add743, %382
  %cond752 = zext i1 %cmp750 to i32
  %add753 = add i32 %add747, %cond752
  %total_tpa_bytes_hi754 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 3, i32 48
  %392 = ptrtoint ptr %total_tpa_bytes_hi754 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %add753, ptr %total_tpa_bytes_hi754, align 4
  %393 = ptrtoint ptr %total_tpa_bytes_lo760 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %total_tpa_bytes_lo760, align 4
  %add761 = add i32 %394, %add743
  store i32 %add761, ptr %total_tpa_bytes_lo760, align 4
  %395 = load i32, ptr %total_tpa_bytes_hi754, align 4
  %396 = ptrtoint ptr %total_tpa_bytes_lo744 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %total_tpa_bytes_lo744, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add761, i32 %397)
  %cmp765 = icmp ult i32 %add761, %397
  %cond767 = zext i1 %cmp765 to i32
  %398 = ptrtoint ptr %total_tpa_bytes_hi769 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %total_tpa_bytes_hi769, align 4
  %add768 = add i32 %399, %395
  %add770 = add i32 %add768, %cond767
  store i32 %add770, ptr %total_tpa_bytes_hi769, align 4
  %total_tpa_bytes_lo_old = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 33
  %400 = ptrtoint ptr %total_tpa_bytes_lo_old to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %total_tpa_bytes_lo_old, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add761, i32 %401)
  %cmp776 = icmp ult i32 %add761, %401
  %total_tpa_bytes_hi_old = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 32
  %402 = ptrtoint ptr %total_tpa_bytes_hi_old to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %total_tpa_bytes_hi_old, align 4
  br i1 %cmp776, label %if.then778, label %if.else798

if.then778:                                       ; preds = %do.body404
  %sub780 = sub i32 %add770, %403
  %404 = ptrtoint ptr %total_tpa_bytes_hi769 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %sub780, ptr %total_tpa_bytes_hi769, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add770, i32 %403)
  %cmp783.not = icmp eq i32 %add770, %403
  br i1 %cmp783.not, label %if.else794, label %if.then785

if.then785:                                       ; preds = %if.then778
  call void @__sanitizer_cov_trace_pc() #9
  %dec787 = add i32 %sub780, -1
  %405 = ptrtoint ptr %total_tpa_bytes_hi769 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %dec787, ptr %total_tpa_bytes_hi769, align 4
  %406 = ptrtoint ptr %total_tpa_bytes_lo_old to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %total_tpa_bytes_lo_old, align 4
  %add792 = sub i32 %add761, %407
  br label %do.end820

if.else794:                                       ; preds = %if.then778
  call void @__sanitizer_cov_trace_pc() #9
  %408 = ptrtoint ptr %total_tpa_bytes_hi769 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 0, ptr %total_tpa_bytes_hi769, align 4
  br label %do.end820

if.else798:                                       ; preds = %do.body404
  call void @__sanitizer_cov_trace_cmp4(i32 %add770, i32 %403)
  %cmp801 = icmp ult i32 %add770, %403
  br i1 %cmp801, label %if.then803, label %if.else806

if.then803:                                       ; preds = %if.else798
  call void @__sanitizer_cov_trace_pc() #9
  %409 = ptrtoint ptr %total_tpa_bytes_hi769 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 0, ptr %total_tpa_bytes_hi769, align 4
  br label %do.end820

if.else806:                                       ; preds = %if.else798
  call void @__sanitizer_cov_trace_pc() #9
  %sub809 = sub i32 %add770, %403
  %410 = ptrtoint ptr %total_tpa_bytes_hi769 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %sub809, ptr %total_tpa_bytes_hi769, align 4
  %411 = ptrtoint ptr %total_tpa_bytes_lo_old to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %total_tpa_bytes_lo_old, align 4
  %sub813 = sub i32 %add761, %412
  br label %do.end820

do.end820:                                        ; preds = %if.else806, %if.then803, %if.else794, %if.then785
  %.sink2489 = phi i32 [ 0, %if.then803 ], [ %sub813, %if.else806 ], [ %add792, %if.then785 ], [ 0, %if.else794 ]
  %413 = ptrtoint ptr %total_tpa_bytes_lo760 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %.sink2489, ptr %total_tpa_bytes_lo760, align 4
  %414 = ptrtoint ptr %total_tpa_bytes_hi754 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %total_tpa_bytes_hi754, align 4
  %total_tpa_bytes_hi_old822 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 32
  %416 = ptrtoint ptr %total_tpa_bytes_hi_old822 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %total_tpa_bytes_hi_old822, align 4
  %417 = ptrtoint ptr %total_tpa_bytes_lo744 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %total_tpa_bytes_lo744, align 4
  %419 = ptrtoint ptr %total_tpa_bytes_lo_old to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %total_tpa_bytes_lo_old, align 4
  %420 = ptrtoint ptr %total_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %total_bytes_received_lo, align 4
  %422 = ptrtoint ptr %total_bytes_received_lo830 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %total_bytes_received_lo830, align 4
  %add831 = add i32 %423, %421
  store i32 %add831, ptr %total_bytes_received_lo830, align 4
  %424 = ptrtoint ptr %total_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %total_bytes_received_hi, align 4
  %426 = load i32, ptr %total_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add831, i32 %426)
  %cmp835 = icmp ult i32 %add831, %426
  %cond837 = zext i1 %cmp835 to i32
  %427 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %total_bytes_received_hi839, align 4
  %add838 = add i32 %428, %425
  %add840 = add i32 %add838, %cond837
  store i32 %add840, ptr %total_bytes_received_hi839, align 4
  %total_bytes_received_lo846 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 15
  %429 = ptrtoint ptr %total_bytes_received_lo846 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %total_bytes_received_lo846, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add831, i32 %430)
  %cmp847 = icmp ult i32 %add831, %430
  %total_bytes_received_hi851 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 14
  %431 = ptrtoint ptr %total_bytes_received_hi851 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %total_bytes_received_hi851, align 4
  br i1 %cmp847, label %if.then849, label %if.else870

if.then849:                                       ; preds = %do.end820
  %sub852 = sub i32 %add840, %432
  %433 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %sub852, ptr %total_bytes_received_hi839, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add840, i32 %432)
  %cmp855.not = icmp eq i32 %add840, %432
  br i1 %cmp855.not, label %if.else866, label %if.then857

if.then857:                                       ; preds = %if.then849
  call void @__sanitizer_cov_trace_pc() #9
  %dec859 = add i32 %sub852, -1
  %434 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %dec859, ptr %total_bytes_received_hi839, align 4
  %435 = ptrtoint ptr %total_bytes_received_lo846 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %total_bytes_received_lo846, align 4
  %add864 = sub i32 %add831, %436
  br label %do.end892

if.else866:                                       ; preds = %if.then849
  call void @__sanitizer_cov_trace_pc() #9
  %437 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 0, ptr %total_bytes_received_hi839, align 4
  br label %do.end892

if.else870:                                       ; preds = %do.end820
  call void @__sanitizer_cov_trace_cmp4(i32 %add840, i32 %432)
  %cmp873 = icmp ult i32 %add840, %432
  br i1 %cmp873, label %if.then875, label %if.else878

if.then875:                                       ; preds = %if.else870
  call void @__sanitizer_cov_trace_pc() #9
  %438 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 0, ptr %total_bytes_received_hi839, align 4
  br label %do.end892

if.else878:                                       ; preds = %if.else870
  call void @__sanitizer_cov_trace_pc() #9
  %sub881 = sub i32 %add840, %432
  %439 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %sub881, ptr %total_bytes_received_hi839, align 4
  %440 = ptrtoint ptr %total_bytes_received_lo846 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %total_bytes_received_lo846, align 4
  %sub885 = sub i32 %add831, %441
  br label %do.end892

do.end892:                                        ; preds = %if.else878, %if.then875, %if.else866, %if.then857
  %.sink2490 = phi i32 [ 0, %if.then875 ], [ %sub885, %if.else878 ], [ %add864, %if.then857 ], [ 0, %if.else866 ]
  %442 = ptrtoint ptr %total_bytes_received_lo830 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %.sink2490, ptr %total_bytes_received_lo830, align 4
  %443 = ptrtoint ptr %total_bytes_received_hi839 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %total_bytes_received_hi839, align 4
  %445 = ptrtoint ptr %eth_stats to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %444, ptr %eth_stats, align 4
  %446 = ptrtoint ptr %total_bytes_received_lo896 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %.sink2490, ptr %total_bytes_received_lo896, align 4
  %447 = ptrtoint ptr %total_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %total_bytes_received_hi, align 4
  %total_bytes_received_hi898 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 14
  %449 = ptrtoint ptr %total_bytes_received_hi898 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %total_bytes_received_hi898, align 4
  %450 = ptrtoint ptr %total_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %total_bytes_received_lo, align 4
  %452 = ptrtoint ptr %total_bytes_received_lo846 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %total_bytes_received_lo846, align 4
  %453 = ptrtoint ptr %total_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %total_bytes_transmitted_lo, align 4
  %455 = ptrtoint ptr %total_bytes_transmitted_lo906 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %total_bytes_transmitted_lo906, align 4
  %add907 = add i32 %456, %454
  store i32 %add907, ptr %total_bytes_transmitted_lo906, align 4
  %457 = ptrtoint ptr %total_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %total_bytes_transmitted_hi, align 4
  %459 = load i32, ptr %total_bytes_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add907, i32 %459)
  %cmp911 = icmp ult i32 %add907, %459
  %cond913 = zext i1 %cmp911 to i32
  %460 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %total_bytes_transmitted_hi915, align 4
  %add914 = add i32 %461, %458
  %add916 = add i32 %add914, %cond913
  store i32 %add916, ptr %total_bytes_transmitted_hi915, align 4
  %total_bytes_transmitted_lo922 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 17
  %462 = ptrtoint ptr %total_bytes_transmitted_lo922 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %total_bytes_transmitted_lo922, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add907, i32 %463)
  %cmp923 = icmp ult i32 %add907, %463
  %total_bytes_transmitted_hi927 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 16
  %464 = ptrtoint ptr %total_bytes_transmitted_hi927 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %total_bytes_transmitted_hi927, align 4
  br i1 %cmp923, label %if.then925, label %if.else946

if.then925:                                       ; preds = %do.end892
  %sub928 = sub i32 %add916, %465
  %466 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %sub928, ptr %total_bytes_transmitted_hi915, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add916, i32 %465)
  %cmp931.not = icmp eq i32 %add916, %465
  br i1 %cmp931.not, label %if.else942, label %if.then933

if.then933:                                       ; preds = %if.then925
  call void @__sanitizer_cov_trace_pc() #9
  %dec935 = add i32 %sub928, -1
  %467 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %dec935, ptr %total_bytes_transmitted_hi915, align 4
  %468 = ptrtoint ptr %total_bytes_transmitted_lo922 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %total_bytes_transmitted_lo922, align 4
  %add940 = sub i32 %add907, %469
  br label %do.end968

if.else942:                                       ; preds = %if.then925
  call void @__sanitizer_cov_trace_pc() #9
  %470 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 0, ptr %total_bytes_transmitted_hi915, align 4
  br label %do.end968

if.else946:                                       ; preds = %do.end892
  call void @__sanitizer_cov_trace_cmp4(i32 %add916, i32 %465)
  %cmp949 = icmp ult i32 %add916, %465
  br i1 %cmp949, label %if.then951, label %if.else954

if.then951:                                       ; preds = %if.else946
  call void @__sanitizer_cov_trace_pc() #9
  %471 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 0, ptr %total_bytes_transmitted_hi915, align 4
  br label %do.end968

if.else954:                                       ; preds = %if.else946
  call void @__sanitizer_cov_trace_pc() #9
  %sub957 = sub i32 %add916, %465
  %472 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %sub957, ptr %total_bytes_transmitted_hi915, align 4
  %473 = ptrtoint ptr %total_bytes_transmitted_lo922 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %total_bytes_transmitted_lo922, align 4
  %sub961 = sub i32 %add907, %474
  br label %do.end968

do.end968:                                        ; preds = %if.else954, %if.then951, %if.else942, %if.then933
  %.sink2491 = phi i32 [ 0, %if.then951 ], [ %sub961, %if.else954 ], [ %add940, %if.then933 ], [ 0, %if.else942 ]
  %475 = ptrtoint ptr %total_bytes_transmitted_lo906 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %.sink2491, ptr %total_bytes_transmitted_lo906, align 4
  %476 = ptrtoint ptr %total_bytes_transmitted_hi915 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %total_bytes_transmitted_hi915, align 4
  %478 = ptrtoint ptr %total_bytes_transmitted_hi970 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %477, ptr %total_bytes_transmitted_hi970, align 4
  %479 = ptrtoint ptr %total_bytes_transmitted_lo972 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %.sink2491, ptr %total_bytes_transmitted_lo972, align 4
  %480 = ptrtoint ptr %total_bytes_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %total_bytes_transmitted_hi, align 4
  %total_bytes_transmitted_hi974 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 16
  %482 = ptrtoint ptr %total_bytes_transmitted_hi974 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %481, ptr %total_bytes_transmitted_hi974, align 4
  %483 = ptrtoint ptr %total_bytes_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %total_bytes_transmitted_lo, align 4
  %485 = ptrtoint ptr %total_bytes_transmitted_lo922 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %484, ptr %total_bytes_transmitted_lo922, align 4
  %486 = ptrtoint ptr %total_unicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %total_unicast_packets_received_lo, align 4
  %488 = ptrtoint ptr %total_unicast_packets_received_lo982 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %total_unicast_packets_received_lo982, align 4
  %add983 = add i32 %489, %487
  store i32 %add983, ptr %total_unicast_packets_received_lo982, align 4
  %490 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %total_unicast_packets_received_hi, align 4
  %492 = load i32, ptr %total_unicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add983, i32 %492)
  %cmp987 = icmp ult i32 %add983, %492
  %cond989 = zext i1 %cmp987 to i32
  %493 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %total_unicast_packets_received_hi991, align 4
  %add990 = add i32 %494, %491
  %add992 = add i32 %add990, %cond989
  store i32 %add992, ptr %total_unicast_packets_received_hi991, align 4
  %total_unicast_packets_received_lo998 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 19
  %495 = ptrtoint ptr %total_unicast_packets_received_lo998 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %total_unicast_packets_received_lo998, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add983, i32 %496)
  %cmp999 = icmp ult i32 %add983, %496
  %total_unicast_packets_received_hi1003 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 18
  %497 = ptrtoint ptr %total_unicast_packets_received_hi1003 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %total_unicast_packets_received_hi1003, align 4
  br i1 %cmp999, label %if.then1001, label %if.else1022

if.then1001:                                      ; preds = %do.end968
  %sub1004 = sub i32 %add992, %498
  %499 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %sub1004, ptr %total_unicast_packets_received_hi991, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add992, i32 %498)
  %cmp1007.not = icmp eq i32 %add992, %498
  br i1 %cmp1007.not, label %if.else1018, label %if.then1009

if.then1009:                                      ; preds = %if.then1001
  call void @__sanitizer_cov_trace_pc() #9
  %dec1011 = add i32 %sub1004, -1
  %500 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %dec1011, ptr %total_unicast_packets_received_hi991, align 4
  %501 = ptrtoint ptr %total_unicast_packets_received_lo998 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %total_unicast_packets_received_lo998, align 4
  %add1016 = sub i32 %add983, %502
  br label %do.end1044

if.else1018:                                      ; preds = %if.then1001
  call void @__sanitizer_cov_trace_pc() #9
  %503 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 0, ptr %total_unicast_packets_received_hi991, align 4
  br label %do.end1044

if.else1022:                                      ; preds = %do.end968
  call void @__sanitizer_cov_trace_cmp4(i32 %add992, i32 %498)
  %cmp1025 = icmp ult i32 %add992, %498
  br i1 %cmp1025, label %if.then1027, label %if.else1030

if.then1027:                                      ; preds = %if.else1022
  call void @__sanitizer_cov_trace_pc() #9
  %504 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 0, ptr %total_unicast_packets_received_hi991, align 4
  br label %do.end1044

if.else1030:                                      ; preds = %if.else1022
  call void @__sanitizer_cov_trace_pc() #9
  %sub1033 = sub i32 %add992, %498
  %505 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %sub1033, ptr %total_unicast_packets_received_hi991, align 4
  %506 = ptrtoint ptr %total_unicast_packets_received_lo998 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %total_unicast_packets_received_lo998, align 4
  %sub1037 = sub i32 %add983, %507
  br label %do.end1044

do.end1044:                                       ; preds = %if.else1030, %if.then1027, %if.else1018, %if.then1009
  %.sink2492 = phi i32 [ 0, %if.then1027 ], [ %sub1037, %if.else1030 ], [ %add1016, %if.then1009 ], [ 0, %if.else1018 ]
  %508 = ptrtoint ptr %total_unicast_packets_received_lo982 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %.sink2492, ptr %total_unicast_packets_received_lo982, align 4
  %509 = ptrtoint ptr %total_unicast_packets_received_hi991 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %total_unicast_packets_received_hi991, align 4
  %511 = ptrtoint ptr %total_unicast_packets_received_hi1046 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %510, ptr %total_unicast_packets_received_hi1046, align 4
  %512 = ptrtoint ptr %total_unicast_packets_received_lo1048 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %.sink2492, ptr %total_unicast_packets_received_lo1048, align 4
  %513 = ptrtoint ptr %total_unicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %total_unicast_packets_received_hi, align 4
  %total_unicast_packets_received_hi1050 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 18
  %515 = ptrtoint ptr %total_unicast_packets_received_hi1050 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %514, ptr %total_unicast_packets_received_hi1050, align 4
  %516 = ptrtoint ptr %total_unicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %total_unicast_packets_received_lo, align 4
  %518 = ptrtoint ptr %total_unicast_packets_received_lo998 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %517, ptr %total_unicast_packets_received_lo998, align 4
  %519 = ptrtoint ptr %total_multicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %total_multicast_packets_received_lo, align 4
  %521 = ptrtoint ptr %total_multicast_packets_received_lo1058 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %total_multicast_packets_received_lo1058, align 4
  %add1059 = add i32 %522, %520
  store i32 %add1059, ptr %total_multicast_packets_received_lo1058, align 4
  %523 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %total_multicast_packets_received_hi, align 4
  %525 = load i32, ptr %total_multicast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1059, i32 %525)
  %cmp1063 = icmp ult i32 %add1059, %525
  %cond1065 = zext i1 %cmp1063 to i32
  %526 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %total_multicast_packets_received_hi1067, align 4
  %add1066 = add i32 %527, %524
  %add1068 = add i32 %add1066, %cond1065
  store i32 %add1068, ptr %total_multicast_packets_received_hi1067, align 4
  %total_multicast_packets_received_lo1074 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 21
  %528 = ptrtoint ptr %total_multicast_packets_received_lo1074 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %total_multicast_packets_received_lo1074, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1059, i32 %529)
  %cmp1075 = icmp ult i32 %add1059, %529
  %total_multicast_packets_received_hi1079 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 20
  %530 = ptrtoint ptr %total_multicast_packets_received_hi1079 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %total_multicast_packets_received_hi1079, align 4
  br i1 %cmp1075, label %if.then1077, label %if.else1098

if.then1077:                                      ; preds = %do.end1044
  %sub1080 = sub i32 %add1068, %531
  %532 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 %sub1080, ptr %total_multicast_packets_received_hi1067, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1068, i32 %531)
  %cmp1083.not = icmp eq i32 %add1068, %531
  br i1 %cmp1083.not, label %if.else1094, label %if.then1085

if.then1085:                                      ; preds = %if.then1077
  call void @__sanitizer_cov_trace_pc() #9
  %dec1087 = add i32 %sub1080, -1
  %533 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %dec1087, ptr %total_multicast_packets_received_hi1067, align 4
  %534 = ptrtoint ptr %total_multicast_packets_received_lo1074 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %total_multicast_packets_received_lo1074, align 4
  %add1092 = sub i32 %add1059, %535
  br label %do.end1120

if.else1094:                                      ; preds = %if.then1077
  call void @__sanitizer_cov_trace_pc() #9
  %536 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 0, ptr %total_multicast_packets_received_hi1067, align 4
  br label %do.end1120

if.else1098:                                      ; preds = %do.end1044
  call void @__sanitizer_cov_trace_cmp4(i32 %add1068, i32 %531)
  %cmp1101 = icmp ult i32 %add1068, %531
  br i1 %cmp1101, label %if.then1103, label %if.else1106

if.then1103:                                      ; preds = %if.else1098
  call void @__sanitizer_cov_trace_pc() #9
  %537 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 0, ptr %total_multicast_packets_received_hi1067, align 4
  br label %do.end1120

if.else1106:                                      ; preds = %if.else1098
  call void @__sanitizer_cov_trace_pc() #9
  %sub1109 = sub i32 %add1068, %531
  %538 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %sub1109, ptr %total_multicast_packets_received_hi1067, align 4
  %539 = ptrtoint ptr %total_multicast_packets_received_lo1074 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %total_multicast_packets_received_lo1074, align 4
  %sub1113 = sub i32 %add1059, %540
  br label %do.end1120

do.end1120:                                       ; preds = %if.else1106, %if.then1103, %if.else1094, %if.then1085
  %.sink2493 = phi i32 [ 0, %if.then1103 ], [ %sub1113, %if.else1106 ], [ %add1092, %if.then1085 ], [ 0, %if.else1094 ]
  %541 = ptrtoint ptr %total_multicast_packets_received_lo1058 to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %.sink2493, ptr %total_multicast_packets_received_lo1058, align 4
  %542 = ptrtoint ptr %total_multicast_packets_received_hi1067 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %total_multicast_packets_received_hi1067, align 4
  %544 = ptrtoint ptr %total_multicast_packets_received_hi1122 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %543, ptr %total_multicast_packets_received_hi1122, align 4
  %545 = ptrtoint ptr %total_multicast_packets_received_lo1124 to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %.sink2493, ptr %total_multicast_packets_received_lo1124, align 4
  %546 = ptrtoint ptr %total_multicast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %total_multicast_packets_received_hi, align 4
  %total_multicast_packets_received_hi1126 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 20
  %548 = ptrtoint ptr %total_multicast_packets_received_hi1126 to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %547, ptr %total_multicast_packets_received_hi1126, align 4
  %549 = ptrtoint ptr %total_multicast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %total_multicast_packets_received_lo, align 4
  %551 = ptrtoint ptr %total_multicast_packets_received_lo1074 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %550, ptr %total_multicast_packets_received_lo1074, align 4
  %552 = ptrtoint ptr %total_broadcast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  %554 = ptrtoint ptr %total_broadcast_packets_received_lo1134 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %total_broadcast_packets_received_lo1134, align 4
  %add1135 = add i32 %555, %553
  store i32 %add1135, ptr %total_broadcast_packets_received_lo1134, align 4
  %556 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %total_broadcast_packets_received_hi, align 4
  %558 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1135, i32 %558)
  %cmp1139 = icmp ult i32 %add1135, %558
  %cond1141 = zext i1 %cmp1139 to i32
  %559 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %total_broadcast_packets_received_hi1143, align 4
  %add1142 = add i32 %560, %557
  %add1144 = add i32 %add1142, %cond1141
  store i32 %add1144, ptr %total_broadcast_packets_received_hi1143, align 4
  %total_broadcast_packets_received_lo1150 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 23
  %561 = ptrtoint ptr %total_broadcast_packets_received_lo1150 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %total_broadcast_packets_received_lo1150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1135, i32 %562)
  %cmp1151 = icmp ult i32 %add1135, %562
  %total_broadcast_packets_received_hi1155 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 22
  %563 = ptrtoint ptr %total_broadcast_packets_received_hi1155 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %total_broadcast_packets_received_hi1155, align 4
  br i1 %cmp1151, label %if.then1153, label %if.else1174

if.then1153:                                      ; preds = %do.end1120
  %sub1156 = sub i32 %add1144, %564
  %565 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %sub1156, ptr %total_broadcast_packets_received_hi1143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1144, i32 %564)
  %cmp1159.not = icmp eq i32 %add1144, %564
  br i1 %cmp1159.not, label %if.else1170, label %if.then1161

if.then1161:                                      ; preds = %if.then1153
  call void @__sanitizer_cov_trace_pc() #9
  %dec1163 = add i32 %sub1156, -1
  %566 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %dec1163, ptr %total_broadcast_packets_received_hi1143, align 4
  %567 = ptrtoint ptr %total_broadcast_packets_received_lo1150 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %total_broadcast_packets_received_lo1150, align 4
  %add1168 = sub i32 %add1135, %568
  br label %do.end1196

if.else1170:                                      ; preds = %if.then1153
  call void @__sanitizer_cov_trace_pc() #9
  %569 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 0, ptr %total_broadcast_packets_received_hi1143, align 4
  br label %do.end1196

if.else1174:                                      ; preds = %do.end1120
  call void @__sanitizer_cov_trace_cmp4(i32 %add1144, i32 %564)
  %cmp1177 = icmp ult i32 %add1144, %564
  br i1 %cmp1177, label %if.then1179, label %if.else1182

if.then1179:                                      ; preds = %if.else1174
  call void @__sanitizer_cov_trace_pc() #9
  %570 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 0, ptr %total_broadcast_packets_received_hi1143, align 4
  br label %do.end1196

if.else1182:                                      ; preds = %if.else1174
  call void @__sanitizer_cov_trace_pc() #9
  %sub1185 = sub i32 %add1144, %564
  %571 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %sub1185, ptr %total_broadcast_packets_received_hi1143, align 4
  %572 = ptrtoint ptr %total_broadcast_packets_received_lo1150 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %total_broadcast_packets_received_lo1150, align 4
  %sub1189 = sub i32 %add1135, %573
  br label %do.end1196

do.end1196:                                       ; preds = %if.else1182, %if.then1179, %if.else1170, %if.then1161
  %.sink2494 = phi i32 [ 0, %if.then1179 ], [ %sub1189, %if.else1182 ], [ %add1168, %if.then1161 ], [ 0, %if.else1170 ]
  %574 = ptrtoint ptr %total_broadcast_packets_received_lo1134 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %.sink2494, ptr %total_broadcast_packets_received_lo1134, align 4
  %575 = ptrtoint ptr %total_broadcast_packets_received_hi1143 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %total_broadcast_packets_received_hi1143, align 4
  %577 = ptrtoint ptr %total_broadcast_packets_received_hi1198 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %576, ptr %total_broadcast_packets_received_hi1198, align 4
  %578 = ptrtoint ptr %total_broadcast_packets_received_lo1200 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %.sink2494, ptr %total_broadcast_packets_received_lo1200, align 4
  %579 = ptrtoint ptr %total_broadcast_packets_received_hi to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %total_broadcast_packets_received_hi, align 4
  %total_broadcast_packets_received_hi1202 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 22
  %581 = ptrtoint ptr %total_broadcast_packets_received_hi1202 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %580, ptr %total_broadcast_packets_received_hi1202, align 4
  %582 = ptrtoint ptr %total_broadcast_packets_received_lo to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %total_broadcast_packets_received_lo, align 4
  %584 = ptrtoint ptr %total_broadcast_packets_received_lo1150 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 %583, ptr %total_broadcast_packets_received_lo1150, align 4
  %585 = ptrtoint ptr %total_unicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %total_unicast_packets_transmitted_lo, align 4
  %587 = ptrtoint ptr %total_unicast_packets_transmitted_lo1210 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %total_unicast_packets_transmitted_lo1210, align 4
  %add1211 = add i32 %588, %586
  store i32 %add1211, ptr %total_unicast_packets_transmitted_lo1210, align 4
  %589 = ptrtoint ptr %total_unicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %total_unicast_packets_transmitted_hi, align 4
  %591 = load i32, ptr %total_unicast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1211, i32 %591)
  %cmp1215 = icmp ult i32 %add1211, %591
  %cond1217 = zext i1 %cmp1215 to i32
  %592 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %total_unicast_packets_transmitted_hi1219, align 4
  %add1218 = add i32 %593, %590
  %add1220 = add i32 %add1218, %cond1217
  store i32 %add1220, ptr %total_unicast_packets_transmitted_hi1219, align 4
  %total_unicast_packets_transmitted_lo1226 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 25
  %594 = ptrtoint ptr %total_unicast_packets_transmitted_lo1226 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %total_unicast_packets_transmitted_lo1226, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1211, i32 %595)
  %cmp1227 = icmp ult i32 %add1211, %595
  %total_unicast_packets_transmitted_hi1231 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 24
  %596 = ptrtoint ptr %total_unicast_packets_transmitted_hi1231 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %total_unicast_packets_transmitted_hi1231, align 4
  br i1 %cmp1227, label %if.then1229, label %if.else1250

if.then1229:                                      ; preds = %do.end1196
  %sub1232 = sub i32 %add1220, %597
  %598 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 %sub1232, ptr %total_unicast_packets_transmitted_hi1219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1220, i32 %597)
  %cmp1235.not = icmp eq i32 %add1220, %597
  br i1 %cmp1235.not, label %if.else1246, label %if.then1237

if.then1237:                                      ; preds = %if.then1229
  call void @__sanitizer_cov_trace_pc() #9
  %dec1239 = add i32 %sub1232, -1
  %599 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_store4_noabort(i32 %599)
  store i32 %dec1239, ptr %total_unicast_packets_transmitted_hi1219, align 4
  %600 = ptrtoint ptr %total_unicast_packets_transmitted_lo1226 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %total_unicast_packets_transmitted_lo1226, align 4
  %add1244 = sub i32 %add1211, %601
  br label %do.end1272

if.else1246:                                      ; preds = %if.then1229
  call void @__sanitizer_cov_trace_pc() #9
  %602 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_store4_noabort(i32 %602)
  store i32 0, ptr %total_unicast_packets_transmitted_hi1219, align 4
  br label %do.end1272

if.else1250:                                      ; preds = %do.end1196
  call void @__sanitizer_cov_trace_cmp4(i32 %add1220, i32 %597)
  %cmp1253 = icmp ult i32 %add1220, %597
  br i1 %cmp1253, label %if.then1255, label %if.else1258

if.then1255:                                      ; preds = %if.else1250
  call void @__sanitizer_cov_trace_pc() #9
  %603 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 0, ptr %total_unicast_packets_transmitted_hi1219, align 4
  br label %do.end1272

if.else1258:                                      ; preds = %if.else1250
  call void @__sanitizer_cov_trace_pc() #9
  %sub1261 = sub i32 %add1220, %597
  %604 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_store4_noabort(i32 %604)
  store i32 %sub1261, ptr %total_unicast_packets_transmitted_hi1219, align 4
  %605 = ptrtoint ptr %total_unicast_packets_transmitted_lo1226 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %total_unicast_packets_transmitted_lo1226, align 4
  %sub1265 = sub i32 %add1211, %606
  br label %do.end1272

do.end1272:                                       ; preds = %if.else1258, %if.then1255, %if.else1246, %if.then1237
  %.sink2495 = phi i32 [ 0, %if.then1255 ], [ %sub1265, %if.else1258 ], [ %add1244, %if.then1237 ], [ 0, %if.else1246 ]
  %607 = ptrtoint ptr %total_unicast_packets_transmitted_lo1210 to i32
  call void @__asan_store4_noabort(i32 %607)
  store i32 %.sink2495, ptr %total_unicast_packets_transmitted_lo1210, align 4
  %608 = ptrtoint ptr %total_unicast_packets_transmitted_hi1219 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %total_unicast_packets_transmitted_hi1219, align 4
  %610 = ptrtoint ptr %total_unicast_packets_transmitted_hi1274 to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 %609, ptr %total_unicast_packets_transmitted_hi1274, align 4
  %611 = ptrtoint ptr %total_unicast_packets_transmitted_lo1276 to i32
  call void @__asan_store4_noabort(i32 %611)
  store i32 %.sink2495, ptr %total_unicast_packets_transmitted_lo1276, align 4
  %612 = ptrtoint ptr %total_unicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %total_unicast_packets_transmitted_hi, align 4
  %total_unicast_packets_transmitted_hi1278 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 24
  %614 = ptrtoint ptr %total_unicast_packets_transmitted_hi1278 to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 %613, ptr %total_unicast_packets_transmitted_hi1278, align 4
  %615 = ptrtoint ptr %total_unicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %total_unicast_packets_transmitted_lo, align 4
  %617 = ptrtoint ptr %total_unicast_packets_transmitted_lo1226 to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 %616, ptr %total_unicast_packets_transmitted_lo1226, align 4
  %618 = ptrtoint ptr %total_multicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %total_multicast_packets_transmitted_lo, align 4
  %620 = ptrtoint ptr %total_multicast_packets_transmitted_lo1286 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %total_multicast_packets_transmitted_lo1286, align 4
  %add1287 = add i32 %621, %619
  store i32 %add1287, ptr %total_multicast_packets_transmitted_lo1286, align 4
  %622 = ptrtoint ptr %total_multicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %total_multicast_packets_transmitted_hi, align 4
  %624 = load i32, ptr %total_multicast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1287, i32 %624)
  %cmp1291 = icmp ult i32 %add1287, %624
  %cond1293 = zext i1 %cmp1291 to i32
  %625 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %total_multicast_packets_transmitted_hi1295, align 4
  %add1294 = add i32 %626, %623
  %add1296 = add i32 %add1294, %cond1293
  store i32 %add1296, ptr %total_multicast_packets_transmitted_hi1295, align 4
  %total_multicast_packets_transmitted_lo1302 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 27
  %627 = ptrtoint ptr %total_multicast_packets_transmitted_lo1302 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %total_multicast_packets_transmitted_lo1302, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1287, i32 %628)
  %cmp1303 = icmp ult i32 %add1287, %628
  %total_multicast_packets_transmitted_hi1307 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 26
  %629 = ptrtoint ptr %total_multicast_packets_transmitted_hi1307 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %total_multicast_packets_transmitted_hi1307, align 4
  br i1 %cmp1303, label %if.then1305, label %if.else1326

if.then1305:                                      ; preds = %do.end1272
  %sub1308 = sub i32 %add1296, %630
  %631 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_store4_noabort(i32 %631)
  store i32 %sub1308, ptr %total_multicast_packets_transmitted_hi1295, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1296, i32 %630)
  %cmp1311.not = icmp eq i32 %add1296, %630
  br i1 %cmp1311.not, label %if.else1322, label %if.then1313

if.then1313:                                      ; preds = %if.then1305
  call void @__sanitizer_cov_trace_pc() #9
  %dec1315 = add i32 %sub1308, -1
  %632 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 %dec1315, ptr %total_multicast_packets_transmitted_hi1295, align 4
  %633 = ptrtoint ptr %total_multicast_packets_transmitted_lo1302 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %total_multicast_packets_transmitted_lo1302, align 4
  %add1320 = sub i32 %add1287, %634
  br label %do.end1348

if.else1322:                                      ; preds = %if.then1305
  call void @__sanitizer_cov_trace_pc() #9
  %635 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_store4_noabort(i32 %635)
  store i32 0, ptr %total_multicast_packets_transmitted_hi1295, align 4
  br label %do.end1348

if.else1326:                                      ; preds = %do.end1272
  call void @__sanitizer_cov_trace_cmp4(i32 %add1296, i32 %630)
  %cmp1329 = icmp ult i32 %add1296, %630
  br i1 %cmp1329, label %if.then1331, label %if.else1334

if.then1331:                                      ; preds = %if.else1326
  call void @__sanitizer_cov_trace_pc() #9
  %636 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 0, ptr %total_multicast_packets_transmitted_hi1295, align 4
  br label %do.end1348

if.else1334:                                      ; preds = %if.else1326
  call void @__sanitizer_cov_trace_pc() #9
  %sub1337 = sub i32 %add1296, %630
  %637 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 %sub1337, ptr %total_multicast_packets_transmitted_hi1295, align 4
  %638 = ptrtoint ptr %total_multicast_packets_transmitted_lo1302 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %total_multicast_packets_transmitted_lo1302, align 4
  %sub1341 = sub i32 %add1287, %639
  br label %do.end1348

do.end1348:                                       ; preds = %if.else1334, %if.then1331, %if.else1322, %if.then1313
  %.sink2496 = phi i32 [ 0, %if.then1331 ], [ %sub1341, %if.else1334 ], [ %add1320, %if.then1313 ], [ 0, %if.else1322 ]
  %640 = ptrtoint ptr %total_multicast_packets_transmitted_lo1286 to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 %.sink2496, ptr %total_multicast_packets_transmitted_lo1286, align 4
  %641 = ptrtoint ptr %total_multicast_packets_transmitted_hi1295 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %total_multicast_packets_transmitted_hi1295, align 4
  %643 = ptrtoint ptr %total_multicast_packets_transmitted_hi1350 to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 %642, ptr %total_multicast_packets_transmitted_hi1350, align 4
  %644 = ptrtoint ptr %total_multicast_packets_transmitted_lo1352 to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 %.sink2496, ptr %total_multicast_packets_transmitted_lo1352, align 4
  %645 = ptrtoint ptr %total_multicast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %total_multicast_packets_transmitted_hi, align 4
  %total_multicast_packets_transmitted_hi1354 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 26
  %647 = ptrtoint ptr %total_multicast_packets_transmitted_hi1354 to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %646, ptr %total_multicast_packets_transmitted_hi1354, align 4
  %648 = ptrtoint ptr %total_multicast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %total_multicast_packets_transmitted_lo, align 4
  %650 = ptrtoint ptr %total_multicast_packets_transmitted_lo1302 to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 %649, ptr %total_multicast_packets_transmitted_lo1302, align 4
  %651 = ptrtoint ptr %total_broadcast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %total_broadcast_packets_transmitted_lo, align 4
  %653 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1362 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %total_broadcast_packets_transmitted_lo1362, align 4
  %add1363 = add i32 %654, %652
  store i32 %add1363, ptr %total_broadcast_packets_transmitted_lo1362, align 4
  %655 = ptrtoint ptr %total_broadcast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %total_broadcast_packets_transmitted_hi, align 4
  %657 = load i32, ptr %total_broadcast_packets_transmitted_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1363, i32 %657)
  %cmp1367 = icmp ult i32 %add1363, %657
  %cond1369 = zext i1 %cmp1367 to i32
  %658 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  %add1370 = add i32 %659, %656
  %add1372 = add i32 %add1370, %cond1369
  store i32 %add1372, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  %total_broadcast_packets_transmitted_lo1378 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 29
  %660 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1378 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %total_broadcast_packets_transmitted_lo1378, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1363, i32 %661)
  %cmp1379 = icmp ult i32 %add1363, %661
  %total_broadcast_packets_transmitted_hi1383 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 28
  %662 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1383 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %total_broadcast_packets_transmitted_hi1383, align 4
  br i1 %cmp1379, label %if.then1381, label %if.else1402

if.then1381:                                      ; preds = %do.end1348
  %sub1384 = sub i32 %add1372, %663
  %664 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %sub1384, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1372, i32 %663)
  %cmp1387.not = icmp eq i32 %add1372, %663
  br i1 %cmp1387.not, label %if.else1398, label %if.then1389

if.then1389:                                      ; preds = %if.then1381
  call void @__sanitizer_cov_trace_pc() #9
  %dec1391 = add i32 %sub1384, -1
  %665 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_store4_noabort(i32 %665)
  store i32 %dec1391, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  %666 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1378 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %total_broadcast_packets_transmitted_lo1378, align 4
  %add1396 = sub i32 %add1363, %667
  br label %do.end1424

if.else1398:                                      ; preds = %if.then1381
  call void @__sanitizer_cov_trace_pc() #9
  %668 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 0, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  br label %do.end1424

if.else1402:                                      ; preds = %do.end1348
  call void @__sanitizer_cov_trace_cmp4(i32 %add1372, i32 %663)
  %cmp1405 = icmp ult i32 %add1372, %663
  br i1 %cmp1405, label %if.then1407, label %if.else1410

if.then1407:                                      ; preds = %if.else1402
  call void @__sanitizer_cov_trace_pc() #9
  %669 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_store4_noabort(i32 %669)
  store i32 0, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  br label %do.end1424

if.else1410:                                      ; preds = %if.else1402
  call void @__sanitizer_cov_trace_pc() #9
  %sub1413 = sub i32 %add1372, %663
  %670 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 %sub1413, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  %671 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1378 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %total_broadcast_packets_transmitted_lo1378, align 4
  %sub1417 = sub i32 %add1363, %672
  br label %do.end1424

do.end1424:                                       ; preds = %if.else1410, %if.then1407, %if.else1398, %if.then1389
  %.sink2497 = phi i32 [ 0, %if.then1407 ], [ %sub1417, %if.else1410 ], [ %add1396, %if.then1389 ], [ 0, %if.else1398 ]
  %673 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1362 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 %.sink2497, ptr %total_broadcast_packets_transmitted_lo1362, align 4
  %674 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1371 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %total_broadcast_packets_transmitted_hi1371, align 4
  %676 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1426 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %675, ptr %total_broadcast_packets_transmitted_hi1426, align 4
  %677 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1428 to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %.sink2497, ptr %total_broadcast_packets_transmitted_lo1428, align 4
  %678 = ptrtoint ptr %total_broadcast_packets_transmitted_hi to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %total_broadcast_packets_transmitted_hi, align 4
  %total_broadcast_packets_transmitted_hi1430 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 28
  %680 = ptrtoint ptr %total_broadcast_packets_transmitted_hi1430 to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 %679, ptr %total_broadcast_packets_transmitted_hi1430, align 4
  %681 = ptrtoint ptr %total_broadcast_packets_transmitted_lo to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %total_broadcast_packets_transmitted_lo, align 4
  %683 = ptrtoint ptr %total_broadcast_packets_transmitted_lo1378 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 %682, ptr %total_broadcast_packets_transmitted_lo1378, align 4
  %684 = ptrtoint ptr %valid_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %valid_bytes_received_lo, align 4
  %686 = ptrtoint ptr %valid_bytes_received_lo1438 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %valid_bytes_received_lo1438, align 4
  %add1439 = add i32 %687, %685
  store i32 %add1439, ptr %valid_bytes_received_lo1438, align 4
  %688 = ptrtoint ptr %valid_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %valid_bytes_received_hi, align 4
  %690 = load i32, ptr %valid_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1439, i32 %690)
  %cmp1443 = icmp ult i32 %add1439, %690
  %cond1445 = zext i1 %cmp1443 to i32
  %691 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %valid_bytes_received_hi1447, align 4
  %add1446 = add i32 %692, %689
  %add1448 = add i32 %add1446, %cond1445
  store i32 %add1448, ptr %valid_bytes_received_hi1447, align 4
  %valid_bytes_received_lo1454 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 31
  %693 = ptrtoint ptr %valid_bytes_received_lo1454 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %valid_bytes_received_lo1454, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1439, i32 %694)
  %cmp1455 = icmp ult i32 %add1439, %694
  %valid_bytes_received_hi1459 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 30
  %695 = ptrtoint ptr %valid_bytes_received_hi1459 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %valid_bytes_received_hi1459, align 4
  br i1 %cmp1455, label %if.then1457, label %if.else1478

if.then1457:                                      ; preds = %do.end1424
  %sub1460 = sub i32 %add1448, %696
  %697 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 %sub1460, ptr %valid_bytes_received_hi1447, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1448, i32 %696)
  %cmp1463.not = icmp eq i32 %add1448, %696
  br i1 %cmp1463.not, label %if.else1474, label %if.then1465

if.then1465:                                      ; preds = %if.then1457
  call void @__sanitizer_cov_trace_pc() #9
  %dec1467 = add i32 %sub1460, -1
  %698 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 %dec1467, ptr %valid_bytes_received_hi1447, align 4
  %699 = ptrtoint ptr %valid_bytes_received_lo1454 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %valid_bytes_received_lo1454, align 4
  %add1472 = sub i32 %add1439, %700
  br label %do.end1500

if.else1474:                                      ; preds = %if.then1457
  call void @__sanitizer_cov_trace_pc() #9
  %701 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 0, ptr %valid_bytes_received_hi1447, align 4
  br label %do.end1500

if.else1478:                                      ; preds = %do.end1424
  call void @__sanitizer_cov_trace_cmp4(i32 %add1448, i32 %696)
  %cmp1481 = icmp ult i32 %add1448, %696
  br i1 %cmp1481, label %if.then1483, label %if.else1486

if.then1483:                                      ; preds = %if.else1478
  call void @__sanitizer_cov_trace_pc() #9
  %702 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_store4_noabort(i32 %702)
  store i32 0, ptr %valid_bytes_received_hi1447, align 4
  br label %do.end1500

if.else1486:                                      ; preds = %if.else1478
  call void @__sanitizer_cov_trace_pc() #9
  %sub1489 = sub i32 %add1448, %696
  %703 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %sub1489, ptr %valid_bytes_received_hi1447, align 4
  %704 = ptrtoint ptr %valid_bytes_received_lo1454 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %valid_bytes_received_lo1454, align 4
  %sub1493 = sub i32 %add1439, %705
  br label %do.end1500

do.end1500:                                       ; preds = %if.else1486, %if.then1483, %if.else1474, %if.then1465
  %.sink2498 = phi i32 [ 0, %if.then1483 ], [ %sub1493, %if.else1486 ], [ %add1472, %if.then1465 ], [ 0, %if.else1474 ]
  %706 = ptrtoint ptr %valid_bytes_received_lo1438 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %.sink2498, ptr %valid_bytes_received_lo1438, align 4
  %707 = ptrtoint ptr %valid_bytes_received_hi1447 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %valid_bytes_received_hi1447, align 4
  %709 = ptrtoint ptr %valid_bytes_received_hi1502 to i32
  call void @__asan_store4_noabort(i32 %709)
  store i32 %708, ptr %valid_bytes_received_hi1502, align 4
  %710 = ptrtoint ptr %valid_bytes_received_lo1504 to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 %.sink2498, ptr %valid_bytes_received_lo1504, align 4
  %711 = ptrtoint ptr %valid_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %valid_bytes_received_hi, align 4
  %valid_bytes_received_hi1506 = getelementptr %struct.bnx2x_fp_stats, ptr %43, i32 %idxprom, i32 4, i32 30
  %713 = ptrtoint ptr %valid_bytes_received_hi1506 to i32
  call void @__asan_store4_noabort(i32 %713)
  store i32 %712, ptr %valid_bytes_received_hi1506, align 4
  %714 = ptrtoint ptr %valid_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %valid_bytes_received_lo, align 4
  %716 = ptrtoint ptr %valid_bytes_received_lo1454 to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 %715, ptr %valid_bytes_received_lo1454, align 4
  %inc = add nuw i32 %i.02486, 1
  %717 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %num_ethernet_queues, align 8
  %cmp = icmp ult i32 %inc, %718
  br i1 %cmp, label %do.end1500.for.body_crit_edge, label %do.end1500.do.body1511_crit_edge

do.end1500.do.body1511_crit_edge:                 ; preds = %do.end1500
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1511

do.end1500.for.body_crit_edge:                    ; preds = %do.end1500
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body1511:                                      ; preds = %do.end1500.do.body1511_crit_edge, %if.end.do.body1511_crit_edge
  %719 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24
  %rx_stat_ifhcinbadoctets_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 1
  %720 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %rx_stat_ifhcinbadoctets_lo, align 4
  %total_bytes_received_lo1512 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 1
  %722 = ptrtoint ptr %total_bytes_received_lo1512 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %total_bytes_received_lo1512, align 4
  %add1513 = add i32 %723, %721
  store i32 %add1513, ptr %total_bytes_received_lo1512, align 4
  %724 = ptrtoint ptr %719 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %719, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1513, i32 %721)
  %cmp1516 = icmp ult i32 %add1513, %721
  %cond1518 = zext i1 %cmp1516 to i32
  %add1519 = add i32 %725, %cond1518
  %726 = ptrtoint ptr %eth_stats to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %eth_stats, align 4
  %add1521 = add i32 %add1519, %727
  store i32 %add1521, ptr %eth_stats, align 4
  %728 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %pf, align 4
  %730 = tail call i32 @llvm.bswap.i32(i32 %729)
  %add1527 = add i32 %730, %add1513
  %731 = ptrtoint ptr %total_bytes_received_lo1512 to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 %add1527, ptr %total_bytes_received_lo1512, align 4
  %hi1529 = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %732 = ptrtoint ptr %hi1529 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %hi1529, align 4
  %734 = tail call i32 @llvm.bswap.i32(i32 %733)
  %735 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %pf, align 4
  %737 = tail call i32 @llvm.bswap.i32(i32 %736)
  call void @__sanitizer_cov_trace_cmp4(i32 %add1527, i32 %737)
  %cmp1533 = icmp ult i32 %add1527, %737
  %cond1535 = zext i1 %cmp1533 to i32
  %add1536 = add i32 %734, %add1521
  %add1538 = add i32 %add1536, %cond1535
  %738 = ptrtoint ptr %eth_stats to i32
  call void @__asan_store4_noabort(i32 %738)
  store i32 %add1538, ptr %eth_stats, align 4
  %739 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %pf, align 4
  %741 = tail call i32 @llvm.bswap.i32(i32 %740)
  %742 = ptrtoint ptr %error_bytes_received_lo to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %error_bytes_received_lo, align 4
  %add1545 = add i32 %743, %741
  store i32 %add1545, ptr %error_bytes_received_lo, align 4
  %744 = ptrtoint ptr %hi1529 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %hi1529, align 4
  %746 = tail call i32 @llvm.bswap.i32(i32 %745)
  %747 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %pf, align 4
  %749 = tail call i32 @llvm.bswap.i32(i32 %748)
  call void @__sanitizer_cov_trace_cmp4(i32 %add1545, i32 %749)
  %cmp1551 = icmp ult i32 %add1545, %749
  %cond1553 = zext i1 %cmp1551 to i32
  %750 = ptrtoint ptr %error_bytes_received_hi to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %error_bytes_received_hi, align 4
  %add1554 = add i32 %751, %746
  %add1556 = add i32 %add1554, %cond1553
  %etherstatsoverrsizepkts_lo1562 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 21
  %752 = ptrtoint ptr %etherstatsoverrsizepkts_lo1562 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %etherstatsoverrsizepkts_lo1562, align 4
  %rx_stat_dot3statsframestoolong_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 149, i32 1
  %754 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %rx_stat_dot3statsframestoolong_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %753, i32 %755)
  %cmp1563 = icmp ult i32 %753, %755
  %etherstatsoverrsizepkts_hi1566 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 20
  %756 = ptrtoint ptr %etherstatsoverrsizepkts_hi1566 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %etherstatsoverrsizepkts_hi1566, align 4
  %758 = ptrtoint ptr %eth_stats_old to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %eth_stats_old, align 4
  br i1 %cmp1563, label %if.then1565, label %if.else1585

if.then1565:                                      ; preds = %do.body1511
  %sub1567 = sub i32 %757, %759
  %760 = ptrtoint ptr %etherstatsoverrsizepkts_hi1566 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %sub1567, ptr %etherstatsoverrsizepkts_hi1566, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %757, i32 %759)
  %cmp1570.not = icmp eq i32 %757, %759
  br i1 %cmp1570.not, label %if.else1581, label %if.then1572

if.then1572:                                      ; preds = %if.then1565
  call void @__sanitizer_cov_trace_pc() #9
  %dec1574 = add i32 %sub1567, -1
  %761 = ptrtoint ptr %etherstatsoverrsizepkts_hi1566 to i32
  call void @__asan_store4_noabort(i32 %761)
  store i32 %dec1574, ptr %etherstatsoverrsizepkts_hi1566, align 4
  %add1579 = sub i32 %753, %755
  br label %do.body1608

if.else1581:                                      ; preds = %if.then1565
  call void @__sanitizer_cov_trace_pc() #9
  %762 = ptrtoint ptr %etherstatsoverrsizepkts_hi1566 to i32
  call void @__asan_store4_noabort(i32 %762)
  store i32 0, ptr %etherstatsoverrsizepkts_hi1566, align 4
  br label %do.body1608

if.else1585:                                      ; preds = %do.body1511
  call void @__sanitizer_cov_trace_cmp4(i32 %757, i32 %759)
  %cmp1588 = icmp ult i32 %757, %759
  br i1 %cmp1588, label %if.then1590, label %if.else1593

if.then1590:                                      ; preds = %if.else1585
  call void @__sanitizer_cov_trace_pc() #9
  %763 = ptrtoint ptr %etherstatsoverrsizepkts_hi1566 to i32
  call void @__asan_store4_noabort(i32 %763)
  store i32 0, ptr %etherstatsoverrsizepkts_hi1566, align 4
  br label %do.body1608

if.else1593:                                      ; preds = %if.else1585
  call void @__sanitizer_cov_trace_pc() #9
  %sub1596 = sub i32 %757, %759
  %764 = ptrtoint ptr %etherstatsoverrsizepkts_hi1566 to i32
  call void @__asan_store4_noabort(i32 %764)
  store i32 %sub1596, ptr %etherstatsoverrsizepkts_hi1566, align 4
  %sub1600 = sub i32 %753, %755
  br label %do.body1608

do.body1608:                                      ; preds = %if.else1593, %if.then1590, %if.else1581, %if.then1572
  %.sink2499 = phi i32 [ 0, %if.else1581 ], [ %add1579, %if.then1572 ], [ %sub1600, %if.else1593 ], [ 0, %if.then1590 ]
  %765 = ptrtoint ptr %etherstatsoverrsizepkts_lo1562 to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 %.sink2499, ptr %etherstatsoverrsizepkts_lo1562, align 4
  %rx_stat_dot3statsframestoolong_lo1609 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 15
  %766 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo1609 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %rx_stat_dot3statsframestoolong_lo1609, align 4
  %add1611 = add i32 %.sink2499, %767
  store i32 %add1611, ptr %etherstatsoverrsizepkts_lo1562, align 4
  %rx_stat_dot3statsframestoolong_hi1612 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 14
  %768 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi1612 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %rx_stat_dot3statsframestoolong_hi1612, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1611, i32 %767)
  %cmp1615 = icmp ult i32 %add1611, %767
  %cond1617 = zext i1 %cmp1615 to i32
  %add1618 = add i32 %769, %cond1617
  %etherstatsoverrsizepkts_hi1619 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 20
  %770 = ptrtoint ptr %etherstatsoverrsizepkts_hi1619 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %etherstatsoverrsizepkts_hi1619, align 4
  %add1620 = add i32 %add1618, %771
  store i32 %add1620, ptr %etherstatsoverrsizepkts_hi1619, align 4
  %772 = ptrtoint ptr %eth_stats_old to i32
  call void @__asan_store4_noabort(i32 %772)
  store i32 %769, ptr %eth_stats_old, align 4
  %773 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 %767, ptr %rx_stat_dot3statsframestoolong_lo, align 4
  %add1632 = add i32 %add1545, %721
  %774 = ptrtoint ptr %error_bytes_received_lo to i32
  call void @__asan_store4_noabort(i32 %774)
  store i32 %add1632, ptr %error_bytes_received_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1632, i32 %721)
  %cmp1636 = icmp ult i32 %add1632, %721
  %cond1638 = zext i1 %cmp1636 to i32
  %add1639 = add i32 %725, %cond1638
  %add1641 = add i32 %add1639, %add1556
  %775 = ptrtoint ptr %error_bytes_received_hi to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 %add1641, ptr %error_bytes_received_hi, align 4
  %port1644 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %776 = ptrtoint ptr %port1644 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %port1644, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %777)
  %tobool1645.not = icmp eq i32 %777, 0
  br i1 %tobool1645.not, label %do.body1608.if.end1671_crit_edge, label %if.then1646

do.body1608.if.end1671_crit_edge:                 ; preds = %do.body1608
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1671

if.then1646:                                      ; preds = %do.body1608
  call void @__sanitizer_cov_trace_pc() #9
  %fw_stats_old = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151
  %mac_filter_discard = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %778 = ptrtoint ptr %mac_filter_discard to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %mac_filter_discard, align 4
  %780 = tail call i32 @llvm.bswap.i32(i32 %779)
  %781 = ptrtoint ptr %fw_stats_old to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %fw_stats_old, align 4
  %add1649 = add i32 %780, %782
  %mac_filter_discard1650 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 37
  %783 = ptrtoint ptr %mac_filter_discard1650 to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 %add1649, ptr %mac_filter_discard1650, align 4
  %mf_tag_discard = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 1, i32 0, i32 3
  %784 = ptrtoint ptr %mf_tag_discard to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %mf_tag_discard, align 4
  %786 = tail call i32 @llvm.bswap.i32(i32 %785)
  %mf_tag_discard1654 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151, i32 1
  %787 = ptrtoint ptr %mf_tag_discard1654 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %mf_tag_discard1654, align 4
  %add1655 = add i32 %786, %788
  %mf_tag_discard1656 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 38
  %789 = ptrtoint ptr %mf_tag_discard1656 to i32
  call void @__asan_store4_noabort(i32 %789)
  store i32 %add1655, ptr %mf_tag_discard1656, align 4
  %brb_truncate_discard = getelementptr inbounds %struct.bnx2x_fw_stats_data, ptr %1, i32 0, i32 1, i32 0, i32 2
  %790 = ptrtoint ptr %brb_truncate_discard to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %brb_truncate_discard, align 4
  %792 = tail call i32 @llvm.bswap.i32(i32 %791)
  %brb_truncate_discard1660 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151, i32 2
  %793 = ptrtoint ptr %brb_truncate_discard1660 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %brb_truncate_discard1660, align 4
  %add1661 = add i32 %792, %794
  %brb_truncate_discard1662 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 39
  %795 = ptrtoint ptr %brb_truncate_discard1662 to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 %add1661, ptr %brb_truncate_discard1662, align 4
  %796 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %port, align 4
  %798 = tail call i32 @llvm.bswap.i32(i32 %797)
  %mac_discard1666 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 151, i32 3
  %799 = ptrtoint ptr %mac_discard1666 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %mac_discard1666, align 4
  %add1667 = add i32 %798, %800
  %mac_discard1668 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 40
  %801 = ptrtoint ptr %mac_discard1668 to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 %add1667, ptr %mac_discard1668, align 4
  br label %if.end1671

if.end1671:                                       ; preds = %if.then1646, %do.body1608.if.end1671_crit_edge
  %host_func_stats_end = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 148, i32 19
  %802 = ptrtoint ptr %host_func_stats_end to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %host_func_stats_end, align 4
  %inc1672 = add i32 %803, 1
  store i32 %inc1672, ptr %host_func_stats_end, align 4
  %804 = ptrtoint ptr %func_stats to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 %inc1672, ptr %func_stats, align 4
  %stats_pending = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 45
  %805 = ptrtoint ptr %stats_pending to i32
  call void @__asan_store2_noabort(i32 %805)
  store i16 0, ptr %stats_pending, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end1671, %do.end112.i, %do.body99.i.cleanup_crit_edge, %do.end74.i, %do.body61.i.cleanup_crit_edge, %do.end36.i, %do.body23.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1671 ], [ -11, %do.end.i ], [ -11, %do.body.i.cleanup_crit_edge ], [ -11, %do.end36.i ], [ -11, %do.body23.i.cleanup_crit_edge ], [ -11, %do.end74.i ], [ -11, %do.body61.i.cleanup_crit_edge ], [ -11, %do.end112.i ], [ -11, %do.body99.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_stats_pmf_update(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pfid, align 1
  %2 = shl i8 %1, 3
  %3 = and i8 %2, 8
  %4 = or i8 %3, 4
  %add = zext i8 %4 to i32
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %5 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slowpath, align 4
  %stats_comp1 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %6, i32 0, i32 9
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %port_stx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %9 = ptrtoint ptr %port_stx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 229, ptr noundef nonnull %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %executer_idx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 145
  %13 = ptrtoint ptr %executer_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %executer_idx, align 4
  %call9 = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 1, i8 noundef zeroext 1, i1 noundef zeroext false, i8 noundef zeroext 0) #7
  %14 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slowpath, align 4
  %16 = ptrtoint ptr %executer_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %executer_idx, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %executer_idx, align 4
  %arrayidx = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17
  %call13 = tail call i32 @bnx2x_dmae_opcode_add_comp(i32 noundef %call9, i8 noundef zeroext 1) #7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call13, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %port_stx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_stx, align 4
  %shr = lshr i32 %20, 2
  %src_addr_lo = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 1
  %21 = ptrtoint ptr %src_addr_lo to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr, ptr %src_addr_lo, align 4
  %src_addr_hi = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 2
  %22 = ptrtoint ptr %src_addr_hi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %src_addr_hi, align 4
  %slowpath_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %23 = ptrtoint ptr %slowpath_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slowpath_mapping, align 8
  %add17 = add i32 %24, 3964
  %dst_addr_lo = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 3
  %25 = ptrtoint ptr %dst_addr_lo to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add17, ptr %dst_addr_lo, align 4
  %dst_addr_hi = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 4
  %26 = ptrtoint ptr %dst_addr_hi to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dst_addr_hi, align 4
  %len = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 128, ptr %len, align 2
  %arrayidx26 = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26, align 4
  %shr27 = lshr i32 %29, 2
  %comp_addr_lo = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 7
  %30 = ptrtoint ptr %comp_addr_lo to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr27, ptr %comp_addr_lo, align 4
  %comp_addr_hi = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 8
  %31 = ptrtoint ptr %comp_addr_hi to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %comp_addr_hi, align 4
  %comp_val = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 9
  %32 = ptrtoint ptr %comp_val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %comp_val, align 4
  %33 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slowpath, align 4
  %35 = ptrtoint ptr %executer_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %executer_idx, align 4
  %inc31 = add i32 %36, 1
  store i32 %inc31, ptr %executer_idx, align 4
  %arrayidx32 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36
  %call33 = tail call i32 @bnx2x_dmae_opcode_add_comp(i32 noundef %call9, i8 noundef zeroext 0) #7
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call33, ptr %arrayidx32, align 4
  %38 = ptrtoint ptr %port_stx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_stx, align 4
  %shr37 = lshr i32 %39, 2
  %add38 = add nuw nsw i32 %shr37, 128
  %src_addr_lo39 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 1
  %40 = ptrtoint ptr %src_addr_lo39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add38, ptr %src_addr_lo39, align 4
  %src_addr_hi40 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 2
  %41 = ptrtoint ptr %src_addr_hi40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %src_addr_hi40, align 4
  %42 = ptrtoint ptr %slowpath_mapping to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slowpath_mapping, align 8
  %add43 = add i32 %43, 4476
  %dst_addr_lo47 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 3
  %44 = ptrtoint ptr %dst_addr_lo47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add43, ptr %dst_addr_lo47, align 4
  %dst_addr_hi54 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 4
  %45 = ptrtoint ptr %dst_addr_hi54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %dst_addr_hi54, align 4
  %shmem2_base.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %46 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %shmem2_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.end.if.then23.i_crit_edge, label %land.lhs.true.i

if.end.if.then23.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

land.lhs.true.i:                                  ; preds = %if.end
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %48 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !130
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %51)
  %cmp.i = icmp ugt i32 %51, 312
  br i1 %cmp.i, label %if.end21.i, label %land.lhs.true.i.if.then23.i_crit_edge

land.lhs.true.i.if.then23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

if.end21.i:                                       ; preds = %land.lhs.true.i
  %52 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regview.i, align 8
  %54 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %shmem2_base.i, align 4
  %add9.i = add i32 %55, 312
  %add.ptr10.i = getelementptr i8, ptr %53, i32 %add9.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool14.not.i = icmp eq i32 %56, 0
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  %conv.i = trunc i32 %57 to i16
  %58 = tail call i16 @llvm.umin.i16(i16 %conv.i, i16 648) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool22.not73.i = icmp eq i16 %58, 0
  %tobool22.not.i = select i1 %tobool14.not.i, i1 true, i1 %tobool22.not73.i
  br i1 %tobool22.not.i, label %if.end21.i.if.then23.i_crit_edge, label %if.end21.i.bnx2x_get_port_stats_dma_len.exit_crit_edge

if.end21.i.bnx2x_get_port_stats_dma_len.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_get_port_stats_dma_len.exit

if.end21.i.if.then23.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.end21.i.if.then23.i_crit_edge, %land.lhs.true.i.if.then23.i_crit_edge, %if.end.if.then23.i_crit_edge
  %flags.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool24.not.i, i16 624, i16 640
  br label %bnx2x_get_port_stats_dma_len.exit

bnx2x_get_port_stats_dma_len.exit:                ; preds = %if.then23.i, %if.end21.i.bnx2x_get_port_stats_dma_len.exit_crit_edge
  %res.2.i = phi i16 [ %58, %if.end21.i.bnx2x_get_port_stats_dma_len.exit_crit_edge ], [ %spec.select.i, %if.then23.i ]
  %61 = lshr i16 %res.2.i, 2
  %sub = add nsw i16 %61, -128
  %len58 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 6
  %62 = ptrtoint ptr %len58 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %sub, ptr %len58, align 2
  %63 = ptrtoint ptr %slowpath_mapping to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %slowpath_mapping, align 8
  %add60 = add i32 %64, 3432
  %comp_addr_lo64 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 7
  %65 = ptrtoint ptr %comp_addr_lo64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add60, ptr %comp_addr_lo64, align 4
  %comp_addr_hi70 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 8
  %66 = ptrtoint ptr %comp_addr_hi70 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %comp_addr_hi70, align 4
  %comp_val71 = getelementptr %struct.bnx2x_slowpath, ptr %34, i32 0, i32 8, i32 %36, i32 9
  %67 = ptrtoint ptr %comp_val71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1624297646, ptr %comp_val71, align 4
  %68 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %stats_comp1, align 4
  tail call fastcc void @bnx2x_hw_stats_post(ptr noundef %bp)
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %bnx2x_get_port_stats_dma_len.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_stats_start(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %pfid.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %4 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfid.i, align 1
  %6 = and i8 %5, 1
  %7 = shl nuw nsw i8 %6, 3
  %8 = or i8 %7, 4
  %add.i = zext i8 %8 to i32
  %slowpath.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %9 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slowpath.i, align 4
  %stats_comp4.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %10, i32 0, i32 9
  %link_up.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 67, i32 3
  %11 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link_up.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %tobool8.not.i = icmp eq ptr %14, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str.3, ptr %14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef 278, ptr noundef nonnull %spec.select.i) #10
  br label %if.end5

if.end.i:                                         ; preds = %if.then2
  %executer_idx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 145
  %15 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %executer_idx.i, align 4
  %call12.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 0, i8 noundef zeroext 2, i1 noundef zeroext true, i8 noundef zeroext 1) #7
  %port_stx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %16 = ptrtoint ptr %port_stx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_stx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not.i = icmp eq i32 %17, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end34.i_crit_edge, label %if.then15.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then15.i:                                      ; preds = %if.end.i
  %18 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slowpath.i, align 4
  %20 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %executer_idx.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %executer_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call12.i, ptr %arrayidx.i, align 4
  %slowpath_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %23 = ptrtoint ptr %slowpath_mapping.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slowpath_mapping.i, align 8
  %add20.i = add i32 %24, 3964
  %src_addr_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 1
  %25 = ptrtoint ptr %src_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add20.i, ptr %src_addr_lo.i, align 4
  %src_addr_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 2
  %26 = ptrtoint ptr %src_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %src_addr_hi.i, align 4
  %27 = ptrtoint ptr %port_stx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_stx.i, align 4
  %shr30.i = lshr i32 %28, 2
  %dst_addr_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 3
  %29 = ptrtoint ptr %dst_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr30.i, ptr %dst_addr_lo.i, align 4
  %dst_addr_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 4
  %30 = ptrtoint ptr %dst_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dst_addr_hi.i, align 4
  %shmem2_base.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %31 = ptrtoint ptr %shmem2_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shmem2_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.then15.i.if.then23.i.i_crit_edge, label %land.lhs.true.i.i

if.then15.i.if.then23.i.i_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

land.lhs.true.i.i:                                ; preds = %if.then15.i
  %regview.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %33 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regview.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !130
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %36)
  %cmp.i.i = icmp ugt i32 %36, 312
  br i1 %cmp.i.i, label %if.end21.i.i, label %land.lhs.true.i.i.if.then23.i.i_crit_edge

land.lhs.true.i.i.if.then23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true.i.i
  %37 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regview.i.i, align 8
  %39 = ptrtoint ptr %shmem2_base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %shmem2_base.i.i, align 4
  %add9.i.i = add i32 %40, 312
  %add.ptr10.i.i = getelementptr i8, ptr %38, i32 %add9.i.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool14.not.i.i = icmp eq i32 %41, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %conv.i.i = trunc i32 %42 to i16
  %43 = tail call i16 @llvm.umin.i16(i16 %conv.i.i, i16 648) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool22.not73.i.i = icmp eq i16 %43, 0
  %tobool22.not.i.i = select i1 %tobool14.not.i.i, i1 true, i1 %tobool22.not73.i.i
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.then23.i.i_crit_edge, label %if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge

if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_get_port_stats_dma_len.exit.i

if.end21.i.i.if.then23.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i.if.then23.i.i_crit_edge, %land.lhs.true.i.i.if.then23.i.i_crit_edge, %if.then15.i.if.then23.i.i_crit_edge
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool24.not.i.i, i16 624, i16 640
  br label %bnx2x_get_port_stats_dma_len.exit.i

bnx2x_get_port_stats_dma_len.exit.i:              ; preds = %if.then23.i.i, %if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge
  %res.2.i.i = phi i16 [ %43, %if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge ], [ %spec.select.i.i, %if.then23.i.i ]
  %46 = lshr i16 %res.2.i.i, 2
  %len.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 6
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %len.i, align 2
  %arrayidx32.i = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add.i
  %48 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx32.i, align 4
  %shr33.i = lshr i32 %49, 2
  %comp_addr_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 7
  %50 = ptrtoint ptr %comp_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr33.i, ptr %comp_addr_lo.i, align 4
  %comp_addr_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 8
  %51 = ptrtoint ptr %comp_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %comp_addr_hi.i, align 4
  %comp_val.i = getelementptr %struct.bnx2x_slowpath, ptr %19, i32 0, i32 8, i32 %21, i32 9
  %52 = ptrtoint ptr %comp_val.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %comp_val.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %bnx2x_get_port_stats_dma_len.exit.i, %if.end.i.if.end34.i_crit_edge
  %func_stx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 65
  %53 = ptrtoint ptr %func_stx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %func_stx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool35.not.i = icmp eq i32 %54, 0
  br i1 %tobool35.not.i, label %if.end34.i.if.end65.i_crit_edge, label %if.then36.i

if.end34.i.if.end65.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %slowpath.i, align 4
  %57 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %executer_idx.i, align 4
  %inc40.i = add i32 %58, 1
  store i32 %inc40.i, ptr %executer_idx.i, align 4
  %arrayidx41.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58
  %59 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call12.i, ptr %arrayidx41.i, align 4
  %slowpath_mapping43.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %60 = ptrtoint ptr %slowpath_mapping43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slowpath_mapping43.i, align 8
  %add44.i = add i32 %61, 4612
  %src_addr_lo48.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 1
  %62 = ptrtoint ptr %src_addr_lo48.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add44.i, ptr %src_addr_lo48.i, align 4
  %src_addr_hi54.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 2
  %63 = ptrtoint ptr %src_addr_hi54.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %src_addr_hi54.i, align 4
  %64 = ptrtoint ptr %func_stx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %func_stx.i, align 4
  %shr56.i = lshr i32 %65, 2
  %dst_addr_lo57.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 3
  %66 = ptrtoint ptr %dst_addr_lo57.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shr56.i, ptr %dst_addr_lo57.i, align 4
  %dst_addr_hi58.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 4
  %67 = ptrtoint ptr %dst_addr_hi58.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %dst_addr_hi58.i, align 4
  %len59.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 6
  %68 = ptrtoint ptr %len59.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 20, ptr %len59.i, align 2
  %arrayidx60.i = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add.i
  %69 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx60.i, align 4
  %shr61.i = lshr i32 %70, 2
  %comp_addr_lo62.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 7
  %71 = ptrtoint ptr %comp_addr_lo62.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shr61.i, ptr %comp_addr_lo62.i, align 4
  %comp_addr_hi63.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 8
  %72 = ptrtoint ptr %comp_addr_hi63.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %comp_addr_hi63.i, align 4
  %comp_val64.i = getelementptr %struct.bnx2x_slowpath, ptr %56, i32 0, i32 8, i32 %58, i32 9
  %73 = ptrtoint ptr %comp_val64.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %comp_val64.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then36.i, %if.end34.i.if.end65.i_crit_edge
  %call66.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 1, i8 noundef zeroext 1, i1 noundef zeroext true, i8 noundef zeroext 1) #7
  %mac_type.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 67, i32 1
  %74 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mac_type.i, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %75, label %sw.default.i [
    i8 1, label %if.then70.i
    i8 2, label %sw.bb.i
  ]

if.then70.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool71.not.i = icmp eq i8 %6, 0
  %cond72.i = select i1 %tobool71.not.i, i32 8192, i32 8448
  %77 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %slowpath.i, align 4
  %79 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %executer_idx.i, align 4
  %inc76.i = add i32 %80, 1
  store i32 %inc76.i, ptr %executer_idx.i, align 4
  %arrayidx77.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80
  %81 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call66.i, ptr %arrayidx77.i, align 4
  %shr80.i = or i32 %cond72.i, 96
  %src_addr_lo81.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 1
  %82 = ptrtoint ptr %src_addr_lo81.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr80.i, ptr %src_addr_lo81.i, align 4
  %src_addr_hi82.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 2
  %83 = ptrtoint ptr %src_addr_hi82.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %src_addr_hi82.i, align 4
  %slowpath_mapping83.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %84 = ptrtoint ptr %slowpath_mapping83.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %slowpath_mapping83.i, align 8
  %add84.i = add i32 %85, 3436
  %dst_addr_lo88.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 3
  %86 = ptrtoint ptr %dst_addr_lo88.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add84.i, ptr %dst_addr_lo88.i, align 4
  %dst_addr_hi94.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 4
  %87 = ptrtoint ptr %dst_addr_hi94.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %dst_addr_hi94.i, align 4
  %len95.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 6
  %88 = ptrtoint ptr %len95.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 23, ptr %len95.i, align 2
  %arrayidx96.i = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add.i
  %89 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx96.i, align 4
  %shr97.i = lshr i32 %90, 2
  %comp_addr_lo98.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 7
  %91 = ptrtoint ptr %comp_addr_lo98.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %shr97.i, ptr %comp_addr_lo98.i, align 4
  %comp_addr_hi99.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 8
  %92 = ptrtoint ptr %comp_addr_hi99.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %comp_addr_hi99.i, align 4
  %comp_val100.i = getelementptr %struct.bnx2x_slowpath, ptr %78, i32 0, i32 8, i32 %80, i32 9
  %93 = ptrtoint ptr %comp_val100.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %comp_val100.i, align 4
  %94 = load ptr, ptr %slowpath.i, align 4
  %95 = load i32, ptr %executer_idx.i, align 4
  %inc104.i = add i32 %95, 1
  store i32 %inc104.i, ptr %executer_idx.i, align 4
  %arrayidx105.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95
  %96 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call66.i, ptr %arrayidx105.i, align 4
  %shr108.i = or i32 %cond72.i, 125
  %src_addr_lo109.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 1
  %97 = ptrtoint ptr %src_addr_lo109.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %shr108.i, ptr %src_addr_lo109.i, align 4
  %src_addr_hi110.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 2
  %98 = ptrtoint ptr %src_addr_hi110.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %src_addr_hi110.i, align 4
  %99 = load i32, ptr %slowpath_mapping83.i, align 8
  %add113.i = add i32 %99, 3528
  %dst_addr_lo117.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 3
  %100 = ptrtoint ptr %dst_addr_lo117.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add113.i, ptr %dst_addr_lo117.i, align 4
  %dst_addr_hi124.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 4
  %101 = ptrtoint ptr %dst_addr_hi124.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %dst_addr_hi124.i, align 4
  %len125.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 6
  %102 = ptrtoint ptr %len125.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %len125.i, align 2
  %comp_addr_lo128.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 7
  %103 = ptrtoint ptr %comp_addr_lo128.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %shr97.i, ptr %comp_addr_lo128.i, align 4
  %comp_addr_hi129.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 8
  %104 = ptrtoint ptr %comp_addr_hi129.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %comp_addr_hi129.i, align 4
  %comp_val130.i = getelementptr %struct.bnx2x_slowpath, ptr %94, i32 0, i32 8, i32 %95, i32 9
  %105 = ptrtoint ptr %comp_val130.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %comp_val130.i, align 4
  %106 = load ptr, ptr %slowpath.i, align 4
  %107 = load i32, ptr %executer_idx.i, align 4
  %inc134.i = add i32 %107, 1
  store i32 %inc134.i, ptr %executer_idx.i, align 4
  %arrayidx135.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107
  %108 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call66.i, ptr %arrayidx135.i, align 4
  %shr138.i = or i32 %cond72.i, 160
  %src_addr_lo139.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 1
  %109 = ptrtoint ptr %src_addr_lo139.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %shr138.i, ptr %src_addr_lo139.i, align 4
  %src_addr_hi140.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 2
  %110 = ptrtoint ptr %src_addr_hi140.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %src_addr_hi140.i, align 4
  %111 = load i32, ptr %slowpath_mapping83.i, align 8
  %add143.i = add i32 %111, 3532
  %dst_addr_lo147.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 3
  %112 = ptrtoint ptr %dst_addr_lo147.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add143.i, ptr %dst_addr_lo147.i, align 4
  %dst_addr_hi154.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 4
  %113 = ptrtoint ptr %dst_addr_hi154.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %dst_addr_hi154.i, align 4
  %len155.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 6
  %114 = ptrtoint ptr %len155.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 22, ptr %len155.i, align 2
  %comp_addr_lo158.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 7
  %115 = ptrtoint ptr %comp_addr_lo158.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shr97.i, ptr %comp_addr_lo158.i, align 4
  %comp_addr_hi159.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 8
  %116 = ptrtoint ptr %comp_addr_hi159.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %comp_addr_hi159.i, align 4
  %comp_val160.i = getelementptr %struct.bnx2x_slowpath, ptr %106, i32 0, i32 8, i32 %107, i32 9
  br label %if.end256.i

sw.bb.i:                                          ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool164.not.i = icmp eq i8 %6, 0
  %cond165.i = select i1 %tobool164.not.i, i32 68608, i32 69632
  %common.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %117 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %common.i, align 8
  %shr166.i = lshr i32 %118, 16
  %shr166.off.i = add nsw i32 %shr166.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr166.off.i)
  %switch.i = icmp ult i32 %shr166.off.i, 3
  br i1 %switch.i, label %if.then181.i, label %if.else186.i

if.then181.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %add182.i = or i32 %cond165.i, 96
  br label %sw.epilog.i

if.else186.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %add187.i = or i32 %cond165.i, 272
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool193.not.i = icmp eq i8 %6, 0
  %cond194.i = select i1 %tobool193.not.i, i32 1449984, i32 1452032
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.else186.i, %if.then181.i
  %cond165.sink.i = phi i32 [ %cond165.i, %if.then181.i ], [ %cond165.i, %if.else186.i ], [ %cond194.i, %sw.default.i ]
  %.sink.i = phi i32 [ 76, %if.then181.i ], [ 128, %if.else186.i ], [ 128, %sw.default.i ]
  %tx_src_addr_lo.0.in.i = phi i32 [ %add182.i, %if.then181.i ], [ %add187.i, %if.else186.i ], [ %cond194.i, %sw.default.i ]
  %rx_len.0.i = phi i16 [ 58, %if.then181.i ], [ 64, %if.else186.i ], [ 60, %sw.default.i ]
  %tx_len.0.i = phi i16 [ 42, %if.then181.i ], [ 48, %if.else186.i ], [ 54, %sw.default.i ]
  %add184.i = lshr exact i32 %cond165.sink.i, 2
  %shr185.i = or i32 %add184.i, %.sink.i
  %tx_src_addr_lo.0.i = lshr i32 %tx_src_addr_lo.0.in.i, 2
  %119 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %slowpath.i, align 4
  %121 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %executer_idx.i, align 4
  %inc202.i = add i32 %122, 1
  store i32 %inc202.i, ptr %executer_idx.i, align 4
  %arrayidx203.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122
  %123 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call66.i, ptr %arrayidx203.i, align 4
  %src_addr_lo205.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 1
  %124 = ptrtoint ptr %src_addr_lo205.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %tx_src_addr_lo.0.i, ptr %src_addr_lo205.i, align 4
  %src_addr_hi206.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 2
  %125 = ptrtoint ptr %src_addr_hi206.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %src_addr_hi206.i, align 4
  %len207.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 6
  %126 = ptrtoint ptr %len207.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %tx_len.0.i, ptr %len207.i, align 2
  %slowpath_mapping208.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %127 = ptrtoint ptr %slowpath_mapping208.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %slowpath_mapping208.i, align 8
  %add209.i = add i32 %128, 3436
  %dst_addr_lo213.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 3
  %129 = ptrtoint ptr %dst_addr_lo213.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add209.i, ptr %dst_addr_lo213.i, align 4
  %dst_addr_hi219.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 4
  %130 = ptrtoint ptr %dst_addr_hi219.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %dst_addr_hi219.i, align 4
  %arrayidx220.i = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add.i
  %131 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx220.i, align 4
  %shr221.i = lshr i32 %132, 2
  %comp_addr_lo222.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 7
  %133 = ptrtoint ptr %comp_addr_lo222.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %shr221.i, ptr %comp_addr_lo222.i, align 4
  %comp_addr_hi223.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 8
  %134 = ptrtoint ptr %comp_addr_hi223.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %comp_addr_hi223.i, align 4
  %comp_val224.i = getelementptr %struct.bnx2x_slowpath, ptr %120, i32 0, i32 8, i32 %122, i32 9
  %135 = ptrtoint ptr %comp_val224.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %comp_val224.i, align 4
  %136 = load ptr, ptr %slowpath.i, align 4
  %137 = load i32, ptr %executer_idx.i, align 4
  %inc228.i = add i32 %137, 1
  store i32 %inc228.i, ptr %executer_idx.i, align 4
  %arrayidx229.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137
  %138 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call66.i, ptr %arrayidx229.i, align 4
  %src_addr_hi231.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 2
  %139 = ptrtoint ptr %src_addr_hi231.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %src_addr_hi231.i, align 4
  %src_addr_lo232.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 1
  %140 = ptrtoint ptr %src_addr_lo232.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %shr185.i, ptr %src_addr_lo232.i, align 4
  %141 = load i32, ptr %slowpath_mapping208.i, align 8
  %142 = shl nuw nsw i16 %tx_len.0.i, 2
  %narrow.i = add nuw nsw i16 %142, 3436
  %add234.i = zext i16 %narrow.i to i32
  %add236.i = add i32 %141, %add234.i
  %dst_addr_lo240.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 3
  %143 = ptrtoint ptr %dst_addr_lo240.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add236.i, ptr %dst_addr_lo240.i, align 4
  %dst_addr_hi249.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 4
  %144 = ptrtoint ptr %dst_addr_hi249.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %dst_addr_hi249.i, align 4
  %len250.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 6
  %145 = ptrtoint ptr %len250.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %rx_len.0.i, ptr %len250.i, align 2
  %comp_addr_lo253.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 7
  %146 = ptrtoint ptr %comp_addr_lo253.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %shr221.i, ptr %comp_addr_lo253.i, align 4
  %comp_addr_hi254.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 8
  %147 = ptrtoint ptr %comp_addr_hi254.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %comp_addr_hi254.i, align 4
  %comp_val255.i = getelementptr %struct.bnx2x_slowpath, ptr %136, i32 0, i32 8, i32 %137, i32 9
  br label %if.end256.i

if.end256.i:                                      ; preds = %sw.epilog.i, %if.then70.i
  %comp_val255.sink.i = phi ptr [ %comp_val255.i, %sw.epilog.i ], [ %comp_val160.i, %if.then70.i ]
  %148 = ptrtoint ptr %comp_val255.sink.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %comp_val255.sink.i, align 4
  %common257.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %149 = ptrtoint ptr %common257.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %common257.i, align 8
  %shr259.i = lshr i32 %150, 16
  %trunc.i = trunc i32 %shr259.i to i16
  %151 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %trunc.i, label %if.then346.i [
    i16 5770, label %if.end256.i.if.end409.i_crit_edge
    i16 5797, label %if.end256.i.if.end409.i_crit_edge31
    i16 5801, label %if.end256.i.if.end409.i_crit_edge32
    i16 5774, label %if.end256.i.if.end409.i_crit_edge33
    i16 5806, label %if.end256.i.if.end409.i_crit_edge34
    i16 5807, label %if.end256.i.if.end409.i_crit_edge35
    i16 5693, label %if.end256.i.if.end409.i_crit_edge36
    i16 5694, label %if.end256.i.if.end409.i_crit_edge37
    i16 5695, label %if.end256.i.if.end409.i_crit_edge38
    i16 5793, label %if.end256.i.if.end409.i_crit_edge39
    i16 5794, label %if.end256.i.if.end409.i_crit_edge40
    i16 5773, label %if.end256.i.if.end409.i_crit_edge41
    i16 5796, label %if.end256.i.if.end409.i_crit_edge42
    i16 5803, label %if.end256.i.if.end409.i_crit_edge43
    i16 5805, label %if.end256.i.if.end409.i_crit_edge44
  ]

if.end256.i.if.end409.i_crit_edge44:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge43:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge42:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge41:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge40:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge39:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge38:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge37:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge36:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge35:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge34:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge33:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge32:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge31:              ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.end256.i.if.end409.i_crit_edge:                ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end409.i

if.then346.i:                                     ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %slowpath.i, align 4
  %154 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %executer_idx.i, align 4
  %inc350.i = add i32 %155, 1
  store i32 %inc350.i, ptr %executer_idx.i, align 4
  %arrayidx351.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155
  %156 = ptrtoint ptr %arrayidx351.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call66.i, ptr %arrayidx351.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool353.not.i = icmp eq i8 %6, 0
  %cond354.i = select i1 %tobool353.not.i, i32 16852, i32 16872
  %src_addr_lo356.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 1
  %157 = ptrtoint ptr %src_addr_lo356.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %cond354.i, ptr %src_addr_lo356.i, align 4
  %src_addr_hi357.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 2
  %158 = ptrtoint ptr %src_addr_hi357.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %src_addr_hi357.i, align 4
  %slowpath_mapping358.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %159 = ptrtoint ptr %slowpath_mapping358.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %slowpath_mapping358.i, align 8
  %add360.i = add i32 %160, 3948
  %dst_addr_lo364.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 3
  %161 = ptrtoint ptr %dst_addr_lo364.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add360.i, ptr %dst_addr_lo364.i, align 4
  %dst_addr_hi371.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 4
  %162 = ptrtoint ptr %dst_addr_hi371.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %dst_addr_hi371.i, align 4
  %len372.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 6
  %163 = ptrtoint ptr %len372.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 2, ptr %len372.i, align 2
  %arrayidx373.i = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add.i
  %164 = ptrtoint ptr %arrayidx373.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx373.i, align 4
  %shr374.i = lshr i32 %165, 2
  %comp_addr_lo375.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 7
  %166 = ptrtoint ptr %comp_addr_lo375.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %shr374.i, ptr %comp_addr_lo375.i, align 4
  %comp_addr_hi376.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 8
  %167 = ptrtoint ptr %comp_addr_hi376.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %comp_addr_hi376.i, align 4
  %comp_val377.i = getelementptr %struct.bnx2x_slowpath, ptr %153, i32 0, i32 8, i32 %155, i32 9
  %168 = ptrtoint ptr %comp_val377.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %comp_val377.i, align 4
  %169 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %slowpath.i, align 4
  %171 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %executer_idx.i, align 4
  %inc381.i = add i32 %172, 1
  store i32 %inc381.i, ptr %executer_idx.i, align 4
  %arrayidx382.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172
  %173 = ptrtoint ptr %arrayidx382.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %call66.i, ptr %arrayidx382.i, align 4
  %cond385.i = select i1 %tobool353.not.i, i32 16856, i32 16876
  %src_addr_lo387.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 1
  %174 = ptrtoint ptr %src_addr_lo387.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %cond385.i, ptr %src_addr_lo387.i, align 4
  %src_addr_hi388.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 2
  %175 = ptrtoint ptr %src_addr_hi388.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %src_addr_hi388.i, align 4
  %176 = load i32, ptr %slowpath_mapping358.i, align 8
  %add391.i = add i32 %176, 3956
  %dst_addr_lo395.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 3
  %177 = ptrtoint ptr %dst_addr_lo395.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add391.i, ptr %dst_addr_lo395.i, align 4
  %dst_addr_hi402.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 4
  %178 = ptrtoint ptr %dst_addr_hi402.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %dst_addr_hi402.i, align 4
  %len403.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 6
  %179 = ptrtoint ptr %len403.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 2, ptr %len403.i, align 2
  %comp_addr_lo406.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 7
  %180 = ptrtoint ptr %comp_addr_lo406.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %shr374.i, ptr %comp_addr_lo406.i, align 4
  %comp_addr_hi407.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 8
  %181 = ptrtoint ptr %comp_addr_hi407.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %comp_addr_hi407.i, align 4
  %comp_val408.i = getelementptr %struct.bnx2x_slowpath, ptr %170, i32 0, i32 8, i32 %172, i32 9
  %182 = ptrtoint ptr %comp_val408.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %comp_val408.i, align 4
  br label %if.end409.i

if.end409.i:                                      ; preds = %if.then346.i, %if.end256.i.if.end409.i_crit_edge, %if.end256.i.if.end409.i_crit_edge31, %if.end256.i.if.end409.i_crit_edge32, %if.end256.i.if.end409.i_crit_edge33, %if.end256.i.if.end409.i_crit_edge34, %if.end256.i.if.end409.i_crit_edge35, %if.end256.i.if.end409.i_crit_edge36, %if.end256.i.if.end409.i_crit_edge37, %if.end256.i.if.end409.i_crit_edge38, %if.end256.i.if.end409.i_crit_edge39, %if.end256.i.if.end409.i_crit_edge40, %if.end256.i.if.end409.i_crit_edge41, %if.end256.i.if.end409.i_crit_edge42, %if.end256.i.if.end409.i_crit_edge43, %if.end256.i.if.end409.i_crit_edge44
  %183 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %slowpath.i, align 4
  %185 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %executer_idx.i, align 4
  %inc413.i = add i32 %186, 1
  store i32 %inc413.i, ptr %executer_idx.i, align 4
  %arrayidx414.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186
  %call415.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 1, i8 noundef zeroext 1, i1 noundef zeroext true, i8 noundef zeroext 0) #7
  %187 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call415.i, ptr %arrayidx414.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool417.not.i = icmp eq i8 %6, 0
  %cond418.i = select i1 %tobool417.not.i, i32 16764, i32 16778
  %src_addr_lo420.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 1
  %188 = ptrtoint ptr %src_addr_lo420.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %cond418.i, ptr %src_addr_lo420.i, align 4
  %src_addr_hi421.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 2
  %189 = ptrtoint ptr %src_addr_hi421.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %src_addr_hi421.i, align 4
  %slowpath_mapping422.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %190 = ptrtoint ptr %slowpath_mapping422.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %slowpath_mapping422.i, align 8
  %add423.i = add i32 %191, 3892
  %dst_addr_lo427.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 3
  %192 = ptrtoint ptr %dst_addr_lo427.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add423.i, ptr %dst_addr_lo427.i, align 4
  %dst_addr_hi433.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 4
  %193 = ptrtoint ptr %dst_addr_hi433.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %dst_addr_hi433.i, align 4
  %len434.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 6
  %194 = ptrtoint ptr %len434.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 14, ptr %len434.i, align 2
  %195 = load i32, ptr %slowpath_mapping422.i, align 8
  %add436.i = add i32 %195, 3432
  %comp_addr_lo440.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 7
  %196 = ptrtoint ptr %comp_addr_lo440.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %add436.i, ptr %comp_addr_lo440.i, align 4
  %comp_addr_hi446.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 8
  %197 = ptrtoint ptr %comp_addr_hi446.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %comp_addr_hi446.i, align 4
  %comp_val447.i = getelementptr %struct.bnx2x_slowpath, ptr %184, i32 0, i32 8, i32 %186, i32 9
  %198 = ptrtoint ptr %comp_val447.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1624297646, ptr %comp_val447.i, align 4
  %199 = ptrtoint ptr %stats_comp4.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %stats_comp4.i, align 4
  br label %if.end5

if.else:                                          ; preds = %if.then
  %func_stx = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 65
  %200 = ptrtoint ptr %func_stx to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %func_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool3.not = icmp eq i32 %201, 0
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %bnx2x_func_stats_init.exit

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

bnx2x_func_stats_init.exit:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %slowpath.i19 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %202 = ptrtoint ptr %slowpath.i19 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %slowpath.i19, align 4
  %stats_comp1.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %203, i32 0, i32 9
  %stats_dmae.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144
  %204 = call ptr @memset(ptr %stats_dmae.i, i32 0, i32 60)
  %call7.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 0, i8 noundef zeroext 2, i1 noundef zeroext true, i8 noundef zeroext 0) #7
  %205 = ptrtoint ptr %stats_dmae.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %call7.i, ptr %stats_dmae.i, align 4
  %slowpath_mapping.i20 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %206 = ptrtoint ptr %slowpath_mapping.i20 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %slowpath_mapping.i20, align 8
  %add.i21 = add i32 %207, 4612
  %src_addr_lo.i22 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 1
  %208 = ptrtoint ptr %src_addr_lo.i22 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add.i21, ptr %src_addr_lo.i22, align 4
  %src_addr_hi.i23 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 2
  %209 = ptrtoint ptr %src_addr_hi.i23 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %src_addr_hi.i23, align 4
  %210 = ptrtoint ptr %func_stx to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %func_stx, align 4
  %shr14.i = lshr i32 %211, 2
  %dst_addr_lo.i24 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 3
  %212 = ptrtoint ptr %dst_addr_lo.i24 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %shr14.i, ptr %dst_addr_lo.i24, align 4
  %dst_addr_hi.i25 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 4
  %213 = ptrtoint ptr %dst_addr_hi.i25 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %dst_addr_hi.i25, align 4
  %len.i26 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 6
  %214 = ptrtoint ptr %len.i26 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 20, ptr %len.i26, align 2
  %add16.i = add i32 %207, 3432
  %comp_addr_lo.i27 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 7
  %215 = ptrtoint ptr %comp_addr_lo.i27 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add16.i, ptr %comp_addr_lo.i27, align 4
  %comp_addr_hi.i28 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 8
  %216 = ptrtoint ptr %comp_addr_hi.i28 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %comp_addr_hi.i28, align 4
  %comp_val.i29 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 144, i32 9
  %217 = ptrtoint ptr %comp_val.i29 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1624297646, ptr %comp_val.i29, align 4
  %218 = ptrtoint ptr %stats_comp1.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %stats_comp1.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %bnx2x_func_stats_init.exit, %if.else.if.end5_crit_edge, %if.end409.i, %do.end.i
  tail call fastcc void @bnx2x_hw_stats_post(ptr noundef %bp)
  tail call fastcc void @bnx2x_storm_stats_post(ptr noundef %bp)
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2x_stats_do_nothing(ptr nocapture noundef %bp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_stats_pmf_start(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  tail call void @bnx2x_stats_pmf_update(ptr noundef %bp)
  tail call void @bnx2x_stats_start(ptr noundef %bp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_stats_restart(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  tail call void @bnx2x_stats_start(ptr noundef %bp)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_stats_update(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %0 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slowpath, align 4
  %stats_comp1 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 9
  %shmem2_base.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %2 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shmem2_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %4 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !130
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %7)
  %cmp.i = icmp ugt i32 %7, 108
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regview.i, align 8
  %10 = ptrtoint ptr %shmem2_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shmem2_base.i, align 4
  %add9.i = add i32 %11, 108
  %add.ptr10.i = getelementptr i8, ptr %9, i32 %add9.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %12)
  %cmp14.i = icmp eq i32 %12, 50331648
  br i1 %cmp14.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %15 = ptrtoint ptr %stats_comp1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats_comp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1624297646, i32 %16)
  %cmp.not = icmp eq i32 %16, 1624297646
  br i1 %cmp.not, label %if.end4, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.then2
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @bnx2x_hw_stats_update(ptr noundef %bp)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %call9 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end44_crit_edge, label %if.then11

if.end8.if.end44_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then11:                                        ; preds = %if.end8
  %stats_pending = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 45
  %19 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %stats_pending, align 8
  %inc = add i16 %20, 1
  store i16 %inc, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %20)
  %cmp12 = icmp eq i16 %20, 3
  br i1 %cmp12, label %do.end, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %tobool16.not = icmp eq ptr %22, null
  %spec.select = select i1 %tobool16.not, ptr @.str.3, ptr %22
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1235, ptr noundef nonnull %spec.select) #10
  %panic = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 47
  %23 = ptrtoint ptr %panic to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %panic, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %tobool28.not = icmp eq ptr %25, null
  %cond35 = select i1 %tobool28.not, ptr @.str.3, ptr %25
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 1236, ptr noundef nonnull %cond35) #10
  tail call void @bnx2x_panic_dump(ptr noundef %bp, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end8.if.end44_crit_edge
  tail call fastcc void @bnx2x_net_stats_update(ptr noundef %bp)
  %num_queues.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %26 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp84.i = icmp sgt i32 %27, 0
  br i1 %cmp84.i, label %for.body.lr.ph.i, label %if.end44.bnx2x_drv_stats_update.exit_crit_edge

if.end44.bnx2x_drv_stats_update.exit_crit_edge:   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_drv_stats_update.exit

for.body.lr.ph.i:                                 ; preds = %if.end44
  %num_cnic_queues.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %fp_stats.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 2
  %driver_xoff5.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 41
  %rx_err_discard_pkt12.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 42
  %rx_skb_alloc_failed21.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 43
  %hw_csum_err30.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 44
  %driver_filtered_tx_pkt39.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 58
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %28 = phi i32 [ %27, %for.body.lr.ph.i ], [ %71, %for.inc.i.for.body.i_crit_edge ]
  %i.085.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and.i = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i92 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i92, label %for.body.i.if.else.i_crit_edge, label %land.lhs.true.i93

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i93:                                ; preds = %for.body.i
  %31 = ptrtoint ptr %num_cnic_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_cnic_queues.i, align 4
  %sub.i = sub i32 %28, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.085.i, i32 %sub.i)
  %cmp2.i = icmp eq i32 %i.085.i, %sub.i
  br i1 %cmp2.i, label %land.lhs.true.i93.for.inc.i_crit_edge, label %land.lhs.true.i93.if.else.i_crit_edge

land.lhs.true.i93.if.else.i_crit_edge:            ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i93.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i93.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %33 = ptrtoint ptr %fp_stats.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fp_stats.i, align 8
  %driver_xoff.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 3, i32 34
  %35 = ptrtoint ptr %driver_xoff.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %driver_xoff.i, align 4
  %37 = ptrtoint ptr %driver_xoff5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_xoff5.i, align 4
  %add6.i = add i32 %38, %36
  store i32 %add6.i, ptr %driver_xoff5.i, align 4
  %driver_xoff_old.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 4, i32 34
  %39 = ptrtoint ptr %driver_xoff_old.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %driver_xoff_old.i, align 4
  %sub8.i = sub i32 %add6.i, %40
  store i32 %sub8.i, ptr %driver_xoff5.i, align 4
  %41 = load i32, ptr %driver_xoff.i, align 4
  store i32 %41, ptr %driver_xoff_old.i, align 4
  %rx_err_discard_pkt.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 3, i32 35
  %42 = ptrtoint ptr %rx_err_discard_pkt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_err_discard_pkt.i, align 4
  %44 = ptrtoint ptr %rx_err_discard_pkt12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_err_discard_pkt12.i, align 4
  %add13.i = add i32 %45, %43
  store i32 %add13.i, ptr %rx_err_discard_pkt12.i, align 4
  %rx_err_discard_pkt_old.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 4, i32 35
  %46 = ptrtoint ptr %rx_err_discard_pkt_old.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_err_discard_pkt_old.i, align 4
  %sub15.i = sub i32 %add13.i, %47
  store i32 %sub15.i, ptr %rx_err_discard_pkt12.i, align 4
  %48 = load i32, ptr %rx_err_discard_pkt.i, align 4
  store i32 %48, ptr %rx_err_discard_pkt_old.i, align 4
  %rx_skb_alloc_failed.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 3, i32 36
  %49 = ptrtoint ptr %rx_skb_alloc_failed.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_skb_alloc_failed.i, align 4
  %51 = ptrtoint ptr %rx_skb_alloc_failed21.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_skb_alloc_failed21.i, align 4
  %add22.i = add i32 %52, %50
  store i32 %add22.i, ptr %rx_skb_alloc_failed21.i, align 4
  %rx_skb_alloc_failed_old.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 4, i32 36
  %53 = ptrtoint ptr %rx_skb_alloc_failed_old.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_skb_alloc_failed_old.i, align 4
  %sub24.i = sub i32 %add22.i, %54
  store i32 %sub24.i, ptr %rx_skb_alloc_failed21.i, align 4
  %55 = load i32, ptr %rx_skb_alloc_failed.i, align 4
  store i32 %55, ptr %rx_skb_alloc_failed_old.i, align 4
  %hw_csum_err.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 3, i32 37
  %56 = ptrtoint ptr %hw_csum_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_csum_err.i, align 4
  %58 = ptrtoint ptr %hw_csum_err30.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hw_csum_err30.i, align 4
  %add31.i = add i32 %59, %57
  store i32 %add31.i, ptr %hw_csum_err30.i, align 4
  %hw_csum_err_old.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 4, i32 37
  %60 = ptrtoint ptr %hw_csum_err_old.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_csum_err_old.i, align 4
  %sub33.i = sub i32 %add31.i, %61
  store i32 %sub33.i, ptr %hw_csum_err30.i, align 4
  %62 = load i32, ptr %hw_csum_err.i, align 4
  store i32 %62, ptr %hw_csum_err_old.i, align 4
  %driver_filtered_tx_pkt.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 3, i32 50
  %63 = ptrtoint ptr %driver_filtered_tx_pkt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %driver_filtered_tx_pkt.i, align 4
  %65 = ptrtoint ptr %driver_filtered_tx_pkt39.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %driver_filtered_tx_pkt39.i, align 4
  %add40.i = add i32 %66, %64
  store i32 %add40.i, ptr %driver_filtered_tx_pkt39.i, align 4
  %driver_filtered_tx_pkt_old.i = getelementptr %struct.bnx2x_fp_stats, ptr %34, i32 %i.085.i, i32 4, i32 38
  %67 = ptrtoint ptr %driver_filtered_tx_pkt_old.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %driver_filtered_tx_pkt_old.i, align 4
  %sub42.i = sub i32 %add40.i, %68
  store i32 %sub42.i, ptr %driver_filtered_tx_pkt39.i, align 4
  %69 = load i32, ptr %driver_filtered_tx_pkt.i, align 4
  store i32 %69, ptr %driver_filtered_tx_pkt_old.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %land.lhs.true.i93.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.085.i, 1
  %70 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_queues.i, align 4
  %cmp.i94 = icmp slt i32 %inc.i, %71
  br i1 %cmp.i94, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.bnx2x_drv_stats_update.exit_crit_edge

for.inc.i.bnx2x_drv_stats_update.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_drv_stats_update.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bnx2x_drv_stats_update.exit:                      ; preds = %for.inc.i.bnx2x_drv_stats_update.exit_crit_edge, %if.end44.bnx2x_drv_stats_update.exit_crit_edge
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 4
  %and46 = and i32 %73, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end49, label %bnx2x_drv_stats_update.exit.cleanup_crit_edge

bnx2x_drv_stats_update.exit.cleanup_crit_edge:    ; preds = %bnx2x_drv_stats_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %bnx2x_drv_stats_update.exit
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %74 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable, align 8
  %and50 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end67_crit_edge, label %if.then52

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnx2x_stats_update.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnx2x_stats_update, %if.then60)) #7
          to label %if.end67 [label %if.then60], !srcloc !139

if.then60:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %dev61 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %76 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev61, align 4
  %brb_drop_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 34
  %78 = ptrtoint ptr %brb_drop_lo to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %brb_drop_lo, align 4
  %brb_truncate_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 36
  %80 = ptrtoint ptr %brb_truncate_lo to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %brb_truncate_lo, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bnx2x_stats_update.__UNIQUE_ID_ddebug352, ptr noundef %77, ptr noundef nonnull @.str.33, i32 noundef %79, i32 noundef %81) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.then52, %if.end49.if.end67_crit_edge
  tail call fastcc void @bnx2x_hw_stats_post(ptr noundef %bp)
  tail call fastcc void @bnx2x_storm_stats_post(ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %bnx2x_drv_stats_update.exit.cleanup_crit_edge, %do.end, %if.then11.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2x_stats_stop(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  %port = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @bnx2x_hw_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %phi.cast = zext i1 %cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %update.0.off0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call1 = tail call fastcc i32 @bnx2x_storm_stats_update(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %or = or i32 %update.0.off0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool5.not = icmp eq i32 %or, 0
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8:                                         ; preds = %if.end
  tail call fastcc void @bnx2x_net_stats_update(ptr noundef %bp)
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.then8.if.end13_crit_edge, label %if.then12

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.then8
  %pfid.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %4 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfid.i, align 1
  %6 = shl i8 %5, 3
  %7 = and i8 %6, 8
  %8 = or i8 %7, 4
  %add.i = zext i8 %8 to i32
  %slowpath.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %9 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slowpath.i, align 4
  %stats_comp1.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %10, i32 0, i32 9
  %executer_idx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 145
  %11 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %executer_idx.i, align 4
  %call.i = tail call i32 @bnx2x_dmae_opcode(ptr noundef %bp, i8 noundef zeroext 0, i8 noundef zeroext 2, i1 noundef zeroext false, i8 noundef zeroext 0) #7
  %port_stx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 6
  %12 = ptrtoint ptr %port_stx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_stx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then12.if.end43.i_crit_edge, label %if.then.i

if.then12.if.end43.i_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then.i:                                        ; preds = %if.then12
  %14 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slowpath.i, align 4
  %16 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %executer_idx.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %executer_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17
  %func_stx.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 65
  %18 = ptrtoint ptr %func_stx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %func_stx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp ne i32 %19, 0
  %..i = zext i1 %tobool5.not.i to i8
  %call9.i = tail call i32 @bnx2x_dmae_opcode_add_comp(i32 noundef %call.i, i8 noundef zeroext %..i) #7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call9.i, ptr %arrayidx.i, align 4
  %slowpath_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %21 = ptrtoint ptr %slowpath_mapping.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slowpath_mapping.i, align 8
  %add11.i = add i32 %22, 3964
  %src_addr_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 1
  %23 = ptrtoint ptr %src_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add11.i, ptr %src_addr_lo.i, align 4
  %src_addr_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 2
  %24 = ptrtoint ptr %src_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %src_addr_hi.i, align 4
  %25 = ptrtoint ptr %port_stx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_stx.i, align 4
  %shr21.i = lshr i32 %26, 2
  %dst_addr_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 3
  %27 = ptrtoint ptr %dst_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr21.i, ptr %dst_addr_lo.i, align 4
  %dst_addr_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 4
  %28 = ptrtoint ptr %dst_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dst_addr_hi.i, align 4
  %shmem2_base.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %29 = ptrtoint ptr %shmem2_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shmem2_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.then23.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then23.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %regview.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %31 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regview.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %30
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !130
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %34)
  %cmp.i.i = icmp ugt i32 %34, 312
  br i1 %cmp.i.i, label %if.end21.i.i, label %land.lhs.true.i.i.if.then23.i.i_crit_edge

land.lhs.true.i.i.if.then23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true.i.i
  %35 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regview.i.i, align 8
  %37 = ptrtoint ptr %shmem2_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shmem2_base.i.i, align 4
  %add9.i.i = add i32 %38, 312
  %add.ptr10.i.i = getelementptr i8, ptr %36, i32 %add9.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool14.not.i.i = icmp eq i32 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %conv.i.i = trunc i32 %40 to i16
  %41 = tail call i16 @llvm.umin.i16(i16 %conv.i.i, i16 648) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool22.not73.i.i = icmp eq i16 %41, 0
  %tobool22.not.i.i = select i1 %tobool14.not.i.i, i1 true, i1 %tobool22.not73.i.i
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.then23.i.i_crit_edge, label %if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge

if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_get_port_stats_dma_len.exit.i

if.end21.i.i.if.then23.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i.if.then23.i.i_crit_edge, %land.lhs.true.i.i.if.then23.i.i_crit_edge, %if.then.i.if.then23.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool24.not.i.i, i16 624, i16 640
  br label %bnx2x_get_port_stats_dma_len.exit.i

bnx2x_get_port_stats_dma_len.exit.i:              ; preds = %if.then23.i.i, %if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge
  %res.2.i.i = phi i16 [ %41, %if.end21.i.i.bnx2x_get_port_stats_dma_len.exit.i_crit_edge ], [ %spec.select.i.i, %if.then23.i.i ]
  %44 = lshr i16 %res.2.i.i, 2
  %len.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 6
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %len.i, align 2
  %46 = ptrtoint ptr %func_stx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %func_stx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool24.not.i = icmp eq i32 %47, 0
  br i1 %tobool24.not.i, label %if.else28.i, label %if.then25.i

if.then25.i:                                      ; preds = %bnx2x_get_port_stats_dma_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx26.i = getelementptr [0 x i32], ptr @dmae_reg_go_c, i32 0, i32 %add.i
  %48 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx26.i, align 4
  %shr27.i = lshr i32 %49, 2
  %comp_addr_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 7
  %50 = ptrtoint ptr %comp_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr27.i, ptr %comp_addr_lo.i, align 4
  %comp_addr_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 8
  %51 = ptrtoint ptr %comp_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %comp_addr_hi.i, align 4
  %comp_val.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 9
  %52 = ptrtoint ptr %comp_val.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %comp_val.i, align 4
  br label %if.end43.i

if.else28.i:                                      ; preds = %bnx2x_get_port_stats_dma_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %slowpath_mapping.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %slowpath_mapping.i, align 8
  %add30.i = add i32 %54, 3432
  %comp_addr_lo34.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 7
  %55 = ptrtoint ptr %comp_addr_lo34.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add30.i, ptr %comp_addr_lo34.i, align 4
  %comp_addr_hi40.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 8
  %56 = ptrtoint ptr %comp_addr_hi40.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %comp_addr_hi40.i, align 4
  %comp_val41.i = getelementptr %struct.bnx2x_slowpath, ptr %15, i32 0, i32 8, i32 %17, i32 9
  %57 = ptrtoint ptr %comp_val41.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1624297646, ptr %comp_val41.i, align 4
  %58 = ptrtoint ptr %stats_comp1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %stats_comp1.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else28.i, %if.then25.i, %if.then12.if.end43.i_crit_edge
  %func_stx44.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 65
  %59 = ptrtoint ptr %func_stx44.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %func_stx44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool45.not.i = icmp eq i32 %60, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end13_crit_edge, label %if.then46.i

if.end43.i.if.end13_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %slowpath.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slowpath.i, align 4
  %63 = ptrtoint ptr %executer_idx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %executer_idx.i, align 4
  %inc50.i = add i32 %64, 1
  store i32 %inc50.i, ptr %executer_idx.i, align 4
  %arrayidx51.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64
  %call52.i = tail call i32 @bnx2x_dmae_opcode_add_comp(i32 noundef %call.i, i8 noundef zeroext 0) #7
  %65 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call52.i, ptr %arrayidx51.i, align 4
  %slowpath_mapping54.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 105
  %66 = ptrtoint ptr %slowpath_mapping54.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slowpath_mapping54.i, align 8
  %add55.i = add i32 %67, 4612
  %src_addr_lo59.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 1
  %68 = ptrtoint ptr %src_addr_lo59.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add55.i, ptr %src_addr_lo59.i, align 4
  %src_addr_hi65.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 2
  %69 = ptrtoint ptr %src_addr_hi65.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %src_addr_hi65.i, align 4
  %70 = ptrtoint ptr %func_stx44.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %func_stx44.i, align 4
  %shr67.i = lshr i32 %71, 2
  %dst_addr_lo68.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 3
  %72 = ptrtoint ptr %dst_addr_lo68.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr67.i, ptr %dst_addr_lo68.i, align 4
  %dst_addr_hi69.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 4
  %73 = ptrtoint ptr %dst_addr_hi69.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %dst_addr_hi69.i, align 4
  %len70.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 6
  %74 = ptrtoint ptr %len70.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 20, ptr %len70.i, align 2
  %75 = load i32, ptr %slowpath_mapping54.i, align 8
  %add72.i = add i32 %75, 3432
  %comp_addr_lo76.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 7
  %76 = ptrtoint ptr %comp_addr_lo76.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add72.i, ptr %comp_addr_lo76.i, align 4
  %comp_addr_hi82.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 8
  %77 = ptrtoint ptr %comp_addr_hi82.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %comp_addr_hi82.i, align 4
  %comp_val83.i = getelementptr %struct.bnx2x_slowpath, ptr %62, i32 0, i32 8, i32 %64, i32 9
  %78 = ptrtoint ptr %comp_val83.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1624297646, ptr %comp_val83.i, align 4
  %79 = ptrtoint ptr %stats_comp1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %stats_comp1.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then46.i, %if.end43.i.if.end13_crit_edge, %if.then8.if.end13_crit_edge
  tail call fastcc void @bnx2x_hw_stats_post(ptr noundef %bp)
  tail call fastcc void @bnx2x_stats_comp(ptr noundef %bp)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_dmae_opcode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_dmae_opcode_add_comp(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_storm_stats_post(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_pending = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 45
  %0 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %stats_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_counter = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 146
  %2 = ptrtoint ptr %stats_counter to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stats_counter, align 8
  %inc = add i16 %3, 1
  store i16 %inc, ptr %stats_counter, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %fw_stats_req = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 111
  %5 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_stats_req, align 4
  %drv_stats_counter = getelementptr inbounds %struct.stats_query_header, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %drv_stats_counter to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %drv_stats_counter, align 2
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.do.end13_crit_edge, label %do.end, !prof !128

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %11
  %12 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_stats_req, align 4
  %drv_stats_counter10 = getelementptr inbounds %struct.stats_query_header, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %drv_stats_counter10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %drv_stats_counter10, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 139, ptr noundef nonnull %spec.select, i32 noundef %conv) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  tail call void @bnx2x_iov_adjust_stats_req(ptr noundef %bp) #7
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end13.do.end20.i_crit_edge, label %do.end.i, !prof !128

do.end13.do.end20.i_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i

do.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %20
  %21 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_stats_req, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i = zext i8 %24 to i32
  %reserved0.i = getelementptr inbounds %struct.stats_query_header, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %reserved0.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reserved0.i, align 1
  %conv8.i = zext i8 %26 to i32
  %drv_stats_counter.i = getelementptr inbounds %struct.stats_query_header, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %drv_stats_counter.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %drv_stats_counter.i, align 2
  %conv11.i = zext i16 %28 to i32
  %reserved1.i = getelementptr inbounds %struct.stats_query_header, ptr %22, i32 0, i32 3
  %29 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reserved1.i, align 4
  %stats_counters_addrs.i = getelementptr inbounds %struct.stats_query_header, ptr %22, i32 0, i32 4
  %hi.i = getelementptr inbounds %struct.stats_query_header, ptr %22, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hi.i, align 4
  %33 = ptrtoint ptr %stats_counters_addrs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stats_counters_addrs.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 103, ptr noundef nonnull %spec.select.i, i32 noundef %conv.i, i32 noundef %conv8.i, i32 noundef %conv11.i, i32 noundef %30, i32 noundef %32, i32 noundef %34) #10
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %do.end13.do.end20.i_crit_edge
  %35 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw_stats_req, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp105.not.i = icmp eq i8 %38, 0
  br i1 %cmp105.not.i, label %do.end20.i.bnx2x_dp_stats.exit_crit_edge, label %do.body26.lr.ph.i

do.end20.i.bnx2x_dp_stats.exit_crit_edge:         ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_dp_stats.exit

do.body26.lr.ph.i:                                ; preds = %do.end20.i
  %dev41.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %do.body26.i

do.body26.i:                                      ; preds = %for.inc.i.do.body26.i_crit_edge, %do.body26.lr.ph.i
  %39 = phi ptr [ %36, %do.body26.lr.ph.i ], [ %57, %for.inc.i.do.body26.i_crit_edge ]
  %i.0106.i = phi i32 [ 0, %do.body26.lr.ph.i ], [ %inc.i, %for.inc.i.do.body26.i_crit_edge ]
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 8
  %and28.i = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body26.i.for.inc.i_crit_edge, label %do.end39.i, !prof !128

do.body26.i.for.inc.i_crit_edge:                  ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end39.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev41.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev41.i, align 4
  %tobool42.not.i = icmp eq ptr %43, null
  %spec.select103.i = select i1 %tobool42.not.i, ptr @.str.3, ptr %43
  %arrayidx.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %39, i32 0, i32 1, i32 %i.0106.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 4
  %conv51.i = zext i8 %45 to i32
  %index.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %39, i32 0, i32 1, i32 %i.0106.i, i32 1
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index.i, align 1
  %conv55.i = zext i8 %47 to i32
  %funcID.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %39, i32 0, i32 1, i32 %i.0106.i, i32 2
  %48 = ptrtoint ptr %funcID.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %funcID.i, align 2
  %conv59.i = zext i16 %49 to i32
  %reserved.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %39, i32 0, i32 1, i32 %i.0106.i, i32 3
  %50 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reserved.i, align 4
  %address.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %39, i32 0, i32 1, i32 %i.0106.i, i32 4
  %hi66.i = getelementptr %struct.bnx2x_fw_stats_req, ptr %39, i32 0, i32 1, i32 %i.0106.i, i32 4, i32 1
  %52 = ptrtoint ptr %hi66.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hi66.i, align 4
  %54 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %address.i, align 4
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 118, ptr noundef nonnull %spec.select103.i, i32 noundef %i.0106.i, i32 noundef %conv51.i, i32 noundef %conv55.i, i32 noundef %conv59.i, i32 noundef %51, i32 noundef %53, i32 noundef %55) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end39.i, %do.body26.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0106.i, 1
  %56 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fw_stats_req, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv24.i = zext i8 %59 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv24.i
  br i1 %cmp.i, label %for.inc.i.do.body26.i_crit_edge, label %for.inc.i.bnx2x_dp_stats.exit_crit_edge

for.inc.i.bnx2x_dp_stats.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnx2x_dp_stats.exit

for.inc.i.do.body26.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i

bnx2x_dp_stats.exit:                              ; preds = %for.inc.i.bnx2x_dp_stats.exit_crit_edge, %do.end20.i.bnx2x_dp_stats.exit_crit_edge
  %fw_stats_req_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 112
  %60 = ptrtoint ptr %fw_stats_req_mapping to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fw_stats_req_mapping, align 8
  %call20 = tail call i32 @bnx2x_sp_post(ptr noundef %bp, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef %61, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then22, label %bnx2x_dp_stats.exit.cleanup_crit_edge

bnx2x_dp_stats.exit.cleanup_crit_edge:            ; preds = %bnx2x_dp_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %bnx2x_dp_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %stats_pending to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %stats_pending, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %bnx2x_dp_stats.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_iov_adjust_stats_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_sp_post(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_hw_stats_update(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %0 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slowpath, align 4
  %nig_stats = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 11
  %old_nig_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7
  %port_stats = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12
  %mac_type = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 67, i32 1
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %3, label %do.end15 [
    i8 2, label %sw.bb
    i8 1, label %sw.bb2
    i8 3, label %entry.sw.bb3_crit_edge
    i8 4, label %entry.sw.bb3_crit_edge663
    i8 0, label %do.body
  ]

entry.sw.bb3_crit_edge663:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  %common.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %5 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %common.i, align 8
  %shr.i = lshr i32 %6, 16
  %shr.off.i = add nsw i32 %shr.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off.i)
  %switch.i = icmp ult i32 %shr.off.i, 3
  br i1 %switch.i, label %if.then.i, label %if.else1911.i

if.then.i:                                        ; preds = %sw.bb
  %rx_stat_grerb_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 40
  %7 = ptrtoint ptr %rx_stat_grerb_lo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_stat_grerb_lo.i, align 4
  %mac_stx.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1
  %rx_stat_ifhcinbadoctets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_stat_ifhcinbadoctets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp12.i = icmp ult i32 %8, %10
  %rx_stat_grerb_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 41
  %11 = ptrtoint ptr %rx_stat_grerb_hi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_stat_grerb_hi.i, align 4
  %13 = ptrtoint ptr %mac_stx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_stx.i, align 4
  br i1 %cmp12.i, label %if.then13.i, label %if.else28.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp17.not.i = icmp eq i32 %12, %14
  br i1 %cmp17.not.i, label %if.then13.i.do.end.i_crit_edge, label %if.then18.i

if.then13.i.do.end.i_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then18.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = xor i32 %14, -1
  %dec.i = add i32 %12, %15
  %add25.i = sub i32 %8, %10
  br label %do.end.i

if.else28.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp33.i = icmp ult i32 %12, %14
  br i1 %cmp33.i, label %if.else28.i.do.end.i_crit_edge, label %if.else37.i

if.else28.i.do.end.i_crit_edge:                   ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.else37.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub42.i = sub i32 %12, %14
  %sub48.i = sub i32 %8, %10
  br label %do.end.i

do.end.i:                                         ; preds = %if.else37.i, %if.else28.i.do.end.i_crit_edge, %if.then18.i, %if.then13.i.do.end.i_crit_edge
  %diff.sroa.279.0.i = phi i32 [ %dec.i, %if.then18.i ], [ %sub42.i, %if.else37.i ], [ 0, %if.then13.i.do.end.i_crit_edge ], [ 0, %if.else28.i.do.end.i_crit_edge ]
  %diff.sroa.0.0.i = phi i32 [ %add25.i, %if.then18.i ], [ %sub48.i, %if.else37.i ], [ 0, %if.then13.i.do.end.i_crit_edge ], [ 0, %if.else28.i.do.end.i_crit_edge ]
  %16 = ptrtoint ptr %mac_stx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %12, ptr %mac_stx.i, align 4
  %17 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %rx_stat_ifhcinbadoctets_lo.i, align 4
  %arrayidx63.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1
  %rx_stat_ifhcinbadoctets_lo64.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_stat_ifhcinbadoctets_lo64.i, align 4
  %add65.i = add i32 %19, %diff.sroa.0.0.i
  store i32 %add65.i, ptr %rx_stat_ifhcinbadoctets_lo64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65.i, i32 %diff.sroa.0.0.i)
  %cmp71.i = icmp ult i32 %add65.i, %diff.sroa.0.0.i
  %cond.i = zext i1 %cmp71.i to i32
  %20 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx63.i, align 4
  %add72.i = add i32 %21, %diff.sroa.279.0.i
  %add76.i = add i32 %add72.i, %cond.i
  store i32 %add76.i, ptr %arrayidx63.i, align 4
  %rx_stat_grfcs_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 12
  %22 = ptrtoint ptr %rx_stat_grfcs_lo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_stat_grfcs_lo.i, align 4
  %rx_stat_dot3statsfcserrors_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_stat_dot3statsfcserrors_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp85.i = icmp ult i32 %23, %25
  %rx_stat_grfcs_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %rx_stat_grfcs_hi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_stat_grfcs_hi.i, align 4
  %rx_stat_dot3statsfcserrors_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_stat_dot3statsfcserrors_hi.i, align 4
  br i1 %cmp85.i, label %if.then86.i, label %if.else108.i

if.then86.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp92.not.i = icmp eq i32 %27, %29
  br i1 %cmp92.not.i, label %if.then86.i.do.end133.i_crit_edge, label %if.then93.i

if.then86.i.do.end133.i_crit_edge:                ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

if.then93.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = xor i32 %29, -1
  %dec95.i = add i32 %27, %30
  %add102.i = sub i32 %23, %25
  br label %do.end133.i

if.else108.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp113.i = icmp ult i32 %27, %29
  br i1 %cmp113.i, label %if.else108.i.do.end133.i_crit_edge, label %if.else117.i

if.else108.i.do.end133.i_crit_edge:               ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

if.else117.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub122.i = sub i32 %27, %29
  %sub128.i = sub i32 %23, %25
  br label %do.end133.i

do.end133.i:                                      ; preds = %if.else117.i, %if.else108.i.do.end133.i_crit_edge, %if.then93.i, %if.then86.i.do.end133.i_crit_edge
  %diff.sroa.279.1.i = phi i32 [ %dec95.i, %if.then93.i ], [ %sub122.i, %if.else117.i ], [ 0, %if.then86.i.do.end133.i_crit_edge ], [ 0, %if.else108.i.do.end133.i_crit_edge ]
  %diff.sroa.0.1.i = phi i32 [ %add102.i, %if.then93.i ], [ %sub128.i, %if.else117.i ], [ 0, %if.then86.i.do.end133.i_crit_edge ], [ 0, %if.else108.i.do.end133.i_crit_edge ]
  %31 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %rx_stat_dot3statsfcserrors_hi.i, align 4
  %32 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %23, ptr %rx_stat_dot3statsfcserrors_lo.i, align 4
  %rx_stat_dot3statsfcserrors_lo146.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 5
  %33 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo146.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_stat_dot3statsfcserrors_lo146.i, align 4
  %add147.i = add i32 %34, %diff.sroa.0.1.i
  store i32 %add147.i, ptr %rx_stat_dot3statsfcserrors_lo146.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add147.i, i32 %diff.sroa.0.1.i)
  %cmp153.i = icmp ult i32 %add147.i, %diff.sroa.0.1.i
  %cond154.i = zext i1 %cmp153.i to i32
  %rx_stat_dot3statsfcserrors_hi158.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 4
  %35 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi158.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_stat_dot3statsfcserrors_hi158.i, align 4
  %add155.i = add i32 %36, %diff.sroa.279.1.i
  %add159.i = add i32 %add155.i, %cond154.i
  store i32 %add159.i, ptr %rx_stat_dot3statsfcserrors_hi158.i, align 4
  %rx_stat_grund_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 36
  %37 = ptrtoint ptr %rx_stat_grund_lo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_stat_grund_lo.i, align 4
  %rx_stat_etherstatsundersizepkts_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 13
  %39 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_stat_etherstatsundersizepkts_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp168.i = icmp ult i32 %38, %40
  %rx_stat_grund_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 37
  %41 = ptrtoint ptr %rx_stat_grund_hi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_stat_grund_hi.i, align 4
  %rx_stat_etherstatsundersizepkts_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 12
  %43 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_stat_etherstatsundersizepkts_hi.i, align 4
  br i1 %cmp168.i, label %if.then169.i, label %if.else191.i

if.then169.i:                                     ; preds = %do.end133.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp175.not.i = icmp eq i32 %42, %44
  br i1 %cmp175.not.i, label %if.then169.i.do.end216.i_crit_edge, label %if.then176.i

if.then169.i.do.end216.i_crit_edge:               ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end216.i

if.then176.i:                                     ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = xor i32 %44, -1
  %dec178.i = add i32 %42, %45
  %add185.i = sub i32 %38, %40
  br label %do.end216.i

if.else191.i:                                     ; preds = %do.end133.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp196.i = icmp ult i32 %42, %44
  br i1 %cmp196.i, label %if.else191.i.do.end216.i_crit_edge, label %if.else200.i

if.else191.i.do.end216.i_crit_edge:               ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end216.i

if.else200.i:                                     ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub205.i = sub i32 %42, %44
  %sub211.i = sub i32 %38, %40
  br label %do.end216.i

do.end216.i:                                      ; preds = %if.else200.i, %if.else191.i.do.end216.i_crit_edge, %if.then176.i, %if.then169.i.do.end216.i_crit_edge
  %diff.sroa.279.2.i = phi i32 [ %dec178.i, %if.then176.i ], [ %sub205.i, %if.else200.i ], [ 0, %if.then169.i.do.end216.i_crit_edge ], [ 0, %if.else191.i.do.end216.i_crit_edge ]
  %diff.sroa.0.2.i = phi i32 [ %add185.i, %if.then176.i ], [ %sub211.i, %if.else200.i ], [ 0, %if.then169.i.do.end216.i_crit_edge ], [ 0, %if.else191.i.do.end216.i_crit_edge ]
  %46 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %42, ptr %rx_stat_etherstatsundersizepkts_hi.i, align 4
  %47 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %38, ptr %rx_stat_etherstatsundersizepkts_lo.i, align 4
  %rx_stat_etherstatsundersizepkts_lo229.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 13
  %48 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo229.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_stat_etherstatsundersizepkts_lo229.i, align 4
  %add230.i = add i32 %49, %diff.sroa.0.2.i
  store i32 %add230.i, ptr %rx_stat_etherstatsundersizepkts_lo229.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add230.i, i32 %diff.sroa.0.2.i)
  %cmp236.i = icmp ult i32 %add230.i, %diff.sroa.0.2.i
  %cond237.i = zext i1 %cmp236.i to i32
  %rx_stat_etherstatsundersizepkts_hi241.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 12
  %50 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi241.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_stat_etherstatsundersizepkts_hi241.i, align 4
  %add238.i = add i32 %51, %diff.sroa.279.2.i
  %add242.i = add i32 %add238.i, %cond237.i
  store i32 %add242.i, ptr %rx_stat_etherstatsundersizepkts_hi241.i, align 4
  %rx_stat_grovr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 26
  %52 = ptrtoint ptr %rx_stat_grovr_lo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_stat_grovr_lo.i, align 4
  %rx_stat_dot3statsframestoolong_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 15
  %54 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_stat_dot3statsframestoolong_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp251.i = icmp ult i32 %53, %55
  %rx_stat_grovr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 27
  %56 = ptrtoint ptr %rx_stat_grovr_hi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_stat_grovr_hi.i, align 4
  %rx_stat_dot3statsframestoolong_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 14
  %58 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_stat_dot3statsframestoolong_hi.i, align 4
  br i1 %cmp251.i, label %if.then252.i, label %if.else274.i

if.then252.i:                                     ; preds = %do.end216.i
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp258.not.i = icmp eq i32 %57, %59
  br i1 %cmp258.not.i, label %if.then252.i.do.end299.i_crit_edge, label %if.then259.i

if.then252.i.do.end299.i_crit_edge:               ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end299.i

if.then259.i:                                     ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = xor i32 %59, -1
  %dec261.i = add i32 %57, %60
  %add268.i = sub i32 %53, %55
  br label %do.end299.i

if.else274.i:                                     ; preds = %do.end216.i
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp279.i = icmp ult i32 %57, %59
  br i1 %cmp279.i, label %if.else274.i.do.end299.i_crit_edge, label %if.else283.i

if.else274.i.do.end299.i_crit_edge:               ; preds = %if.else274.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end299.i

if.else283.i:                                     ; preds = %if.else274.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub288.i = sub i32 %57, %59
  %sub294.i = sub i32 %53, %55
  br label %do.end299.i

do.end299.i:                                      ; preds = %if.else283.i, %if.else274.i.do.end299.i_crit_edge, %if.then259.i, %if.then252.i.do.end299.i_crit_edge
  %diff.sroa.279.3.i = phi i32 [ %dec261.i, %if.then259.i ], [ %sub288.i, %if.else283.i ], [ 0, %if.then252.i.do.end299.i_crit_edge ], [ 0, %if.else274.i.do.end299.i_crit_edge ]
  %diff.sroa.0.3.i = phi i32 [ %add268.i, %if.then259.i ], [ %sub294.i, %if.else283.i ], [ 0, %if.then252.i.do.end299.i_crit_edge ], [ 0, %if.else274.i.do.end299.i_crit_edge ]
  %61 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %rx_stat_dot3statsframestoolong_hi.i, align 4
  %62 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %rx_stat_dot3statsframestoolong_lo.i, align 4
  %rx_stat_dot3statsframestoolong_lo312.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 15
  %63 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo312.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_stat_dot3statsframestoolong_lo312.i, align 4
  %add313.i = add i32 %64, %diff.sroa.0.3.i
  store i32 %add313.i, ptr %rx_stat_dot3statsframestoolong_lo312.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add313.i, i32 %diff.sroa.0.3.i)
  %cmp319.i = icmp ult i32 %add313.i, %diff.sroa.0.3.i
  %cond320.i = zext i1 %cmp319.i to i32
  %rx_stat_dot3statsframestoolong_hi324.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 14
  %65 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi324.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_stat_dot3statsframestoolong_hi324.i, align 4
  %add321.i = add i32 %66, %diff.sroa.279.3.i
  %add325.i = add i32 %add321.i, %cond320.i
  store i32 %add325.i, ptr %rx_stat_dot3statsframestoolong_hi324.i, align 4
  %rx_stat_grfrg_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 38
  %67 = ptrtoint ptr %rx_stat_grfrg_lo.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_stat_grfrg_lo.i, align 4
  %rx_stat_etherstatsfragments_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 17
  %69 = ptrtoint ptr %rx_stat_etherstatsfragments_lo.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_stat_etherstatsfragments_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp334.i = icmp ult i32 %68, %70
  %rx_stat_grfrg_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 39
  %71 = ptrtoint ptr %rx_stat_grfrg_hi.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_stat_grfrg_hi.i, align 4
  %rx_stat_etherstatsfragments_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 16
  %73 = ptrtoint ptr %rx_stat_etherstatsfragments_hi.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_stat_etherstatsfragments_hi.i, align 4
  br i1 %cmp334.i, label %if.then335.i, label %if.else357.i

if.then335.i:                                     ; preds = %do.end299.i
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp341.not.i = icmp eq i32 %72, %74
  br i1 %cmp341.not.i, label %if.then335.i.do.end382.i_crit_edge, label %if.then342.i

if.then335.i.do.end382.i_crit_edge:               ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end382.i

if.then342.i:                                     ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = xor i32 %74, -1
  %dec344.i = add i32 %72, %75
  %add351.i = sub i32 %68, %70
  br label %do.end382.i

if.else357.i:                                     ; preds = %do.end299.i
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp362.i = icmp ult i32 %72, %74
  br i1 %cmp362.i, label %if.else357.i.do.end382.i_crit_edge, label %if.else366.i

if.else357.i.do.end382.i_crit_edge:               ; preds = %if.else357.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end382.i

if.else366.i:                                     ; preds = %if.else357.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub371.i = sub i32 %72, %74
  %sub377.i = sub i32 %68, %70
  br label %do.end382.i

do.end382.i:                                      ; preds = %if.else366.i, %if.else357.i.do.end382.i_crit_edge, %if.then342.i, %if.then335.i.do.end382.i_crit_edge
  %diff.sroa.279.4.i = phi i32 [ %dec344.i, %if.then342.i ], [ %sub371.i, %if.else366.i ], [ 0, %if.then335.i.do.end382.i_crit_edge ], [ 0, %if.else357.i.do.end382.i_crit_edge ]
  %diff.sroa.0.4.i = phi i32 [ %add351.i, %if.then342.i ], [ %sub377.i, %if.else366.i ], [ 0, %if.then335.i.do.end382.i_crit_edge ], [ 0, %if.else357.i.do.end382.i_crit_edge ]
  %76 = ptrtoint ptr %rx_stat_etherstatsfragments_hi.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %72, ptr %rx_stat_etherstatsfragments_hi.i, align 4
  %77 = ptrtoint ptr %rx_stat_etherstatsfragments_lo.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %68, ptr %rx_stat_etherstatsfragments_lo.i, align 4
  %rx_stat_etherstatsfragments_lo395.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 17
  %78 = ptrtoint ptr %rx_stat_etherstatsfragments_lo395.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_stat_etherstatsfragments_lo395.i, align 4
  %add396.i = add i32 %79, %diff.sroa.0.4.i
  store i32 %add396.i, ptr %rx_stat_etherstatsfragments_lo395.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add396.i, i32 %diff.sroa.0.4.i)
  %cmp402.i = icmp ult i32 %add396.i, %diff.sroa.0.4.i
  %cond403.i = zext i1 %cmp402.i to i32
  %rx_stat_etherstatsfragments_hi407.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 16
  %80 = ptrtoint ptr %rx_stat_etherstatsfragments_hi407.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_stat_etherstatsfragments_hi407.i, align 4
  %add404.i = add i32 %81, %diff.sroa.279.4.i
  %add408.i = add i32 %add404.i, %cond403.i
  store i32 %add408.i, ptr %rx_stat_etherstatsfragments_hi407.i, align 4
  %rx_stat_grjbr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 24
  %82 = ptrtoint ptr %rx_stat_grjbr_lo.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_stat_grjbr_lo.i, align 4
  %rx_stat_etherstatsjabbers_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 19
  %84 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_stat_etherstatsjabbers_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp417.i = icmp ult i32 %83, %85
  %rx_stat_grjbr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 25
  %86 = ptrtoint ptr %rx_stat_grjbr_hi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_stat_grjbr_hi.i, align 4
  %rx_stat_etherstatsjabbers_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 18
  %88 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_stat_etherstatsjabbers_hi.i, align 4
  br i1 %cmp417.i, label %if.then418.i, label %if.else440.i

if.then418.i:                                     ; preds = %do.end382.i
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp424.not.i = icmp eq i32 %87, %89
  br i1 %cmp424.not.i, label %if.then418.i.do.end465.i_crit_edge, label %if.then425.i

if.then418.i.do.end465.i_crit_edge:               ; preds = %if.then418.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end465.i

if.then425.i:                                     ; preds = %if.then418.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = xor i32 %89, -1
  %dec427.i = add i32 %87, %90
  %add434.i = sub i32 %83, %85
  br label %do.end465.i

if.else440.i:                                     ; preds = %do.end382.i
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp445.i = icmp ult i32 %87, %89
  br i1 %cmp445.i, label %if.else440.i.do.end465.i_crit_edge, label %if.else449.i

if.else440.i.do.end465.i_crit_edge:               ; preds = %if.else440.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end465.i

if.else449.i:                                     ; preds = %if.else440.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub454.i = sub i32 %87, %89
  %sub460.i = sub i32 %83, %85
  br label %do.end465.i

do.end465.i:                                      ; preds = %if.else449.i, %if.else440.i.do.end465.i_crit_edge, %if.then425.i, %if.then418.i.do.end465.i_crit_edge
  %diff.sroa.279.5.i = phi i32 [ %dec427.i, %if.then425.i ], [ %sub454.i, %if.else449.i ], [ 0, %if.then418.i.do.end465.i_crit_edge ], [ 0, %if.else440.i.do.end465.i_crit_edge ]
  %diff.sroa.0.5.i = phi i32 [ %add434.i, %if.then425.i ], [ %sub460.i, %if.else449.i ], [ 0, %if.then418.i.do.end465.i_crit_edge ], [ 0, %if.else440.i.do.end465.i_crit_edge ]
  %91 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %87, ptr %rx_stat_etherstatsjabbers_hi.i, align 4
  %92 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %83, ptr %rx_stat_etherstatsjabbers_lo.i, align 4
  %rx_stat_etherstatsjabbers_lo478.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 19
  %93 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo478.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_stat_etherstatsjabbers_lo478.i, align 4
  %add479.i = add i32 %94, %diff.sroa.0.5.i
  store i32 %add479.i, ptr %rx_stat_etherstatsjabbers_lo478.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add479.i, i32 %diff.sroa.0.5.i)
  %cmp485.i = icmp ult i32 %add479.i, %diff.sroa.0.5.i
  %cond486.i = zext i1 %cmp485.i to i32
  %rx_stat_etherstatsjabbers_hi490.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 18
  %95 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi490.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_stat_etherstatsjabbers_hi490.i, align 4
  %add487.i = add i32 %96, %diff.sroa.279.5.i
  %add491.i = add i32 %add487.i, %cond486.i
  store i32 %add491.i, ptr %rx_stat_etherstatsjabbers_hi490.i, align 4
  %rx_stat_grxcf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 18
  %97 = ptrtoint ptr %rx_stat_grxcf_lo.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_stat_grxcf_lo.i, align 4
  %rx_stat_maccontrolframesreceived_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 21
  %99 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_stat_maccontrolframesreceived_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp500.i = icmp ult i32 %98, %100
  %rx_stat_grxcf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 19
  %101 = ptrtoint ptr %rx_stat_grxcf_hi.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_stat_grxcf_hi.i, align 4
  %rx_stat_maccontrolframesreceived_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 20
  %103 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_stat_maccontrolframesreceived_hi.i, align 4
  br i1 %cmp500.i, label %if.then501.i, label %if.else523.i

if.then501.i:                                     ; preds = %do.end465.i
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp507.not.i = icmp eq i32 %102, %104
  br i1 %cmp507.not.i, label %if.then501.i.do.end548.i_crit_edge, label %if.then508.i

if.then501.i.do.end548.i_crit_edge:               ; preds = %if.then501.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end548.i

if.then508.i:                                     ; preds = %if.then501.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = xor i32 %104, -1
  %dec510.i = add i32 %102, %105
  %add517.i = sub i32 %98, %100
  br label %do.end548.i

if.else523.i:                                     ; preds = %do.end465.i
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp528.i = icmp ult i32 %102, %104
  br i1 %cmp528.i, label %if.else523.i.do.end548.i_crit_edge, label %if.else532.i

if.else523.i.do.end548.i_crit_edge:               ; preds = %if.else523.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end548.i

if.else532.i:                                     ; preds = %if.else523.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub537.i = sub i32 %102, %104
  %sub543.i = sub i32 %98, %100
  br label %do.end548.i

do.end548.i:                                      ; preds = %if.else532.i, %if.else523.i.do.end548.i_crit_edge, %if.then508.i, %if.then501.i.do.end548.i_crit_edge
  %diff.sroa.279.6.i = phi i32 [ %dec510.i, %if.then508.i ], [ %sub537.i, %if.else532.i ], [ 0, %if.then501.i.do.end548.i_crit_edge ], [ 0, %if.else523.i.do.end548.i_crit_edge ]
  %diff.sroa.0.6.i = phi i32 [ %add517.i, %if.then508.i ], [ %sub543.i, %if.else532.i ], [ 0, %if.then501.i.do.end548.i_crit_edge ], [ 0, %if.else523.i.do.end548.i_crit_edge ]
  %106 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %102, ptr %rx_stat_maccontrolframesreceived_hi.i, align 4
  %107 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %98, ptr %rx_stat_maccontrolframesreceived_lo.i, align 4
  %rx_stat_maccontrolframesreceived_lo561.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 21
  %108 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo561.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_stat_maccontrolframesreceived_lo561.i, align 4
  %add562.i = add i32 %109, %diff.sroa.0.6.i
  store i32 %add562.i, ptr %rx_stat_maccontrolframesreceived_lo561.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add562.i, i32 %diff.sroa.0.6.i)
  %cmp568.i = icmp ult i32 %add562.i, %diff.sroa.0.6.i
  %cond569.i = zext i1 %cmp568.i to i32
  %rx_stat_maccontrolframesreceived_hi573.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 20
  %110 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi573.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_stat_maccontrolframesreceived_hi573.i, align 4
  %add570.i = add i32 %111, %diff.sroa.279.6.i
  %add574.i = add i32 %add570.i, %cond569.i
  store i32 %add574.i, ptr %rx_stat_maccontrolframesreceived_hi573.i, align 4
  %rx_stat_grxpf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 20
  %112 = ptrtoint ptr %rx_stat_grxpf_lo.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_stat_grxpf_lo.i, align 4
  %rx_stat_xoffstateentered_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 27
  %114 = ptrtoint ptr %rx_stat_xoffstateentered_lo.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_stat_xoffstateentered_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp583.i = icmp ult i32 %113, %115
  %rx_stat_grxpf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 21
  %116 = ptrtoint ptr %rx_stat_grxpf_hi.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_stat_grxpf_hi.i, align 4
  %rx_stat_xoffstateentered_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 26
  %118 = ptrtoint ptr %rx_stat_xoffstateentered_hi.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_stat_xoffstateentered_hi.i, align 4
  br i1 %cmp583.i, label %if.then584.i, label %if.else606.i

if.then584.i:                                     ; preds = %do.end548.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp590.not.i = icmp eq i32 %117, %119
  br i1 %cmp590.not.i, label %if.then584.i.do.end631.i_crit_edge, label %if.then591.i

if.then584.i.do.end631.i_crit_edge:               ; preds = %if.then584.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end631.i

if.then591.i:                                     ; preds = %if.then584.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = xor i32 %119, -1
  %dec593.i = add i32 %117, %120
  %add600.i = sub i32 %113, %115
  br label %do.end631.i

if.else606.i:                                     ; preds = %do.end548.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp611.i = icmp ult i32 %117, %119
  br i1 %cmp611.i, label %if.else606.i.do.end631.i_crit_edge, label %if.else615.i

if.else606.i.do.end631.i_crit_edge:               ; preds = %if.else606.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end631.i

if.else615.i:                                     ; preds = %if.else606.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub620.i = sub i32 %117, %119
  %sub626.i = sub i32 %113, %115
  br label %do.end631.i

do.end631.i:                                      ; preds = %if.else615.i, %if.else606.i.do.end631.i_crit_edge, %if.then591.i, %if.then584.i.do.end631.i_crit_edge
  %diff.sroa.279.7.i = phi i32 [ %dec593.i, %if.then591.i ], [ %sub620.i, %if.else615.i ], [ 0, %if.then584.i.do.end631.i_crit_edge ], [ 0, %if.else606.i.do.end631.i_crit_edge ]
  %diff.sroa.0.7.i = phi i32 [ %add600.i, %if.then591.i ], [ %sub626.i, %if.else615.i ], [ 0, %if.then584.i.do.end631.i_crit_edge ], [ 0, %if.else606.i.do.end631.i_crit_edge ]
  %121 = ptrtoint ptr %rx_stat_xoffstateentered_hi.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %117, ptr %rx_stat_xoffstateentered_hi.i, align 4
  %122 = ptrtoint ptr %rx_stat_xoffstateentered_lo.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %113, ptr %rx_stat_xoffstateentered_lo.i, align 4
  %rx_stat_xoffstateentered_lo644.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 27
  %123 = ptrtoint ptr %rx_stat_xoffstateentered_lo644.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_stat_xoffstateentered_lo644.i, align 4
  %add645.i = add i32 %124, %diff.sroa.0.7.i
  store i32 %add645.i, ptr %rx_stat_xoffstateentered_lo644.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add645.i, i32 %diff.sroa.0.7.i)
  %cmp651.i = icmp ult i32 %add645.i, %diff.sroa.0.7.i
  %cond652.i = zext i1 %cmp651.i to i32
  %rx_stat_xoffstateentered_hi656.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 26
  %125 = ptrtoint ptr %rx_stat_xoffstateentered_hi656.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rx_stat_xoffstateentered_hi656.i, align 4
  %add653.i = add i32 %126, %diff.sroa.279.7.i
  %add657.i = add i32 %add653.i, %cond652.i
  store i32 %add657.i, ptr %rx_stat_xoffstateentered_hi656.i, align 4
  %rx_stat_mac_xpf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 23
  %127 = ptrtoint ptr %rx_stat_mac_xpf_lo.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_stat_mac_xpf_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %128)
  %cmp667.i = icmp ult i32 %113, %128
  %rx_stat_mac_xpf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 22
  %129 = ptrtoint ptr %rx_stat_mac_xpf_hi.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_stat_mac_xpf_hi.i, align 4
  br i1 %cmp667.i, label %if.then668.i, label %if.else691.i

if.then668.i:                                     ; preds = %do.end631.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %130)
  %cmp675.not.i = icmp eq i32 %117, %130
  br i1 %cmp675.not.i, label %if.then668.i.do.end716.i_crit_edge, label %if.then676.i

if.then668.i.do.end716.i_crit_edge:               ; preds = %if.then668.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end716.i

if.then676.i:                                     ; preds = %if.then668.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = xor i32 %130, -1
  %dec678.i = add i32 %117, %131
  %add685.i = sub i32 %113, %128
  br label %do.end716.i

if.else691.i:                                     ; preds = %do.end631.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %130)
  %cmp696.i = icmp ult i32 %117, %130
  br i1 %cmp696.i, label %if.else691.i.do.end716.i_crit_edge, label %if.else700.i

if.else691.i.do.end716.i_crit_edge:               ; preds = %if.else691.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end716.i

if.else700.i:                                     ; preds = %if.else691.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub705.i = sub i32 %117, %130
  %sub711.i = sub i32 %113, %128
  br label %do.end716.i

do.end716.i:                                      ; preds = %if.else700.i, %if.else691.i.do.end716.i_crit_edge, %if.then676.i, %if.then668.i.do.end716.i_crit_edge
  %diff.sroa.279.8.i = phi i32 [ %dec678.i, %if.then676.i ], [ %sub705.i, %if.else700.i ], [ 0, %if.then668.i.do.end716.i_crit_edge ], [ 0, %if.else691.i.do.end716.i_crit_edge ]
  %diff.sroa.0.8.i = phi i32 [ %add685.i, %if.then676.i ], [ %sub711.i, %if.else700.i ], [ 0, %if.then668.i.do.end716.i_crit_edge ], [ 0, %if.else691.i.do.end716.i_crit_edge ]
  %132 = ptrtoint ptr %rx_stat_mac_xpf_hi.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %117, ptr %rx_stat_mac_xpf_hi.i, align 4
  %133 = ptrtoint ptr %rx_stat_mac_xpf_lo.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %113, ptr %rx_stat_mac_xpf_lo.i, align 4
  %rx_stat_mac_xpf_lo729.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 23
  %134 = ptrtoint ptr %rx_stat_mac_xpf_lo729.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rx_stat_mac_xpf_lo729.i, align 4
  %add730.i = add i32 %135, %diff.sroa.0.8.i
  store i32 %add730.i, ptr %rx_stat_mac_xpf_lo729.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add730.i, i32 %diff.sroa.0.8.i)
  %cmp736.i = icmp ult i32 %add730.i, %diff.sroa.0.8.i
  %cond737.i = zext i1 %cmp736.i to i32
  %rx_stat_mac_xpf_hi741.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 22
  %136 = ptrtoint ptr %rx_stat_mac_xpf_hi741.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_stat_mac_xpf_hi741.i, align 4
  %add738.i = add i32 %137, %diff.sroa.279.8.i
  %add742.i = add i32 %add738.i, %cond737.i
  store i32 %add742.i, ptr %rx_stat_mac_xpf_hi741.i, align 4
  %tx_stat_gtxpf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %138 = ptrtoint ptr %tx_stat_gtxpf_lo.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_stat_gtxpf_lo.i, align 4
  %tx_stat_outxoffsent_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 35
  %140 = ptrtoint ptr %tx_stat_outxoffsent_lo.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_stat_outxoffsent_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp751.i = icmp ult i32 %139, %141
  %tx_stat_gtxpf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %142 = ptrtoint ptr %tx_stat_gtxpf_hi.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_stat_gtxpf_hi.i, align 4
  %tx_stat_outxoffsent_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 34
  %144 = ptrtoint ptr %tx_stat_outxoffsent_hi.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_stat_outxoffsent_hi.i, align 4
  br i1 %cmp751.i, label %if.then752.i, label %if.else774.i

if.then752.i:                                     ; preds = %do.end716.i
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp758.not.i = icmp eq i32 %143, %145
  br i1 %cmp758.not.i, label %if.then752.i.do.end799.i_crit_edge, label %if.then759.i

if.then752.i.do.end799.i_crit_edge:               ; preds = %if.then752.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end799.i

if.then759.i:                                     ; preds = %if.then752.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = xor i32 %145, -1
  %dec761.i = add i32 %143, %146
  %add768.i = sub i32 %139, %141
  br label %do.end799.i

if.else774.i:                                     ; preds = %do.end716.i
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp779.i = icmp ult i32 %143, %145
  br i1 %cmp779.i, label %if.else774.i.do.end799.i_crit_edge, label %if.else783.i

if.else774.i.do.end799.i_crit_edge:               ; preds = %if.else774.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end799.i

if.else783.i:                                     ; preds = %if.else774.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub788.i = sub i32 %143, %145
  %sub794.i = sub i32 %139, %141
  br label %do.end799.i

do.end799.i:                                      ; preds = %if.else783.i, %if.else774.i.do.end799.i_crit_edge, %if.then759.i, %if.then752.i.do.end799.i_crit_edge
  %diff.sroa.279.9.i = phi i32 [ %dec761.i, %if.then759.i ], [ %sub788.i, %if.else783.i ], [ 0, %if.then752.i.do.end799.i_crit_edge ], [ 0, %if.else774.i.do.end799.i_crit_edge ]
  %diff.sroa.0.9.i = phi i32 [ %add768.i, %if.then759.i ], [ %sub794.i, %if.else783.i ], [ 0, %if.then752.i.do.end799.i_crit_edge ], [ 0, %if.else774.i.do.end799.i_crit_edge ]
  %147 = ptrtoint ptr %tx_stat_outxoffsent_hi.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %143, ptr %tx_stat_outxoffsent_hi.i, align 4
  %148 = ptrtoint ptr %tx_stat_outxoffsent_lo.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %139, ptr %tx_stat_outxoffsent_lo.i, align 4
  %tx_stat_outxoffsent_lo812.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 35
  %149 = ptrtoint ptr %tx_stat_outxoffsent_lo812.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tx_stat_outxoffsent_lo812.i, align 4
  %add813.i = add i32 %150, %diff.sroa.0.9.i
  store i32 %add813.i, ptr %tx_stat_outxoffsent_lo812.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add813.i, i32 %diff.sroa.0.9.i)
  %cmp819.i = icmp ult i32 %add813.i, %diff.sroa.0.9.i
  %cond820.i = zext i1 %cmp819.i to i32
  %tx_stat_outxoffsent_hi824.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 34
  %151 = ptrtoint ptr %tx_stat_outxoffsent_hi824.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_stat_outxoffsent_hi824.i, align 4
  %add821.i = add i32 %152, %diff.sroa.279.9.i
  %add825.i = add i32 %add821.i, %cond820.i
  store i32 %add825.i, ptr %tx_stat_outxoffsent_hi824.i, align 4
  %tx_stat_flowcontroldone_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 37
  %153 = ptrtoint ptr %tx_stat_flowcontroldone_lo.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_stat_flowcontroldone_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %154)
  %cmp835.i = icmp ult i32 %139, %154
  %tx_stat_flowcontroldone_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 36
  %155 = ptrtoint ptr %tx_stat_flowcontroldone_hi.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_stat_flowcontroldone_hi.i, align 4
  br i1 %cmp835.i, label %if.then836.i, label %if.else859.i

if.then836.i:                                     ; preds = %do.end799.i
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %156)
  %cmp843.not.i = icmp eq i32 %143, %156
  br i1 %cmp843.not.i, label %if.then836.i.do.end884.i_crit_edge, label %if.then844.i

if.then836.i.do.end884.i_crit_edge:               ; preds = %if.then836.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end884.i

if.then844.i:                                     ; preds = %if.then836.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = xor i32 %156, -1
  %dec846.i = add i32 %143, %157
  %add853.i = sub i32 %139, %154
  br label %do.end884.i

if.else859.i:                                     ; preds = %do.end799.i
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %156)
  %cmp864.i = icmp ult i32 %143, %156
  br i1 %cmp864.i, label %if.else859.i.do.end884.i_crit_edge, label %if.else868.i

if.else859.i.do.end884.i_crit_edge:               ; preds = %if.else859.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end884.i

if.else868.i:                                     ; preds = %if.else859.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub873.i = sub i32 %143, %156
  %sub879.i = sub i32 %139, %154
  br label %do.end884.i

do.end884.i:                                      ; preds = %if.else868.i, %if.else859.i.do.end884.i_crit_edge, %if.then844.i, %if.then836.i.do.end884.i_crit_edge
  %diff.sroa.279.10.i = phi i32 [ %dec846.i, %if.then844.i ], [ %sub873.i, %if.else868.i ], [ 0, %if.then836.i.do.end884.i_crit_edge ], [ 0, %if.else859.i.do.end884.i_crit_edge ]
  %diff.sroa.0.10.i = phi i32 [ %add853.i, %if.then844.i ], [ %sub879.i, %if.else868.i ], [ 0, %if.then836.i.do.end884.i_crit_edge ], [ 0, %if.else859.i.do.end884.i_crit_edge ]
  %158 = ptrtoint ptr %tx_stat_flowcontroldone_hi.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %143, ptr %tx_stat_flowcontroldone_hi.i, align 4
  %159 = ptrtoint ptr %tx_stat_flowcontroldone_lo.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %139, ptr %tx_stat_flowcontroldone_lo.i, align 4
  %tx_stat_flowcontroldone_lo897.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 37
  %160 = ptrtoint ptr %tx_stat_flowcontroldone_lo897.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_stat_flowcontroldone_lo897.i, align 4
  %add898.i = add i32 %161, %diff.sroa.0.10.i
  store i32 %add898.i, ptr %tx_stat_flowcontroldone_lo897.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add898.i, i32 %diff.sroa.0.10.i)
  %cmp904.i = icmp ult i32 %add898.i, %diff.sroa.0.10.i
  %cond905.i = zext i1 %cmp904.i to i32
  %tx_stat_flowcontroldone_hi909.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 36
  %162 = ptrtoint ptr %tx_stat_flowcontroldone_hi909.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tx_stat_flowcontroldone_hi909.i, align 4
  %add906.i = add i32 %163, %diff.sroa.279.10.i
  %add910.i = add i32 %add906.i, %cond905.i
  store i32 %add910.i, ptr %tx_stat_flowcontroldone_hi909.i, align 4
  %tx_stat_gt64_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 14
  %164 = ptrtoint ptr %tx_stat_gt64_lo.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_stat_gt64_lo.i, align 4
  %tx_stat_etherstatspkts64octets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 51
  %166 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tx_stat_etherstatspkts64octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp919.i = icmp ult i32 %165, %167
  %tx_stat_gt64_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 15
  %168 = ptrtoint ptr %tx_stat_gt64_hi.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_stat_gt64_hi.i, align 4
  %tx_stat_etherstatspkts64octets_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 50
  %170 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tx_stat_etherstatspkts64octets_hi.i, align 4
  br i1 %cmp919.i, label %if.then920.i, label %if.else942.i

if.then920.i:                                     ; preds = %do.end884.i
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp926.not.i = icmp eq i32 %169, %171
  br i1 %cmp926.not.i, label %if.then920.i.do.end967.i_crit_edge, label %if.then927.i

if.then920.i.do.end967.i_crit_edge:               ; preds = %if.then920.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end967.i

if.then927.i:                                     ; preds = %if.then920.i
  call void @__sanitizer_cov_trace_pc() #9
  %172 = xor i32 %171, -1
  %dec929.i = add i32 %169, %172
  %add936.i = sub i32 %165, %167
  br label %do.end967.i

if.else942.i:                                     ; preds = %do.end884.i
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp947.i = icmp ult i32 %169, %171
  br i1 %cmp947.i, label %if.else942.i.do.end967.i_crit_edge, label %if.else951.i

if.else942.i.do.end967.i_crit_edge:               ; preds = %if.else942.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end967.i

if.else951.i:                                     ; preds = %if.else942.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub956.i = sub i32 %169, %171
  %sub962.i = sub i32 %165, %167
  br label %do.end967.i

do.end967.i:                                      ; preds = %if.else951.i, %if.else942.i.do.end967.i_crit_edge, %if.then927.i, %if.then920.i.do.end967.i_crit_edge
  %diff.sroa.279.11.i = phi i32 [ %dec929.i, %if.then927.i ], [ %sub956.i, %if.else951.i ], [ 0, %if.then920.i.do.end967.i_crit_edge ], [ 0, %if.else942.i.do.end967.i_crit_edge ]
  %diff.sroa.0.11.i = phi i32 [ %add936.i, %if.then927.i ], [ %sub962.i, %if.else951.i ], [ 0, %if.then920.i.do.end967.i_crit_edge ], [ 0, %if.else942.i.do.end967.i_crit_edge ]
  %173 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %169, ptr %tx_stat_etherstatspkts64octets_hi.i, align 4
  %174 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %165, ptr %tx_stat_etherstatspkts64octets_lo.i, align 4
  %tx_stat_etherstatspkts64octets_lo980.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 51
  %175 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo980.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_stat_etherstatspkts64octets_lo980.i, align 4
  %add981.i = add i32 %176, %diff.sroa.0.11.i
  store i32 %add981.i, ptr %tx_stat_etherstatspkts64octets_lo980.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add981.i, i32 %diff.sroa.0.11.i)
  %cmp987.i = icmp ult i32 %add981.i, %diff.sroa.0.11.i
  %cond988.i = zext i1 %cmp987.i to i32
  %tx_stat_etherstatspkts64octets_hi992.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 50
  %177 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi992.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tx_stat_etherstatspkts64octets_hi992.i, align 4
  %add989.i = add i32 %178, %diff.sroa.279.11.i
  %add993.i = add i32 %add989.i, %cond988.i
  store i32 %add993.i, ptr %tx_stat_etherstatspkts64octets_hi992.i, align 4
  %tx_stat_gt127_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 16
  %179 = ptrtoint ptr %tx_stat_gt127_lo.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_stat_gt127_lo.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 53
  %181 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %182)
  %cmp1002.i = icmp ult i32 %180, %182
  %tx_stat_gt127_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 17
  %183 = ptrtoint ptr %tx_stat_gt127_hi.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tx_stat_gt127_hi.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 52
  %185 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i, align 4
  br i1 %cmp1002.i, label %if.then1003.i, label %if.else1025.i

if.then1003.i:                                    ; preds = %do.end967.i
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %186)
  %cmp1009.not.i = icmp eq i32 %184, %186
  br i1 %cmp1009.not.i, label %if.then1003.i.do.end1050.i_crit_edge, label %if.then1010.i

if.then1003.i.do.end1050.i_crit_edge:             ; preds = %if.then1003.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1050.i

if.then1010.i:                                    ; preds = %if.then1003.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = xor i32 %186, -1
  %dec1012.i = add i32 %184, %187
  %add1019.i = sub i32 %180, %182
  br label %do.end1050.i

if.else1025.i:                                    ; preds = %do.end967.i
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %186)
  %cmp1030.i = icmp ult i32 %184, %186
  br i1 %cmp1030.i, label %if.else1025.i.do.end1050.i_crit_edge, label %if.else1034.i

if.else1025.i.do.end1050.i_crit_edge:             ; preds = %if.else1025.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1050.i

if.else1034.i:                                    ; preds = %if.else1025.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1039.i = sub i32 %184, %186
  %sub1045.i = sub i32 %180, %182
  br label %do.end1050.i

do.end1050.i:                                     ; preds = %if.else1034.i, %if.else1025.i.do.end1050.i_crit_edge, %if.then1010.i, %if.then1003.i.do.end1050.i_crit_edge
  %diff.sroa.279.12.i = phi i32 [ %dec1012.i, %if.then1010.i ], [ %sub1039.i, %if.else1034.i ], [ 0, %if.then1003.i.do.end1050.i_crit_edge ], [ 0, %if.else1025.i.do.end1050.i_crit_edge ]
  %diff.sroa.0.12.i = phi i32 [ %add1019.i, %if.then1010.i ], [ %sub1045.i, %if.else1034.i ], [ 0, %if.then1003.i.do.end1050.i_crit_edge ], [ 0, %if.else1025.i.do.end1050.i_crit_edge ]
  %188 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %184, ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i, align 4
  %189 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %180, ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_lo1063.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 53
  %190 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo1063.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_lo1063.i, align 4
  %add1064.i = add i32 %191, %diff.sroa.0.12.i
  store i32 %add1064.i, ptr %tx_stat_etherstatspkts65octetsto127octets_lo1063.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1064.i, i32 %diff.sroa.0.12.i)
  %cmp1070.i = icmp ult i32 %add1064.i, %diff.sroa.0.12.i
  %cond1071.i = zext i1 %cmp1070.i to i32
  %tx_stat_etherstatspkts65octetsto127octets_hi1075.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 52
  %192 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi1075.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_hi1075.i, align 4
  %add1072.i = add i32 %193, %diff.sroa.279.12.i
  %add1076.i = add i32 %add1072.i, %cond1071.i
  store i32 %add1076.i, ptr %tx_stat_etherstatspkts65octetsto127octets_hi1075.i, align 4
  %tx_stat_gt255_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 18
  %194 = ptrtoint ptr %tx_stat_gt255_lo.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tx_stat_gt255_lo.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 55
  %196 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %197)
  %cmp1085.i = icmp ult i32 %195, %197
  %tx_stat_gt255_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 19
  %198 = ptrtoint ptr %tx_stat_gt255_hi.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tx_stat_gt255_hi.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 54
  %200 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i, align 4
  br i1 %cmp1085.i, label %if.then1086.i, label %if.else1108.i

if.then1086.i:                                    ; preds = %do.end1050.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp1092.not.i = icmp eq i32 %199, %201
  br i1 %cmp1092.not.i, label %if.then1086.i.do.end1133.i_crit_edge, label %if.then1093.i

if.then1086.i.do.end1133.i_crit_edge:             ; preds = %if.then1086.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1133.i

if.then1093.i:                                    ; preds = %if.then1086.i
  call void @__sanitizer_cov_trace_pc() #9
  %202 = xor i32 %201, -1
  %dec1095.i = add i32 %199, %202
  %add1102.i = sub i32 %195, %197
  br label %do.end1133.i

if.else1108.i:                                    ; preds = %do.end1050.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp1113.i = icmp ult i32 %199, %201
  br i1 %cmp1113.i, label %if.else1108.i.do.end1133.i_crit_edge, label %if.else1117.i

if.else1108.i.do.end1133.i_crit_edge:             ; preds = %if.else1108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1133.i

if.else1117.i:                                    ; preds = %if.else1108.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1122.i = sub i32 %199, %201
  %sub1128.i = sub i32 %195, %197
  br label %do.end1133.i

do.end1133.i:                                     ; preds = %if.else1117.i, %if.else1108.i.do.end1133.i_crit_edge, %if.then1093.i, %if.then1086.i.do.end1133.i_crit_edge
  %diff.sroa.279.13.i = phi i32 [ %dec1095.i, %if.then1093.i ], [ %sub1122.i, %if.else1117.i ], [ 0, %if.then1086.i.do.end1133.i_crit_edge ], [ 0, %if.else1108.i.do.end1133.i_crit_edge ]
  %diff.sroa.0.13.i = phi i32 [ %add1102.i, %if.then1093.i ], [ %sub1128.i, %if.else1117.i ], [ 0, %if.then1086.i.do.end1133.i_crit_edge ], [ 0, %if.else1108.i.do.end1133.i_crit_edge ]
  %203 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %199, ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i, align 4
  %204 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %195, ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_lo1146.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 55
  %205 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo1146.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_lo1146.i, align 4
  %add1147.i = add i32 %206, %diff.sroa.0.13.i
  store i32 %add1147.i, ptr %tx_stat_etherstatspkts128octetsto255octets_lo1146.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1147.i, i32 %diff.sroa.0.13.i)
  %cmp1153.i = icmp ult i32 %add1147.i, %diff.sroa.0.13.i
  %cond1154.i = zext i1 %cmp1153.i to i32
  %tx_stat_etherstatspkts128octetsto255octets_hi1158.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 54
  %207 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi1158.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_hi1158.i, align 4
  %add1155.i = add i32 %208, %diff.sroa.279.13.i
  %add1159.i = add i32 %add1155.i, %cond1154.i
  store i32 %add1159.i, ptr %tx_stat_etherstatspkts128octetsto255octets_hi1158.i, align 4
  %tx_stat_gt511_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 20
  %209 = ptrtoint ptr %tx_stat_gt511_lo.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tx_stat_gt511_lo.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 57
  %211 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %212)
  %cmp1168.i = icmp ult i32 %210, %212
  %tx_stat_gt511_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 21
  %213 = ptrtoint ptr %tx_stat_gt511_hi.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %tx_stat_gt511_hi.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 56
  %215 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i, align 4
  br i1 %cmp1168.i, label %if.then1169.i, label %if.else1191.i

if.then1169.i:                                    ; preds = %do.end1133.i
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %216)
  %cmp1175.not.i = icmp eq i32 %214, %216
  br i1 %cmp1175.not.i, label %if.then1169.i.do.end1216.i_crit_edge, label %if.then1176.i

if.then1169.i.do.end1216.i_crit_edge:             ; preds = %if.then1169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1216.i

if.then1176.i:                                    ; preds = %if.then1169.i
  call void @__sanitizer_cov_trace_pc() #9
  %217 = xor i32 %216, -1
  %dec1178.i = add i32 %214, %217
  %add1185.i = sub i32 %210, %212
  br label %do.end1216.i

if.else1191.i:                                    ; preds = %do.end1133.i
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %216)
  %cmp1196.i = icmp ult i32 %214, %216
  br i1 %cmp1196.i, label %if.else1191.i.do.end1216.i_crit_edge, label %if.else1200.i

if.else1191.i.do.end1216.i_crit_edge:             ; preds = %if.else1191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1216.i

if.else1200.i:                                    ; preds = %if.else1191.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1205.i = sub i32 %214, %216
  %sub1211.i = sub i32 %210, %212
  br label %do.end1216.i

do.end1216.i:                                     ; preds = %if.else1200.i, %if.else1191.i.do.end1216.i_crit_edge, %if.then1176.i, %if.then1169.i.do.end1216.i_crit_edge
  %diff.sroa.279.14.i = phi i32 [ %dec1178.i, %if.then1176.i ], [ %sub1205.i, %if.else1200.i ], [ 0, %if.then1169.i.do.end1216.i_crit_edge ], [ 0, %if.else1191.i.do.end1216.i_crit_edge ]
  %diff.sroa.0.14.i = phi i32 [ %add1185.i, %if.then1176.i ], [ %sub1211.i, %if.else1200.i ], [ 0, %if.then1169.i.do.end1216.i_crit_edge ], [ 0, %if.else1191.i.do.end1216.i_crit_edge ]
  %218 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %214, ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i, align 4
  %219 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %210, ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_lo1229.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 57
  %220 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo1229.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_lo1229.i, align 4
  %add1230.i = add i32 %221, %diff.sroa.0.14.i
  store i32 %add1230.i, ptr %tx_stat_etherstatspkts256octetsto511octets_lo1229.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1230.i, i32 %diff.sroa.0.14.i)
  %cmp1236.i = icmp ult i32 %add1230.i, %diff.sroa.0.14.i
  %cond1237.i = zext i1 %cmp1236.i to i32
  %tx_stat_etherstatspkts256octetsto511octets_hi1241.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 56
  %222 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi1241.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_hi1241.i, align 4
  %add1238.i = add i32 %223, %diff.sroa.279.14.i
  %add1242.i = add i32 %add1238.i, %cond1237.i
  store i32 %add1242.i, ptr %tx_stat_etherstatspkts256octetsto511octets_hi1241.i, align 4
  %tx_stat_gt1023_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 22
  %224 = ptrtoint ptr %tx_stat_gt1023_lo.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %tx_stat_gt1023_lo.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 59
  %226 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %227)
  %cmp1251.i = icmp ult i32 %225, %227
  %tx_stat_gt1023_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 23
  %228 = ptrtoint ptr %tx_stat_gt1023_hi.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tx_stat_gt1023_hi.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 58
  %230 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i, align 4
  br i1 %cmp1251.i, label %if.then1252.i, label %if.else1274.i

if.then1252.i:                                    ; preds = %do.end1216.i
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %231)
  %cmp1258.not.i = icmp eq i32 %229, %231
  br i1 %cmp1258.not.i, label %if.then1252.i.do.end1299.i_crit_edge, label %if.then1259.i

if.then1252.i.do.end1299.i_crit_edge:             ; preds = %if.then1252.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1299.i

if.then1259.i:                                    ; preds = %if.then1252.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = xor i32 %231, -1
  %dec1261.i = add i32 %229, %232
  %add1268.i = sub i32 %225, %227
  br label %do.end1299.i

if.else1274.i:                                    ; preds = %do.end1216.i
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %231)
  %cmp1279.i = icmp ult i32 %229, %231
  br i1 %cmp1279.i, label %if.else1274.i.do.end1299.i_crit_edge, label %if.else1283.i

if.else1274.i.do.end1299.i_crit_edge:             ; preds = %if.else1274.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1299.i

if.else1283.i:                                    ; preds = %if.else1274.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1288.i = sub i32 %229, %231
  %sub1294.i = sub i32 %225, %227
  br label %do.end1299.i

do.end1299.i:                                     ; preds = %if.else1283.i, %if.else1274.i.do.end1299.i_crit_edge, %if.then1259.i, %if.then1252.i.do.end1299.i_crit_edge
  %diff.sroa.279.15.i = phi i32 [ %dec1261.i, %if.then1259.i ], [ %sub1288.i, %if.else1283.i ], [ 0, %if.then1252.i.do.end1299.i_crit_edge ], [ 0, %if.else1274.i.do.end1299.i_crit_edge ]
  %diff.sroa.0.15.i = phi i32 [ %add1268.i, %if.then1259.i ], [ %sub1294.i, %if.else1283.i ], [ 0, %if.then1252.i.do.end1299.i_crit_edge ], [ 0, %if.else1274.i.do.end1299.i_crit_edge ]
  %233 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %229, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i, align 4
  %234 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %225, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_lo1312.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 59
  %235 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo1312.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo1312.i, align 4
  %add1313.i = add i32 %236, %diff.sroa.0.15.i
  store i32 %add1313.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo1312.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1313.i, i32 %diff.sroa.0.15.i)
  %cmp1319.i = icmp ult i32 %add1313.i, %diff.sroa.0.15.i
  %cond1320.i = zext i1 %cmp1319.i to i32
  %tx_stat_etherstatspkts512octetsto1023octets_hi1324.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 58
  %237 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi1324.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi1324.i, align 4
  %add1321.i = add i32 %238, %diff.sroa.279.15.i
  %add1325.i = add i32 %add1321.i, %cond1320.i
  store i32 %add1325.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi1324.i, align 4
  %tx_stat_gt1518_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 24
  %239 = ptrtoint ptr %tx_stat_gt1518_lo.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %tx_stat_gt1518_lo.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 61
  %241 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %242)
  %cmp1334.i = icmp ult i32 %240, %242
  %tx_stat_gt1518_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 25
  %243 = ptrtoint ptr %tx_stat_gt1518_hi.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %tx_stat_gt1518_hi.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 60
  %245 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i, align 4
  br i1 %cmp1334.i, label %if.then1335.i, label %if.else1357.i

if.then1335.i:                                    ; preds = %do.end1299.i
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %246)
  %cmp1341.not.i = icmp eq i32 %244, %246
  br i1 %cmp1341.not.i, label %if.then1335.i.do.end1382.i_crit_edge, label %if.then1342.i

if.then1335.i.do.end1382.i_crit_edge:             ; preds = %if.then1335.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1382.i

if.then1342.i:                                    ; preds = %if.then1335.i
  call void @__sanitizer_cov_trace_pc() #9
  %247 = xor i32 %246, -1
  %dec1344.i = add i32 %244, %247
  %add1351.i = sub i32 %240, %242
  br label %do.end1382.i

if.else1357.i:                                    ; preds = %do.end1299.i
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %246)
  %cmp1362.i = icmp ult i32 %244, %246
  br i1 %cmp1362.i, label %if.else1357.i.do.end1382.i_crit_edge, label %if.else1366.i

if.else1357.i.do.end1382.i_crit_edge:             ; preds = %if.else1357.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1382.i

if.else1366.i:                                    ; preds = %if.else1357.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1371.i = sub i32 %244, %246
  %sub1377.i = sub i32 %240, %242
  br label %do.end1382.i

do.end1382.i:                                     ; preds = %if.else1366.i, %if.else1357.i.do.end1382.i_crit_edge, %if.then1342.i, %if.then1335.i.do.end1382.i_crit_edge
  %diff.sroa.279.16.i = phi i32 [ %dec1344.i, %if.then1342.i ], [ %sub1371.i, %if.else1366.i ], [ 0, %if.then1335.i.do.end1382.i_crit_edge ], [ 0, %if.else1357.i.do.end1382.i_crit_edge ]
  %diff.sroa.0.16.i = phi i32 [ %add1351.i, %if.then1342.i ], [ %sub1377.i, %if.else1366.i ], [ 0, %if.then1335.i.do.end1382.i_crit_edge ], [ 0, %if.else1357.i.do.end1382.i_crit_edge ]
  %248 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %244, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i, align 4
  %249 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %240, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_lo1395.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 61
  %250 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo1395.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo1395.i, align 4
  %add1396.i = add i32 %251, %diff.sroa.0.16.i
  store i32 %add1396.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo1395.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1396.i, i32 %diff.sroa.0.16.i)
  %cmp1402.i = icmp ult i32 %add1396.i, %diff.sroa.0.16.i
  %cond1403.i = zext i1 %cmp1402.i to i32
  %tx_stat_etherstatspkts1024octetsto1522octets_hi1407.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 60
  %252 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi1407.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi1407.i, align 4
  %add1404.i = add i32 %253, %diff.sroa.279.16.i
  %add1408.i = add i32 %add1404.i, %cond1403.i
  store i32 %add1408.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi1407.i, align 4
  %tx_stat_gt2047_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 26
  %254 = ptrtoint ptr %tx_stat_gt2047_lo.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %tx_stat_gt2047_lo.i, align 4
  %tx_stat_mac_2047_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 65
  %256 = ptrtoint ptr %tx_stat_mac_2047_lo.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %tx_stat_mac_2047_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %257)
  %cmp1417.i = icmp ult i32 %255, %257
  %tx_stat_gt2047_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 27
  %258 = ptrtoint ptr %tx_stat_gt2047_hi.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %tx_stat_gt2047_hi.i, align 4
  %tx_stat_mac_2047_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 64
  %260 = ptrtoint ptr %tx_stat_mac_2047_hi.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %tx_stat_mac_2047_hi.i, align 4
  br i1 %cmp1417.i, label %if.then1418.i, label %if.else1440.i

if.then1418.i:                                    ; preds = %do.end1382.i
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %261)
  %cmp1424.not.i = icmp eq i32 %259, %261
  br i1 %cmp1424.not.i, label %if.then1418.i.do.end1465.i_crit_edge, label %if.then1425.i

if.then1418.i.do.end1465.i_crit_edge:             ; preds = %if.then1418.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1465.i

if.then1425.i:                                    ; preds = %if.then1418.i
  call void @__sanitizer_cov_trace_pc() #9
  %262 = xor i32 %261, -1
  %dec1427.i = add i32 %259, %262
  %add1434.i = sub i32 %255, %257
  br label %do.end1465.i

if.else1440.i:                                    ; preds = %do.end1382.i
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %261)
  %cmp1445.i = icmp ult i32 %259, %261
  br i1 %cmp1445.i, label %if.else1440.i.do.end1465.i_crit_edge, label %if.else1449.i

if.else1440.i.do.end1465.i_crit_edge:             ; preds = %if.else1440.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1465.i

if.else1449.i:                                    ; preds = %if.else1440.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1454.i = sub i32 %259, %261
  %sub1460.i = sub i32 %255, %257
  br label %do.end1465.i

do.end1465.i:                                     ; preds = %if.else1449.i, %if.else1440.i.do.end1465.i_crit_edge, %if.then1425.i, %if.then1418.i.do.end1465.i_crit_edge
  %diff.sroa.279.17.i = phi i32 [ %dec1427.i, %if.then1425.i ], [ %sub1454.i, %if.else1449.i ], [ 0, %if.then1418.i.do.end1465.i_crit_edge ], [ 0, %if.else1440.i.do.end1465.i_crit_edge ]
  %diff.sroa.0.17.i = phi i32 [ %add1434.i, %if.then1425.i ], [ %sub1460.i, %if.else1449.i ], [ 0, %if.then1418.i.do.end1465.i_crit_edge ], [ 0, %if.else1440.i.do.end1465.i_crit_edge ]
  %263 = ptrtoint ptr %tx_stat_mac_2047_hi.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %259, ptr %tx_stat_mac_2047_hi.i, align 4
  %264 = ptrtoint ptr %tx_stat_mac_2047_lo.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %255, ptr %tx_stat_mac_2047_lo.i, align 4
  %tx_stat_mac_2047_lo1478.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 65
  %265 = ptrtoint ptr %tx_stat_mac_2047_lo1478.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %tx_stat_mac_2047_lo1478.i, align 4
  %add1479.i = add i32 %266, %diff.sroa.0.17.i
  store i32 %add1479.i, ptr %tx_stat_mac_2047_lo1478.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1479.i, i32 %diff.sroa.0.17.i)
  %cmp1485.i = icmp ult i32 %add1479.i, %diff.sroa.0.17.i
  %cond1486.i = zext i1 %cmp1485.i to i32
  %tx_stat_mac_2047_hi1490.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 64
  %267 = ptrtoint ptr %tx_stat_mac_2047_hi1490.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %tx_stat_mac_2047_hi1490.i, align 4
  %add1487.i = add i32 %268, %diff.sroa.279.17.i
  %add1491.i = add i32 %add1487.i, %cond1486.i
  store i32 %add1491.i, ptr %tx_stat_mac_2047_hi1490.i, align 4
  %tx_stat_gt4095_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 28
  %269 = ptrtoint ptr %tx_stat_gt4095_lo.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %tx_stat_gt4095_lo.i, align 4
  %tx_stat_mac_4095_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 67
  %271 = ptrtoint ptr %tx_stat_mac_4095_lo.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %tx_stat_mac_4095_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp1500.i = icmp ult i32 %270, %272
  %tx_stat_gt4095_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 29
  %273 = ptrtoint ptr %tx_stat_gt4095_hi.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %tx_stat_gt4095_hi.i, align 4
  %tx_stat_mac_4095_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 66
  %275 = ptrtoint ptr %tx_stat_mac_4095_hi.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %tx_stat_mac_4095_hi.i, align 4
  br i1 %cmp1500.i, label %if.then1501.i, label %if.else1523.i

if.then1501.i:                                    ; preds = %do.end1465.i
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %276)
  %cmp1507.not.i = icmp eq i32 %274, %276
  br i1 %cmp1507.not.i, label %if.then1501.i.do.end1548.i_crit_edge, label %if.then1508.i

if.then1501.i.do.end1548.i_crit_edge:             ; preds = %if.then1501.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1548.i

if.then1508.i:                                    ; preds = %if.then1501.i
  call void @__sanitizer_cov_trace_pc() #9
  %277 = xor i32 %276, -1
  %dec1510.i = add i32 %274, %277
  %add1517.i = sub i32 %270, %272
  br label %do.end1548.i

if.else1523.i:                                    ; preds = %do.end1465.i
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %276)
  %cmp1528.i = icmp ult i32 %274, %276
  br i1 %cmp1528.i, label %if.else1523.i.do.end1548.i_crit_edge, label %if.else1532.i

if.else1523.i.do.end1548.i_crit_edge:             ; preds = %if.else1523.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1548.i

if.else1532.i:                                    ; preds = %if.else1523.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1537.i = sub i32 %274, %276
  %sub1543.i = sub i32 %270, %272
  br label %do.end1548.i

do.end1548.i:                                     ; preds = %if.else1532.i, %if.else1523.i.do.end1548.i_crit_edge, %if.then1508.i, %if.then1501.i.do.end1548.i_crit_edge
  %diff.sroa.279.18.i = phi i32 [ %dec1510.i, %if.then1508.i ], [ %sub1537.i, %if.else1532.i ], [ 0, %if.then1501.i.do.end1548.i_crit_edge ], [ 0, %if.else1523.i.do.end1548.i_crit_edge ]
  %diff.sroa.0.18.i = phi i32 [ %add1517.i, %if.then1508.i ], [ %sub1543.i, %if.else1532.i ], [ 0, %if.then1501.i.do.end1548.i_crit_edge ], [ 0, %if.else1523.i.do.end1548.i_crit_edge ]
  %278 = ptrtoint ptr %tx_stat_mac_4095_hi.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %274, ptr %tx_stat_mac_4095_hi.i, align 4
  %279 = ptrtoint ptr %tx_stat_mac_4095_lo.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %270, ptr %tx_stat_mac_4095_lo.i, align 4
  %tx_stat_mac_4095_lo1561.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 67
  %280 = ptrtoint ptr %tx_stat_mac_4095_lo1561.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %tx_stat_mac_4095_lo1561.i, align 4
  %add1562.i = add i32 %281, %diff.sroa.0.18.i
  store i32 %add1562.i, ptr %tx_stat_mac_4095_lo1561.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1562.i, i32 %diff.sroa.0.18.i)
  %cmp1568.i = icmp ult i32 %add1562.i, %diff.sroa.0.18.i
  %cond1569.i = zext i1 %cmp1568.i to i32
  %tx_stat_mac_4095_hi1573.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 66
  %282 = ptrtoint ptr %tx_stat_mac_4095_hi1573.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %tx_stat_mac_4095_hi1573.i, align 4
  %add1570.i = add i32 %283, %diff.sroa.279.18.i
  %add1574.i = add i32 %add1570.i, %cond1569.i
  store i32 %add1574.i, ptr %tx_stat_mac_4095_hi1573.i, align 4
  %tx_stat_gt9216_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 30
  %284 = ptrtoint ptr %tx_stat_gt9216_lo.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %tx_stat_gt9216_lo.i, align 4
  %tx_stat_mac_9216_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 69
  %286 = ptrtoint ptr %tx_stat_mac_9216_lo.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %tx_stat_mac_9216_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %285, i32 %287)
  %cmp1583.i = icmp ult i32 %285, %287
  %tx_stat_gt9216_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 31
  %288 = ptrtoint ptr %tx_stat_gt9216_hi.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %tx_stat_gt9216_hi.i, align 4
  %tx_stat_mac_9216_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 68
  %290 = ptrtoint ptr %tx_stat_mac_9216_hi.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %tx_stat_mac_9216_hi.i, align 4
  br i1 %cmp1583.i, label %if.then1584.i, label %if.else1606.i

if.then1584.i:                                    ; preds = %do.end1548.i
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %291)
  %cmp1590.not.i = icmp eq i32 %289, %291
  br i1 %cmp1590.not.i, label %if.then1584.i.do.end1631.i_crit_edge, label %if.then1591.i

if.then1584.i.do.end1631.i_crit_edge:             ; preds = %if.then1584.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1631.i

if.then1591.i:                                    ; preds = %if.then1584.i
  call void @__sanitizer_cov_trace_pc() #9
  %292 = xor i32 %291, -1
  %dec1593.i = add i32 %289, %292
  %add1600.i = sub i32 %285, %287
  br label %do.end1631.i

if.else1606.i:                                    ; preds = %do.end1548.i
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %291)
  %cmp1611.i = icmp ult i32 %289, %291
  br i1 %cmp1611.i, label %if.else1606.i.do.end1631.i_crit_edge, label %if.else1615.i

if.else1606.i.do.end1631.i_crit_edge:             ; preds = %if.else1606.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1631.i

if.else1615.i:                                    ; preds = %if.else1606.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1620.i = sub i32 %289, %291
  %sub1626.i = sub i32 %285, %287
  br label %do.end1631.i

do.end1631.i:                                     ; preds = %if.else1615.i, %if.else1606.i.do.end1631.i_crit_edge, %if.then1591.i, %if.then1584.i.do.end1631.i_crit_edge
  %diff.sroa.279.19.i = phi i32 [ %dec1593.i, %if.then1591.i ], [ %sub1620.i, %if.else1615.i ], [ 0, %if.then1584.i.do.end1631.i_crit_edge ], [ 0, %if.else1606.i.do.end1631.i_crit_edge ]
  %diff.sroa.0.19.i = phi i32 [ %add1600.i, %if.then1591.i ], [ %sub1626.i, %if.else1615.i ], [ 0, %if.then1584.i.do.end1631.i_crit_edge ], [ 0, %if.else1606.i.do.end1631.i_crit_edge ]
  %293 = ptrtoint ptr %tx_stat_mac_9216_hi.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %289, ptr %tx_stat_mac_9216_hi.i, align 4
  %294 = ptrtoint ptr %tx_stat_mac_9216_lo.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %285, ptr %tx_stat_mac_9216_lo.i, align 4
  %tx_stat_mac_9216_lo1644.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 69
  %295 = ptrtoint ptr %tx_stat_mac_9216_lo1644.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %tx_stat_mac_9216_lo1644.i, align 4
  %add1645.i = add i32 %296, %diff.sroa.0.19.i
  store i32 %add1645.i, ptr %tx_stat_mac_9216_lo1644.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1645.i, i32 %diff.sroa.0.19.i)
  %cmp1651.i = icmp ult i32 %add1645.i, %diff.sroa.0.19.i
  %cond1652.i = zext i1 %cmp1651.i to i32
  %tx_stat_mac_9216_hi1656.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 68
  %297 = ptrtoint ptr %tx_stat_mac_9216_hi1656.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %tx_stat_mac_9216_hi1656.i, align 4
  %add1653.i = add i32 %298, %diff.sroa.279.19.i
  %add1657.i = add i32 %add1653.i, %cond1652.i
  store i32 %add1657.i, ptr %tx_stat_mac_9216_hi1656.i, align 4
  %tx_stat_gt16383_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 32
  %299 = ptrtoint ptr %tx_stat_gt16383_lo.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %tx_stat_gt16383_lo.i, align 4
  %tx_stat_mac_16383_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 71
  %301 = ptrtoint ptr %tx_stat_mac_16383_lo.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %tx_stat_mac_16383_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %302)
  %cmp1666.i = icmp ult i32 %300, %302
  %tx_stat_gt16383_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 33
  %303 = ptrtoint ptr %tx_stat_gt16383_hi.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %tx_stat_gt16383_hi.i, align 4
  %tx_stat_mac_16383_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 70
  %305 = ptrtoint ptr %tx_stat_mac_16383_hi.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %tx_stat_mac_16383_hi.i, align 4
  br i1 %cmp1666.i, label %if.then1667.i, label %if.else1689.i

if.then1667.i:                                    ; preds = %do.end1631.i
  call void @__sanitizer_cov_trace_cmp4(i32 %304, i32 %306)
  %cmp1673.not.i = icmp eq i32 %304, %306
  br i1 %cmp1673.not.i, label %if.then1667.i.do.end1714.i_crit_edge, label %if.then1674.i

if.then1667.i.do.end1714.i_crit_edge:             ; preds = %if.then1667.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1714.i

if.then1674.i:                                    ; preds = %if.then1667.i
  call void @__sanitizer_cov_trace_pc() #9
  %307 = xor i32 %306, -1
  %dec1676.i = add i32 %304, %307
  %add1683.i = sub i32 %300, %302
  br label %do.end1714.i

if.else1689.i:                                    ; preds = %do.end1631.i
  call void @__sanitizer_cov_trace_cmp4(i32 %304, i32 %306)
  %cmp1694.i = icmp ult i32 %304, %306
  br i1 %cmp1694.i, label %if.else1689.i.do.end1714.i_crit_edge, label %if.else1698.i

if.else1689.i.do.end1714.i_crit_edge:             ; preds = %if.else1689.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1714.i

if.else1698.i:                                    ; preds = %if.else1689.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1703.i = sub i32 %304, %306
  %sub1709.i = sub i32 %300, %302
  br label %do.end1714.i

do.end1714.i:                                     ; preds = %if.else1698.i, %if.else1689.i.do.end1714.i_crit_edge, %if.then1674.i, %if.then1667.i.do.end1714.i_crit_edge
  %diff.sroa.279.20.i = phi i32 [ %dec1676.i, %if.then1674.i ], [ %sub1703.i, %if.else1698.i ], [ 0, %if.then1667.i.do.end1714.i_crit_edge ], [ 0, %if.else1689.i.do.end1714.i_crit_edge ]
  %diff.sroa.0.20.i = phi i32 [ %add1683.i, %if.then1674.i ], [ %sub1709.i, %if.else1698.i ], [ 0, %if.then1667.i.do.end1714.i_crit_edge ], [ 0, %if.else1689.i.do.end1714.i_crit_edge ]
  %308 = ptrtoint ptr %tx_stat_mac_16383_hi.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %304, ptr %tx_stat_mac_16383_hi.i, align 4
  %309 = ptrtoint ptr %tx_stat_mac_16383_lo.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %300, ptr %tx_stat_mac_16383_lo.i, align 4
  %tx_stat_mac_16383_lo1727.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 71
  %310 = ptrtoint ptr %tx_stat_mac_16383_lo1727.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %tx_stat_mac_16383_lo1727.i, align 4
  %add1728.i = add i32 %311, %diff.sroa.0.20.i
  store i32 %add1728.i, ptr %tx_stat_mac_16383_lo1727.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1728.i, i32 %diff.sroa.0.20.i)
  %cmp1734.i = icmp ult i32 %add1728.i, %diff.sroa.0.20.i
  %cond1735.i = zext i1 %cmp1734.i to i32
  %tx_stat_mac_16383_hi1739.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 70
  %312 = ptrtoint ptr %tx_stat_mac_16383_hi1739.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %tx_stat_mac_16383_hi1739.i, align 4
  %add1736.i = add i32 %313, %diff.sroa.279.20.i
  %add1740.i = add i32 %add1736.i, %cond1735.i
  store i32 %add1740.i, ptr %tx_stat_mac_16383_hi1739.i, align 4
  %tx_stat_gterr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 38
  %314 = ptrtoint ptr %tx_stat_gterr_lo.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %tx_stat_gterr_lo.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 73
  %316 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %315, i32 %317)
  %cmp1749.i = icmp ult i32 %315, %317
  %tx_stat_gterr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 39
  %318 = ptrtoint ptr %tx_stat_gterr_hi.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %tx_stat_gterr_hi.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 72
  %320 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i, align 4
  br i1 %cmp1749.i, label %if.then1750.i, label %if.else1772.i

if.then1750.i:                                    ; preds = %do.end1714.i
  call void @__sanitizer_cov_trace_cmp4(i32 %319, i32 %321)
  %cmp1756.not.i = icmp eq i32 %319, %321
  br i1 %cmp1756.not.i, label %if.then1750.i.do.end1797.i_crit_edge, label %if.then1757.i

if.then1750.i.do.end1797.i_crit_edge:             ; preds = %if.then1750.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1797.i

if.then1757.i:                                    ; preds = %if.then1750.i
  call void @__sanitizer_cov_trace_pc() #9
  %322 = xor i32 %321, -1
  %dec1759.i = add i32 %319, %322
  %add1766.i = sub i32 %315, %317
  br label %do.end1797.i

if.else1772.i:                                    ; preds = %do.end1714.i
  call void @__sanitizer_cov_trace_cmp4(i32 %319, i32 %321)
  %cmp1777.i = icmp ult i32 %319, %321
  br i1 %cmp1777.i, label %if.else1772.i.do.end1797.i_crit_edge, label %if.else1781.i

if.else1772.i.do.end1797.i_crit_edge:             ; preds = %if.else1772.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1797.i

if.else1781.i:                                    ; preds = %if.else1772.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1786.i = sub i32 %319, %321
  %sub1792.i = sub i32 %315, %317
  br label %do.end1797.i

do.end1797.i:                                     ; preds = %if.else1781.i, %if.else1772.i.do.end1797.i_crit_edge, %if.then1757.i, %if.then1750.i.do.end1797.i_crit_edge
  %diff.sroa.279.21.i = phi i32 [ %dec1759.i, %if.then1757.i ], [ %sub1786.i, %if.else1781.i ], [ 0, %if.then1750.i.do.end1797.i_crit_edge ], [ 0, %if.else1772.i.do.end1797.i_crit_edge ]
  %diff.sroa.0.21.i = phi i32 [ %add1766.i, %if.then1757.i ], [ %sub1792.i, %if.else1781.i ], [ 0, %if.then1750.i.do.end1797.i_crit_edge ], [ 0, %if.else1772.i.do.end1797.i_crit_edge ]
  %323 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %319, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i, align 4
  %324 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %315, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_lo1810.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 73
  %325 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo1810.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo1810.i, align 4
  %add1811.i = add i32 %326, %diff.sroa.0.21.i
  store i32 %add1811.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo1810.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1811.i, i32 %diff.sroa.0.21.i)
  %cmp1817.i = icmp ult i32 %add1811.i, %diff.sroa.0.21.i
  %cond1818.i = zext i1 %cmp1817.i to i32
  %tx_stat_dot3statsinternalmactransmiterrors_hi1822.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 72
  %327 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi1822.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi1822.i, align 4
  %add1819.i = add i32 %328, %diff.sroa.279.21.i
  %add1823.i = add i32 %add1819.i, %cond1818.i
  store i32 %add1823.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi1822.i, align 4
  %tx_stat_gtufl_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 36
  %329 = ptrtoint ptr %tx_stat_gtufl_lo.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %tx_stat_gtufl_lo.i, align 4
  %tx_stat_mac_ufl_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 75
  %331 = ptrtoint ptr %tx_stat_mac_ufl_lo.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %tx_stat_mac_ufl_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %330, i32 %332)
  %cmp1832.i = icmp ult i32 %330, %332
  %tx_stat_gtufl_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 37
  %333 = ptrtoint ptr %tx_stat_gtufl_hi.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %tx_stat_gtufl_hi.i, align 4
  %tx_stat_mac_ufl_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 74
  %335 = ptrtoint ptr %tx_stat_mac_ufl_hi.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %tx_stat_mac_ufl_hi.i, align 4
  br i1 %cmp1832.i, label %if.then1833.i, label %if.else1855.i

if.then1833.i:                                    ; preds = %do.end1797.i
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %336)
  %cmp1839.not.i = icmp eq i32 %334, %336
  br i1 %cmp1839.not.i, label %if.then1833.i.do.end1880.i_crit_edge, label %if.then1840.i

if.then1833.i.do.end1880.i_crit_edge:             ; preds = %if.then1833.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1880.i

if.then1840.i:                                    ; preds = %if.then1833.i
  call void @__sanitizer_cov_trace_pc() #9
  %337 = xor i32 %336, -1
  %dec1842.i = add i32 %334, %337
  %add1849.i = sub i32 %330, %332
  br label %do.end1880.i

if.else1855.i:                                    ; preds = %do.end1797.i
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %336)
  %cmp1860.i = icmp ult i32 %334, %336
  br i1 %cmp1860.i, label %if.else1855.i.do.end1880.i_crit_edge, label %if.else1864.i

if.else1855.i.do.end1880.i_crit_edge:             ; preds = %if.else1855.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1880.i

if.else1864.i:                                    ; preds = %if.else1855.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1869.i = sub i32 %334, %336
  %sub1875.i = sub i32 %330, %332
  br label %do.end1880.i

do.end1880.i:                                     ; preds = %if.else1864.i, %if.else1855.i.do.end1880.i_crit_edge, %if.then1840.i, %if.then1833.i.do.end1880.i_crit_edge
  %diff.sroa.279.22.i = phi i32 [ %dec1842.i, %if.then1840.i ], [ %sub1869.i, %if.else1864.i ], [ 0, %if.then1833.i.do.end1880.i_crit_edge ], [ 0, %if.else1855.i.do.end1880.i_crit_edge ]
  %diff.sroa.0.22.i = phi i32 [ %add1849.i, %if.then1840.i ], [ %sub1875.i, %if.else1864.i ], [ 0, %if.then1833.i.do.end1880.i_crit_edge ], [ 0, %if.else1855.i.do.end1880.i_crit_edge ]
  %338 = ptrtoint ptr %tx_stat_mac_ufl_hi.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %334, ptr %tx_stat_mac_ufl_hi.i, align 4
  %339 = ptrtoint ptr %tx_stat_mac_ufl_lo.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %330, ptr %tx_stat_mac_ufl_lo.i, align 4
  %tx_stat_mac_ufl_lo1893.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 75
  %340 = ptrtoint ptr %tx_stat_mac_ufl_lo1893.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %tx_stat_mac_ufl_lo1893.i, align 4
  %add1894.i = add i32 %341, %diff.sroa.0.22.i
  store i32 %add1894.i, ptr %tx_stat_mac_ufl_lo1893.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1894.i, i32 %diff.sroa.0.22.i)
  %cmp1900.i = icmp ult i32 %add1894.i, %diff.sroa.0.22.i
  %cond1901.i = zext i1 %cmp1900.i to i32
  %tx_stat_mac_ufl_hi1905.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 74
  %342 = ptrtoint ptr %tx_stat_mac_ufl_hi1905.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %tx_stat_mac_ufl_hi1905.i, align 4
  %add1902.i = add i32 %343, %diff.sroa.279.22.i
  %add1906.i = add i32 %add1902.i, %cond1901.i
  store i32 %add1906.i, ptr %tx_stat_mac_ufl_hi1905.i, align 4
  br label %bnx2x_bmac_stats_update.exit

if.else1911.i:                                    ; preds = %sw.bb
  %rx_stat_grerb_lo1917.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 52
  %344 = ptrtoint ptr %rx_stat_grerb_lo1917.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rx_stat_grerb_lo1917.i, align 4
  %mac_stx1918.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1
  %rx_stat_ifhcinbadoctets_lo1920.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 1
  %346 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo1920.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %rx_stat_ifhcinbadoctets_lo1920.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %347)
  %cmp1921.i = icmp ult i32 %345, %347
  %rx_stat_grerb_hi1923.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 53
  %348 = ptrtoint ptr %rx_stat_grerb_hi1923.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %rx_stat_grerb_hi1923.i, align 4
  %350 = ptrtoint ptr %mac_stx1918.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %mac_stx1918.i, align 4
  br i1 %cmp1921.i, label %if.then1922.i, label %if.else1946.i

if.then1922.i:                                    ; preds = %if.else1911.i
  call void @__sanitizer_cov_trace_cmp4(i32 %349, i32 %351)
  %cmp1930.not.i = icmp eq i32 %349, %351
  br i1 %cmp1930.not.i, label %if.then1922.i.do.end1971.i_crit_edge, label %if.then1931.i

if.then1922.i.do.end1971.i_crit_edge:             ; preds = %if.then1922.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1971.i

if.then1931.i:                                    ; preds = %if.then1922.i
  call void @__sanitizer_cov_trace_pc() #9
  %352 = xor i32 %351, -1
  %dec1933.i = add i32 %349, %352
  %add1940.i = sub i32 %345, %347
  br label %do.end1971.i

if.else1946.i:                                    ; preds = %if.else1911.i
  call void @__sanitizer_cov_trace_cmp4(i32 %349, i32 %351)
  %cmp1951.i = icmp ult i32 %349, %351
  br i1 %cmp1951.i, label %if.else1946.i.do.end1971.i_crit_edge, label %if.else1955.i

if.else1946.i.do.end1971.i_crit_edge:             ; preds = %if.else1946.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1971.i

if.else1955.i:                                    ; preds = %if.else1946.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1960.i = sub i32 %349, %351
  %sub1966.i = sub i32 %345, %347
  br label %do.end1971.i

do.end1971.i:                                     ; preds = %if.else1955.i, %if.else1946.i.do.end1971.i_crit_edge, %if.then1931.i, %if.then1922.i.do.end1971.i_crit_edge
  %diff.sroa.279.23.i = phi i32 [ %dec1933.i, %if.then1931.i ], [ %sub1960.i, %if.else1955.i ], [ 0, %if.then1922.i.do.end1971.i_crit_edge ], [ 0, %if.else1946.i.do.end1971.i_crit_edge ]
  %diff.sroa.0.23.i = phi i32 [ %add1940.i, %if.then1931.i ], [ %sub1966.i, %if.else1955.i ], [ 0, %if.then1922.i.do.end1971.i_crit_edge ], [ 0, %if.else1946.i.do.end1971.i_crit_edge ]
  %353 = ptrtoint ptr %mac_stx1918.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %349, ptr %mac_stx1918.i, align 4
  %354 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo1920.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %345, ptr %rx_stat_ifhcinbadoctets_lo1920.i, align 4
  %arrayidx1983.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1
  %rx_stat_ifhcinbadoctets_lo1984.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 1
  %355 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo1984.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %rx_stat_ifhcinbadoctets_lo1984.i, align 4
  %add1985.i = add i32 %356, %diff.sroa.0.23.i
  store i32 %add1985.i, ptr %rx_stat_ifhcinbadoctets_lo1984.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1985.i, i32 %diff.sroa.0.23.i)
  %cmp1991.i = icmp ult i32 %add1985.i, %diff.sroa.0.23.i
  %cond1992.i = zext i1 %cmp1991.i to i32
  %357 = ptrtoint ptr %arrayidx1983.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx1983.i, align 4
  %add1993.i = add i32 %358, %diff.sroa.279.23.i
  %add1997.i = add i32 %add1993.i, %cond1992.i
  store i32 %add1997.i, ptr %arrayidx1983.i, align 4
  %rx_stat_grfcs_lo2004.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 18
  %359 = ptrtoint ptr %rx_stat_grfcs_lo2004.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %rx_stat_grfcs_lo2004.i, align 4
  %rx_stat_dot3statsfcserrors_lo2007.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 5
  %361 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo2007.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %rx_stat_dot3statsfcserrors_lo2007.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %360, i32 %362)
  %cmp2008.i = icmp ult i32 %360, %362
  %rx_stat_grfcs_hi2010.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 19
  %363 = ptrtoint ptr %rx_stat_grfcs_hi2010.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %rx_stat_grfcs_hi2010.i, align 4
  %rx_stat_dot3statsfcserrors_hi2013.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 4
  %365 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi2013.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %rx_stat_dot3statsfcserrors_hi2013.i, align 4
  br i1 %cmp2008.i, label %if.then2009.i, label %if.else2033.i

if.then2009.i:                                    ; preds = %do.end1971.i
  call void @__sanitizer_cov_trace_cmp4(i32 %364, i32 %366)
  %cmp2017.not.i = icmp eq i32 %364, %366
  br i1 %cmp2017.not.i, label %if.then2009.i.do.end2058.i_crit_edge, label %if.then2018.i

if.then2009.i.do.end2058.i_crit_edge:             ; preds = %if.then2009.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2058.i

if.then2018.i:                                    ; preds = %if.then2009.i
  call void @__sanitizer_cov_trace_pc() #9
  %367 = xor i32 %366, -1
  %dec2020.i = add i32 %364, %367
  %add2027.i = sub i32 %360, %362
  br label %do.end2058.i

if.else2033.i:                                    ; preds = %do.end1971.i
  call void @__sanitizer_cov_trace_cmp4(i32 %364, i32 %366)
  %cmp2038.i = icmp ult i32 %364, %366
  br i1 %cmp2038.i, label %if.else2033.i.do.end2058.i_crit_edge, label %if.else2042.i

if.else2033.i.do.end2058.i_crit_edge:             ; preds = %if.else2033.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2058.i

if.else2042.i:                                    ; preds = %if.else2033.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2047.i = sub i32 %364, %366
  %sub2053.i = sub i32 %360, %362
  br label %do.end2058.i

do.end2058.i:                                     ; preds = %if.else2042.i, %if.else2033.i.do.end2058.i_crit_edge, %if.then2018.i, %if.then2009.i.do.end2058.i_crit_edge
  %diff.sroa.279.24.i = phi i32 [ %dec2020.i, %if.then2018.i ], [ %sub2047.i, %if.else2042.i ], [ 0, %if.then2009.i.do.end2058.i_crit_edge ], [ 0, %if.else2033.i.do.end2058.i_crit_edge ]
  %diff.sroa.0.24.i = phi i32 [ %add2027.i, %if.then2018.i ], [ %sub2053.i, %if.else2042.i ], [ 0, %if.then2009.i.do.end2058.i_crit_edge ], [ 0, %if.else2033.i.do.end2058.i_crit_edge ]
  %368 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi2013.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %364, ptr %rx_stat_dot3statsfcserrors_hi2013.i, align 4
  %369 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo2007.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %360, ptr %rx_stat_dot3statsfcserrors_lo2007.i, align 4
  %rx_stat_dot3statsfcserrors_lo2071.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 5
  %370 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo2071.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %rx_stat_dot3statsfcserrors_lo2071.i, align 4
  %add2072.i = add i32 %371, %diff.sroa.0.24.i
  store i32 %add2072.i, ptr %rx_stat_dot3statsfcserrors_lo2071.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2072.i, i32 %diff.sroa.0.24.i)
  %cmp2078.i = icmp ult i32 %add2072.i, %diff.sroa.0.24.i
  %cond2079.i = zext i1 %cmp2078.i to i32
  %rx_stat_dot3statsfcserrors_hi2083.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 4
  %372 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi2083.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %rx_stat_dot3statsfcserrors_hi2083.i, align 4
  %add2080.i = add i32 %373, %diff.sroa.279.24.i
  %add2084.i = add i32 %add2080.i, %cond2079.i
  store i32 %add2084.i, ptr %rx_stat_dot3statsfcserrors_hi2083.i, align 4
  %rx_stat_grund_lo2091.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 48
  %374 = ptrtoint ptr %rx_stat_grund_lo2091.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %rx_stat_grund_lo2091.i, align 4
  %rx_stat_etherstatsundersizepkts_lo2094.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 13
  %376 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo2094.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %rx_stat_etherstatsundersizepkts_lo2094.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %375, i32 %377)
  %cmp2095.i = icmp ult i32 %375, %377
  %rx_stat_grund_hi2097.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 49
  %378 = ptrtoint ptr %rx_stat_grund_hi2097.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %rx_stat_grund_hi2097.i, align 4
  %rx_stat_etherstatsundersizepkts_hi2100.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 12
  %380 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi2100.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %rx_stat_etherstatsundersizepkts_hi2100.i, align 4
  br i1 %cmp2095.i, label %if.then2096.i, label %if.else2120.i

if.then2096.i:                                    ; preds = %do.end2058.i
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %381)
  %cmp2104.not.i = icmp eq i32 %379, %381
  br i1 %cmp2104.not.i, label %if.then2096.i.do.end2145.i_crit_edge, label %if.then2105.i

if.then2096.i.do.end2145.i_crit_edge:             ; preds = %if.then2096.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2145.i

if.then2105.i:                                    ; preds = %if.then2096.i
  call void @__sanitizer_cov_trace_pc() #9
  %382 = xor i32 %381, -1
  %dec2107.i = add i32 %379, %382
  %add2114.i = sub i32 %375, %377
  br label %do.end2145.i

if.else2120.i:                                    ; preds = %do.end2058.i
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %381)
  %cmp2125.i = icmp ult i32 %379, %381
  br i1 %cmp2125.i, label %if.else2120.i.do.end2145.i_crit_edge, label %if.else2129.i

if.else2120.i.do.end2145.i_crit_edge:             ; preds = %if.else2120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2145.i

if.else2129.i:                                    ; preds = %if.else2120.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2134.i = sub i32 %379, %381
  %sub2140.i = sub i32 %375, %377
  br label %do.end2145.i

do.end2145.i:                                     ; preds = %if.else2129.i, %if.else2120.i.do.end2145.i_crit_edge, %if.then2105.i, %if.then2096.i.do.end2145.i_crit_edge
  %diff.sroa.279.25.i = phi i32 [ %dec2107.i, %if.then2105.i ], [ %sub2134.i, %if.else2129.i ], [ 0, %if.then2096.i.do.end2145.i_crit_edge ], [ 0, %if.else2120.i.do.end2145.i_crit_edge ]
  %diff.sroa.0.25.i = phi i32 [ %add2114.i, %if.then2105.i ], [ %sub2140.i, %if.else2129.i ], [ 0, %if.then2096.i.do.end2145.i_crit_edge ], [ 0, %if.else2120.i.do.end2145.i_crit_edge ]
  %383 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi2100.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %379, ptr %rx_stat_etherstatsundersizepkts_hi2100.i, align 4
  %384 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo2094.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %375, ptr %rx_stat_etherstatsundersizepkts_lo2094.i, align 4
  %rx_stat_etherstatsundersizepkts_lo2158.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 13
  %385 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo2158.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %rx_stat_etherstatsundersizepkts_lo2158.i, align 4
  %add2159.i = add i32 %386, %diff.sroa.0.25.i
  store i32 %add2159.i, ptr %rx_stat_etherstatsundersizepkts_lo2158.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2159.i, i32 %diff.sroa.0.25.i)
  %cmp2165.i = icmp ult i32 %add2159.i, %diff.sroa.0.25.i
  %cond2166.i = zext i1 %cmp2165.i to i32
  %rx_stat_etherstatsundersizepkts_hi2170.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 12
  %387 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi2170.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %rx_stat_etherstatsundersizepkts_hi2170.i, align 4
  %add2167.i = add i32 %388, %diff.sroa.279.25.i
  %add2171.i = add i32 %add2167.i, %cond2166.i
  store i32 %add2171.i, ptr %rx_stat_etherstatsundersizepkts_hi2170.i, align 4
  %rx_stat_grovr_lo2178.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 34
  %389 = ptrtoint ptr %rx_stat_grovr_lo2178.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %rx_stat_grovr_lo2178.i, align 4
  %rx_stat_dot3statsframestoolong_lo2181.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 15
  %391 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo2181.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %rx_stat_dot3statsframestoolong_lo2181.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %390, i32 %392)
  %cmp2182.i = icmp ult i32 %390, %392
  %rx_stat_grovr_hi2184.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 35
  %393 = ptrtoint ptr %rx_stat_grovr_hi2184.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %rx_stat_grovr_hi2184.i, align 4
  %rx_stat_dot3statsframestoolong_hi2187.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 14
  %395 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi2187.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %rx_stat_dot3statsframestoolong_hi2187.i, align 4
  br i1 %cmp2182.i, label %if.then2183.i, label %if.else2207.i

if.then2183.i:                                    ; preds = %do.end2145.i
  call void @__sanitizer_cov_trace_cmp4(i32 %394, i32 %396)
  %cmp2191.not.i = icmp eq i32 %394, %396
  br i1 %cmp2191.not.i, label %if.then2183.i.do.end2232.i_crit_edge, label %if.then2192.i

if.then2183.i.do.end2232.i_crit_edge:             ; preds = %if.then2183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2232.i

if.then2192.i:                                    ; preds = %if.then2183.i
  call void @__sanitizer_cov_trace_pc() #9
  %397 = xor i32 %396, -1
  %dec2194.i = add i32 %394, %397
  %add2201.i = sub i32 %390, %392
  br label %do.end2232.i

if.else2207.i:                                    ; preds = %do.end2145.i
  call void @__sanitizer_cov_trace_cmp4(i32 %394, i32 %396)
  %cmp2212.i = icmp ult i32 %394, %396
  br i1 %cmp2212.i, label %if.else2207.i.do.end2232.i_crit_edge, label %if.else2216.i

if.else2207.i.do.end2232.i_crit_edge:             ; preds = %if.else2207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2232.i

if.else2216.i:                                    ; preds = %if.else2207.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2221.i = sub i32 %394, %396
  %sub2227.i = sub i32 %390, %392
  br label %do.end2232.i

do.end2232.i:                                     ; preds = %if.else2216.i, %if.else2207.i.do.end2232.i_crit_edge, %if.then2192.i, %if.then2183.i.do.end2232.i_crit_edge
  %diff.sroa.279.26.i = phi i32 [ %dec2194.i, %if.then2192.i ], [ %sub2221.i, %if.else2216.i ], [ 0, %if.then2183.i.do.end2232.i_crit_edge ], [ 0, %if.else2207.i.do.end2232.i_crit_edge ]
  %diff.sroa.0.26.i = phi i32 [ %add2201.i, %if.then2192.i ], [ %sub2227.i, %if.else2216.i ], [ 0, %if.then2183.i.do.end2232.i_crit_edge ], [ 0, %if.else2207.i.do.end2232.i_crit_edge ]
  %398 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi2187.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %394, ptr %rx_stat_dot3statsframestoolong_hi2187.i, align 4
  %399 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo2181.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %390, ptr %rx_stat_dot3statsframestoolong_lo2181.i, align 4
  %rx_stat_dot3statsframestoolong_lo2245.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 15
  %400 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo2245.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %rx_stat_dot3statsframestoolong_lo2245.i, align 4
  %add2246.i = add i32 %401, %diff.sroa.0.26.i
  store i32 %add2246.i, ptr %rx_stat_dot3statsframestoolong_lo2245.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2246.i, i32 %diff.sroa.0.26.i)
  %cmp2252.i = icmp ult i32 %add2246.i, %diff.sroa.0.26.i
  %cond2253.i = zext i1 %cmp2252.i to i32
  %rx_stat_dot3statsframestoolong_hi2257.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 14
  %402 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi2257.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %rx_stat_dot3statsframestoolong_hi2257.i, align 4
  %add2254.i = add i32 %403, %diff.sroa.279.26.i
  %add2258.i = add i32 %add2254.i, %cond2253.i
  store i32 %add2258.i, ptr %rx_stat_dot3statsframestoolong_hi2257.i, align 4
  %rx_stat_grfrg_lo2265.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 50
  %404 = ptrtoint ptr %rx_stat_grfrg_lo2265.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %rx_stat_grfrg_lo2265.i, align 4
  %rx_stat_etherstatsfragments_lo2268.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 17
  %406 = ptrtoint ptr %rx_stat_etherstatsfragments_lo2268.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %rx_stat_etherstatsfragments_lo2268.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %405, i32 %407)
  %cmp2269.i = icmp ult i32 %405, %407
  %rx_stat_grfrg_hi2271.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 51
  %408 = ptrtoint ptr %rx_stat_grfrg_hi2271.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %rx_stat_grfrg_hi2271.i, align 4
  %rx_stat_etherstatsfragments_hi2274.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 16
  %410 = ptrtoint ptr %rx_stat_etherstatsfragments_hi2274.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %rx_stat_etherstatsfragments_hi2274.i, align 4
  br i1 %cmp2269.i, label %if.then2270.i, label %if.else2294.i

if.then2270.i:                                    ; preds = %do.end2232.i
  call void @__sanitizer_cov_trace_cmp4(i32 %409, i32 %411)
  %cmp2278.not.i = icmp eq i32 %409, %411
  br i1 %cmp2278.not.i, label %if.then2270.i.do.end2319.i_crit_edge, label %if.then2279.i

if.then2270.i.do.end2319.i_crit_edge:             ; preds = %if.then2270.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2319.i

if.then2279.i:                                    ; preds = %if.then2270.i
  call void @__sanitizer_cov_trace_pc() #9
  %412 = xor i32 %411, -1
  %dec2281.i = add i32 %409, %412
  %add2288.i = sub i32 %405, %407
  br label %do.end2319.i

if.else2294.i:                                    ; preds = %do.end2232.i
  call void @__sanitizer_cov_trace_cmp4(i32 %409, i32 %411)
  %cmp2299.i = icmp ult i32 %409, %411
  br i1 %cmp2299.i, label %if.else2294.i.do.end2319.i_crit_edge, label %if.else2303.i

if.else2294.i.do.end2319.i_crit_edge:             ; preds = %if.else2294.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2319.i

if.else2303.i:                                    ; preds = %if.else2294.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2308.i = sub i32 %409, %411
  %sub2314.i = sub i32 %405, %407
  br label %do.end2319.i

do.end2319.i:                                     ; preds = %if.else2303.i, %if.else2294.i.do.end2319.i_crit_edge, %if.then2279.i, %if.then2270.i.do.end2319.i_crit_edge
  %diff.sroa.279.27.i = phi i32 [ %dec2281.i, %if.then2279.i ], [ %sub2308.i, %if.else2303.i ], [ 0, %if.then2270.i.do.end2319.i_crit_edge ], [ 0, %if.else2294.i.do.end2319.i_crit_edge ]
  %diff.sroa.0.27.i = phi i32 [ %add2288.i, %if.then2279.i ], [ %sub2314.i, %if.else2303.i ], [ 0, %if.then2270.i.do.end2319.i_crit_edge ], [ 0, %if.else2294.i.do.end2319.i_crit_edge ]
  %413 = ptrtoint ptr %rx_stat_etherstatsfragments_hi2274.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %409, ptr %rx_stat_etherstatsfragments_hi2274.i, align 4
  %414 = ptrtoint ptr %rx_stat_etherstatsfragments_lo2268.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %405, ptr %rx_stat_etherstatsfragments_lo2268.i, align 4
  %rx_stat_etherstatsfragments_lo2332.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 17
  %415 = ptrtoint ptr %rx_stat_etherstatsfragments_lo2332.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %rx_stat_etherstatsfragments_lo2332.i, align 4
  %add2333.i = add i32 %416, %diff.sroa.0.27.i
  store i32 %add2333.i, ptr %rx_stat_etherstatsfragments_lo2332.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2333.i, i32 %diff.sroa.0.27.i)
  %cmp2339.i = icmp ult i32 %add2333.i, %diff.sroa.0.27.i
  %cond2340.i = zext i1 %cmp2339.i to i32
  %rx_stat_etherstatsfragments_hi2344.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 16
  %417 = ptrtoint ptr %rx_stat_etherstatsfragments_hi2344.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %rx_stat_etherstatsfragments_hi2344.i, align 4
  %add2341.i = add i32 %418, %diff.sroa.279.27.i
  %add2345.i = add i32 %add2341.i, %cond2340.i
  store i32 %add2345.i, ptr %rx_stat_etherstatsfragments_hi2344.i, align 4
  %rx_stat_grjbr_lo2352.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 32
  %419 = ptrtoint ptr %rx_stat_grjbr_lo2352.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %rx_stat_grjbr_lo2352.i, align 4
  %rx_stat_etherstatsjabbers_lo2355.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 19
  %421 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo2355.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %rx_stat_etherstatsjabbers_lo2355.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %420, i32 %422)
  %cmp2356.i = icmp ult i32 %420, %422
  %rx_stat_grjbr_hi2358.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 33
  %423 = ptrtoint ptr %rx_stat_grjbr_hi2358.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %rx_stat_grjbr_hi2358.i, align 4
  %rx_stat_etherstatsjabbers_hi2361.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 18
  %425 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi2361.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %rx_stat_etherstatsjabbers_hi2361.i, align 4
  br i1 %cmp2356.i, label %if.then2357.i, label %if.else2381.i

if.then2357.i:                                    ; preds = %do.end2319.i
  call void @__sanitizer_cov_trace_cmp4(i32 %424, i32 %426)
  %cmp2365.not.i = icmp eq i32 %424, %426
  br i1 %cmp2365.not.i, label %if.then2357.i.do.end2406.i_crit_edge, label %if.then2366.i

if.then2357.i.do.end2406.i_crit_edge:             ; preds = %if.then2357.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2406.i

if.then2366.i:                                    ; preds = %if.then2357.i
  call void @__sanitizer_cov_trace_pc() #9
  %427 = xor i32 %426, -1
  %dec2368.i = add i32 %424, %427
  %add2375.i = sub i32 %420, %422
  br label %do.end2406.i

if.else2381.i:                                    ; preds = %do.end2319.i
  call void @__sanitizer_cov_trace_cmp4(i32 %424, i32 %426)
  %cmp2386.i = icmp ult i32 %424, %426
  br i1 %cmp2386.i, label %if.else2381.i.do.end2406.i_crit_edge, label %if.else2390.i

if.else2381.i.do.end2406.i_crit_edge:             ; preds = %if.else2381.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2406.i

if.else2390.i:                                    ; preds = %if.else2381.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2395.i = sub i32 %424, %426
  %sub2401.i = sub i32 %420, %422
  br label %do.end2406.i

do.end2406.i:                                     ; preds = %if.else2390.i, %if.else2381.i.do.end2406.i_crit_edge, %if.then2366.i, %if.then2357.i.do.end2406.i_crit_edge
  %diff.sroa.279.28.i = phi i32 [ %dec2368.i, %if.then2366.i ], [ %sub2395.i, %if.else2390.i ], [ 0, %if.then2357.i.do.end2406.i_crit_edge ], [ 0, %if.else2381.i.do.end2406.i_crit_edge ]
  %diff.sroa.0.28.i = phi i32 [ %add2375.i, %if.then2366.i ], [ %sub2401.i, %if.else2390.i ], [ 0, %if.then2357.i.do.end2406.i_crit_edge ], [ 0, %if.else2381.i.do.end2406.i_crit_edge ]
  %428 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi2361.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %424, ptr %rx_stat_etherstatsjabbers_hi2361.i, align 4
  %429 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo2355.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %420, ptr %rx_stat_etherstatsjabbers_lo2355.i, align 4
  %rx_stat_etherstatsjabbers_lo2419.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 19
  %430 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo2419.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %rx_stat_etherstatsjabbers_lo2419.i, align 4
  %add2420.i = add i32 %431, %diff.sroa.0.28.i
  store i32 %add2420.i, ptr %rx_stat_etherstatsjabbers_lo2419.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2420.i, i32 %diff.sroa.0.28.i)
  %cmp2426.i = icmp ult i32 %add2420.i, %diff.sroa.0.28.i
  %cond2427.i = zext i1 %cmp2426.i to i32
  %rx_stat_etherstatsjabbers_hi2431.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 18
  %432 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi2431.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %rx_stat_etherstatsjabbers_hi2431.i, align 4
  %add2428.i = add i32 %433, %diff.sroa.279.28.i
  %add2432.i = add i32 %add2428.i, %cond2427.i
  store i32 %add2432.i, ptr %rx_stat_etherstatsjabbers_hi2431.i, align 4
  %rx_stat_grxcf_lo2439.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 36
  %434 = ptrtoint ptr %rx_stat_grxcf_lo2439.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %rx_stat_grxcf_lo2439.i, align 4
  %rx_stat_maccontrolframesreceived_lo2442.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 21
  %436 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo2442.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %rx_stat_maccontrolframesreceived_lo2442.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %435, i32 %437)
  %cmp2443.i = icmp ult i32 %435, %437
  %rx_stat_grxcf_hi2445.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 37
  %438 = ptrtoint ptr %rx_stat_grxcf_hi2445.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %rx_stat_grxcf_hi2445.i, align 4
  %rx_stat_maccontrolframesreceived_hi2448.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 20
  %440 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi2448.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %rx_stat_maccontrolframesreceived_hi2448.i, align 4
  br i1 %cmp2443.i, label %if.then2444.i, label %if.else2468.i

if.then2444.i:                                    ; preds = %do.end2406.i
  call void @__sanitizer_cov_trace_cmp4(i32 %439, i32 %441)
  %cmp2452.not.i = icmp eq i32 %439, %441
  br i1 %cmp2452.not.i, label %if.then2444.i.do.end2493.i_crit_edge, label %if.then2453.i

if.then2444.i.do.end2493.i_crit_edge:             ; preds = %if.then2444.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2493.i

if.then2453.i:                                    ; preds = %if.then2444.i
  call void @__sanitizer_cov_trace_pc() #9
  %442 = xor i32 %441, -1
  %dec2455.i = add i32 %439, %442
  %add2462.i = sub i32 %435, %437
  br label %do.end2493.i

if.else2468.i:                                    ; preds = %do.end2406.i
  call void @__sanitizer_cov_trace_cmp4(i32 %439, i32 %441)
  %cmp2473.i = icmp ult i32 %439, %441
  br i1 %cmp2473.i, label %if.else2468.i.do.end2493.i_crit_edge, label %if.else2477.i

if.else2468.i.do.end2493.i_crit_edge:             ; preds = %if.else2468.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2493.i

if.else2477.i:                                    ; preds = %if.else2468.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2482.i = sub i32 %439, %441
  %sub2488.i = sub i32 %435, %437
  br label %do.end2493.i

do.end2493.i:                                     ; preds = %if.else2477.i, %if.else2468.i.do.end2493.i_crit_edge, %if.then2453.i, %if.then2444.i.do.end2493.i_crit_edge
  %diff.sroa.279.29.i = phi i32 [ %dec2455.i, %if.then2453.i ], [ %sub2482.i, %if.else2477.i ], [ 0, %if.then2444.i.do.end2493.i_crit_edge ], [ 0, %if.else2468.i.do.end2493.i_crit_edge ]
  %diff.sroa.0.29.i = phi i32 [ %add2462.i, %if.then2453.i ], [ %sub2488.i, %if.else2477.i ], [ 0, %if.then2444.i.do.end2493.i_crit_edge ], [ 0, %if.else2468.i.do.end2493.i_crit_edge ]
  %443 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi2448.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %439, ptr %rx_stat_maccontrolframesreceived_hi2448.i, align 4
  %444 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo2442.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %435, ptr %rx_stat_maccontrolframesreceived_lo2442.i, align 4
  %rx_stat_maccontrolframesreceived_lo2506.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 21
  %445 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo2506.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %rx_stat_maccontrolframesreceived_lo2506.i, align 4
  %add2507.i = add i32 %446, %diff.sroa.0.29.i
  store i32 %add2507.i, ptr %rx_stat_maccontrolframesreceived_lo2506.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2507.i, i32 %diff.sroa.0.29.i)
  %cmp2513.i = icmp ult i32 %add2507.i, %diff.sroa.0.29.i
  %cond2514.i = zext i1 %cmp2513.i to i32
  %rx_stat_maccontrolframesreceived_hi2518.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 20
  %447 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi2518.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %rx_stat_maccontrolframesreceived_hi2518.i, align 4
  %add2515.i = add i32 %448, %diff.sroa.279.29.i
  %add2519.i = add i32 %add2515.i, %cond2514.i
  store i32 %add2519.i, ptr %rx_stat_maccontrolframesreceived_hi2518.i, align 4
  %rx_stat_grxpf_lo2526.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 26
  %449 = ptrtoint ptr %rx_stat_grxpf_lo2526.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %rx_stat_grxpf_lo2526.i, align 4
  %rx_stat_xoffstateentered_lo2529.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 27
  %451 = ptrtoint ptr %rx_stat_xoffstateentered_lo2529.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %rx_stat_xoffstateentered_lo2529.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %450, i32 %452)
  %cmp2530.i = icmp ult i32 %450, %452
  %rx_stat_grxpf_hi2532.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 27
  %453 = ptrtoint ptr %rx_stat_grxpf_hi2532.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %rx_stat_grxpf_hi2532.i, align 4
  %rx_stat_xoffstateentered_hi2535.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 26
  %455 = ptrtoint ptr %rx_stat_xoffstateentered_hi2535.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %rx_stat_xoffstateentered_hi2535.i, align 4
  br i1 %cmp2530.i, label %if.then2531.i, label %if.else2555.i

if.then2531.i:                                    ; preds = %do.end2493.i
  call void @__sanitizer_cov_trace_cmp4(i32 %454, i32 %456)
  %cmp2539.not.i = icmp eq i32 %454, %456
  br i1 %cmp2539.not.i, label %if.then2531.i.do.end2580.i_crit_edge, label %if.then2540.i

if.then2531.i.do.end2580.i_crit_edge:             ; preds = %if.then2531.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2580.i

if.then2540.i:                                    ; preds = %if.then2531.i
  call void @__sanitizer_cov_trace_pc() #9
  %457 = xor i32 %456, -1
  %dec2542.i = add i32 %454, %457
  %add2549.i = sub i32 %450, %452
  br label %do.end2580.i

if.else2555.i:                                    ; preds = %do.end2493.i
  call void @__sanitizer_cov_trace_cmp4(i32 %454, i32 %456)
  %cmp2560.i = icmp ult i32 %454, %456
  br i1 %cmp2560.i, label %if.else2555.i.do.end2580.i_crit_edge, label %if.else2564.i

if.else2555.i.do.end2580.i_crit_edge:             ; preds = %if.else2555.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2580.i

if.else2564.i:                                    ; preds = %if.else2555.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2569.i = sub i32 %454, %456
  %sub2575.i = sub i32 %450, %452
  br label %do.end2580.i

do.end2580.i:                                     ; preds = %if.else2564.i, %if.else2555.i.do.end2580.i_crit_edge, %if.then2540.i, %if.then2531.i.do.end2580.i_crit_edge
  %diff.sroa.279.30.i = phi i32 [ %dec2542.i, %if.then2540.i ], [ %sub2569.i, %if.else2564.i ], [ 0, %if.then2531.i.do.end2580.i_crit_edge ], [ 0, %if.else2555.i.do.end2580.i_crit_edge ]
  %diff.sroa.0.30.i = phi i32 [ %add2549.i, %if.then2540.i ], [ %sub2575.i, %if.else2564.i ], [ 0, %if.then2531.i.do.end2580.i_crit_edge ], [ 0, %if.else2555.i.do.end2580.i_crit_edge ]
  %458 = ptrtoint ptr %rx_stat_xoffstateentered_hi2535.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %454, ptr %rx_stat_xoffstateentered_hi2535.i, align 4
  %459 = ptrtoint ptr %rx_stat_xoffstateentered_lo2529.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %450, ptr %rx_stat_xoffstateentered_lo2529.i, align 4
  %rx_stat_xoffstateentered_lo2593.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 27
  %460 = ptrtoint ptr %rx_stat_xoffstateentered_lo2593.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %rx_stat_xoffstateentered_lo2593.i, align 4
  %add2594.i = add i32 %461, %diff.sroa.0.30.i
  store i32 %add2594.i, ptr %rx_stat_xoffstateentered_lo2593.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2594.i, i32 %diff.sroa.0.30.i)
  %cmp2600.i = icmp ult i32 %add2594.i, %diff.sroa.0.30.i
  %cond2601.i = zext i1 %cmp2600.i to i32
  %rx_stat_xoffstateentered_hi2605.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 26
  %462 = ptrtoint ptr %rx_stat_xoffstateentered_hi2605.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %rx_stat_xoffstateentered_hi2605.i, align 4
  %add2602.i = add i32 %463, %diff.sroa.279.30.i
  %add2606.i = add i32 %add2602.i, %cond2601.i
  store i32 %add2606.i, ptr %rx_stat_xoffstateentered_hi2605.i, align 4
  %rx_stat_mac_xpf_lo2616.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 23
  %464 = ptrtoint ptr %rx_stat_mac_xpf_lo2616.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %rx_stat_mac_xpf_lo2616.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %450, i32 %465)
  %cmp2617.i = icmp ult i32 %450, %465
  %rx_stat_mac_xpf_hi2622.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 22
  %466 = ptrtoint ptr %rx_stat_mac_xpf_hi2622.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %rx_stat_mac_xpf_hi2622.i, align 4
  br i1 %cmp2617.i, label %if.then2618.i, label %if.else2642.i

if.then2618.i:                                    ; preds = %do.end2580.i
  call void @__sanitizer_cov_trace_cmp4(i32 %454, i32 %467)
  %cmp2626.not.i = icmp eq i32 %454, %467
  br i1 %cmp2626.not.i, label %if.then2618.i.do.end2667.i_crit_edge, label %if.then2627.i

if.then2618.i.do.end2667.i_crit_edge:             ; preds = %if.then2618.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2667.i

if.then2627.i:                                    ; preds = %if.then2618.i
  call void @__sanitizer_cov_trace_pc() #9
  %468 = xor i32 %467, -1
  %dec2629.i = add i32 %454, %468
  %add2636.i = sub i32 %450, %465
  br label %do.end2667.i

if.else2642.i:                                    ; preds = %do.end2580.i
  call void @__sanitizer_cov_trace_cmp4(i32 %454, i32 %467)
  %cmp2647.i = icmp ult i32 %454, %467
  br i1 %cmp2647.i, label %if.else2642.i.do.end2667.i_crit_edge, label %if.else2651.i

if.else2642.i.do.end2667.i_crit_edge:             ; preds = %if.else2642.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2667.i

if.else2651.i:                                    ; preds = %if.else2642.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2656.i = sub i32 %454, %467
  %sub2662.i = sub i32 %450, %465
  br label %do.end2667.i

do.end2667.i:                                     ; preds = %if.else2651.i, %if.else2642.i.do.end2667.i_crit_edge, %if.then2627.i, %if.then2618.i.do.end2667.i_crit_edge
  %diff.sroa.279.31.i = phi i32 [ %dec2629.i, %if.then2627.i ], [ %sub2656.i, %if.else2651.i ], [ 0, %if.then2618.i.do.end2667.i_crit_edge ], [ 0, %if.else2642.i.do.end2667.i_crit_edge ]
  %diff.sroa.0.31.i = phi i32 [ %add2636.i, %if.then2627.i ], [ %sub2662.i, %if.else2651.i ], [ 0, %if.then2618.i.do.end2667.i_crit_edge ], [ 0, %if.else2642.i.do.end2667.i_crit_edge ]
  %469 = ptrtoint ptr %rx_stat_mac_xpf_hi2622.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %454, ptr %rx_stat_mac_xpf_hi2622.i, align 4
  %470 = ptrtoint ptr %rx_stat_mac_xpf_lo2616.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %450, ptr %rx_stat_mac_xpf_lo2616.i, align 4
  %rx_stat_mac_xpf_lo2680.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 23
  %471 = ptrtoint ptr %rx_stat_mac_xpf_lo2680.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %rx_stat_mac_xpf_lo2680.i, align 4
  %add2681.i = add i32 %472, %diff.sroa.0.31.i
  store i32 %add2681.i, ptr %rx_stat_mac_xpf_lo2680.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2681.i, i32 %diff.sroa.0.31.i)
  %cmp2687.i = icmp ult i32 %add2681.i, %diff.sroa.0.31.i
  %cond2688.i = zext i1 %cmp2687.i to i32
  %rx_stat_mac_xpf_hi2692.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 22
  %473 = ptrtoint ptr %rx_stat_mac_xpf_hi2692.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %rx_stat_mac_xpf_hi2692.i, align 4
  %add2689.i = add i32 %474, %diff.sroa.279.31.i
  %add2693.i = add i32 %add2689.i, %cond2688.i
  store i32 %add2693.i, ptr %rx_stat_mac_xpf_hi2692.i, align 4
  %tx_stat_gtxpf_lo2700.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %475 = ptrtoint ptr %tx_stat_gtxpf_lo2700.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %tx_stat_gtxpf_lo2700.i, align 4
  %tx_stat_outxoffsent_lo2703.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 35
  %477 = ptrtoint ptr %tx_stat_outxoffsent_lo2703.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %tx_stat_outxoffsent_lo2703.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %476, i32 %478)
  %cmp2704.i = icmp ult i32 %476, %478
  %tx_stat_gtxpf_hi2706.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %479 = ptrtoint ptr %tx_stat_gtxpf_hi2706.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %tx_stat_gtxpf_hi2706.i, align 4
  %tx_stat_outxoffsent_hi2709.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 34
  %481 = ptrtoint ptr %tx_stat_outxoffsent_hi2709.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %tx_stat_outxoffsent_hi2709.i, align 4
  br i1 %cmp2704.i, label %if.then2705.i, label %if.else2729.i

if.then2705.i:                                    ; preds = %do.end2667.i
  call void @__sanitizer_cov_trace_cmp4(i32 %480, i32 %482)
  %cmp2713.not.i = icmp eq i32 %480, %482
  br i1 %cmp2713.not.i, label %if.then2705.i.do.end2754.i_crit_edge, label %if.then2714.i

if.then2705.i.do.end2754.i_crit_edge:             ; preds = %if.then2705.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2754.i

if.then2714.i:                                    ; preds = %if.then2705.i
  call void @__sanitizer_cov_trace_pc() #9
  %483 = xor i32 %482, -1
  %dec2716.i = add i32 %480, %483
  %add2723.i = sub i32 %476, %478
  br label %do.end2754.i

if.else2729.i:                                    ; preds = %do.end2667.i
  call void @__sanitizer_cov_trace_cmp4(i32 %480, i32 %482)
  %cmp2734.i = icmp ult i32 %480, %482
  br i1 %cmp2734.i, label %if.else2729.i.do.end2754.i_crit_edge, label %if.else2738.i

if.else2729.i.do.end2754.i_crit_edge:             ; preds = %if.else2729.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2754.i

if.else2738.i:                                    ; preds = %if.else2729.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2743.i = sub i32 %480, %482
  %sub2749.i = sub i32 %476, %478
  br label %do.end2754.i

do.end2754.i:                                     ; preds = %if.else2738.i, %if.else2729.i.do.end2754.i_crit_edge, %if.then2714.i, %if.then2705.i.do.end2754.i_crit_edge
  %diff.sroa.279.32.i = phi i32 [ %dec2716.i, %if.then2714.i ], [ %sub2743.i, %if.else2738.i ], [ 0, %if.then2705.i.do.end2754.i_crit_edge ], [ 0, %if.else2729.i.do.end2754.i_crit_edge ]
  %diff.sroa.0.32.i = phi i32 [ %add2723.i, %if.then2714.i ], [ %sub2749.i, %if.else2738.i ], [ 0, %if.then2705.i.do.end2754.i_crit_edge ], [ 0, %if.else2729.i.do.end2754.i_crit_edge ]
  %484 = ptrtoint ptr %tx_stat_outxoffsent_hi2709.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %480, ptr %tx_stat_outxoffsent_hi2709.i, align 4
  %485 = ptrtoint ptr %tx_stat_outxoffsent_lo2703.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %476, ptr %tx_stat_outxoffsent_lo2703.i, align 4
  %tx_stat_outxoffsent_lo2767.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 35
  %486 = ptrtoint ptr %tx_stat_outxoffsent_lo2767.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %tx_stat_outxoffsent_lo2767.i, align 4
  %add2768.i = add i32 %487, %diff.sroa.0.32.i
  store i32 %add2768.i, ptr %tx_stat_outxoffsent_lo2767.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2768.i, i32 %diff.sroa.0.32.i)
  %cmp2774.i = icmp ult i32 %add2768.i, %diff.sroa.0.32.i
  %cond2775.i = zext i1 %cmp2774.i to i32
  %tx_stat_outxoffsent_hi2779.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 34
  %488 = ptrtoint ptr %tx_stat_outxoffsent_hi2779.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %tx_stat_outxoffsent_hi2779.i, align 4
  %add2776.i = add i32 %489, %diff.sroa.279.32.i
  %add2780.i = add i32 %add2776.i, %cond2775.i
  store i32 %add2780.i, ptr %tx_stat_outxoffsent_hi2779.i, align 4
  %tx_stat_flowcontroldone_lo2790.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 37
  %490 = ptrtoint ptr %tx_stat_flowcontroldone_lo2790.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %tx_stat_flowcontroldone_lo2790.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %476, i32 %491)
  %cmp2791.i = icmp ult i32 %476, %491
  %tx_stat_flowcontroldone_hi2796.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 36
  %492 = ptrtoint ptr %tx_stat_flowcontroldone_hi2796.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %tx_stat_flowcontroldone_hi2796.i, align 4
  br i1 %cmp2791.i, label %if.then2792.i, label %if.else2816.i

if.then2792.i:                                    ; preds = %do.end2754.i
  call void @__sanitizer_cov_trace_cmp4(i32 %480, i32 %493)
  %cmp2800.not.i = icmp eq i32 %480, %493
  br i1 %cmp2800.not.i, label %if.then2792.i.do.end2841.i_crit_edge, label %if.then2801.i

if.then2792.i.do.end2841.i_crit_edge:             ; preds = %if.then2792.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2841.i

if.then2801.i:                                    ; preds = %if.then2792.i
  call void @__sanitizer_cov_trace_pc() #9
  %494 = xor i32 %493, -1
  %dec2803.i = add i32 %480, %494
  %add2810.i = sub i32 %476, %491
  br label %do.end2841.i

if.else2816.i:                                    ; preds = %do.end2754.i
  call void @__sanitizer_cov_trace_cmp4(i32 %480, i32 %493)
  %cmp2821.i = icmp ult i32 %480, %493
  br i1 %cmp2821.i, label %if.else2816.i.do.end2841.i_crit_edge, label %if.else2825.i

if.else2816.i.do.end2841.i_crit_edge:             ; preds = %if.else2816.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2841.i

if.else2825.i:                                    ; preds = %if.else2816.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2830.i = sub i32 %480, %493
  %sub2836.i = sub i32 %476, %491
  br label %do.end2841.i

do.end2841.i:                                     ; preds = %if.else2825.i, %if.else2816.i.do.end2841.i_crit_edge, %if.then2801.i, %if.then2792.i.do.end2841.i_crit_edge
  %diff.sroa.279.33.i = phi i32 [ %dec2803.i, %if.then2801.i ], [ %sub2830.i, %if.else2825.i ], [ 0, %if.then2792.i.do.end2841.i_crit_edge ], [ 0, %if.else2816.i.do.end2841.i_crit_edge ]
  %diff.sroa.0.33.i = phi i32 [ %add2810.i, %if.then2801.i ], [ %sub2836.i, %if.else2825.i ], [ 0, %if.then2792.i.do.end2841.i_crit_edge ], [ 0, %if.else2816.i.do.end2841.i_crit_edge ]
  %495 = ptrtoint ptr %tx_stat_flowcontroldone_hi2796.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %480, ptr %tx_stat_flowcontroldone_hi2796.i, align 4
  %496 = ptrtoint ptr %tx_stat_flowcontroldone_lo2790.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %476, ptr %tx_stat_flowcontroldone_lo2790.i, align 4
  %tx_stat_flowcontroldone_lo2854.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 37
  %497 = ptrtoint ptr %tx_stat_flowcontroldone_lo2854.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %tx_stat_flowcontroldone_lo2854.i, align 4
  %add2855.i = add i32 %498, %diff.sroa.0.33.i
  store i32 %add2855.i, ptr %tx_stat_flowcontroldone_lo2854.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2855.i, i32 %diff.sroa.0.33.i)
  %cmp2861.i = icmp ult i32 %add2855.i, %diff.sroa.0.33.i
  %cond2862.i = zext i1 %cmp2861.i to i32
  %tx_stat_flowcontroldone_hi2866.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 36
  %499 = ptrtoint ptr %tx_stat_flowcontroldone_hi2866.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %tx_stat_flowcontroldone_hi2866.i, align 4
  %add2863.i = add i32 %500, %diff.sroa.279.33.i
  %add2867.i = add i32 %add2863.i, %cond2862.i
  store i32 %add2867.i, ptr %tx_stat_flowcontroldone_hi2866.i, align 4
  %tx_stat_gt64_lo2874.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 20
  %501 = ptrtoint ptr %tx_stat_gt64_lo2874.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %tx_stat_gt64_lo2874.i, align 4
  %tx_stat_etherstatspkts64octets_lo2877.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 51
  %503 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo2877.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %tx_stat_etherstatspkts64octets_lo2877.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %502, i32 %504)
  %cmp2878.i = icmp ult i32 %502, %504
  %tx_stat_gt64_hi2880.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 21
  %505 = ptrtoint ptr %tx_stat_gt64_hi2880.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %tx_stat_gt64_hi2880.i, align 4
  %tx_stat_etherstatspkts64octets_hi2883.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 50
  %507 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi2883.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %tx_stat_etherstatspkts64octets_hi2883.i, align 4
  br i1 %cmp2878.i, label %if.then2879.i, label %if.else2903.i

if.then2879.i:                                    ; preds = %do.end2841.i
  call void @__sanitizer_cov_trace_cmp4(i32 %506, i32 %508)
  %cmp2887.not.i = icmp eq i32 %506, %508
  br i1 %cmp2887.not.i, label %if.then2879.i.do.end2928.i_crit_edge, label %if.then2888.i

if.then2879.i.do.end2928.i_crit_edge:             ; preds = %if.then2879.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2928.i

if.then2888.i:                                    ; preds = %if.then2879.i
  call void @__sanitizer_cov_trace_pc() #9
  %509 = xor i32 %508, -1
  %dec2890.i = add i32 %506, %509
  %add2897.i = sub i32 %502, %504
  br label %do.end2928.i

if.else2903.i:                                    ; preds = %do.end2841.i
  call void @__sanitizer_cov_trace_cmp4(i32 %506, i32 %508)
  %cmp2908.i = icmp ult i32 %506, %508
  br i1 %cmp2908.i, label %if.else2903.i.do.end2928.i_crit_edge, label %if.else2912.i

if.else2903.i.do.end2928.i_crit_edge:             ; preds = %if.else2903.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2928.i

if.else2912.i:                                    ; preds = %if.else2903.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub2917.i = sub i32 %506, %508
  %sub2923.i = sub i32 %502, %504
  br label %do.end2928.i

do.end2928.i:                                     ; preds = %if.else2912.i, %if.else2903.i.do.end2928.i_crit_edge, %if.then2888.i, %if.then2879.i.do.end2928.i_crit_edge
  %diff.sroa.279.34.i = phi i32 [ %dec2890.i, %if.then2888.i ], [ %sub2917.i, %if.else2912.i ], [ 0, %if.then2879.i.do.end2928.i_crit_edge ], [ 0, %if.else2903.i.do.end2928.i_crit_edge ]
  %diff.sroa.0.34.i = phi i32 [ %add2897.i, %if.then2888.i ], [ %sub2923.i, %if.else2912.i ], [ 0, %if.then2879.i.do.end2928.i_crit_edge ], [ 0, %if.else2903.i.do.end2928.i_crit_edge ]
  %510 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi2883.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %506, ptr %tx_stat_etherstatspkts64octets_hi2883.i, align 4
  %511 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo2877.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %502, ptr %tx_stat_etherstatspkts64octets_lo2877.i, align 4
  %tx_stat_etherstatspkts64octets_lo2941.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 51
  %512 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo2941.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %tx_stat_etherstatspkts64octets_lo2941.i, align 4
  %add2942.i = add i32 %513, %diff.sroa.0.34.i
  store i32 %add2942.i, ptr %tx_stat_etherstatspkts64octets_lo2941.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2942.i, i32 %diff.sroa.0.34.i)
  %cmp2948.i = icmp ult i32 %add2942.i, %diff.sroa.0.34.i
  %cond2949.i = zext i1 %cmp2948.i to i32
  %tx_stat_etherstatspkts64octets_hi2953.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 50
  %514 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi2953.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %tx_stat_etherstatspkts64octets_hi2953.i, align 4
  %add2950.i = add i32 %515, %diff.sroa.279.34.i
  %add2954.i = add i32 %add2950.i, %cond2949.i
  store i32 %add2954.i, ptr %tx_stat_etherstatspkts64octets_hi2953.i, align 4
  %tx_stat_gt127_lo2961.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 22
  %516 = ptrtoint ptr %tx_stat_gt127_lo2961.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %tx_stat_gt127_lo2961.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_lo2964.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 53
  %518 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo2964.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_lo2964.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %517, i32 %519)
  %cmp2965.i = icmp ult i32 %517, %519
  %tx_stat_gt127_hi2967.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 23
  %520 = ptrtoint ptr %tx_stat_gt127_hi2967.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %tx_stat_gt127_hi2967.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_hi2970.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 52
  %522 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi2970.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_hi2970.i, align 4
  br i1 %cmp2965.i, label %if.then2966.i, label %if.else2990.i

if.then2966.i:                                    ; preds = %do.end2928.i
  call void @__sanitizer_cov_trace_cmp4(i32 %521, i32 %523)
  %cmp2974.not.i = icmp eq i32 %521, %523
  br i1 %cmp2974.not.i, label %if.then2966.i.do.end3015.i_crit_edge, label %if.then2975.i

if.then2966.i.do.end3015.i_crit_edge:             ; preds = %if.then2966.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3015.i

if.then2975.i:                                    ; preds = %if.then2966.i
  call void @__sanitizer_cov_trace_pc() #9
  %524 = xor i32 %523, -1
  %dec2977.i = add i32 %521, %524
  %add2984.i = sub i32 %517, %519
  br label %do.end3015.i

if.else2990.i:                                    ; preds = %do.end2928.i
  call void @__sanitizer_cov_trace_cmp4(i32 %521, i32 %523)
  %cmp2995.i = icmp ult i32 %521, %523
  br i1 %cmp2995.i, label %if.else2990.i.do.end3015.i_crit_edge, label %if.else2999.i

if.else2990.i.do.end3015.i_crit_edge:             ; preds = %if.else2990.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3015.i

if.else2999.i:                                    ; preds = %if.else2990.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3004.i = sub i32 %521, %523
  %sub3010.i = sub i32 %517, %519
  br label %do.end3015.i

do.end3015.i:                                     ; preds = %if.else2999.i, %if.else2990.i.do.end3015.i_crit_edge, %if.then2975.i, %if.then2966.i.do.end3015.i_crit_edge
  %diff.sroa.279.35.i = phi i32 [ %dec2977.i, %if.then2975.i ], [ %sub3004.i, %if.else2999.i ], [ 0, %if.then2966.i.do.end3015.i_crit_edge ], [ 0, %if.else2990.i.do.end3015.i_crit_edge ]
  %diff.sroa.0.35.i = phi i32 [ %add2984.i, %if.then2975.i ], [ %sub3010.i, %if.else2999.i ], [ 0, %if.then2966.i.do.end3015.i_crit_edge ], [ 0, %if.else2990.i.do.end3015.i_crit_edge ]
  %525 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi2970.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 %521, ptr %tx_stat_etherstatspkts65octetsto127octets_hi2970.i, align 4
  %526 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo2964.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %517, ptr %tx_stat_etherstatspkts65octetsto127octets_lo2964.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_lo3028.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 53
  %527 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo3028.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_lo3028.i, align 4
  %add3029.i = add i32 %528, %diff.sroa.0.35.i
  store i32 %add3029.i, ptr %tx_stat_etherstatspkts65octetsto127octets_lo3028.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3029.i, i32 %diff.sroa.0.35.i)
  %cmp3035.i = icmp ult i32 %add3029.i, %diff.sroa.0.35.i
  %cond3036.i = zext i1 %cmp3035.i to i32
  %tx_stat_etherstatspkts65octetsto127octets_hi3040.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 52
  %529 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi3040.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_hi3040.i, align 4
  %add3037.i = add i32 %530, %diff.sroa.279.35.i
  %add3041.i = add i32 %add3037.i, %cond3036.i
  store i32 %add3041.i, ptr %tx_stat_etherstatspkts65octetsto127octets_hi3040.i, align 4
  %tx_stat_gt255_lo3048.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 24
  %531 = ptrtoint ptr %tx_stat_gt255_lo3048.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %tx_stat_gt255_lo3048.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_lo3051.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 55
  %533 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo3051.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_lo3051.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %532, i32 %534)
  %cmp3052.i = icmp ult i32 %532, %534
  %tx_stat_gt255_hi3054.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 25
  %535 = ptrtoint ptr %tx_stat_gt255_hi3054.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %tx_stat_gt255_hi3054.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_hi3057.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 54
  %537 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi3057.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_hi3057.i, align 4
  br i1 %cmp3052.i, label %if.then3053.i, label %if.else3077.i

if.then3053.i:                                    ; preds = %do.end3015.i
  call void @__sanitizer_cov_trace_cmp4(i32 %536, i32 %538)
  %cmp3061.not.i = icmp eq i32 %536, %538
  br i1 %cmp3061.not.i, label %if.then3053.i.do.end3102.i_crit_edge, label %if.then3062.i

if.then3053.i.do.end3102.i_crit_edge:             ; preds = %if.then3053.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3102.i

if.then3062.i:                                    ; preds = %if.then3053.i
  call void @__sanitizer_cov_trace_pc() #9
  %539 = xor i32 %538, -1
  %dec3064.i = add i32 %536, %539
  %add3071.i = sub i32 %532, %534
  br label %do.end3102.i

if.else3077.i:                                    ; preds = %do.end3015.i
  call void @__sanitizer_cov_trace_cmp4(i32 %536, i32 %538)
  %cmp3082.i = icmp ult i32 %536, %538
  br i1 %cmp3082.i, label %if.else3077.i.do.end3102.i_crit_edge, label %if.else3086.i

if.else3077.i.do.end3102.i_crit_edge:             ; preds = %if.else3077.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3102.i

if.else3086.i:                                    ; preds = %if.else3077.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3091.i = sub i32 %536, %538
  %sub3097.i = sub i32 %532, %534
  br label %do.end3102.i

do.end3102.i:                                     ; preds = %if.else3086.i, %if.else3077.i.do.end3102.i_crit_edge, %if.then3062.i, %if.then3053.i.do.end3102.i_crit_edge
  %diff.sroa.279.36.i = phi i32 [ %dec3064.i, %if.then3062.i ], [ %sub3091.i, %if.else3086.i ], [ 0, %if.then3053.i.do.end3102.i_crit_edge ], [ 0, %if.else3077.i.do.end3102.i_crit_edge ]
  %diff.sroa.0.36.i = phi i32 [ %add3071.i, %if.then3062.i ], [ %sub3097.i, %if.else3086.i ], [ 0, %if.then3053.i.do.end3102.i_crit_edge ], [ 0, %if.else3077.i.do.end3102.i_crit_edge ]
  %540 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi3057.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %536, ptr %tx_stat_etherstatspkts128octetsto255octets_hi3057.i, align 4
  %541 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo3051.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %532, ptr %tx_stat_etherstatspkts128octetsto255octets_lo3051.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_lo3115.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 55
  %542 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo3115.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_lo3115.i, align 4
  %add3116.i = add i32 %543, %diff.sroa.0.36.i
  store i32 %add3116.i, ptr %tx_stat_etherstatspkts128octetsto255octets_lo3115.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3116.i, i32 %diff.sroa.0.36.i)
  %cmp3122.i = icmp ult i32 %add3116.i, %diff.sroa.0.36.i
  %cond3123.i = zext i1 %cmp3122.i to i32
  %tx_stat_etherstatspkts128octetsto255octets_hi3127.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 54
  %544 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi3127.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_hi3127.i, align 4
  %add3124.i = add i32 %545, %diff.sroa.279.36.i
  %add3128.i = add i32 %add3124.i, %cond3123.i
  store i32 %add3128.i, ptr %tx_stat_etherstatspkts128octetsto255octets_hi3127.i, align 4
  %tx_stat_gt511_lo3135.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 26
  %546 = ptrtoint ptr %tx_stat_gt511_lo3135.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %tx_stat_gt511_lo3135.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_lo3138.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 57
  %548 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo3138.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_lo3138.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %547, i32 %549)
  %cmp3139.i = icmp ult i32 %547, %549
  %tx_stat_gt511_hi3141.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 27
  %550 = ptrtoint ptr %tx_stat_gt511_hi3141.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %tx_stat_gt511_hi3141.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_hi3144.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 56
  %552 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi3144.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_hi3144.i, align 4
  br i1 %cmp3139.i, label %if.then3140.i, label %if.else3164.i

if.then3140.i:                                    ; preds = %do.end3102.i
  call void @__sanitizer_cov_trace_cmp4(i32 %551, i32 %553)
  %cmp3148.not.i = icmp eq i32 %551, %553
  br i1 %cmp3148.not.i, label %if.then3140.i.do.end3189.i_crit_edge, label %if.then3149.i

if.then3140.i.do.end3189.i_crit_edge:             ; preds = %if.then3140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3189.i

if.then3149.i:                                    ; preds = %if.then3140.i
  call void @__sanitizer_cov_trace_pc() #9
  %554 = xor i32 %553, -1
  %dec3151.i = add i32 %551, %554
  %add3158.i = sub i32 %547, %549
  br label %do.end3189.i

if.else3164.i:                                    ; preds = %do.end3102.i
  call void @__sanitizer_cov_trace_cmp4(i32 %551, i32 %553)
  %cmp3169.i = icmp ult i32 %551, %553
  br i1 %cmp3169.i, label %if.else3164.i.do.end3189.i_crit_edge, label %if.else3173.i

if.else3164.i.do.end3189.i_crit_edge:             ; preds = %if.else3164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3189.i

if.else3173.i:                                    ; preds = %if.else3164.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3178.i = sub i32 %551, %553
  %sub3184.i = sub i32 %547, %549
  br label %do.end3189.i

do.end3189.i:                                     ; preds = %if.else3173.i, %if.else3164.i.do.end3189.i_crit_edge, %if.then3149.i, %if.then3140.i.do.end3189.i_crit_edge
  %diff.sroa.279.37.i = phi i32 [ %dec3151.i, %if.then3149.i ], [ %sub3178.i, %if.else3173.i ], [ 0, %if.then3140.i.do.end3189.i_crit_edge ], [ 0, %if.else3164.i.do.end3189.i_crit_edge ]
  %diff.sroa.0.37.i = phi i32 [ %add3158.i, %if.then3149.i ], [ %sub3184.i, %if.else3173.i ], [ 0, %if.then3140.i.do.end3189.i_crit_edge ], [ 0, %if.else3164.i.do.end3189.i_crit_edge ]
  %555 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi3144.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %551, ptr %tx_stat_etherstatspkts256octetsto511octets_hi3144.i, align 4
  %556 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo3138.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %547, ptr %tx_stat_etherstatspkts256octetsto511octets_lo3138.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_lo3202.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 57
  %557 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo3202.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_lo3202.i, align 4
  %add3203.i = add i32 %558, %diff.sroa.0.37.i
  store i32 %add3203.i, ptr %tx_stat_etherstatspkts256octetsto511octets_lo3202.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3203.i, i32 %diff.sroa.0.37.i)
  %cmp3209.i = icmp ult i32 %add3203.i, %diff.sroa.0.37.i
  %cond3210.i = zext i1 %cmp3209.i to i32
  %tx_stat_etherstatspkts256octetsto511octets_hi3214.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 56
  %559 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi3214.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_hi3214.i, align 4
  %add3211.i = add i32 %560, %diff.sroa.279.37.i
  %add3215.i = add i32 %add3211.i, %cond3210.i
  store i32 %add3215.i, ptr %tx_stat_etherstatspkts256octetsto511octets_hi3214.i, align 4
  %tx_stat_gt1023_lo3222.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 28
  %561 = ptrtoint ptr %tx_stat_gt1023_lo3222.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %tx_stat_gt1023_lo3222.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_lo3225.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 59
  %563 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3225.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3225.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %562, i32 %564)
  %cmp3226.i = icmp ult i32 %562, %564
  %tx_stat_gt1023_hi3228.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 29
  %565 = ptrtoint ptr %tx_stat_gt1023_hi3228.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %tx_stat_gt1023_hi3228.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_hi3231.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 58
  %567 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3231.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3231.i, align 4
  br i1 %cmp3226.i, label %if.then3227.i, label %if.else3251.i

if.then3227.i:                                    ; preds = %do.end3189.i
  call void @__sanitizer_cov_trace_cmp4(i32 %566, i32 %568)
  %cmp3235.not.i = icmp eq i32 %566, %568
  br i1 %cmp3235.not.i, label %if.then3227.i.do.end3276.i_crit_edge, label %if.then3236.i

if.then3227.i.do.end3276.i_crit_edge:             ; preds = %if.then3227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3276.i

if.then3236.i:                                    ; preds = %if.then3227.i
  call void @__sanitizer_cov_trace_pc() #9
  %569 = xor i32 %568, -1
  %dec3238.i = add i32 %566, %569
  %add3245.i = sub i32 %562, %564
  br label %do.end3276.i

if.else3251.i:                                    ; preds = %do.end3189.i
  call void @__sanitizer_cov_trace_cmp4(i32 %566, i32 %568)
  %cmp3256.i = icmp ult i32 %566, %568
  br i1 %cmp3256.i, label %if.else3251.i.do.end3276.i_crit_edge, label %if.else3260.i

if.else3251.i.do.end3276.i_crit_edge:             ; preds = %if.else3251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3276.i

if.else3260.i:                                    ; preds = %if.else3251.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3265.i = sub i32 %566, %568
  %sub3271.i = sub i32 %562, %564
  br label %do.end3276.i

do.end3276.i:                                     ; preds = %if.else3260.i, %if.else3251.i.do.end3276.i_crit_edge, %if.then3236.i, %if.then3227.i.do.end3276.i_crit_edge
  %diff.sroa.279.38.i = phi i32 [ %dec3238.i, %if.then3236.i ], [ %sub3265.i, %if.else3260.i ], [ 0, %if.then3227.i.do.end3276.i_crit_edge ], [ 0, %if.else3251.i.do.end3276.i_crit_edge ]
  %diff.sroa.0.38.i = phi i32 [ %add3245.i, %if.then3236.i ], [ %sub3271.i, %if.else3260.i ], [ 0, %if.then3227.i.do.end3276.i_crit_edge ], [ 0, %if.else3251.i.do.end3276.i_crit_edge ]
  %570 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3231.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 %566, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3231.i, align 4
  %571 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3225.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %562, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3225.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_lo3289.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 59
  %572 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3289.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3289.i, align 4
  %add3290.i = add i32 %573, %diff.sroa.0.38.i
  store i32 %add3290.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo3289.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3290.i, i32 %diff.sroa.0.38.i)
  %cmp3296.i = icmp ult i32 %add3290.i, %diff.sroa.0.38.i
  %cond3297.i = zext i1 %cmp3296.i to i32
  %tx_stat_etherstatspkts512octetsto1023octets_hi3301.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 58
  %574 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3301.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3301.i, align 4
  %add3298.i = add i32 %575, %diff.sroa.279.38.i
  %add3302.i = add i32 %add3298.i, %cond3297.i
  store i32 %add3302.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi3301.i, align 4
  %tx_stat_gt1518_lo3309.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 30
  %576 = ptrtoint ptr %tx_stat_gt1518_lo3309.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %tx_stat_gt1518_lo3309.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_lo3312.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 61
  %578 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3312.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3312.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %577, i32 %579)
  %cmp3313.i = icmp ult i32 %577, %579
  %tx_stat_gt1518_hi3315.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 31
  %580 = ptrtoint ptr %tx_stat_gt1518_hi3315.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %tx_stat_gt1518_hi3315.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_hi3318.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 60
  %582 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3318.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3318.i, align 4
  br i1 %cmp3313.i, label %if.then3314.i, label %if.else3338.i

if.then3314.i:                                    ; preds = %do.end3276.i
  call void @__sanitizer_cov_trace_cmp4(i32 %581, i32 %583)
  %cmp3322.not.i = icmp eq i32 %581, %583
  br i1 %cmp3322.not.i, label %if.then3314.i.do.end3363.i_crit_edge, label %if.then3323.i

if.then3314.i.do.end3363.i_crit_edge:             ; preds = %if.then3314.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3363.i

if.then3323.i:                                    ; preds = %if.then3314.i
  call void @__sanitizer_cov_trace_pc() #9
  %584 = xor i32 %583, -1
  %dec3325.i = add i32 %581, %584
  %add3332.i = sub i32 %577, %579
  br label %do.end3363.i

if.else3338.i:                                    ; preds = %do.end3276.i
  call void @__sanitizer_cov_trace_cmp4(i32 %581, i32 %583)
  %cmp3343.i = icmp ult i32 %581, %583
  br i1 %cmp3343.i, label %if.else3338.i.do.end3363.i_crit_edge, label %if.else3347.i

if.else3338.i.do.end3363.i_crit_edge:             ; preds = %if.else3338.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3363.i

if.else3347.i:                                    ; preds = %if.else3338.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3352.i = sub i32 %581, %583
  %sub3358.i = sub i32 %577, %579
  br label %do.end3363.i

do.end3363.i:                                     ; preds = %if.else3347.i, %if.else3338.i.do.end3363.i_crit_edge, %if.then3323.i, %if.then3314.i.do.end3363.i_crit_edge
  %diff.sroa.279.39.i = phi i32 [ %dec3325.i, %if.then3323.i ], [ %sub3352.i, %if.else3347.i ], [ 0, %if.then3314.i.do.end3363.i_crit_edge ], [ 0, %if.else3338.i.do.end3363.i_crit_edge ]
  %diff.sroa.0.39.i = phi i32 [ %add3332.i, %if.then3323.i ], [ %sub3358.i, %if.else3347.i ], [ 0, %if.then3314.i.do.end3363.i_crit_edge ], [ 0, %if.else3338.i.do.end3363.i_crit_edge ]
  %585 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3318.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 %581, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3318.i, align 4
  %586 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3312.i to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 %577, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3312.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_lo3376.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 61
  %587 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3376.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3376.i, align 4
  %add3377.i = add i32 %588, %diff.sroa.0.39.i
  store i32 %add3377.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo3376.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3377.i, i32 %diff.sroa.0.39.i)
  %cmp3383.i = icmp ult i32 %add3377.i, %diff.sroa.0.39.i
  %cond3384.i = zext i1 %cmp3383.i to i32
  %tx_stat_etherstatspkts1024octetsto1522octets_hi3388.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 60
  %589 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3388.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3388.i, align 4
  %add3385.i = add i32 %590, %diff.sroa.279.39.i
  %add3389.i = add i32 %add3385.i, %cond3384.i
  store i32 %add3389.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi3388.i, align 4
  %tx_stat_gt2047_lo3396.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 32
  %591 = ptrtoint ptr %tx_stat_gt2047_lo3396.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %tx_stat_gt2047_lo3396.i, align 4
  %tx_stat_mac_2047_lo3399.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 65
  %593 = ptrtoint ptr %tx_stat_mac_2047_lo3399.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %tx_stat_mac_2047_lo3399.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %592, i32 %594)
  %cmp3400.i = icmp ult i32 %592, %594
  %tx_stat_gt2047_hi3402.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 33
  %595 = ptrtoint ptr %tx_stat_gt2047_hi3402.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %tx_stat_gt2047_hi3402.i, align 4
  %tx_stat_mac_2047_hi3405.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 64
  %597 = ptrtoint ptr %tx_stat_mac_2047_hi3405.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %tx_stat_mac_2047_hi3405.i, align 4
  br i1 %cmp3400.i, label %if.then3401.i, label %if.else3425.i

if.then3401.i:                                    ; preds = %do.end3363.i
  call void @__sanitizer_cov_trace_cmp4(i32 %596, i32 %598)
  %cmp3409.not.i = icmp eq i32 %596, %598
  br i1 %cmp3409.not.i, label %if.then3401.i.do.end3450.i_crit_edge, label %if.then3410.i

if.then3401.i.do.end3450.i_crit_edge:             ; preds = %if.then3401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3450.i

if.then3410.i:                                    ; preds = %if.then3401.i
  call void @__sanitizer_cov_trace_pc() #9
  %599 = xor i32 %598, -1
  %dec3412.i = add i32 %596, %599
  %add3419.i = sub i32 %592, %594
  br label %do.end3450.i

if.else3425.i:                                    ; preds = %do.end3363.i
  call void @__sanitizer_cov_trace_cmp4(i32 %596, i32 %598)
  %cmp3430.i = icmp ult i32 %596, %598
  br i1 %cmp3430.i, label %if.else3425.i.do.end3450.i_crit_edge, label %if.else3434.i

if.else3425.i.do.end3450.i_crit_edge:             ; preds = %if.else3425.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3450.i

if.else3434.i:                                    ; preds = %if.else3425.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3439.i = sub i32 %596, %598
  %sub3445.i = sub i32 %592, %594
  br label %do.end3450.i

do.end3450.i:                                     ; preds = %if.else3434.i, %if.else3425.i.do.end3450.i_crit_edge, %if.then3410.i, %if.then3401.i.do.end3450.i_crit_edge
  %diff.sroa.279.40.i = phi i32 [ %dec3412.i, %if.then3410.i ], [ %sub3439.i, %if.else3434.i ], [ 0, %if.then3401.i.do.end3450.i_crit_edge ], [ 0, %if.else3425.i.do.end3450.i_crit_edge ]
  %diff.sroa.0.40.i = phi i32 [ %add3419.i, %if.then3410.i ], [ %sub3445.i, %if.else3434.i ], [ 0, %if.then3401.i.do.end3450.i_crit_edge ], [ 0, %if.else3425.i.do.end3450.i_crit_edge ]
  %600 = ptrtoint ptr %tx_stat_mac_2047_hi3405.i to i32
  call void @__asan_store4_noabort(i32 %600)
  store i32 %596, ptr %tx_stat_mac_2047_hi3405.i, align 4
  %601 = ptrtoint ptr %tx_stat_mac_2047_lo3399.i to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 %592, ptr %tx_stat_mac_2047_lo3399.i, align 4
  %tx_stat_mac_2047_lo3463.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 65
  %602 = ptrtoint ptr %tx_stat_mac_2047_lo3463.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %tx_stat_mac_2047_lo3463.i, align 4
  %add3464.i = add i32 %603, %diff.sroa.0.40.i
  store i32 %add3464.i, ptr %tx_stat_mac_2047_lo3463.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3464.i, i32 %diff.sroa.0.40.i)
  %cmp3470.i = icmp ult i32 %add3464.i, %diff.sroa.0.40.i
  %cond3471.i = zext i1 %cmp3470.i to i32
  %tx_stat_mac_2047_hi3475.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 64
  %604 = ptrtoint ptr %tx_stat_mac_2047_hi3475.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %tx_stat_mac_2047_hi3475.i, align 4
  %add3472.i = add i32 %605, %diff.sroa.279.40.i
  %add3476.i = add i32 %add3472.i, %cond3471.i
  store i32 %add3476.i, ptr %tx_stat_mac_2047_hi3475.i, align 4
  %tx_stat_gt4095_lo3483.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 34
  %606 = ptrtoint ptr %tx_stat_gt4095_lo3483.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %tx_stat_gt4095_lo3483.i, align 4
  %tx_stat_mac_4095_lo3486.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 67
  %608 = ptrtoint ptr %tx_stat_mac_4095_lo3486.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %tx_stat_mac_4095_lo3486.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %607, i32 %609)
  %cmp3487.i = icmp ult i32 %607, %609
  %tx_stat_gt4095_hi3489.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 35
  %610 = ptrtoint ptr %tx_stat_gt4095_hi3489.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %tx_stat_gt4095_hi3489.i, align 4
  %tx_stat_mac_4095_hi3492.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 66
  %612 = ptrtoint ptr %tx_stat_mac_4095_hi3492.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %tx_stat_mac_4095_hi3492.i, align 4
  br i1 %cmp3487.i, label %if.then3488.i, label %if.else3512.i

if.then3488.i:                                    ; preds = %do.end3450.i
  call void @__sanitizer_cov_trace_cmp4(i32 %611, i32 %613)
  %cmp3496.not.i = icmp eq i32 %611, %613
  br i1 %cmp3496.not.i, label %if.then3488.i.do.end3537.i_crit_edge, label %if.then3497.i

if.then3488.i.do.end3537.i_crit_edge:             ; preds = %if.then3488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3537.i

if.then3497.i:                                    ; preds = %if.then3488.i
  call void @__sanitizer_cov_trace_pc() #9
  %614 = xor i32 %613, -1
  %dec3499.i = add i32 %611, %614
  %add3506.i = sub i32 %607, %609
  br label %do.end3537.i

if.else3512.i:                                    ; preds = %do.end3450.i
  call void @__sanitizer_cov_trace_cmp4(i32 %611, i32 %613)
  %cmp3517.i = icmp ult i32 %611, %613
  br i1 %cmp3517.i, label %if.else3512.i.do.end3537.i_crit_edge, label %if.else3521.i

if.else3512.i.do.end3537.i_crit_edge:             ; preds = %if.else3512.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3537.i

if.else3521.i:                                    ; preds = %if.else3512.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3526.i = sub i32 %611, %613
  %sub3532.i = sub i32 %607, %609
  br label %do.end3537.i

do.end3537.i:                                     ; preds = %if.else3521.i, %if.else3512.i.do.end3537.i_crit_edge, %if.then3497.i, %if.then3488.i.do.end3537.i_crit_edge
  %diff.sroa.279.41.i = phi i32 [ %dec3499.i, %if.then3497.i ], [ %sub3526.i, %if.else3521.i ], [ 0, %if.then3488.i.do.end3537.i_crit_edge ], [ 0, %if.else3512.i.do.end3537.i_crit_edge ]
  %diff.sroa.0.41.i = phi i32 [ %add3506.i, %if.then3497.i ], [ %sub3532.i, %if.else3521.i ], [ 0, %if.then3488.i.do.end3537.i_crit_edge ], [ 0, %if.else3512.i.do.end3537.i_crit_edge ]
  %615 = ptrtoint ptr %tx_stat_mac_4095_hi3492.i to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 %611, ptr %tx_stat_mac_4095_hi3492.i, align 4
  %616 = ptrtoint ptr %tx_stat_mac_4095_lo3486.i to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 %607, ptr %tx_stat_mac_4095_lo3486.i, align 4
  %tx_stat_mac_4095_lo3550.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 67
  %617 = ptrtoint ptr %tx_stat_mac_4095_lo3550.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %tx_stat_mac_4095_lo3550.i, align 4
  %add3551.i = add i32 %618, %diff.sroa.0.41.i
  store i32 %add3551.i, ptr %tx_stat_mac_4095_lo3550.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3551.i, i32 %diff.sroa.0.41.i)
  %cmp3557.i = icmp ult i32 %add3551.i, %diff.sroa.0.41.i
  %cond3558.i = zext i1 %cmp3557.i to i32
  %tx_stat_mac_4095_hi3562.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 66
  %619 = ptrtoint ptr %tx_stat_mac_4095_hi3562.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %tx_stat_mac_4095_hi3562.i, align 4
  %add3559.i = add i32 %620, %diff.sroa.279.41.i
  %add3563.i = add i32 %add3559.i, %cond3558.i
  store i32 %add3563.i, ptr %tx_stat_mac_4095_hi3562.i, align 4
  %tx_stat_gt9216_lo3570.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 36
  %621 = ptrtoint ptr %tx_stat_gt9216_lo3570.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %tx_stat_gt9216_lo3570.i, align 4
  %tx_stat_mac_9216_lo3573.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 69
  %623 = ptrtoint ptr %tx_stat_mac_9216_lo3573.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %tx_stat_mac_9216_lo3573.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %622, i32 %624)
  %cmp3574.i = icmp ult i32 %622, %624
  %tx_stat_gt9216_hi3576.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 37
  %625 = ptrtoint ptr %tx_stat_gt9216_hi3576.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %tx_stat_gt9216_hi3576.i, align 4
  %tx_stat_mac_9216_hi3579.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 68
  %627 = ptrtoint ptr %tx_stat_mac_9216_hi3579.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %tx_stat_mac_9216_hi3579.i, align 4
  br i1 %cmp3574.i, label %if.then3575.i, label %if.else3599.i

if.then3575.i:                                    ; preds = %do.end3537.i
  call void @__sanitizer_cov_trace_cmp4(i32 %626, i32 %628)
  %cmp3583.not.i = icmp eq i32 %626, %628
  br i1 %cmp3583.not.i, label %if.then3575.i.do.end3624.i_crit_edge, label %if.then3584.i

if.then3575.i.do.end3624.i_crit_edge:             ; preds = %if.then3575.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3624.i

if.then3584.i:                                    ; preds = %if.then3575.i
  call void @__sanitizer_cov_trace_pc() #9
  %629 = xor i32 %628, -1
  %dec3586.i = add i32 %626, %629
  %add3593.i = sub i32 %622, %624
  br label %do.end3624.i

if.else3599.i:                                    ; preds = %do.end3537.i
  call void @__sanitizer_cov_trace_cmp4(i32 %626, i32 %628)
  %cmp3604.i = icmp ult i32 %626, %628
  br i1 %cmp3604.i, label %if.else3599.i.do.end3624.i_crit_edge, label %if.else3608.i

if.else3599.i.do.end3624.i_crit_edge:             ; preds = %if.else3599.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3624.i

if.else3608.i:                                    ; preds = %if.else3599.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3613.i = sub i32 %626, %628
  %sub3619.i = sub i32 %622, %624
  br label %do.end3624.i

do.end3624.i:                                     ; preds = %if.else3608.i, %if.else3599.i.do.end3624.i_crit_edge, %if.then3584.i, %if.then3575.i.do.end3624.i_crit_edge
  %diff.sroa.279.42.i = phi i32 [ %dec3586.i, %if.then3584.i ], [ %sub3613.i, %if.else3608.i ], [ 0, %if.then3575.i.do.end3624.i_crit_edge ], [ 0, %if.else3599.i.do.end3624.i_crit_edge ]
  %diff.sroa.0.42.i = phi i32 [ %add3593.i, %if.then3584.i ], [ %sub3619.i, %if.else3608.i ], [ 0, %if.then3575.i.do.end3624.i_crit_edge ], [ 0, %if.else3599.i.do.end3624.i_crit_edge ]
  %630 = ptrtoint ptr %tx_stat_mac_9216_hi3579.i to i32
  call void @__asan_store4_noabort(i32 %630)
  store i32 %626, ptr %tx_stat_mac_9216_hi3579.i, align 4
  %631 = ptrtoint ptr %tx_stat_mac_9216_lo3573.i to i32
  call void @__asan_store4_noabort(i32 %631)
  store i32 %622, ptr %tx_stat_mac_9216_lo3573.i, align 4
  %tx_stat_mac_9216_lo3637.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 69
  %632 = ptrtoint ptr %tx_stat_mac_9216_lo3637.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %tx_stat_mac_9216_lo3637.i, align 4
  %add3638.i = add i32 %633, %diff.sroa.0.42.i
  store i32 %add3638.i, ptr %tx_stat_mac_9216_lo3637.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3638.i, i32 %diff.sroa.0.42.i)
  %cmp3644.i = icmp ult i32 %add3638.i, %diff.sroa.0.42.i
  %cond3645.i = zext i1 %cmp3644.i to i32
  %tx_stat_mac_9216_hi3649.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 68
  %634 = ptrtoint ptr %tx_stat_mac_9216_hi3649.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %tx_stat_mac_9216_hi3649.i, align 4
  %add3646.i = add i32 %635, %diff.sroa.279.42.i
  %add3650.i = add i32 %add3646.i, %cond3645.i
  store i32 %add3650.i, ptr %tx_stat_mac_9216_hi3649.i, align 4
  %tx_stat_gt16383_lo3657.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 38
  %636 = ptrtoint ptr %tx_stat_gt16383_lo3657.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %tx_stat_gt16383_lo3657.i, align 4
  %tx_stat_mac_16383_lo3660.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 71
  %638 = ptrtoint ptr %tx_stat_mac_16383_lo3660.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %tx_stat_mac_16383_lo3660.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %637, i32 %639)
  %cmp3661.i = icmp ult i32 %637, %639
  %tx_stat_gt16383_hi3663.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 39
  %640 = ptrtoint ptr %tx_stat_gt16383_hi3663.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %tx_stat_gt16383_hi3663.i, align 4
  %tx_stat_mac_16383_hi3666.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 70
  %642 = ptrtoint ptr %tx_stat_mac_16383_hi3666.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %tx_stat_mac_16383_hi3666.i, align 4
  br i1 %cmp3661.i, label %if.then3662.i, label %if.else3686.i

if.then3662.i:                                    ; preds = %do.end3624.i
  call void @__sanitizer_cov_trace_cmp4(i32 %641, i32 %643)
  %cmp3670.not.i = icmp eq i32 %641, %643
  br i1 %cmp3670.not.i, label %if.then3662.i.do.end3711.i_crit_edge, label %if.then3671.i

if.then3662.i.do.end3711.i_crit_edge:             ; preds = %if.then3662.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3711.i

if.then3671.i:                                    ; preds = %if.then3662.i
  call void @__sanitizer_cov_trace_pc() #9
  %644 = xor i32 %643, -1
  %dec3673.i = add i32 %641, %644
  %add3680.i = sub i32 %637, %639
  br label %do.end3711.i

if.else3686.i:                                    ; preds = %do.end3624.i
  call void @__sanitizer_cov_trace_cmp4(i32 %641, i32 %643)
  %cmp3691.i = icmp ult i32 %641, %643
  br i1 %cmp3691.i, label %if.else3686.i.do.end3711.i_crit_edge, label %if.else3695.i

if.else3686.i.do.end3711.i_crit_edge:             ; preds = %if.else3686.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3711.i

if.else3695.i:                                    ; preds = %if.else3686.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3700.i = sub i32 %641, %643
  %sub3706.i = sub i32 %637, %639
  br label %do.end3711.i

do.end3711.i:                                     ; preds = %if.else3695.i, %if.else3686.i.do.end3711.i_crit_edge, %if.then3671.i, %if.then3662.i.do.end3711.i_crit_edge
  %diff.sroa.279.43.i = phi i32 [ %dec3673.i, %if.then3671.i ], [ %sub3700.i, %if.else3695.i ], [ 0, %if.then3662.i.do.end3711.i_crit_edge ], [ 0, %if.else3686.i.do.end3711.i_crit_edge ]
  %diff.sroa.0.43.i = phi i32 [ %add3680.i, %if.then3671.i ], [ %sub3706.i, %if.else3695.i ], [ 0, %if.then3662.i.do.end3711.i_crit_edge ], [ 0, %if.else3686.i.do.end3711.i_crit_edge ]
  %645 = ptrtoint ptr %tx_stat_mac_16383_hi3666.i to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 %641, ptr %tx_stat_mac_16383_hi3666.i, align 4
  %646 = ptrtoint ptr %tx_stat_mac_16383_lo3660.i to i32
  call void @__asan_store4_noabort(i32 %646)
  store i32 %637, ptr %tx_stat_mac_16383_lo3660.i, align 4
  %tx_stat_mac_16383_lo3724.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 71
  %647 = ptrtoint ptr %tx_stat_mac_16383_lo3724.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %tx_stat_mac_16383_lo3724.i, align 4
  %add3725.i = add i32 %648, %diff.sroa.0.43.i
  store i32 %add3725.i, ptr %tx_stat_mac_16383_lo3724.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3725.i, i32 %diff.sroa.0.43.i)
  %cmp3731.i = icmp ult i32 %add3725.i, %diff.sroa.0.43.i
  %cond3732.i = zext i1 %cmp3731.i to i32
  %tx_stat_mac_16383_hi3736.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 70
  %649 = ptrtoint ptr %tx_stat_mac_16383_hi3736.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %tx_stat_mac_16383_hi3736.i, align 4
  %add3733.i = add i32 %650, %diff.sroa.279.43.i
  %add3737.i = add i32 %add3733.i, %cond3732.i
  store i32 %add3737.i, ptr %tx_stat_mac_16383_hi3736.i, align 4
  %tx_stat_gterr_lo3744.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 44
  %651 = ptrtoint ptr %tx_stat_gterr_lo3744.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %tx_stat_gterr_lo3744.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_lo3747.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 73
  %653 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3747.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3747.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %652, i32 %654)
  %cmp3748.i = icmp ult i32 %652, %654
  %tx_stat_gterr_hi3750.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 45
  %655 = ptrtoint ptr %tx_stat_gterr_hi3750.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %tx_stat_gterr_hi3750.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_hi3753.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 72
  %657 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3753.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3753.i, align 4
  br i1 %cmp3748.i, label %if.then3749.i, label %if.else3773.i

if.then3749.i:                                    ; preds = %do.end3711.i
  call void @__sanitizer_cov_trace_cmp4(i32 %656, i32 %658)
  %cmp3757.not.i = icmp eq i32 %656, %658
  br i1 %cmp3757.not.i, label %if.then3749.i.do.end3798.i_crit_edge, label %if.then3758.i

if.then3749.i.do.end3798.i_crit_edge:             ; preds = %if.then3749.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3798.i

if.then3758.i:                                    ; preds = %if.then3749.i
  call void @__sanitizer_cov_trace_pc() #9
  %659 = xor i32 %658, -1
  %dec3760.i = add i32 %656, %659
  %add3767.i = sub i32 %652, %654
  br label %do.end3798.i

if.else3773.i:                                    ; preds = %do.end3711.i
  call void @__sanitizer_cov_trace_cmp4(i32 %656, i32 %658)
  %cmp3778.i = icmp ult i32 %656, %658
  br i1 %cmp3778.i, label %if.else3773.i.do.end3798.i_crit_edge, label %if.else3782.i

if.else3773.i.do.end3798.i_crit_edge:             ; preds = %if.else3773.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3798.i

if.else3782.i:                                    ; preds = %if.else3773.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3787.i = sub i32 %656, %658
  %sub3793.i = sub i32 %652, %654
  br label %do.end3798.i

do.end3798.i:                                     ; preds = %if.else3782.i, %if.else3773.i.do.end3798.i_crit_edge, %if.then3758.i, %if.then3749.i.do.end3798.i_crit_edge
  %diff.sroa.279.44.i = phi i32 [ %dec3760.i, %if.then3758.i ], [ %sub3787.i, %if.else3782.i ], [ 0, %if.then3749.i.do.end3798.i_crit_edge ], [ 0, %if.else3773.i.do.end3798.i_crit_edge ]
  %diff.sroa.0.44.i = phi i32 [ %add3767.i, %if.then3758.i ], [ %sub3793.i, %if.else3782.i ], [ 0, %if.then3749.i.do.end3798.i_crit_edge ], [ 0, %if.else3773.i.do.end3798.i_crit_edge ]
  %660 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3753.i to i32
  call void @__asan_store4_noabort(i32 %660)
  store i32 %656, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3753.i, align 4
  %661 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3747.i to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 %652, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3747.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_lo3811.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 73
  %662 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3811.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3811.i, align 4
  %add3812.i = add i32 %663, %diff.sroa.0.44.i
  store i32 %add3812.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo3811.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3812.i, i32 %diff.sroa.0.44.i)
  %cmp3818.i = icmp ult i32 %add3812.i, %diff.sroa.0.44.i
  %cond3819.i = zext i1 %cmp3818.i to i32
  %tx_stat_dot3statsinternalmactransmiterrors_hi3823.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 72
  %664 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3823.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3823.i, align 4
  %add3820.i = add i32 %665, %diff.sroa.279.44.i
  %add3824.i = add i32 %add3820.i, %cond3819.i
  store i32 %add3824.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi3823.i, align 4
  %tx_stat_gtufl_lo3831.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 42
  %666 = ptrtoint ptr %tx_stat_gtufl_lo3831.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %tx_stat_gtufl_lo3831.i, align 4
  %tx_stat_mac_ufl_lo3834.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 75
  %668 = ptrtoint ptr %tx_stat_mac_ufl_lo3834.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %tx_stat_mac_ufl_lo3834.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %667, i32 %669)
  %cmp3835.i = icmp ult i32 %667, %669
  %tx_stat_gtufl_hi3837.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 43
  %670 = ptrtoint ptr %tx_stat_gtufl_hi3837.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %tx_stat_gtufl_hi3837.i, align 4
  %tx_stat_mac_ufl_hi3840.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 74
  %672 = ptrtoint ptr %tx_stat_mac_ufl_hi3840.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %tx_stat_mac_ufl_hi3840.i, align 4
  br i1 %cmp3835.i, label %if.then3836.i, label %if.else3860.i

if.then3836.i:                                    ; preds = %do.end3798.i
  call void @__sanitizer_cov_trace_cmp4(i32 %671, i32 %673)
  %cmp3844.not.i = icmp eq i32 %671, %673
  br i1 %cmp3844.not.i, label %if.then3836.i.do.end3885.i_crit_edge, label %if.then3845.i

if.then3836.i.do.end3885.i_crit_edge:             ; preds = %if.then3836.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3885.i

if.then3845.i:                                    ; preds = %if.then3836.i
  call void @__sanitizer_cov_trace_pc() #9
  %674 = xor i32 %673, -1
  %dec3847.i = add i32 %671, %674
  %add3854.i = sub i32 %667, %669
  br label %do.end3885.i

if.else3860.i:                                    ; preds = %do.end3798.i
  call void @__sanitizer_cov_trace_cmp4(i32 %671, i32 %673)
  %cmp3865.i = icmp ult i32 %671, %673
  br i1 %cmp3865.i, label %if.else3860.i.do.end3885.i_crit_edge, label %if.else3869.i

if.else3860.i.do.end3885.i_crit_edge:             ; preds = %if.else3860.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3885.i

if.else3869.i:                                    ; preds = %if.else3860.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3874.i = sub i32 %671, %673
  %sub3880.i = sub i32 %667, %669
  br label %do.end3885.i

do.end3885.i:                                     ; preds = %if.else3869.i, %if.else3860.i.do.end3885.i_crit_edge, %if.then3845.i, %if.then3836.i.do.end3885.i_crit_edge
  %diff.sroa.279.45.i = phi i32 [ %dec3847.i, %if.then3845.i ], [ %sub3874.i, %if.else3869.i ], [ 0, %if.then3836.i.do.end3885.i_crit_edge ], [ 0, %if.else3860.i.do.end3885.i_crit_edge ]
  %diff.sroa.0.45.i = phi i32 [ %add3854.i, %if.then3845.i ], [ %sub3880.i, %if.else3869.i ], [ 0, %if.then3836.i.do.end3885.i_crit_edge ], [ 0, %if.else3860.i.do.end3885.i_crit_edge ]
  %675 = ptrtoint ptr %tx_stat_mac_ufl_hi3840.i to i32
  call void @__asan_store4_noabort(i32 %675)
  store i32 %671, ptr %tx_stat_mac_ufl_hi3840.i, align 4
  %676 = ptrtoint ptr %tx_stat_mac_ufl_lo3834.i to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %667, ptr %tx_stat_mac_ufl_lo3834.i, align 4
  %tx_stat_mac_ufl_lo3898.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 75
  %677 = ptrtoint ptr %tx_stat_mac_ufl_lo3898.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %tx_stat_mac_ufl_lo3898.i, align 4
  %add3899.i = add i32 %678, %diff.sroa.0.45.i
  store i32 %add3899.i, ptr %tx_stat_mac_ufl_lo3898.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3899.i, i32 %diff.sroa.0.45.i)
  %cmp3905.i = icmp ult i32 %add3899.i, %diff.sroa.0.45.i
  %cond3906.i = zext i1 %cmp3905.i to i32
  %tx_stat_mac_ufl_hi3910.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 74
  %679 = ptrtoint ptr %tx_stat_mac_ufl_hi3910.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %tx_stat_mac_ufl_hi3910.i, align 4
  %add3907.i = add i32 %680, %diff.sroa.279.45.i
  %add3911.i = add i32 %add3907.i, %cond3906.i
  store i32 %add3911.i, ptr %tx_stat_mac_ufl_hi3910.i, align 4
  %tx_stat_gtpp_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 5
  %681 = ptrtoint ptr %tx_stat_gtpp_hi.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %tx_stat_gtpp_hi.i, align 4
  %pfc_frames_tx_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 5
  %683 = ptrtoint ptr %pfc_frames_tx_hi.i to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 %682, ptr %pfc_frames_tx_hi.i, align 4
  %tx_stat_gtpp_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 4
  %684 = ptrtoint ptr %tx_stat_gtpp_lo.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %tx_stat_gtpp_lo.i, align 4
  %pfc_frames_tx_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 6
  %686 = ptrtoint ptr %pfc_frames_tx_lo.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store i32 %685, ptr %pfc_frames_tx_lo.i, align 4
  %rx_stat_grpp_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 29
  %687 = ptrtoint ptr %rx_stat_grpp_hi.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %rx_stat_grpp_hi.i, align 4
  %pfc_frames_rx_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 7
  %689 = ptrtoint ptr %pfc_frames_rx_hi.i to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 %688, ptr %pfc_frames_rx_hi.i, align 4
  %rx_stat_grpp_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 28
  %690 = ptrtoint ptr %rx_stat_grpp_lo.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %rx_stat_grpp_lo.i, align 4
  %pfc_frames_rx_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 8
  %692 = ptrtoint ptr %pfc_frames_rx_lo.i to i32
  call void @__asan_store4_noabort(i32 %692)
  store i32 %691, ptr %pfc_frames_rx_lo.i, align 4
  br label %bnx2x_bmac_stats_update.exit

bnx2x_bmac_stats_update.exit:                     ; preds = %do.end3885.i, %do.end1880.i
  %rx_stat_mac_xpf_hi3919.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 22
  %693 = ptrtoint ptr %rx_stat_mac_xpf_hi3919.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %rx_stat_mac_xpf_hi3919.i, align 4
  %pause_frames_received_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 25
  %695 = ptrtoint ptr %pause_frames_received_hi.i to i32
  call void @__asan_store4_noabort(i32 %695)
  store i32 %694, ptr %pause_frames_received_hi.i, align 4
  %rx_stat_mac_xpf_lo3922.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 23
  %696 = ptrtoint ptr %rx_stat_mac_xpf_lo3922.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %rx_stat_mac_xpf_lo3922.i, align 4
  %pause_frames_received_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 26
  %698 = ptrtoint ptr %pause_frames_received_lo.i to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 %697, ptr %pause_frames_received_lo.i, align 4
  %tx_stat_outxoffsent_hi3925.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 34
  %699 = ptrtoint ptr %tx_stat_outxoffsent_hi3925.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %tx_stat_outxoffsent_hi3925.i, align 4
  %pause_frames_sent_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 27
  %701 = ptrtoint ptr %pause_frames_sent_hi.i to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 %700, ptr %pause_frames_sent_hi.i, align 4
  %tx_stat_outxoffsent_lo3928.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 35
  %702 = ptrtoint ptr %tx_stat_outxoffsent_lo3928.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %tx_stat_outxoffsent_lo3928.i, align 4
  %pause_frames_sent_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 28
  %704 = ptrtoint ptr %pause_frames_sent_lo.i to i32
  call void @__asan_store4_noabort(i32 %704)
  store i32 %703, ptr %pause_frames_sent_lo.i, align 4
  %pfc_frames_rx_hi3929.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 7
  %705 = ptrtoint ptr %pfc_frames_rx_hi3929.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %pfc_frames_rx_hi3929.i, align 4
  %pfc_frames_received_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 52
  %707 = ptrtoint ptr %pfc_frames_received_hi.i to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 %706, ptr %pfc_frames_received_hi.i, align 4
  %pfc_frames_rx_lo3930.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 8
  %708 = ptrtoint ptr %pfc_frames_rx_lo3930.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %pfc_frames_rx_lo3930.i, align 4
  %pfc_frames_received_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 53
  %710 = ptrtoint ptr %pfc_frames_received_lo.i to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 %709, ptr %pfc_frames_received_lo.i, align 4
  %pfc_frames_tx_hi3931.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 5
  %711 = ptrtoint ptr %pfc_frames_tx_hi3931.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %pfc_frames_tx_hi3931.i, align 4
  %pfc_frames_sent_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 54
  %713 = ptrtoint ptr %pfc_frames_sent_hi.i to i32
  call void @__asan_store4_noabort(i32 %713)
  store i32 %712, ptr %pfc_frames_sent_hi.i, align 4
  %pfc_frames_tx_lo3932.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 6
  %714 = ptrtoint ptr %pfc_frames_tx_lo3932.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %pfc_frames_tx_lo3932.i, align 4
  %pfc_frames_sent_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 55
  %716 = ptrtoint ptr %pfc_frames_sent_lo.i to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 %715, ptr %pfc_frames_sent_lo.i, align 4
  br label %do.body29

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_stat_ifhcinbadoctets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %717 = ptrtoint ptr %rx_stat_ifhcinbadoctets.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %rx_stat_ifhcinbadoctets.i, align 4
  %arrayidx.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1
  %rx_stat_ifhcinbadoctets_lo.i538 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 1
  %719 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo.i538 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %rx_stat_ifhcinbadoctets_lo.i538, align 4
  %add.i = add i32 %720, %718
  store i32 %add.i, ptr %rx_stat_ifhcinbadoctets_lo.i538, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %718)
  %cmp.i = icmp ult i32 %add.i, %718
  %cond.i539 = zext i1 %cmp.i to i32
  %721 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %arrayidx.i, align 4
  %add9.i = add i32 %722, %cond.i539
  store i32 %add9.i, ptr %arrayidx.i, align 4
  %tx_stat_ifhcoutbadoctets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 25
  %723 = ptrtoint ptr %tx_stat_ifhcoutbadoctets.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %tx_stat_ifhcoutbadoctets.i, align 4
  %tx_stat_ifhcoutbadoctets_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 3
  %725 = ptrtoint ptr %tx_stat_ifhcoutbadoctets_lo.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %tx_stat_ifhcoutbadoctets_lo.i, align 4
  %add16.i = add i32 %726, %724
  store i32 %add16.i, ptr %tx_stat_ifhcoutbadoctets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %724)
  %cmp21.i = icmp ult i32 %add16.i, %724
  %cond22.i = zext i1 %cmp21.i to i32
  %tx_stat_ifhcoutbadoctets_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 2
  %727 = ptrtoint ptr %tx_stat_ifhcoutbadoctets_hi.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %tx_stat_ifhcoutbadoctets_hi.i, align 4
  %add25.i540 = add i32 %728, %cond22.i
  store i32 %add25.i540, ptr %tx_stat_ifhcoutbadoctets_hi.i, align 4
  %rx_stat_dot3statsfcserrors.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 6
  %729 = ptrtoint ptr %rx_stat_dot3statsfcserrors.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %rx_stat_dot3statsfcserrors.i, align 4
  %rx_stat_dot3statsfcserrors_lo.i541 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 5
  %731 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo.i541 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %rx_stat_dot3statsfcserrors_lo.i541, align 4
  %add34.i = add i32 %732, %730
  store i32 %add34.i, ptr %rx_stat_dot3statsfcserrors_lo.i541, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i, i32 %730)
  %cmp39.i = icmp ult i32 %add34.i, %730
  %cond40.i = zext i1 %cmp39.i to i32
  %rx_stat_dot3statsfcserrors_hi.i542 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 4
  %733 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi.i542 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %rx_stat_dot3statsfcserrors_hi.i542, align 4
  %add43.i = add i32 %734, %cond40.i
  store i32 %add43.i, ptr %rx_stat_dot3statsfcserrors_hi.i542, align 4
  %rx_stat_dot3statsalignmenterrors.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 7
  %735 = ptrtoint ptr %rx_stat_dot3statsalignmenterrors.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %rx_stat_dot3statsalignmenterrors.i, align 4
  %rx_stat_dot3statsalignmenterrors_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 7
  %737 = ptrtoint ptr %rx_stat_dot3statsalignmenterrors_lo.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %rx_stat_dot3statsalignmenterrors_lo.i, align 4
  %add52.i = add i32 %738, %736
  store i32 %add52.i, ptr %rx_stat_dot3statsalignmenterrors_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add52.i, i32 %736)
  %cmp57.i = icmp ult i32 %add52.i, %736
  %cond58.i = zext i1 %cmp57.i to i32
  %rx_stat_dot3statsalignmenterrors_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 6
  %739 = ptrtoint ptr %rx_stat_dot3statsalignmenterrors_hi.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %rx_stat_dot3statsalignmenterrors_hi.i, align 4
  %add61.i = add i32 %740, %cond58.i
  store i32 %add61.i, ptr %rx_stat_dot3statsalignmenterrors_hi.i, align 4
  %rx_stat_dot3statscarriersenseerrors.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 8
  %741 = ptrtoint ptr %rx_stat_dot3statscarriersenseerrors.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load i32, ptr %rx_stat_dot3statscarriersenseerrors.i, align 4
  %rx_stat_dot3statscarriersenseerrors_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 9
  %743 = ptrtoint ptr %rx_stat_dot3statscarriersenseerrors_lo.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %rx_stat_dot3statscarriersenseerrors_lo.i, align 4
  %add70.i = add i32 %744, %742
  store i32 %add70.i, ptr %rx_stat_dot3statscarriersenseerrors_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add70.i, i32 %742)
  %cmp75.i = icmp ult i32 %add70.i, %742
  %cond76.i = zext i1 %cmp75.i to i32
  %rx_stat_dot3statscarriersenseerrors_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 8
  %745 = ptrtoint ptr %rx_stat_dot3statscarriersenseerrors_hi.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %rx_stat_dot3statscarriersenseerrors_hi.i, align 4
  %add79.i = add i32 %746, %cond76.i
  store i32 %add79.i, ptr %rx_stat_dot3statscarriersenseerrors_hi.i, align 4
  %rx_stat_falsecarriererrors.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 23
  %747 = ptrtoint ptr %rx_stat_falsecarriererrors.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %rx_stat_falsecarriererrors.i, align 4
  %rx_stat_falsecarriererrors_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 11
  %749 = ptrtoint ptr %rx_stat_falsecarriererrors_lo.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %rx_stat_falsecarriererrors_lo.i, align 4
  %add88.i = add i32 %750, %748
  store i32 %add88.i, ptr %rx_stat_falsecarriererrors_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add88.i, i32 %748)
  %cmp93.i = icmp ult i32 %add88.i, %748
  %cond94.i = zext i1 %cmp93.i to i32
  %rx_stat_falsecarriererrors_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 10
  %751 = ptrtoint ptr %rx_stat_falsecarriererrors_hi.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %rx_stat_falsecarriererrors_hi.i, align 4
  %add97.i = add i32 %752, %cond94.i
  store i32 %add97.i, ptr %rx_stat_falsecarriererrors_hi.i, align 4
  %rx_stat_etherstatsundersizepkts.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 15
  %753 = ptrtoint ptr %rx_stat_etherstatsundersizepkts.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %rx_stat_etherstatsundersizepkts.i, align 4
  %rx_stat_etherstatsundersizepkts_lo.i543 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 13
  %755 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo.i543 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %rx_stat_etherstatsundersizepkts_lo.i543, align 4
  %add106.i = add i32 %756, %754
  store i32 %add106.i, ptr %rx_stat_etherstatsundersizepkts_lo.i543, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add106.i, i32 %754)
  %cmp111.i = icmp ult i32 %add106.i, %754
  %cond112.i = zext i1 %cmp111.i to i32
  %rx_stat_etherstatsundersizepkts_hi.i544 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 12
  %757 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi.i544 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %rx_stat_etherstatsundersizepkts_hi.i544, align 4
  %add115.i = add i32 %758, %cond112.i
  store i32 %add115.i, ptr %rx_stat_etherstatsundersizepkts_hi.i544, align 4
  %rx_stat_dot3statsframestoolong.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 13
  %759 = ptrtoint ptr %rx_stat_dot3statsframestoolong.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %rx_stat_dot3statsframestoolong.i, align 4
  %rx_stat_dot3statsframestoolong_lo.i545 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 15
  %761 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo.i545 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %rx_stat_dot3statsframestoolong_lo.i545, align 4
  %add124.i = add i32 %762, %760
  store i32 %add124.i, ptr %rx_stat_dot3statsframestoolong_lo.i545, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add124.i, i32 %760)
  %cmp129.i = icmp ult i32 %add124.i, %760
  %cond130.i = zext i1 %cmp129.i to i32
  %rx_stat_dot3statsframestoolong_hi.i546 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 14
  %763 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi.i546 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %rx_stat_dot3statsframestoolong_hi.i546, align 4
  %add133.i = add i32 %764, %cond130.i
  store i32 %add133.i, ptr %rx_stat_dot3statsframestoolong_hi.i546, align 4
  %rx_stat_etherstatsfragments.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %765 = ptrtoint ptr %rx_stat_etherstatsfragments.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %rx_stat_etherstatsfragments.i, align 4
  %rx_stat_etherstatsfragments_lo.i547 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 17
  %767 = ptrtoint ptr %rx_stat_etherstatsfragments_lo.i547 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %rx_stat_etherstatsfragments_lo.i547, align 4
  %add142.i = add i32 %768, %766
  store i32 %add142.i, ptr %rx_stat_etherstatsfragments_lo.i547, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add142.i, i32 %766)
  %cmp147.i = icmp ult i32 %add142.i, %766
  %cond148.i = zext i1 %cmp147.i to i32
  %rx_stat_etherstatsfragments_hi.i548 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 16
  %769 = ptrtoint ptr %rx_stat_etherstatsfragments_hi.i548 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %rx_stat_etherstatsfragments_hi.i548, align 4
  %add151.i = add i32 %770, %cond148.i
  store i32 %add151.i, ptr %rx_stat_etherstatsfragments_hi.i548, align 4
  %rx_stat_etherstatsjabbers.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 14
  %771 = ptrtoint ptr %rx_stat_etherstatsjabbers.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %rx_stat_etherstatsjabbers.i, align 4
  %rx_stat_etherstatsjabbers_lo.i549 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 19
  %773 = ptrtoint ptr %rx_stat_etherstatsjabbers_lo.i549 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %rx_stat_etherstatsjabbers_lo.i549, align 4
  %add160.i = add i32 %774, %772
  store i32 %add160.i, ptr %rx_stat_etherstatsjabbers_lo.i549, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add160.i, i32 %772)
  %cmp165.i = icmp ult i32 %add160.i, %772
  %cond166.i = zext i1 %cmp165.i to i32
  %rx_stat_etherstatsjabbers_hi.i550 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 18
  %775 = ptrtoint ptr %rx_stat_etherstatsjabbers_hi.i550 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %rx_stat_etherstatsjabbers_hi.i550, align 4
  %add169.i = add i32 %776, %cond166.i
  store i32 %add169.i, ptr %rx_stat_etherstatsjabbers_hi.i550, align 4
  %rx_stat_maccontrolframesreceived.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 11
  %777 = ptrtoint ptr %rx_stat_maccontrolframesreceived.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %rx_stat_maccontrolframesreceived.i, align 4
  %rx_stat_maccontrolframesreceived_lo.i551 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 21
  %779 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo.i551 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %rx_stat_maccontrolframesreceived_lo.i551, align 4
  %add178.i = add i32 %780, %778
  store i32 %add178.i, ptr %rx_stat_maccontrolframesreceived_lo.i551, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add178.i, i32 %778)
  %cmp183.i = icmp ult i32 %add178.i, %778
  %cond184.i = zext i1 %cmp183.i to i32
  %rx_stat_maccontrolframesreceived_hi.i552 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 20
  %781 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi.i552 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %rx_stat_maccontrolframesreceived_hi.i552, align 4
  %add187.i = add i32 %782, %cond184.i
  store i32 %add187.i, ptr %rx_stat_maccontrolframesreceived_hi.i552, align 4
  %rx_stat_xoffstateentered.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 12
  %783 = ptrtoint ptr %rx_stat_xoffstateentered.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %rx_stat_xoffstateentered.i, align 4
  %rx_stat_xoffstateentered_lo.i553 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 27
  %785 = ptrtoint ptr %rx_stat_xoffstateentered_lo.i553 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %rx_stat_xoffstateentered_lo.i553, align 4
  %add196.i = add i32 %786, %784
  store i32 %add196.i, ptr %rx_stat_xoffstateentered_lo.i553, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add196.i, i32 %784)
  %cmp201.i = icmp ult i32 %add196.i, %784
  %cond202.i = zext i1 %cmp201.i to i32
  %rx_stat_xoffstateentered_hi.i554 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 26
  %787 = ptrtoint ptr %rx_stat_xoffstateentered_hi.i554 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %rx_stat_xoffstateentered_hi.i554, align 4
  %add205.i = add i32 %788, %cond202.i
  store i32 %add205.i, ptr %rx_stat_xoffstateentered_hi.i554, align 4
  %rx_stat_xonpauseframesreceived.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 9
  %789 = ptrtoint ptr %rx_stat_xonpauseframesreceived.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %rx_stat_xonpauseframesreceived.i, align 4
  %rx_stat_xonpauseframesreceived_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 29
  %791 = ptrtoint ptr %rx_stat_xonpauseframesreceived_lo.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %rx_stat_xonpauseframesreceived_lo.i, align 4
  %add214.i = add i32 %792, %790
  store i32 %add214.i, ptr %rx_stat_xonpauseframesreceived_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add214.i, i32 %790)
  %cmp219.i = icmp ult i32 %add214.i, %790
  %cond220.i = zext i1 %cmp219.i to i32
  %rx_stat_xonpauseframesreceived_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 28
  %793 = ptrtoint ptr %rx_stat_xonpauseframesreceived_hi.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %rx_stat_xonpauseframesreceived_hi.i, align 4
  %add223.i = add i32 %794, %cond220.i
  store i32 %add223.i, ptr %rx_stat_xonpauseframesreceived_hi.i, align 4
  %rx_stat_xoffpauseframesreceived.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 10
  %795 = ptrtoint ptr %rx_stat_xoffpauseframesreceived.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %rx_stat_xoffpauseframesreceived.i, align 4
  %rx_stat_xoffpauseframesreceived_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 31
  %797 = ptrtoint ptr %rx_stat_xoffpauseframesreceived_lo.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %rx_stat_xoffpauseframesreceived_lo.i, align 4
  %add232.i = add i32 %798, %796
  store i32 %add232.i, ptr %rx_stat_xoffpauseframesreceived_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add232.i, i32 %796)
  %cmp237.i = icmp ult i32 %add232.i, %796
  %cond238.i = zext i1 %cmp237.i to i32
  %rx_stat_xoffpauseframesreceived_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 30
  %799 = ptrtoint ptr %rx_stat_xoffpauseframesreceived_hi.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %rx_stat_xoffpauseframesreceived_hi.i, align 4
  %add241.i = add i32 %800, %cond238.i
  store i32 %add241.i, ptr %rx_stat_xoffpauseframesreceived_hi.i, align 4
  %tx_stat_outxonsent.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 27
  %801 = ptrtoint ptr %tx_stat_outxonsent.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load i32, ptr %tx_stat_outxonsent.i, align 4
  %tx_stat_outxonsent_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 33
  %803 = ptrtoint ptr %tx_stat_outxonsent_lo.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %tx_stat_outxonsent_lo.i, align 4
  %add250.i = add i32 %804, %802
  store i32 %add250.i, ptr %tx_stat_outxonsent_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add250.i, i32 %802)
  %cmp255.i = icmp ult i32 %add250.i, %802
  %cond256.i = zext i1 %cmp255.i to i32
  %tx_stat_outxonsent_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 32
  %805 = ptrtoint ptr %tx_stat_outxonsent_hi.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load i32, ptr %tx_stat_outxonsent_hi.i, align 4
  %add259.i = add i32 %806, %cond256.i
  store i32 %add259.i, ptr %tx_stat_outxonsent_hi.i, align 4
  %tx_stat_outxoffsent.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 28
  %807 = ptrtoint ptr %tx_stat_outxoffsent.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %tx_stat_outxoffsent.i, align 4
  %tx_stat_outxoffsent_lo.i555 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 35
  %809 = ptrtoint ptr %tx_stat_outxoffsent_lo.i555 to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load i32, ptr %tx_stat_outxoffsent_lo.i555, align 4
  %add268.i556 = add i32 %810, %808
  store i32 %add268.i556, ptr %tx_stat_outxoffsent_lo.i555, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add268.i556, i32 %808)
  %cmp273.i = icmp ult i32 %add268.i556, %808
  %cond274.i = zext i1 %cmp273.i to i32
  %tx_stat_outxoffsent_hi.i557 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 34
  %811 = ptrtoint ptr %tx_stat_outxoffsent_hi.i557 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %tx_stat_outxoffsent_hi.i557, align 4
  %add277.i = add i32 %812, %cond274.i
  store i32 %add277.i, ptr %tx_stat_outxoffsent_hi.i557, align 4
  %tx_stat_flowcontroldone.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 29
  %813 = ptrtoint ptr %tx_stat_flowcontroldone.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %tx_stat_flowcontroldone.i, align 4
  %tx_stat_flowcontroldone_lo.i558 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 37
  %815 = ptrtoint ptr %tx_stat_flowcontroldone_lo.i558 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %tx_stat_flowcontroldone_lo.i558, align 4
  %add286.i = add i32 %816, %814
  store i32 %add286.i, ptr %tx_stat_flowcontroldone_lo.i558, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add286.i, i32 %814)
  %cmp291.i = icmp ult i32 %add286.i, %814
  %cond292.i = zext i1 %cmp291.i to i32
  %tx_stat_flowcontroldone_hi.i559 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 36
  %817 = ptrtoint ptr %tx_stat_flowcontroldone_hi.i559 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %tx_stat_flowcontroldone_hi.i559, align 4
  %add295.i = add i32 %818, %cond292.i
  store i32 %add295.i, ptr %tx_stat_flowcontroldone_hi.i559, align 4
  %tx_stat_etherstatscollisions.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 26
  %819 = ptrtoint ptr %tx_stat_etherstatscollisions.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %tx_stat_etherstatscollisions.i, align 4
  %tx_stat_etherstatscollisions_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 39
  %821 = ptrtoint ptr %tx_stat_etherstatscollisions_lo.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %tx_stat_etherstatscollisions_lo.i, align 4
  %add304.i = add i32 %822, %820
  store i32 %add304.i, ptr %tx_stat_etherstatscollisions_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add304.i, i32 %820)
  %cmp309.i = icmp ult i32 %add304.i, %820
  %cond310.i = zext i1 %cmp309.i to i32
  %tx_stat_etherstatscollisions_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 38
  %823 = ptrtoint ptr %tx_stat_etherstatscollisions_hi.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %tx_stat_etherstatscollisions_hi.i, align 4
  %add313.i560 = add i32 %824, %cond310.i
  store i32 %add313.i560, ptr %tx_stat_etherstatscollisions_hi.i, align 4
  %tx_stat_dot3statssinglecollisionframes.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 30
  %825 = ptrtoint ptr %tx_stat_dot3statssinglecollisionframes.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load i32, ptr %tx_stat_dot3statssinglecollisionframes.i, align 4
  %tx_stat_dot3statssinglecollisionframes_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 41
  %827 = ptrtoint ptr %tx_stat_dot3statssinglecollisionframes_lo.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %tx_stat_dot3statssinglecollisionframes_lo.i, align 4
  %add322.i = add i32 %828, %826
  store i32 %add322.i, ptr %tx_stat_dot3statssinglecollisionframes_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add322.i, i32 %826)
  %cmp327.i = icmp ult i32 %add322.i, %826
  %cond328.i = zext i1 %cmp327.i to i32
  %tx_stat_dot3statssinglecollisionframes_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 40
  %829 = ptrtoint ptr %tx_stat_dot3statssinglecollisionframes_hi.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %tx_stat_dot3statssinglecollisionframes_hi.i, align 4
  %add331.i = add i32 %830, %cond328.i
  store i32 %add331.i, ptr %tx_stat_dot3statssinglecollisionframes_hi.i, align 4
  %tx_stat_dot3statsmultiplecollisionframes.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 31
  %831 = ptrtoint ptr %tx_stat_dot3statsmultiplecollisionframes.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %tx_stat_dot3statsmultiplecollisionframes.i, align 4
  %tx_stat_dot3statsmultiplecollisionframes_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 43
  %833 = ptrtoint ptr %tx_stat_dot3statsmultiplecollisionframes_lo.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load i32, ptr %tx_stat_dot3statsmultiplecollisionframes_lo.i, align 4
  %add340.i = add i32 %834, %832
  store i32 %add340.i, ptr %tx_stat_dot3statsmultiplecollisionframes_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add340.i, i32 %832)
  %cmp345.i = icmp ult i32 %add340.i, %832
  %cond346.i = zext i1 %cmp345.i to i32
  %tx_stat_dot3statsmultiplecollisionframes_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 42
  %835 = ptrtoint ptr %tx_stat_dot3statsmultiplecollisionframes_hi.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %tx_stat_dot3statsmultiplecollisionframes_hi.i, align 4
  %add349.i = add i32 %836, %cond346.i
  store i32 %add349.i, ptr %tx_stat_dot3statsmultiplecollisionframes_hi.i, align 4
  %tx_stat_dot3statsdeferredtransmissions.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 32
  %837 = ptrtoint ptr %tx_stat_dot3statsdeferredtransmissions.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %tx_stat_dot3statsdeferredtransmissions.i, align 4
  %tx_stat_dot3statsdeferredtransmissions_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 45
  %839 = ptrtoint ptr %tx_stat_dot3statsdeferredtransmissions_lo.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %tx_stat_dot3statsdeferredtransmissions_lo.i, align 4
  %add358.i = add i32 %840, %838
  store i32 %add358.i, ptr %tx_stat_dot3statsdeferredtransmissions_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add358.i, i32 %838)
  %cmp363.i = icmp ult i32 %add358.i, %838
  %cond364.i = zext i1 %cmp363.i to i32
  %tx_stat_dot3statsdeferredtransmissions_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 44
  %841 = ptrtoint ptr %tx_stat_dot3statsdeferredtransmissions_hi.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %tx_stat_dot3statsdeferredtransmissions_hi.i, align 4
  %add367.i = add i32 %842, %cond364.i
  store i32 %add367.i, ptr %tx_stat_dot3statsdeferredtransmissions_hi.i, align 4
  %tx_stat_dot3statsexcessivecollisions.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 33
  %843 = ptrtoint ptr %tx_stat_dot3statsexcessivecollisions.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %tx_stat_dot3statsexcessivecollisions.i, align 4
  %tx_stat_dot3statsexcessivecollisions_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 47
  %845 = ptrtoint ptr %tx_stat_dot3statsexcessivecollisions_lo.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %tx_stat_dot3statsexcessivecollisions_lo.i, align 4
  %add376.i = add i32 %846, %844
  store i32 %add376.i, ptr %tx_stat_dot3statsexcessivecollisions_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add376.i, i32 %844)
  %cmp381.i = icmp ult i32 %add376.i, %844
  %cond382.i = zext i1 %cmp381.i to i32
  %tx_stat_dot3statsexcessivecollisions_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 46
  %847 = ptrtoint ptr %tx_stat_dot3statsexcessivecollisions_hi.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %tx_stat_dot3statsexcessivecollisions_hi.i, align 4
  %add385.i = add i32 %848, %cond382.i
  store i32 %add385.i, ptr %tx_stat_dot3statsexcessivecollisions_hi.i, align 4
  %tx_stat_dot3statslatecollisions.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 34
  %849 = ptrtoint ptr %tx_stat_dot3statslatecollisions.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %tx_stat_dot3statslatecollisions.i, align 4
  %tx_stat_dot3statslatecollisions_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 49
  %851 = ptrtoint ptr %tx_stat_dot3statslatecollisions_lo.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %tx_stat_dot3statslatecollisions_lo.i, align 4
  %add394.i = add i32 %852, %850
  store i32 %add394.i, ptr %tx_stat_dot3statslatecollisions_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add394.i, i32 %850)
  %cmp399.i = icmp ult i32 %add394.i, %850
  %cond400.i = zext i1 %cmp399.i to i32
  %tx_stat_dot3statslatecollisions_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 48
  %853 = ptrtoint ptr %tx_stat_dot3statslatecollisions_hi.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load i32, ptr %tx_stat_dot3statslatecollisions_hi.i, align 4
  %add403.i = add i32 %854, %cond400.i
  store i32 %add403.i, ptr %tx_stat_dot3statslatecollisions_hi.i, align 4
  %tx_stat_etherstatspkts64octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 38
  %855 = ptrtoint ptr %tx_stat_etherstatspkts64octets.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load i32, ptr %tx_stat_etherstatspkts64octets.i, align 4
  %tx_stat_etherstatspkts64octets_lo.i561 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 51
  %857 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo.i561 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %tx_stat_etherstatspkts64octets_lo.i561, align 4
  %add412.i = add i32 %858, %856
  store i32 %add412.i, ptr %tx_stat_etherstatspkts64octets_lo.i561, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add412.i, i32 %856)
  %cmp417.i562 = icmp ult i32 %add412.i, %856
  %cond418.i = zext i1 %cmp417.i562 to i32
  %tx_stat_etherstatspkts64octets_hi.i563 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 50
  %859 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi.i563 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %tx_stat_etherstatspkts64octets_hi.i563, align 4
  %add421.i = add i32 %860, %cond418.i
  store i32 %add421.i, ptr %tx_stat_etherstatspkts64octets_hi.i563, align 4
  %tx_stat_etherstatspkts65octetsto127octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 39
  %861 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_lo.i564 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 53
  %863 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i564 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i564, align 4
  %add430.i = add i32 %864, %862
  store i32 %add430.i, ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i564, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add430.i, i32 %862)
  %cmp435.i = icmp ult i32 %add430.i, %862
  %cond436.i = zext i1 %cmp435.i to i32
  %tx_stat_etherstatspkts65octetsto127octets_hi.i565 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 52
  %865 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i565 to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i565, align 4
  %add439.i = add i32 %866, %cond436.i
  store i32 %add439.i, ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i565, align 4
  %tx_stat_etherstatspkts128octetsto255octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 40
  %867 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_lo.i566 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 55
  %869 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i566 to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i566, align 4
  %add448.i = add i32 %870, %868
  store i32 %add448.i, ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i566, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add448.i, i32 %868)
  %cmp453.i = icmp ult i32 %add448.i, %868
  %cond454.i = zext i1 %cmp453.i to i32
  %tx_stat_etherstatspkts128octetsto255octets_hi.i567 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 54
  %871 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i567 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i567, align 4
  %add457.i = add i32 %872, %cond454.i
  store i32 %add457.i, ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i567, align 4
  %tx_stat_etherstatspkts256octetsto511octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 41
  %873 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_lo.i568 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 57
  %875 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i568 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i568, align 4
  %add466.i = add i32 %876, %874
  store i32 %add466.i, ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i568, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add466.i, i32 %874)
  %cmp471.i = icmp ult i32 %add466.i, %874
  %cond472.i = zext i1 %cmp471.i to i32
  %tx_stat_etherstatspkts256octetsto511octets_hi.i569 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 56
  %877 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i569 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i569, align 4
  %add475.i = add i32 %878, %cond472.i
  store i32 %add475.i, ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i569, align 4
  %tx_stat_etherstatspkts512octetsto1023octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 42
  %879 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_lo.i570 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 59
  %881 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i570 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i570, align 4
  %add484.i = add i32 %882, %880
  store i32 %add484.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i570, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add484.i, i32 %880)
  %cmp489.i = icmp ult i32 %add484.i, %880
  %cond490.i = zext i1 %cmp489.i to i32
  %tx_stat_etherstatspkts512octetsto1023octets_hi.i571 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 58
  %883 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i571 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i571, align 4
  %add493.i = add i32 %884, %cond490.i
  store i32 %add493.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i571, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 43
  %885 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_lo.i572 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 61
  %887 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i572 to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i572, align 4
  %add502.i = add i32 %888, %886
  store i32 %add502.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i572, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add502.i, i32 %886)
  %cmp507.i = icmp ult i32 %add502.i, %886
  %cond508.i = zext i1 %cmp507.i to i32
  %tx_stat_etherstatspkts1024octetsto1522octets_hi.i573 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 60
  %889 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i573 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i573, align 4
  %add511.i = add i32 %890, %cond508.i
  store i32 %add511.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i573, align 4
  %tx_stat_etherstatspktsover1522octets.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 44
  %891 = ptrtoint ptr %tx_stat_etherstatspktsover1522octets.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load i32, ptr %tx_stat_etherstatspktsover1522octets.i, align 4
  %tx_stat_etherstatspktsover1522octets_lo.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 63
  %893 = ptrtoint ptr %tx_stat_etherstatspktsover1522octets_lo.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load i32, ptr %tx_stat_etherstatspktsover1522octets_lo.i, align 4
  %add520.i = add i32 %894, %892
  store i32 %add520.i, ptr %tx_stat_etherstatspktsover1522octets_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add520.i, i32 %892)
  %cmp525.i = icmp ult i32 %add520.i, %892
  %cond526.i = zext i1 %cmp525.i to i32
  %tx_stat_etherstatspktsover1522octets_hi.i = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 62
  %895 = ptrtoint ptr %tx_stat_etherstatspktsover1522octets_hi.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load i32, ptr %tx_stat_etherstatspktsover1522octets_hi.i, align 4
  %add529.i = add i32 %896, %cond526.i
  store i32 %add529.i, ptr %tx_stat_etherstatspktsover1522octets_hi.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 45
  %897 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_lo.i574 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 73
  %899 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i574 to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i574, align 4
  %add538.i = add i32 %900, %898
  store i32 %add538.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i574, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add538.i, i32 %898)
  %cmp543.i = icmp ult i32 %add538.i, %898
  %cond544.i = zext i1 %cmp543.i to i32
  %tx_stat_dot3statsinternalmactransmiterrors_hi.i575 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 72
  %901 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i575 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i575, align 4
  %add547.i = add i32 %902, %cond544.i
  store i32 %add547.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i575, align 4
  %pause_frames_received_hi.i576 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 25
  %903 = ptrtoint ptr %pause_frames_received_hi.i576 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 %add223.i, ptr %pause_frames_received_hi.i576, align 4
  %904 = ptrtoint ptr %rx_stat_xonpauseframesreceived_lo.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load i32, ptr %rx_stat_xonpauseframesreceived_lo.i, align 4
  %pause_frames_received_lo.i577 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 26
  %906 = ptrtoint ptr %pause_frames_received_lo.i577 to i32
  call void @__asan_store4_noabort(i32 %906)
  store i32 %905, ptr %pause_frames_received_lo.i577, align 4
  %907 = ptrtoint ptr %rx_stat_xoffpauseframesreceived_lo.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load i32, ptr %rx_stat_xoffpauseframesreceived_lo.i, align 4
  %add563.i = add i32 %908, %905
  store i32 %add563.i, ptr %pause_frames_received_lo.i577, align 4
  %909 = ptrtoint ptr %rx_stat_xoffpauseframesreceived_hi.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load i32, ptr %rx_stat_xoffpauseframesreceived_hi.i, align 4
  %911 = load i32, ptr %rx_stat_xoffpauseframesreceived_lo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add563.i, i32 %911)
  %cmp571.i = icmp ult i32 %add563.i, %911
  %cond572.i = zext i1 %cmp571.i to i32
  %add573.i = add i32 %910, %add223.i
  %add575.i = add i32 %add573.i, %cond572.i
  %912 = ptrtoint ptr %pause_frames_received_hi.i576 to i32
  call void @__asan_store4_noabort(i32 %912)
  store i32 %add575.i, ptr %pause_frames_received_hi.i576, align 4
  %913 = ptrtoint ptr %tx_stat_outxonsent_hi.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load i32, ptr %tx_stat_outxonsent_hi.i, align 4
  %pause_frames_sent_hi.i578 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 27
  %915 = ptrtoint ptr %pause_frames_sent_hi.i578 to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 %914, ptr %pause_frames_sent_hi.i578, align 4
  %916 = ptrtoint ptr %tx_stat_outxonsent_lo.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load i32, ptr %tx_stat_outxonsent_lo.i, align 4
  %pause_frames_sent_lo.i579 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 28
  %918 = ptrtoint ptr %pause_frames_sent_lo.i579 to i32
  call void @__asan_store4_noabort(i32 %918)
  store i32 %917, ptr %pause_frames_sent_lo.i579, align 4
  %919 = ptrtoint ptr %tx_stat_outxoffsent_lo.i555 to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load i32, ptr %tx_stat_outxoffsent_lo.i555, align 4
  %add589.i = add i32 %920, %917
  store i32 %add589.i, ptr %pause_frames_sent_lo.i579, align 4
  %921 = ptrtoint ptr %tx_stat_outxoffsent_hi.i557 to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load i32, ptr %tx_stat_outxoffsent_hi.i557, align 4
  %923 = load i32, ptr %tx_stat_outxoffsent_lo.i555, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add589.i, i32 %923)
  %cmp597.i = icmp ult i32 %add589.i, %923
  %cond598.i = zext i1 %cmp597.i to i32
  %add599.i = add i32 %922, %914
  %add601.i = add i32 %add599.i, %cond598.i
  %924 = ptrtoint ptr %pause_frames_sent_hi.i578 to i32
  call void @__asan_store4_noabort(i32 %924)
  store i32 %add601.i, ptr %pause_frames_sent_hi.i578, align 4
  br label %do.body29

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge663
  %rx_grerb_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 50
  %925 = ptrtoint ptr %rx_grerb_lo.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %rx_grerb_lo.i, align 4
  %arrayidx.i581 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1
  %rx_stat_ifhcinbadoctets_lo.i582 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 1
  %927 = ptrtoint ptr %rx_stat_ifhcinbadoctets_lo.i582 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load i32, ptr %rx_stat_ifhcinbadoctets_lo.i582, align 4
  %add.i583 = add i32 %928, %926
  store i32 %add.i583, ptr %rx_stat_ifhcinbadoctets_lo.i582, align 4
  %rx_grerb_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 51
  %929 = ptrtoint ptr %rx_grerb_hi.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load i32, ptr %rx_grerb_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i583, i32 %926)
  %cmp.i584 = icmp ult i32 %add.i583, %926
  %cond.i585 = zext i1 %cmp.i584 to i32
  %add9.i586 = add i32 %930, %cond.i585
  %931 = ptrtoint ptr %arrayidx.i581 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load i32, ptr %arrayidx.i581, align 4
  %add12.i = add i32 %add9.i586, %932
  store i32 %add12.i, ptr %arrayidx.i581, align 4
  %rx_grfcs_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 22
  %933 = ptrtoint ptr %rx_grfcs_lo.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %rx_grfcs_lo.i, align 4
  %rx_stat_dot3statsfcserrors_lo.i587 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 5
  %935 = ptrtoint ptr %rx_stat_dot3statsfcserrors_lo.i587 to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load i32, ptr %rx_stat_dot3statsfcserrors_lo.i587, align 4
  %add20.i = add i32 %936, %934
  store i32 %add20.i, ptr %rx_stat_dot3statsfcserrors_lo.i587, align 4
  %rx_grfcs_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 23
  %937 = ptrtoint ptr %rx_grfcs_hi.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load i32, ptr %rx_grfcs_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %934)
  %cmp27.i = icmp ult i32 %add20.i, %934
  %cond28.i = zext i1 %cmp27.i to i32
  %add29.i = add i32 %938, %cond28.i
  %rx_stat_dot3statsfcserrors_hi.i588 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 4
  %939 = ptrtoint ptr %rx_stat_dot3statsfcserrors_hi.i588 to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %rx_stat_dot3statsfcserrors_hi.i588, align 4
  %add32.i = add i32 %add29.i, %940
  store i32 %add32.i, ptr %rx_stat_dot3statsfcserrors_hi.i588, align 4
  %rx_grund_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 46
  %941 = ptrtoint ptr %rx_grund_lo.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %rx_grund_lo.i, align 4
  %rx_stat_etherstatsundersizepkts_lo.i589 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 13
  %943 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_lo.i589 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load i32, ptr %rx_stat_etherstatsundersizepkts_lo.i589, align 4
  %add42.i = add i32 %944, %942
  store i32 %add42.i, ptr %rx_stat_etherstatsundersizepkts_lo.i589, align 4
  %rx_grund_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 47
  %945 = ptrtoint ptr %rx_grund_hi.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load i32, ptr %rx_grund_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.i, i32 %942)
  %cmp49.i = icmp ult i32 %add42.i, %942
  %cond50.i = zext i1 %cmp49.i to i32
  %add51.i = add i32 %946, %cond50.i
  %rx_stat_etherstatsundersizepkts_hi.i590 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 12
  %947 = ptrtoint ptr %rx_stat_etherstatsundersizepkts_hi.i590 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load i32, ptr %rx_stat_etherstatsundersizepkts_hi.i590, align 4
  %add54.i = add i32 %add51.i, %948
  store i32 %add54.i, ptr %rx_stat_etherstatsundersizepkts_hi.i590, align 4
  %rx_grovr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 36
  %949 = ptrtoint ptr %rx_grovr_lo.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load i32, ptr %rx_grovr_lo.i, align 4
  %rx_stat_dot3statsframestoolong_lo.i591 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 15
  %951 = ptrtoint ptr %rx_stat_dot3statsframestoolong_lo.i591 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load i32, ptr %rx_stat_dot3statsframestoolong_lo.i591, align 4
  %add64.i = add i32 %952, %950
  store i32 %add64.i, ptr %rx_stat_dot3statsframestoolong_lo.i591, align 4
  %rx_grovr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 37
  %953 = ptrtoint ptr %rx_grovr_hi.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load i32, ptr %rx_grovr_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add64.i, i32 %950)
  %cmp71.i592 = icmp ult i32 %add64.i, %950
  %cond72.i = zext i1 %cmp71.i592 to i32
  %add73.i = add i32 %954, %cond72.i
  %rx_stat_dot3statsframestoolong_hi.i593 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 14
  %955 = ptrtoint ptr %rx_stat_dot3statsframestoolong_hi.i593 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load i32, ptr %rx_stat_dot3statsframestoolong_hi.i593, align 4
  %add76.i594 = add i32 %add73.i, %956
  store i32 %add76.i594, ptr %rx_stat_dot3statsframestoolong_hi.i593, align 4
  %rx_grfrg_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 48
  %957 = ptrtoint ptr %rx_grfrg_lo.i to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load i32, ptr %rx_grfrg_lo.i, align 4
  %rx_stat_etherstatsfragments_lo.i595 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 17
  %959 = ptrtoint ptr %rx_stat_etherstatsfragments_lo.i595 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load i32, ptr %rx_stat_etherstatsfragments_lo.i595, align 4
  %add86.i = add i32 %960, %958
  store i32 %add86.i, ptr %rx_stat_etherstatsfragments_lo.i595, align 4
  %rx_grfrg_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 49
  %961 = ptrtoint ptr %rx_grfrg_hi.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %rx_grfrg_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add86.i, i32 %958)
  %cmp93.i596 = icmp ult i32 %add86.i, %958
  %cond94.i597 = zext i1 %cmp93.i596 to i32
  %add95.i = add i32 %962, %cond94.i597
  %rx_stat_etherstatsfragments_hi.i598 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 16
  %963 = ptrtoint ptr %rx_stat_etherstatsfragments_hi.i598 to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load i32, ptr %rx_stat_etherstatsfragments_hi.i598, align 4
  %add98.i = add i32 %add95.i, %964
  store i32 %add98.i, ptr %rx_stat_etherstatsfragments_hi.i598, align 4
  %rx_grxcf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 38
  %965 = ptrtoint ptr %rx_grxcf_lo.i to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load i32, ptr %rx_grxcf_lo.i, align 4
  %rx_stat_maccontrolframesreceived_lo.i599 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 21
  %967 = ptrtoint ptr %rx_stat_maccontrolframesreceived_lo.i599 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load i32, ptr %rx_stat_maccontrolframesreceived_lo.i599, align 4
  %add108.i = add i32 %968, %966
  store i32 %add108.i, ptr %rx_stat_maccontrolframesreceived_lo.i599, align 4
  %rx_grxcf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 39
  %969 = ptrtoint ptr %rx_grxcf_hi.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %rx_grxcf_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add108.i, i32 %966)
  %cmp115.i = icmp ult i32 %add108.i, %966
  %cond116.i = zext i1 %cmp115.i to i32
  %add117.i = add i32 %970, %cond116.i
  %rx_stat_maccontrolframesreceived_hi.i600 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 20
  %971 = ptrtoint ptr %rx_stat_maccontrolframesreceived_hi.i600 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load i32, ptr %rx_stat_maccontrolframesreceived_hi.i600, align 4
  %add120.i = add i32 %add117.i, %972
  store i32 %add120.i, ptr %rx_stat_maccontrolframesreceived_hi.i600, align 4
  %rx_grxpf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 30
  %973 = ptrtoint ptr %rx_grxpf_lo.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load i32, ptr %rx_grxpf_lo.i, align 4
  %rx_stat_xoffstateentered_lo.i601 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 27
  %975 = ptrtoint ptr %rx_stat_xoffstateentered_lo.i601 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load i32, ptr %rx_stat_xoffstateentered_lo.i601, align 4
  %add130.i = add i32 %976, %974
  store i32 %add130.i, ptr %rx_stat_xoffstateentered_lo.i601, align 4
  %rx_grxpf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 31
  %977 = ptrtoint ptr %rx_grxpf_hi.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load i32, ptr %rx_grxpf_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add130.i, i32 %974)
  %cmp137.i = icmp ult i32 %add130.i, %974
  %cond138.i = zext i1 %cmp137.i to i32
  %add139.i = add i32 %978, %cond138.i
  %rx_stat_xoffstateentered_hi.i602 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 26
  %979 = ptrtoint ptr %rx_stat_xoffstateentered_hi.i602 to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load i32, ptr %rx_stat_xoffstateentered_hi.i602, align 4
  %add142.i603 = add i32 %add139.i, %980
  store i32 %add142.i603, ptr %rx_stat_xoffstateentered_hi.i602, align 4
  %rx_stat_mac_xpf_lo.i604 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 23
  %981 = ptrtoint ptr %rx_stat_mac_xpf_lo.i604 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load i32, ptr %rx_stat_mac_xpf_lo.i604, align 4
  %add153.i = add i32 %982, %974
  store i32 %add153.i, ptr %rx_stat_mac_xpf_lo.i604, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add153.i, i32 %974)
  %cmp161.i = icmp ult i32 %add153.i, %974
  %cond162.i = zext i1 %cmp161.i to i32
  %rx_stat_mac_xpf_hi.i605 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 22
  %983 = ptrtoint ptr %rx_stat_mac_xpf_hi.i605 to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load i32, ptr %rx_stat_mac_xpf_hi.i605, align 4
  %add163.i = add i32 %984, %978
  %add166.i = add i32 %add163.i, %cond162.i
  store i32 %add166.i, ptr %rx_stat_mac_xpf_hi.i605, align 4
  %tx_gtxpf_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %985 = ptrtoint ptr %tx_gtxpf_lo.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load i32, ptr %tx_gtxpf_lo.i, align 4
  %tx_stat_outxoffsent_lo.i606 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 35
  %987 = ptrtoint ptr %tx_stat_outxoffsent_lo.i606 to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %tx_stat_outxoffsent_lo.i606, align 4
  %add175.i = add i32 %988, %986
  store i32 %add175.i, ptr %tx_stat_outxoffsent_lo.i606, align 4
  %tx_gtxpf_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %989 = ptrtoint ptr %tx_gtxpf_hi.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %tx_gtxpf_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add175.i, i32 %986)
  %cmp182.i = icmp ult i32 %add175.i, %986
  %cond183.i = zext i1 %cmp182.i to i32
  %add184.i = add i32 %990, %cond183.i
  %tx_stat_outxoffsent_hi.i607 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 34
  %991 = ptrtoint ptr %tx_stat_outxoffsent_hi.i607 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load i32, ptr %tx_stat_outxoffsent_hi.i607, align 4
  %add187.i608 = add i32 %add184.i, %992
  store i32 %add187.i608, ptr %tx_stat_outxoffsent_hi.i607, align 4
  %tx_stat_flowcontroldone_lo.i609 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 37
  %993 = ptrtoint ptr %tx_stat_flowcontroldone_lo.i609 to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load i32, ptr %tx_stat_flowcontroldone_lo.i609, align 4
  %add198.i = add i32 %994, %986
  store i32 %add198.i, ptr %tx_stat_flowcontroldone_lo.i609, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add198.i, i32 %986)
  %cmp206.i = icmp ult i32 %add198.i, %986
  %cond207.i = zext i1 %cmp206.i to i32
  %tx_stat_flowcontroldone_hi.i610 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 36
  %995 = ptrtoint ptr %tx_stat_flowcontroldone_hi.i610 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load i32, ptr %tx_stat_flowcontroldone_hi.i610, align 4
  %add208.i = add i32 %996, %990
  %add211.i = add i32 %add208.i, %cond207.i
  store i32 %add211.i, ptr %tx_stat_flowcontroldone_hi.i610, align 4
  %tx_gtxpp_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 4
  %997 = ptrtoint ptr %tx_gtxpp_lo.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load i32, ptr %tx_gtxpp_lo.i, align 4
  %pfc_frames_tx_lo.i611 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 6
  %999 = ptrtoint ptr %pfc_frames_tx_lo.i611 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load i32, ptr %pfc_frames_tx_lo.i611, align 4
  %add218.i = add i32 %1000, %998
  store i32 %add218.i, ptr %pfc_frames_tx_lo.i611, align 4
  %tx_gtxpp_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 5
  %1001 = ptrtoint ptr %tx_gtxpp_hi.i to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load i32, ptr %tx_gtxpp_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add218.i, i32 %998)
  %cmp223.i = icmp ult i32 %add218.i, %998
  %cond224.i = zext i1 %cmp223.i to i32
  %add225.i = add i32 %1002, %cond224.i
  %pfc_frames_tx_hi.i612 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 5
  %1003 = ptrtoint ptr %pfc_frames_tx_hi.i612 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load i32, ptr %pfc_frames_tx_hi.i612, align 4
  %add226.i = add i32 %add225.i, %1004
  store i32 %add226.i, ptr %pfc_frames_tx_hi.i612, align 4
  %rx_grxpp_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 32
  %1005 = ptrtoint ptr %rx_grxpp_lo.i to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load i32, ptr %rx_grxpp_lo.i, align 4
  %pfc_frames_rx_lo.i613 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 8
  %1007 = ptrtoint ptr %pfc_frames_rx_lo.i613 to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load i32, ptr %pfc_frames_rx_lo.i613, align 4
  %add231.i = add i32 %1008, %1006
  store i32 %add231.i, ptr %pfc_frames_rx_lo.i613, align 4
  %rx_grxpp_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 33
  %1009 = ptrtoint ptr %rx_grxpp_hi.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load i32, ptr %rx_grxpp_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add231.i, i32 %1006)
  %cmp236.i614 = icmp ult i32 %add231.i, %1006
  %cond237.i615 = zext i1 %cmp236.i614 to i32
  %add238.i616 = add i32 %1010, %cond237.i615
  %pfc_frames_rx_hi.i617 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 7
  %1011 = ptrtoint ptr %pfc_frames_rx_hi.i617 to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load i32, ptr %pfc_frames_rx_hi.i617, align 4
  %add239.i = add i32 %add238.i616, %1012
  store i32 %add239.i, ptr %pfc_frames_rx_hi.i617, align 4
  %tx_gt64_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 16
  %1013 = ptrtoint ptr %tx_gt64_lo.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load i32, ptr %tx_gt64_lo.i, align 4
  %tx_stat_etherstatspkts64octets_lo.i618 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 51
  %1015 = ptrtoint ptr %tx_stat_etherstatspkts64octets_lo.i618 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load i32, ptr %tx_stat_etherstatspkts64octets_lo.i618, align 4
  %add247.i = add i32 %1016, %1014
  store i32 %add247.i, ptr %tx_stat_etherstatspkts64octets_lo.i618, align 4
  %tx_gt64_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 17
  %1017 = ptrtoint ptr %tx_gt64_hi.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load i32, ptr %tx_gt64_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add247.i, i32 %1014)
  %cmp254.i = icmp ult i32 %add247.i, %1014
  %cond255.i = zext i1 %cmp254.i to i32
  %add256.i = add i32 %1018, %cond255.i
  %tx_stat_etherstatspkts64octets_hi.i619 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 50
  %1019 = ptrtoint ptr %tx_stat_etherstatspkts64octets_hi.i619 to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %tx_stat_etherstatspkts64octets_hi.i619, align 4
  %add259.i620 = add i32 %add256.i, %1020
  store i32 %add259.i620, ptr %tx_stat_etherstatspkts64octets_hi.i619, align 4
  %tx_gt127_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 18
  %1021 = ptrtoint ptr %tx_gt127_lo.i to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load i32, ptr %tx_gt127_lo.i, align 4
  %tx_stat_etherstatspkts65octetsto127octets_lo.i621 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 53
  %1023 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i621 to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i621, align 4
  %add269.i = add i32 %1024, %1022
  store i32 %add269.i, ptr %tx_stat_etherstatspkts65octetsto127octets_lo.i621, align 4
  %tx_gt127_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 19
  %1025 = ptrtoint ptr %tx_gt127_hi.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load i32, ptr %tx_gt127_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add269.i, i32 %1022)
  %cmp276.i = icmp ult i32 %add269.i, %1022
  %cond277.i = zext i1 %cmp276.i to i32
  %add278.i = add i32 %1026, %cond277.i
  %tx_stat_etherstatspkts65octetsto127octets_hi.i622 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 52
  %1027 = ptrtoint ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i622 to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load i32, ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i622, align 4
  %add281.i = add i32 %add278.i, %1028
  store i32 %add281.i, ptr %tx_stat_etherstatspkts65octetsto127octets_hi.i622, align 4
  %tx_gt255_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 20
  %1029 = ptrtoint ptr %tx_gt255_lo.i to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load i32, ptr %tx_gt255_lo.i, align 4
  %tx_stat_etherstatspkts128octetsto255octets_lo.i623 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 55
  %1031 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i623 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i623, align 4
  %add291.i = add i32 %1032, %1030
  store i32 %add291.i, ptr %tx_stat_etherstatspkts128octetsto255octets_lo.i623, align 4
  %tx_gt255_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 21
  %1033 = ptrtoint ptr %tx_gt255_hi.i to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load i32, ptr %tx_gt255_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add291.i, i32 %1030)
  %cmp298.i = icmp ult i32 %add291.i, %1030
  %cond299.i = zext i1 %cmp298.i to i32
  %add300.i = add i32 %1034, %cond299.i
  %tx_stat_etherstatspkts128octetsto255octets_hi.i624 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 54
  %1035 = ptrtoint ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i624 to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load i32, ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i624, align 4
  %add303.i = add i32 %add300.i, %1036
  store i32 %add303.i, ptr %tx_stat_etherstatspkts128octetsto255octets_hi.i624, align 4
  %tx_gt511_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 22
  %1037 = ptrtoint ptr %tx_gt511_lo.i to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load i32, ptr %tx_gt511_lo.i, align 4
  %tx_stat_etherstatspkts256octetsto511octets_lo.i625 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 57
  %1039 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i625 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i625, align 4
  %add313.i626 = add i32 %1040, %1038
  store i32 %add313.i626, ptr %tx_stat_etherstatspkts256octetsto511octets_lo.i625, align 4
  %tx_gt511_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 23
  %1041 = ptrtoint ptr %tx_gt511_hi.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load i32, ptr %tx_gt511_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add313.i626, i32 %1038)
  %cmp320.i = icmp ult i32 %add313.i626, %1038
  %cond321.i = zext i1 %cmp320.i to i32
  %add322.i627 = add i32 %1042, %cond321.i
  %tx_stat_etherstatspkts256octetsto511octets_hi.i628 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 56
  %1043 = ptrtoint ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i628 to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load i32, ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i628, align 4
  %add325.i629 = add i32 %add322.i627, %1044
  store i32 %add325.i629, ptr %tx_stat_etherstatspkts256octetsto511octets_hi.i628, align 4
  %tx_gt1023_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 24
  %1045 = ptrtoint ptr %tx_gt1023_lo.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load i32, ptr %tx_gt1023_lo.i, align 4
  %tx_stat_etherstatspkts512octetsto1023octets_lo.i630 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 59
  %1047 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i630 to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i630, align 4
  %add335.i = add i32 %1048, %1046
  store i32 %add335.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_lo.i630, align 4
  %tx_gt1023_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 25
  %1049 = ptrtoint ptr %tx_gt1023_hi.i to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load i32, ptr %tx_gt1023_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add335.i, i32 %1046)
  %cmp342.i = icmp ult i32 %add335.i, %1046
  %cond343.i = zext i1 %cmp342.i to i32
  %add344.i = add i32 %1050, %cond343.i
  %tx_stat_etherstatspkts512octetsto1023octets_hi.i631 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 58
  %1051 = ptrtoint ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i631 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load i32, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i631, align 4
  %add347.i = add i32 %add344.i, %1052
  store i32 %add347.i, ptr %tx_stat_etherstatspkts512octetsto1023octets_hi.i631, align 4
  %tx_gt1518_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 26
  %1053 = ptrtoint ptr %tx_gt1518_lo.i to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load i32, ptr %tx_gt1518_lo.i, align 4
  %tx_stat_etherstatspkts1024octetsto1522octets_lo.i632 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 61
  %1055 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i632 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i632, align 4
  %add357.i = add i32 %1056, %1054
  store i32 %add357.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i632, align 4
  %tx_gt1518_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 27
  %1057 = ptrtoint ptr %tx_gt1518_hi.i to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load i32, ptr %tx_gt1518_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add357.i, i32 %1054)
  %cmp364.i = icmp ult i32 %add357.i, %1054
  %cond365.i = zext i1 %cmp364.i to i32
  %add366.i = add i32 %1058, %cond365.i
  %tx_stat_etherstatspkts1024octetsto1522octets_hi.i633 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 60
  %1059 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i633 to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i633, align 4
  %add369.i = add i32 %add366.i, %1060
  store i32 %add369.i, ptr %tx_stat_etherstatspkts1024octetsto1522octets_hi.i633, align 4
  %tx_gt2047_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 28
  %1061 = ptrtoint ptr %tx_gt2047_lo.i to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load i32, ptr %tx_gt2047_lo.i, align 4
  %tx_stat_mac_2047_lo.i634 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 65
  %1063 = ptrtoint ptr %tx_stat_mac_2047_lo.i634 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %tx_stat_mac_2047_lo.i634, align 4
  %add379.i = add i32 %1064, %1062
  store i32 %add379.i, ptr %tx_stat_mac_2047_lo.i634, align 4
  %tx_gt2047_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 29
  %1065 = ptrtoint ptr %tx_gt2047_hi.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load i32, ptr %tx_gt2047_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add379.i, i32 %1062)
  %cmp386.i = icmp ult i32 %add379.i, %1062
  %cond387.i = zext i1 %cmp386.i to i32
  %add388.i = add i32 %1066, %cond387.i
  %tx_stat_mac_2047_hi.i635 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 64
  %1067 = ptrtoint ptr %tx_stat_mac_2047_hi.i635 to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load i32, ptr %tx_stat_mac_2047_hi.i635, align 4
  %add391.i = add i32 %add388.i, %1068
  store i32 %add391.i, ptr %tx_stat_mac_2047_hi.i635, align 4
  %tx_gt4095_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 30
  %1069 = ptrtoint ptr %tx_gt4095_lo.i to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load i32, ptr %tx_gt4095_lo.i, align 4
  %tx_stat_mac_4095_lo.i636 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 67
  %1071 = ptrtoint ptr %tx_stat_mac_4095_lo.i636 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load i32, ptr %tx_stat_mac_4095_lo.i636, align 4
  %add401.i = add i32 %1072, %1070
  store i32 %add401.i, ptr %tx_stat_mac_4095_lo.i636, align 4
  %tx_gt4095_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 31
  %1073 = ptrtoint ptr %tx_gt4095_hi.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load i32, ptr %tx_gt4095_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add401.i, i32 %1070)
  %cmp408.i = icmp ult i32 %add401.i, %1070
  %cond409.i = zext i1 %cmp408.i to i32
  %add410.i = add i32 %1074, %cond409.i
  %tx_stat_mac_4095_hi.i637 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 66
  %1075 = ptrtoint ptr %tx_stat_mac_4095_hi.i637 to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load i32, ptr %tx_stat_mac_4095_hi.i637, align 4
  %add413.i = add i32 %add410.i, %1076
  store i32 %add413.i, ptr %tx_stat_mac_4095_hi.i637, align 4
  %tx_gt9216_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 32
  %1077 = ptrtoint ptr %tx_gt9216_lo.i to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load i32, ptr %tx_gt9216_lo.i, align 4
  %tx_stat_mac_9216_lo.i638 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 69
  %1079 = ptrtoint ptr %tx_stat_mac_9216_lo.i638 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load i32, ptr %tx_stat_mac_9216_lo.i638, align 4
  %add423.i = add i32 %1080, %1078
  store i32 %add423.i, ptr %tx_stat_mac_9216_lo.i638, align 4
  %tx_gt9216_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 33
  %1081 = ptrtoint ptr %tx_gt9216_hi.i to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load i32, ptr %tx_gt9216_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add423.i, i32 %1078)
  %cmp430.i = icmp ult i32 %add423.i, %1078
  %cond431.i = zext i1 %cmp430.i to i32
  %add432.i = add i32 %1082, %cond431.i
  %tx_stat_mac_9216_hi.i639 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 68
  %1083 = ptrtoint ptr %tx_stat_mac_9216_hi.i639 to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load i32, ptr %tx_stat_mac_9216_hi.i639, align 4
  %add435.i = add i32 %add432.i, %1084
  store i32 %add435.i, ptr %tx_stat_mac_9216_hi.i639, align 4
  %tx_gt16383_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 34
  %1085 = ptrtoint ptr %tx_gt16383_lo.i to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load i32, ptr %tx_gt16383_lo.i, align 4
  %tx_stat_mac_16383_lo.i640 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 71
  %1087 = ptrtoint ptr %tx_stat_mac_16383_lo.i640 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load i32, ptr %tx_stat_mac_16383_lo.i640, align 4
  %add445.i = add i32 %1088, %1086
  store i32 %add445.i, ptr %tx_stat_mac_16383_lo.i640, align 4
  %tx_gt16383_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 35
  %1089 = ptrtoint ptr %tx_gt16383_hi.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load i32, ptr %tx_gt16383_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add445.i, i32 %1086)
  %cmp452.i = icmp ult i32 %add445.i, %1086
  %cond453.i = zext i1 %cmp452.i to i32
  %add454.i = add i32 %1090, %cond453.i
  %tx_stat_mac_16383_hi.i641 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 70
  %1091 = ptrtoint ptr %tx_stat_mac_16383_hi.i641 to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load i32, ptr %tx_stat_mac_16383_hi.i641, align 4
  %add457.i642 = add i32 %add454.i, %1092
  store i32 %add457.i642, ptr %tx_stat_mac_16383_hi.i641, align 4
  %tx_gterr_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 38
  %1093 = ptrtoint ptr %tx_gterr_lo.i to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load i32, ptr %tx_gterr_lo.i, align 4
  %tx_stat_dot3statsinternalmactransmiterrors_lo.i643 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 73
  %1095 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i643 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i643, align 4
  %add467.i = add i32 %1096, %1094
  store i32 %add467.i, ptr %tx_stat_dot3statsinternalmactransmiterrors_lo.i643, align 4
  %tx_gterr_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 39
  %1097 = ptrtoint ptr %tx_gterr_hi.i to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load i32, ptr %tx_gterr_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add467.i, i32 %1094)
  %cmp474.i = icmp ult i32 %add467.i, %1094
  %cond475.i = zext i1 %cmp474.i to i32
  %add476.i = add i32 %1098, %cond475.i
  %tx_stat_dot3statsinternalmactransmiterrors_hi.i644 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 72
  %1099 = ptrtoint ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i644 to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load i32, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i644, align 4
  %add479.i645 = add i32 %add476.i, %1100
  store i32 %add479.i645, ptr %tx_stat_dot3statsinternalmactransmiterrors_hi.i644, align 4
  %tx_gtufl_lo.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 36
  %1101 = ptrtoint ptr %tx_gtufl_lo.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %tx_gtufl_lo.i, align 4
  %tx_stat_mac_ufl_lo.i646 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 75
  %1103 = ptrtoint ptr %tx_stat_mac_ufl_lo.i646 to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %tx_stat_mac_ufl_lo.i646, align 4
  %add489.i = add i32 %1104, %1102
  store i32 %add489.i, ptr %tx_stat_mac_ufl_lo.i646, align 4
  %tx_gtufl_hi.i = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 37
  %1105 = ptrtoint ptr %tx_gtufl_hi.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load i32, ptr %tx_gtufl_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add489.i, i32 %1102)
  %cmp496.i = icmp ult i32 %add489.i, %1102
  %cond497.i = zext i1 %cmp496.i to i32
  %add498.i = add i32 %1106, %cond497.i
  %tx_stat_mac_ufl_hi.i647 = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1, i32 74
  %1107 = ptrtoint ptr %tx_stat_mac_ufl_hi.i647 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load i32, ptr %tx_stat_mac_ufl_hi.i647, align 4
  %add501.i = add i32 %add498.i, %1108
  store i32 %add501.i, ptr %tx_stat_mac_ufl_hi.i647, align 4
  %etherstatspkts1024octetsto1522octets_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 29
  %1109 = ptrtoint ptr %etherstatspkts1024octetsto1522octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %1109)
  store i32 %add369.i, ptr %etherstatspkts1024octetsto1522octets_hi.i, align 4
  %1110 = ptrtoint ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i632 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load i32, ptr %tx_stat_etherstatspkts1024octetsto1522octets_lo.i632, align 4
  %etherstatspkts1024octetsto1522octets_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 30
  %1112 = ptrtoint ptr %etherstatspkts1024octetsto1522octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %1112)
  store i32 %1111, ptr %etherstatspkts1024octetsto1522octets_lo.i, align 4
  %1113 = ptrtoint ptr %tx_stat_mac_2047_hi.i635 to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load i32, ptr %tx_stat_mac_2047_hi.i635, align 4
  %etherstatspktsover1522octets_hi.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 31
  %1115 = ptrtoint ptr %etherstatspktsover1522octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %1115)
  store i32 %1114, ptr %etherstatspktsover1522octets_hi.i, align 4
  %1116 = ptrtoint ptr %tx_stat_mac_2047_lo.i634 to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load i32, ptr %tx_stat_mac_2047_lo.i634, align 4
  %etherstatspktsover1522octets_lo.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 32
  %1118 = ptrtoint ptr %etherstatspktsover1522octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %1118)
  store i32 %1117, ptr %etherstatspktsover1522octets_lo.i, align 4
  %1119 = ptrtoint ptr %tx_stat_mac_4095_lo.i636 to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load i32, ptr %tx_stat_mac_4095_lo.i636, align 4
  %add523.i = add i32 %1120, %1117
  store i32 %add523.i, ptr %etherstatspktsover1522octets_lo.i, align 4
  %1121 = ptrtoint ptr %tx_stat_mac_4095_hi.i637 to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load i32, ptr %tx_stat_mac_4095_hi.i637, align 4
  %1123 = load i32, ptr %tx_stat_mac_4095_lo.i636, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add523.i, i32 %1123)
  %cmp531.i = icmp ult i32 %add523.i, %1123
  %cond532.i = zext i1 %cmp531.i to i32
  %add533.i = add i32 %1122, %1114
  %add535.i = add i32 %add533.i, %cond532.i
  %1124 = ptrtoint ptr %etherstatspktsover1522octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %1124)
  store i32 %add535.i, ptr %etherstatspktsover1522octets_hi.i, align 4
  %1125 = ptrtoint ptr %tx_stat_mac_9216_lo.i638 to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load i32, ptr %tx_stat_mac_9216_lo.i638, align 4
  %add543.i = add i32 %1126, %add523.i
  %1127 = ptrtoint ptr %etherstatspktsover1522octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %1127)
  store i32 %add543.i, ptr %etherstatspktsover1522octets_lo.i, align 4
  %1128 = ptrtoint ptr %tx_stat_mac_9216_hi.i639 to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load i32, ptr %tx_stat_mac_9216_hi.i639, align 4
  %1130 = load i32, ptr %tx_stat_mac_9216_lo.i638, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add543.i, i32 %1130)
  %cmp551.i = icmp ult i32 %add543.i, %1130
  %cond552.i = zext i1 %cmp551.i to i32
  %add553.i = add i32 %1129, %add535.i
  %add555.i = add i32 %add553.i, %cond552.i
  %1131 = ptrtoint ptr %etherstatspktsover1522octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %1131)
  store i32 %add555.i, ptr %etherstatspktsover1522octets_hi.i, align 4
  %1132 = ptrtoint ptr %tx_stat_mac_16383_lo.i640 to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load i32, ptr %tx_stat_mac_16383_lo.i640, align 4
  %add563.i648 = add i32 %1133, %add543.i
  %1134 = ptrtoint ptr %etherstatspktsover1522octets_lo.i to i32
  call void @__asan_store4_noabort(i32 %1134)
  store i32 %add563.i648, ptr %etherstatspktsover1522octets_lo.i, align 4
  %1135 = ptrtoint ptr %tx_stat_mac_16383_hi.i641 to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load i32, ptr %tx_stat_mac_16383_hi.i641, align 4
  %1137 = load i32, ptr %tx_stat_mac_16383_lo.i640, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add563.i648, i32 %1137)
  %cmp571.i649 = icmp ult i32 %add563.i648, %1137
  %cond572.i650 = zext i1 %cmp571.i649 to i32
  %add573.i651 = add i32 %1136, %add555.i
  %add575.i652 = add i32 %add573.i651, %cond572.i650
  %1138 = ptrtoint ptr %etherstatspktsover1522octets_hi.i to i32
  call void @__asan_store4_noabort(i32 %1138)
  store i32 %add575.i652, ptr %etherstatspktsover1522octets_hi.i, align 4
  %1139 = ptrtoint ptr %rx_stat_mac_xpf_hi.i605 to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load i32, ptr %rx_stat_mac_xpf_hi.i605, align 4
  %pause_frames_received_hi.i653 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 25
  %1141 = ptrtoint ptr %pause_frames_received_hi.i653 to i32
  call void @__asan_store4_noabort(i32 %1141)
  store i32 %1140, ptr %pause_frames_received_hi.i653, align 4
  %1142 = ptrtoint ptr %rx_stat_mac_xpf_lo.i604 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %rx_stat_mac_xpf_lo.i604, align 4
  %pause_frames_received_lo.i654 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 26
  %1144 = ptrtoint ptr %pause_frames_received_lo.i654 to i32
  call void @__asan_store4_noabort(i32 %1144)
  store i32 %1143, ptr %pause_frames_received_lo.i654, align 4
  %1145 = ptrtoint ptr %tx_stat_outxoffsent_hi.i607 to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load i32, ptr %tx_stat_outxoffsent_hi.i607, align 4
  %pause_frames_sent_hi.i655 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 27
  %1147 = ptrtoint ptr %pause_frames_sent_hi.i655 to i32
  call void @__asan_store4_noabort(i32 %1147)
  store i32 %1146, ptr %pause_frames_sent_hi.i655, align 4
  %1148 = ptrtoint ptr %tx_stat_outxoffsent_lo.i606 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load i32, ptr %tx_stat_outxoffsent_lo.i606, align 4
  %pause_frames_sent_lo.i656 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 28
  %1150 = ptrtoint ptr %pause_frames_sent_lo.i656 to i32
  call void @__asan_store4_noabort(i32 %1150)
  store i32 %1149, ptr %pause_frames_sent_lo.i656, align 4
  %1151 = ptrtoint ptr %pfc_frames_rx_hi.i617 to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load i32, ptr %pfc_frames_rx_hi.i617, align 4
  %pfc_frames_received_hi.i657 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 52
  %1153 = ptrtoint ptr %pfc_frames_received_hi.i657 to i32
  call void @__asan_store4_noabort(i32 %1153)
  store i32 %1152, ptr %pfc_frames_received_hi.i657, align 4
  %1154 = ptrtoint ptr %pfc_frames_rx_lo.i613 to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load i32, ptr %pfc_frames_rx_lo.i613, align 4
  %pfc_frames_received_lo.i658 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 53
  %1156 = ptrtoint ptr %pfc_frames_received_lo.i658 to i32
  call void @__asan_store4_noabort(i32 %1156)
  store i32 %1155, ptr %pfc_frames_received_lo.i658, align 4
  %1157 = ptrtoint ptr %pfc_frames_tx_hi.i612 to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load i32, ptr %pfc_frames_tx_hi.i612, align 4
  %pfc_frames_sent_hi.i659 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 54
  %1159 = ptrtoint ptr %pfc_frames_sent_hi.i659 to i32
  call void @__asan_store4_noabort(i32 %1159)
  store i32 %1158, ptr %pfc_frames_sent_hi.i659, align 4
  %1160 = ptrtoint ptr %pfc_frames_tx_lo.i611 to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load i32, ptr %pfc_frames_tx_lo.i611, align 4
  %pfc_frames_sent_lo.i660 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 55
  %1162 = ptrtoint ptr %pfc_frames_sent_lo.i660 to i32
  call void @__asan_store4_noabort(i32 %1162)
  store i32 %1161, ptr %pfc_frames_sent_lo.i660, align 4
  br label %do.body29

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %1163 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1164, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !128

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %1165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %dev, align 4
  %tobool8.not = icmp eq ptr %1166, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %1166
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 831, ptr noundef nonnull %spec.select) #10
  br label %cleanup

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %1167 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %dev17, align 4
  %tobool18.not = icmp eq ptr %1168, null
  %spec.select535 = select i1 %tobool18.not, ptr @.str.3, ptr %1168
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 835, ptr noundef nonnull %spec.select535) #10
  br label %do.body29

do.body29:                                        ; preds = %do.end15, %sw.bb3, %sw.bb2, %bnx2x_bmac_stats_update.exit
  %1169 = ptrtoint ptr %nig_stats to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load i32, ptr %nig_stats, align 4
  %1171 = ptrtoint ptr %old_nig_stats to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load i32, ptr %old_nig_stats, align 4
  %sub = sub i32 %1170, %1172
  %brb_drop_lo = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 3
  %1173 = ptrtoint ptr %brb_drop_lo to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load i32, ptr %brb_drop_lo, align 4
  %add = add i32 %1174, %sub
  store i32 %add, ptr %brb_drop_lo, align 4
  %1175 = load i32, ptr %old_nig_stats, align 4
  %sub34 = sub i32 %1170, %1175
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub34)
  %cmp = icmp ult i32 %add, %sub34
  %cond36 = zext i1 %cmp to i32
  %brb_drop_hi = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 2
  %1176 = ptrtoint ptr %brb_drop_hi to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load i32, ptr %brb_drop_hi, align 4
  %add37 = add i32 %1177, %cond36
  store i32 %add37, ptr %brb_drop_hi, align 4
  %brb_truncate = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 11, i32 2
  %1178 = ptrtoint ptr %brb_truncate to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load i32, ptr %brb_truncate, align 4
  %brb_truncate41 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 2
  %1180 = ptrtoint ptr %brb_truncate41 to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load i32, ptr %brb_truncate41, align 4
  %sub42 = sub i32 %1179, %1181
  %brb_truncate_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 36
  %1182 = ptrtoint ptr %brb_truncate_lo to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load i32, ptr %brb_truncate_lo, align 4
  %add43 = add i32 %1183, %sub42
  store i32 %add43, ptr %brb_truncate_lo, align 4
  %1184 = load i32, ptr %brb_truncate, align 4
  %sub47 = sub i32 %1184, %1181
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %sub47)
  %cmp48 = icmp ult i32 %add43, %sub47
  %cond50 = zext i1 %cmp48 to i32
  %brb_truncate_hi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 35
  %1185 = ptrtoint ptr %brb_truncate_hi to i32
  call void @__asan_load4_noabort(i32 %1185)
  %1186 = load i32, ptr %brb_truncate_hi, align 4
  %add51 = add i32 %1186, %cond50
  store i32 %add51, ptr %brb_truncate_hi, align 4
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %1187 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1187)
  %1188 = load i32, ptr %common, align 8
  %shr = lshr i32 %1188, 16
  %trunc = trunc i32 %shr to i16
  %1189 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1189, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %trunc, label %do.body141 [
    i16 5770, label %do.body29.if.end258_crit_edge
    i16 5797, label %do.body29.if.end258_crit_edge664
    i16 5801, label %do.body29.if.end258_crit_edge665
    i16 5774, label %do.body29.if.end258_crit_edge666
    i16 5806, label %do.body29.if.end258_crit_edge667
    i16 5807, label %do.body29.if.end258_crit_edge668
    i16 5693, label %do.body29.if.end258_crit_edge669
    i16 5694, label %do.body29.if.end258_crit_edge670
    i16 5695, label %do.body29.if.end258_crit_edge671
    i16 5793, label %do.body29.if.end258_crit_edge672
    i16 5794, label %do.body29.if.end258_crit_edge673
    i16 5773, label %do.body29.if.end258_crit_edge674
    i16 5796, label %do.body29.if.end258_crit_edge675
    i16 5803, label %do.body29.if.end258_crit_edge676
    i16 5805, label %do.body29.if.end258_crit_edge677
  ]

do.body29.if.end258_crit_edge677:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge676:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge675:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge674:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge673:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge672:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge671:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge670:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge669:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge668:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge667:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge666:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge665:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge664:                 ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body29.if.end258_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

do.body141:                                       ; preds = %do.body29
  %1190 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 11, i32 14
  %1191 = ptrtoint ptr %1190 to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load i32, ptr %1190, align 4
  %1193 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 14
  %1194 = ptrtoint ptr %1193 to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load i32, ptr %1193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1192, i32 %1195)
  %cmp143 = icmp ult i32 %1192, %1195
  %egress_mac_pkt0_hi = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 11, i32 14, i32 0, i32 1
  %1196 = ptrtoint ptr %egress_mac_pkt0_hi to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load i32, ptr %egress_mac_pkt0_hi, align 4
  %egress_mac_pkt0_hi146 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 14, i32 0, i32 1
  %1198 = ptrtoint ptr %egress_mac_pkt0_hi146 to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load i32, ptr %egress_mac_pkt0_hi146, align 4
  br i1 %cmp143, label %if.then145, label %if.else161

if.then145:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_cmp4(i32 %1197, i32 %1199)
  %cmp149.not = icmp eq i32 %1197, %1199
  br i1 %cmp149.not, label %if.then145.do.body182_crit_edge, label %if.then151

if.then145.do.body182_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body182

if.then151:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  %1200 = xor i32 %1199, -1
  %dec = add i32 %1197, %1200
  %add157 = sub i32 %1192, %1195
  br label %do.body182

if.else161:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_cmp4(i32 %1197, i32 %1199)
  %cmp164 = icmp ult i32 %1197, %1199
  br i1 %cmp164, label %if.else161.do.body182_crit_edge, label %if.else169

if.else161.do.body182_crit_edge:                  ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body182

if.else169:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #9
  %sub172 = sub i32 %1197, %1199
  %sub176 = sub i32 %1192, %1195
  br label %do.body182

do.body182:                                       ; preds = %if.else169, %if.else161.do.body182_crit_edge, %if.then151, %if.then145.do.body182_crit_edge
  %diff.sroa.0.0 = phi i32 [ %add157, %if.then151 ], [ %sub176, %if.else169 ], [ 0, %if.then145.do.body182_crit_edge ], [ 0, %if.else161.do.body182_crit_edge ]
  %diff.sroa.15.0 = phi i32 [ %dec, %if.then151 ], [ %sub172, %if.else169 ], [ 0, %if.then145.do.body182_crit_edge ], [ 0, %if.else161.do.body182_crit_edge ]
  %etherstatspkts1024octetsto1522octets_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 30
  %1201 = ptrtoint ptr %etherstatspkts1024octetsto1522octets_lo to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load i32, ptr %etherstatspkts1024octetsto1522octets_lo, align 4
  %add184 = add i32 %1202, %diff.sroa.0.0
  store i32 %add184, ptr %etherstatspkts1024octetsto1522octets_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add184, i32 %diff.sroa.0.0)
  %cmp188 = icmp ult i32 %add184, %diff.sroa.0.0
  %cond190 = zext i1 %cmp188 to i32
  %etherstatspkts1024octetsto1522octets_hi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 29
  %1203 = ptrtoint ptr %etherstatspkts1024octetsto1522octets_hi to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load i32, ptr %etherstatspkts1024octetsto1522octets_hi, align 4
  %add191 = add i32 %1204, %diff.sroa.15.0
  %add192 = add i32 %add191, %cond190
  store i32 %add192, ptr %etherstatspkts1024octetsto1522octets_hi, align 4
  %1205 = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 11, i32 15
  %1206 = ptrtoint ptr %1205 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load i32, ptr %1205, align 4
  %1208 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 15
  %1209 = ptrtoint ptr %1208 to i32
  call void @__asan_load4_noabort(i32 %1209)
  %1210 = load i32, ptr %1208, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1207, i32 %1210)
  %cmp200 = icmp ult i32 %1207, %1210
  %egress_mac_pkt1_hi = getelementptr inbounds %struct.bnx2x_slowpath, ptr %1, i32 0, i32 11, i32 15, i32 0, i32 1
  %1211 = ptrtoint ptr %egress_mac_pkt1_hi to i32
  call void @__asan_load4_noabort(i32 %1211)
  %1212 = load i32, ptr %egress_mac_pkt1_hi, align 4
  %egress_mac_pkt1_hi203 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 7, i32 15, i32 0, i32 1
  %1213 = ptrtoint ptr %egress_mac_pkt1_hi203 to i32
  call void @__asan_load4_noabort(i32 %1213)
  %1214 = load i32, ptr %egress_mac_pkt1_hi203, align 4
  br i1 %cmp200, label %if.then202, label %if.else222

if.then202:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_cmp4(i32 %1212, i32 %1214)
  %cmp207.not = icmp eq i32 %1212, %1214
  br i1 %cmp207.not, label %if.then202.do.body243_crit_edge, label %if.then209

if.then202.do.body243_crit_edge:                  ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body243

if.then209:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #9
  %1215 = xor i32 %1214, -1
  %dec211 = add i32 %1212, %1215
  %add216 = sub i32 %1207, %1210
  br label %do.body243

if.else222:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_cmp4(i32 %1212, i32 %1214)
  %cmp225 = icmp ult i32 %1212, %1214
  br i1 %cmp225, label %if.else222.do.body243_crit_edge, label %if.else230

if.else222.do.body243_crit_edge:                  ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body243

if.else230:                                       ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #9
  %sub233 = sub i32 %1212, %1214
  %sub237 = sub i32 %1207, %1210
  br label %do.body243

do.body243:                                       ; preds = %if.else230, %if.else222.do.body243_crit_edge, %if.then209, %if.then202.do.body243_crit_edge
  %diff.sroa.0.1 = phi i32 [ %add216, %if.then209 ], [ %sub237, %if.else230 ], [ 0, %if.then202.do.body243_crit_edge ], [ 0, %if.else222.do.body243_crit_edge ]
  %diff.sroa.15.1 = phi i32 [ %dec211, %if.then209 ], [ %sub233, %if.else230 ], [ 0, %if.then202.do.body243_crit_edge ], [ 0, %if.else222.do.body243_crit_edge ]
  %etherstatspktsover1522octets_lo = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 32
  %1216 = ptrtoint ptr %etherstatspktsover1522octets_lo to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load i32, ptr %etherstatspktsover1522octets_lo, align 4
  %add245 = add i32 %1217, %diff.sroa.0.1
  store i32 %add245, ptr %etherstatspktsover1522octets_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add245, i32 %diff.sroa.0.1)
  %cmp249 = icmp ult i32 %add245, %diff.sroa.0.1
  %cond251 = zext i1 %cmp249 to i32
  %etherstatspktsover1522octets_hi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 31
  %1218 = ptrtoint ptr %etherstatspktsover1522octets_hi to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load i32, ptr %etherstatspktsover1522octets_hi, align 4
  %add252 = add i32 %1219, %diff.sroa.15.1
  %add253 = add i32 %add252, %cond251
  store i32 %add253, ptr %etherstatspktsover1522octets_hi, align 4
  br label %if.end258

if.end258:                                        ; preds = %do.body243, %do.body29.if.end258_crit_edge, %do.body29.if.end258_crit_edge664, %do.body29.if.end258_crit_edge665, %do.body29.if.end258_crit_edge666, %do.body29.if.end258_crit_edge667, %do.body29.if.end258_crit_edge668, %do.body29.if.end258_crit_edge669, %do.body29.if.end258_crit_edge670, %do.body29.if.end258_crit_edge671, %do.body29.if.end258_crit_edge672, %do.body29.if.end258_crit_edge673, %do.body29.if.end258_crit_edge674, %do.body29.if.end258_crit_edge675, %do.body29.if.end258_crit_edge676, %do.body29.if.end258_crit_edge677
  %1220 = call ptr @memcpy(ptr %old_nig_stats, ptr %nig_stats, i32 72)
  %1221 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24
  %arrayidx = getelementptr %struct.bnx2x_slowpath, ptr %1, i32 0, i32 12, i32 1, i32 1
  %1222 = call ptr @memcpy(ptr %1221, ptr %arrayidx, i32 304)
  %1223 = ptrtoint ptr %brb_drop_hi to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load i32, ptr %brb_drop_hi, align 4
  %brb_drop_hi263 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 33
  %1225 = ptrtoint ptr %brb_drop_hi263 to i32
  call void @__asan_store4_noabort(i32 %1225)
  store i32 %1224, ptr %brb_drop_hi263, align 4
  %1226 = ptrtoint ptr %brb_drop_lo to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load i32, ptr %brb_drop_lo, align 4
  %brb_drop_lo265 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 34
  %1228 = ptrtoint ptr %brb_drop_lo265 to i32
  call void @__asan_store4_noabort(i32 %1228)
  store i32 %1227, ptr %brb_drop_lo265, align 4
  %1229 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %1229)
  %1230 = load i32, ptr %port_stats, align 4
  %inc = add i32 %1230, 1
  store i32 %inc, ptr %port_stats, align 4
  %1231 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1231)
  %1232 = load i32, ptr %common, align 8
  %shr268 = lshr i32 %1232, 16
  %trunc661 = trunc i32 %shr268 to i16
  %1233 = zext i16 %trunc661 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1233, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %trunc661, label %lor.lhs.false307 [
    i16 5770, label %if.end258.if.then355_crit_edge
    i16 5797, label %if.end258.if.then355_crit_edge678
    i16 5801, label %if.end258.if.then355_crit_edge679
    i16 5774, label %if.end258.if.then355_crit_edge680
    i16 5806, label %if.end258.if.then355_crit_edge681
    i16 5807, label %if.end258.if.then355_crit_edge682
    i16 5693, label %if.end258.if.then355_crit_edge683
  ]

if.end258.if.then355_crit_edge683:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.end258.if.then355_crit_edge682:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.end258.if.then355_crit_edge681:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.end258.if.then355_crit_edge680:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.end258.if.then355_crit_edge679:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.end258.if.then355_crit_edge678:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.end258.if.then355_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307:                                 ; preds = %if.end258
  %1234 = zext i16 %trunc661 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1234, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %trunc661, label %lor.lhs.false307.if.end364_crit_edge [
    i16 5694, label %lor.lhs.false307.if.then355_crit_edge
    i16 5695, label %lor.lhs.false307.if.then355_crit_edge684
    i16 5793, label %lor.lhs.false307.if.then355_crit_edge685
    i16 5794, label %lor.lhs.false307.if.then355_crit_edge686
    i16 5773, label %lor.lhs.false307.if.then355_crit_edge687
    i16 5796, label %lor.lhs.false307.if.then355_crit_edge688
    i16 5803, label %lor.lhs.false307.if.then355_crit_edge689
    i16 5805, label %lor.lhs.false307.if.then355_crit_edge690
  ]

lor.lhs.false307.if.then355_crit_edge690:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge689:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge688:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge687:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge686:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge685:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge684:         ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.then355_crit_edge:            ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

lor.lhs.false307.if.end364_crit_edge:             ; preds = %lor.lhs.false307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end364

if.then355:                                       ; preds = %lor.lhs.false307.if.then355_crit_edge, %lor.lhs.false307.if.then355_crit_edge684, %lor.lhs.false307.if.then355_crit_edge685, %lor.lhs.false307.if.then355_crit_edge686, %lor.lhs.false307.if.then355_crit_edge687, %lor.lhs.false307.if.then355_crit_edge688, %lor.lhs.false307.if.then355_crit_edge689, %lor.lhs.false307.if.then355_crit_edge690, %if.end258.if.then355_crit_edge, %if.end258.if.then355_crit_edge678, %if.end258.if.then355_crit_edge679, %if.end258.if.then355_crit_edge680, %if.end258.if.then355_crit_edge681, %if.end258.if.then355_crit_edge682, %if.end258.if.then355_crit_edge683
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %1235 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %1235)
  %1236 = load i8, ptr %pfid, align 1
  %1237 = and i8 %1236, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1237)
  %tobool358.not = icmp eq i8 %1237, 0
  %cond359 = select i1 %tobool358.not, i32 43192, i32 43196
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %1238 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %1239, i32 %cond359
  %1240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !130
  %1241 = tail call i32 @llvm.bswap.i32(i32 %1240)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %eee_tx_lpi = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 59
  %1242 = ptrtoint ptr %eee_tx_lpi to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load i32, ptr %eee_tx_lpi, align 4
  %add363 = add i32 %1243, %1241
  store i32 %add363, ptr %eee_tx_lpi, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.then355, %lor.lhs.false307.if.end364_crit_edge
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %1244 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load i32, ptr %flags, align 4
  %and365 = and i32 %1245, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365)
  %tobool366.not = icmp eq i32 %and365, 0
  br i1 %tobool366.not, label %if.then367, label %if.end364.cleanup_crit_edge

if.end364.cleanup_crit_edge:                      ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then367:                                       ; preds = %if.end364
  %regview370 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %1246 = ptrtoint ptr %regview370 to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %regview370, align 8
  %shmem_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 2
  %1248 = ptrtoint ptr %shmem_base to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load i32, ptr %shmem_base, align 8
  %pfid372 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %1250 = ptrtoint ptr %pfid372 to i32
  call void @__asan_load1_noabort(i32 %1250)
  %1251 = load i8, ptr %pfid372, align 1
  %1252 = shl i8 %1251, 4
  %1253 = and i8 %1252, 16
  %1254 = zext i8 %1253 to i32
  %1255 = add i32 %1249, 1644
  %add375 = add i32 %1255, %1254
  %add.ptr376 = getelementptr i8, ptr %1247, i32 %add375
  %1256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr376) #7, !srcloc !130
  %1257 = tail call i32 @llvm.bswap.i32(i32 %1256)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %nig_timer_max380 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 45
  %1258 = ptrtoint ptr %nig_timer_max380 to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load i32, ptr %nig_timer_max380, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1257, i32 %1259)
  %cmp381.not = icmp eq i32 %1257, %1259
  br i1 %cmp381.not, label %if.then367.cleanup_crit_edge, label %if.then383

if.then367.cleanup_crit_edge:                     ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then383:                                       ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #9
  %1260 = ptrtoint ptr %nig_timer_max380 to i32
  call void @__asan_store4_noabort(i32 %1260)
  store i32 %1257, ptr %nig_timer_max380, align 4
  %dev390 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %1261 = ptrtoint ptr %dev390 to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %dev390, align 4
  %tobool391.not = icmp eq ptr %1262, null
  %spec.select536 = select i1 %tobool391.not, ptr @.str.3, ptr %1262
  %call400 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef 872, ptr noundef nonnull %spec.select536, i32 noundef %1257) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then383, %if.then367.cleanup_crit_edge, %if.end364.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ 0, %if.then367.cleanup_crit_edge ], [ 0, %if.then383 ], [ 0, %if.end364.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_panic_dump(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_net_stats_update(ptr noundef readonly %bp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %add.ptr.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 5
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %add.ptr.i110 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 7
  %4 = ptrtoint ptr %add.ptr.i110 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i110, align 4
  %add = add i32 %5, %3
  %add.ptr.i111 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 9
  %6 = ptrtoint ptr %add.ptr.i111 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i111, align 4
  %add3 = add i32 %add, %7
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add3, ptr %stats, align 4
  %add.ptr.i112 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 11
  %9 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i112, align 4
  %add.ptr.i113 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 13
  %11 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i113, align 4
  %add6 = add i32 %12, %10
  %add.ptr.i114 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 15
  %13 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i114, align 4
  %add8 = add i32 %add6, %14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %15 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add8, ptr %tx_packets, align 4
  %add.ptr.i115 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 1
  %16 = ptrtoint ptr %add.ptr.i115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i115, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %18 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rx_bytes, align 4
  %add.ptr.i116 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 3
  %19 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i116, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx_bytes, align 4
  %mac_discard = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 40
  %22 = ptrtoint ptr %mac_discard to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_discard, align 4
  %num_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %24 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp130 = icmp sgt i32 %25, 0
  br i1 %cmp130, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %num_cnic_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %fp_stats = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %tmp.0131 = phi i32 [ %23, %for.body.lr.ph ], [ %tmp.1, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %28 = ptrtoint ptr %num_cnic_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cnic_queues, align 4
  %sub = sub i32 %25, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0132, i32 %sub)
  %cmp13 = icmp eq i32 %i.0132, %sub
  br i1 %cmp13, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %30 = ptrtoint ptr %fp_stats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fp_stats, align 8
  %checksum_discard = getelementptr %struct.bnx2x_fp_stats, ptr %31, i32 %i.0132, i32 0, i32 2
  %32 = ptrtoint ptr %checksum_discard to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %checksum_discard, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %add15 = add i32 %34, %tmp.0131
  br label %for.inc

for.inc:                                          ; preds = %if.else, %land.lhs.true.for.inc_crit_edge
  %tmp.1 = phi i32 [ %tmp.0131, %land.lhs.true.for.inc_crit_edge ], [ %add15, %if.else ]
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tmp.0.lcssa = phi i32 [ %23, %entry.for.end_crit_edge ], [ %tmp.1, %for.inc.for.end_crit_edge ]
  %net_stats_old = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 150
  %35 = ptrtoint ptr %net_stats_old to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %net_stats_old, align 4
  %add16 = add i32 %36, %tmp.0.lcssa
  %rx_dropped17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %37 = ptrtoint ptr %rx_dropped17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add16, ptr %rx_dropped17, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %38 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %tx_dropped, align 4
  %39 = ptrtoint ptr %add.ptr.i110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i110, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %41 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %multicast, align 4
  %add.ptr.i118 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 39
  %42 = ptrtoint ptr %add.ptr.i118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i118, align 4
  %collisions = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %44 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %collisions, align 4
  %add.ptr.i119 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 13
  %45 = ptrtoint ptr %add.ptr.i119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i119, align 4
  %add.ptr.i120 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 21
  %47 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i120, align 4
  %add23 = add i32 %48, %46
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %49 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add23, ptr %rx_length_errors, align 4
  %add.ptr.i121 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 34
  %50 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i121, align 4
  %add.ptr.i122 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 36
  %52 = ptrtoint ptr %add.ptr.i122 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i122, align 4
  %add26 = add i32 %53, %51
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %54 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add26, ptr %rx_over_errors, align 4
  %add.ptr.i123 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 5
  %55 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i123, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %57 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rx_crc_errors, align 4
  %add.ptr.i124 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 7
  %58 = ptrtoint ptr %add.ptr.i124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i124, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %60 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rx_frame_errors, align 4
  %add.ptr.i125 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 23
  %61 = ptrtoint ptr %add.ptr.i125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i125, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %63 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rx_fifo_errors, align 4
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %64 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %rx_missed_errors, align 4
  %add32 = add i32 %add26, %add23
  %add34 = add i32 %add32, %56
  %add36 = add i32 %add34, %59
  %add38 = add i32 %add36, %62
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %65 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add38, ptr %rx_errors, align 4
  %add.ptr.i126 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 49
  %66 = ptrtoint ptr %add.ptr.i126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i126, align 4
  %add.ptr.i127 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 47
  %68 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i127, align 4
  %add43 = add i32 %69, %67
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %70 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add43, ptr %tx_aborted_errors, align 4
  %add.ptr.i128 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 9
  %71 = ptrtoint ptr %add.ptr.i128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i128, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %73 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %tx_carrier_errors, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %74 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %tx_fifo_errors, align 4
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 19
  %75 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %tx_heartbeat_errors, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 20
  %76 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tx_window_errors, align 4
  %add47 = add i32 %72, %add43
  %add.ptr.i129 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 147, i32 24, i32 0, i32 73
  %77 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i129, align 4
  %add49 = add i32 %add47, %78
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %79 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add49, ptr %tx_errors, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_dmae_opcode_clr_src_reset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_post_dmae(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_issue_dmae_with_comp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1384, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2x_stats_handle._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2x_stats_handle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1387, i32 4}
!9 = !{ptr @bnx2x_stats_handle._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @bnx2x_stats_handle._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1399, i32 3}
!13 = !{ptr @bnx2x_stats_handle._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @bnx2x_stats_handle._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1622, i32 2}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bnx2x_stats_init._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @bnx2x_stats_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1984, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bnx2x_stats_safe_exec._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @bnx2x_stats_safe_exec._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1993, i32 3}
!27 = !{ptr @bnx2x_stats_safe_exec._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bnx2x_stats_safe_exec._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bnx2x_stats_stm, !30, !"bnx2x_stats_stm", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1353, i32 3}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 229, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bnx2x_stats_pmf_update._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bnx2x_stats_pmf_update._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 278, i32 3}
!38 = !{ptr @bnx2x_port_stats_init._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bnx2x_port_stats_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 138, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bnx2x_storm_stats_post._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @bnx2x_storm_stats_post._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 90, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bnx2x_dp_stats._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @bnx2x_dp_stats._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 106, i32 3}
!52 = !{ptr @bnx2x_dp_stats._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bnx2x_dp_stats._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1235, i32 5}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bnx2x_stats_update._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @bnx2x_stats_update._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1236, i32 5}
!61 = !{ptr @bnx2x_stats_update._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bnx2x_stats_update._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1257, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bnx2x_stats_update.__UNIQUE_ID_ddebug352, !64, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 830, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bnx2x_hw_stats_update._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bnx2x_hw_stats_update._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 835, i32 3}
!74 = !{ptr @bnx2x_hw_stats_update._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bnx2x_hw_stats_update._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 871, i32 4}
!78 = !{ptr @bnx2x_hw_stats_update._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @bnx2x_hw_stats_update._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 1410, i32 3}
!82 = !{ptr @bnx2x_port_stats_base_init._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bnx2x_port_stats_base_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 496, i32 3}
!86 = !{ptr @bnx2x_func_stats_init._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bnx2x_func_stats_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 207, i32 4}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bnx2x_stats_comp._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @bnx2x_stats_comp._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 961, i32 3}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @bnx2x_storm_stats_update._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @bnx2x_storm_stats_update._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 965, i32 3}
!100 = !{ptr @bnx2x_storm_stats_update._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @bnx2x_storm_stats_update._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 890, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bnx2x_storm_stats_validate_counters._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @bnx2x_storm_stats_validate_counters._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 897, i32 3}
!109 = !{ptr @bnx2x_storm_stats_validate_counters._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @bnx2x_storm_stats_validate_counters._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 904, i32 3}
!113 = !{ptr @bnx2x_storm_stats_validate_counters._entry.56, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @bnx2x_storm_stats_validate_counters._entry_ptr.58, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c", i32 911, i32 3}
!117 = !{ptr @bnx2x_storm_stats_validate_counters._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @bnx2x_storm_stats_validate_counters._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i8 0, i8 2}
!130 = !{i64 5103565}
!131 = !{i64 2157690625}
!132 = !{i64 2157692181}
!133 = !{i64 2158033938}
!134 = !{i64 2158035440}
!135 = !{i64 2158038690}
!136 = !{i64 2158039389}
!137 = !{i64 2158000240}
!138 = !{i64 2158001820}
!139 = !{i64 2148608444, i64 2148608449, i64 2148608462, i64 2148608506, i64 2148608540, i64 2148608561}
!140 = !{i64 2157891918}
!141 = !{i64 2157893628}
