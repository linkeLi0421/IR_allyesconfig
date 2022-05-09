; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/peer.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/peer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.108, %struct.anon.109, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.150], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.154, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.155, [0 x i8], [52 x i8] }
%struct.ath11k_qmi = type { ptr, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, ptr, %struct.list_head, %struct.spinlock, %struct.ath11k_qmi_ce_cfg, [52 x %struct.target_mem_chunk], i32, i32, i8, i8, %struct.target_info, %struct.m3_mem_region, i32, %struct.wait_queue_head }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ath11k_qmi_ce_cfg = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.target_mem_chunk = type { i32, i32, i32, ptr, ptr }
%struct.target_info = type { i32, i32, i32, i32, i32, i32, [33 x i8], [129 x i8], [32 x i8] }
%struct.m3_mem_region = type { i32, i32, ptr }
%struct.ath11k_wmi_base = type { ptr, [3 x %struct.ath11k_pdev_wmi], [3 x i32], [3 x i32], %struct.completion, %struct.completion, [8 x i32], %struct.wait_queue_head, ptr, i32, i32, [32 x %struct.wmi_host_mem_chunk], i32, %struct.target_resource_config, ptr }
%struct.ath11k_pdev_wmi = type { ptr, i32, ptr, i32, %struct.wait_queue_head }
%struct.wmi_host_mem_chunk = type { ptr, i32, i32, i32 }
%struct.target_resource_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_htc = type { ptr, [9 x %struct.ath11k_htc_ep], %struct.spinlock, [256 x i8], i32, %struct.completion, i32, [8 x %struct.ath11k_htc_svc_tx_credits], i32, i8 }
%struct.ath11k_htc_ep = type { ptr, i32, i32, %struct.ath11k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i8 }
%struct.ath11k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath11k_htc_svc_tx_credits = type { i16, i8 }
%struct.ath11k_dp = type { ptr, i32, %struct.completion, i8, i8, [8 x %struct.dp_link_desc_bank], %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, [4 x %struct.dp_srng], [3 x %struct.dp_tx_ring], [16 x %struct.hal_wbm_idle_scatter_list], %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.ath11k_hp_update_timer, [3 x %struct.ath11k_hp_update_timer] }
%struct.dp_link_desc_bank = type { ptr, ptr, i32, i32, i32 }
%struct.dp_srng = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.dp_tx_ring = type { i8, %struct.dp_srng, %struct.dp_srng, %struct.idr, %struct.spinlock, ptr, i32, i32 }
%struct.hal_wbm_idle_scatter_list = type { i32, ptr }
%struct.ath11k_hp_update_timer = type { %struct.timer_list, i8, i8, i32, i32, i32, i32, ptr }
%struct.anon.108 = type { i32, ptr }
%struct.anon.109 = type { %struct.completion }
%struct.ath11k_ce = type { [12 x %struct.ath11k_ce_pipe], %struct.spinlock, [12 x %struct.ath11k_hp_update_timer] }
%struct.ath11k_ce_pipe = type { ptr, i16, i32, i32, i32, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.110, i32 }
%union.anon.110 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.114, %struct.anon.115, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.111 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.anon.114 = type { ptr, i32 }
%struct.anon.115 = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.150 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.116, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.116 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.135 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ath11k_targ_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.151, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.153, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.151 = type { ptr, i32, i32 }
%struct.anon.153 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.154 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.155 = type { i32, i32, i32, i32, i32 }
%struct.ath11k_peer = type { %struct.list_head, ptr, i32, [6 x i8], i32, i16, i8, i16, [4 x ptr], [17 x %struct.dp_rx_tid], ptr, i8, i8, i16, i16, i8 }
%struct.dp_rx_tid = type { i8, ptr, i32, i32, i32, i8, i32, i16, i16, %struct.sk_buff_head, ptr, %struct.timer_list, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ath11k = type { ptr, ptr, ptr, ptr, ptr, %struct.ath11k_pdev_dp, [6 x i8], i32, i32, %struct.ath11k_he, i32, i8, %struct.anon.148, %struct.anon.149, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.completion, %struct.completion, i32, %struct.completion, i32, %struct.completion, %struct.completion, i32, i32, i32, i32, i64, %struct.idr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i8, [101 x %struct.survey_info], %struct.completion, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.ath11k_per_peer_tx_stats, %struct.list_head, i32, %struct.ath11k_per_peer_tx_stats, i32, i32, i32, %struct.ath11k_debug, %struct.ath11k_spectral, i8, %struct.ath11k_thermal, i32, %struct.completion, %struct.completion, i8, i8 }
%struct.ath11k_pdev_dp = type { i32, %struct.atomic_t, %struct.wait_queue_head, %struct.dp_rxdma_ring, [2 x %struct.dp_srng], [2 x %struct.dp_srng], %struct.dp_srng, %struct.dp_srng, %struct.dp_rxdma_ring, [2 x %struct.dp_rxdma_ring], [4 x i8], %struct.ieee80211_rx_status, %struct.ath11k_mon_data }
%struct.dp_rxdma_ring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ath11k_mon_data = type { [8 x %struct.dp_link_desc_bank], %struct.hal_rx_mon_ppdu_info, i32, i32, i64, i16, i8, i32, i32, ptr, %struct.hal_sw_mon_ring_entries, %struct.ath11k_pdev_mon_stats, %struct.spinlock, %struct.sk_buff_head }
%struct.hal_rx_mon_ppdu_info = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i64 }
%struct.hal_sw_mon_ring_entries = type { i32, i32, i32, i32, ptr, ptr, i16, i8, i8, i8, i8 }
%struct.ath11k_pdev_mon_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_he = type { [5 x i8], i32, i32, [3 x i32], %struct.he_ppe_threshold, i32 }
%struct.he_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.148 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.anon.149 = type { [6 x %struct.ieee80211_supported_band], [6 x [13 x %struct.ieee80211_sband_iftype_data]] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.136 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.136 = type { ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath11k_per_peer_tx_stats = type { i32, i32, i32, i16, i16, i16, i32, i8, i8 }
%struct.ath11k_debug = type { ptr, %struct.ath11k_dbg_htt_stats, i32, %struct.ath11k_fw_stats, %struct.completion, i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.ath11k_dbg_htt_stats = type { i8, i8, ptr, %struct.spinlock }
%struct.ath11k_fw_stats = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath11k_spectral = type { %struct.ath11k_dbring, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.ath11k_dbring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ath11k_thermal = type { ptr, %struct.completion, i32, i32 }
%struct.peer_create_params = type { ptr, i32, i32 }
%struct.ath11k_vif = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, ptr, ptr, i16, %struct.wmi_wmm_params_all_arg, %struct.list_head, %union.anon.156, i8, i8, i8, i8, i32, [6 x i8], %struct.cfg80211_bitrate_mask, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, %struct.ieee80211_chanctx_conf }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i8, i8, i16, i16, i16, i8 }
%union.anon.156 = type { %struct.anon.158 }
%struct.anon.158 = type { [16 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.1] }
%struct.anon.1 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath11k/peer.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"peer-unmap-event: unknown peer id %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htt peer unmap vdev %d peer %pM id %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htt peer map vdev %d peer %pM id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"removing stale peer %pM from vdev_id %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed wait for peer deleted\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout in receiving peer delete response\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to delete peer vdev_id %d addr %pM ret %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"failed to create peer due to insufficient peer entry resource in firmware\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to send peer create vdev_id %d ret %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to find peer %pM on vdev %i after creation\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to delete peer vdev_id %d addr %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 15, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 104, i32 19 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 109, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 141, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 182, i32 19 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 206, i32 23 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 213, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 231, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 261, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 276, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 291, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath11k/peer.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 299, i32 24 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_peer_find(ptr noundef %ab, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !33

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %peers = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  %1 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.049 = load ptr, ptr %peers, align 4
  %cmp26.not50 = icmp eq ptr %peer.049, %peers
  br i1 %cmp26.not50, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer.051 = phi ptr [ %peer.049, %for.body.lr.ph ], [ %peer.0, %for.inc.for.body_crit_edge ]
  %vdev_id29 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051, i32 0, i32 2
  %2 = ptrtoint ptr %vdev_id29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdev_id29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vdev_id)
  %cmp30.not = icmp eq i32 %3, %vdev_id
  br i1 %cmp30.not, label %if.end32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %addr33 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051, i32 0, i32 3
  %4 = ptrtoint ptr %addr33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr33, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i = getelementptr %struct.ath11k_peer, ptr %peer.051, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end32.cleanup_crit_edge, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %peer.051 to i32
  call void @__asan_load4_noabort(i32 %12)
  %peer.0 = load ptr, ptr %peer.051, align 4
  %cmp26.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp26.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %peer.051, %if.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_peer_find_by_addr(ptr noundef %ab, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !33

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %peers = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %peer.0.in = phi ptr [ %peers, %if.end ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp26.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp26.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr29 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.0, i32 0, i32 3
  %2 = ptrtoint ptr %addr29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr29, align 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %5, %3
  %add.ptr.i = getelementptr %struct.ath11k_peer, ptr %peer.0, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %9, %7
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %peer.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_peer_find_by_id(ptr noundef %ab, i32 noundef %peer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !33

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %peers = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %peer.0.in = phi ptr [ %peers, %if.end ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp26.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp26.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %peer_id29 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.0, i32 0, i32 4
  %2 = ptrtoint ptr %peer_id29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_id29, align 4
  %cmp30 = icmp eq i32 %3, %peer_id
  br i1 %cmp30, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %peer.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_peer_find_by_vdev_id(ptr noundef %ab, i32 noundef %vdev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  %peers = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %peer.0.in = phi ptr [ %peers, %entry ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %peer.0 = load ptr, ptr %peer.0.in, align 4
  %cmp.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %vdev_id2 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.0, i32 0, i32 2
  %1 = ptrtoint ptr %vdev_id2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vdev_id2, align 4
  %cmp3 = icmp eq i32 %2, %vdev_id
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %peer.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_peer_unmap_event(ptr noundef %ab, i16 noundef zeroext %peer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  %conv = zext i16 %peer_id to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !33

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %peer.0.in.i = phi ptr [ %peers.i, %if.end.i ], [ %peer.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %peer.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.0.i = load ptr, ptr %peer.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp26.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %peer_id29.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.0.i, i32 0, i32 4
  %2 = ptrtoint ptr %peer_id29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_id29.i, align 4
  %cmp30.i = icmp eq i32 %3, %conv
  br i1 %cmp30.i, label %ath11k_peer_find_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

ath11k_peer_find_by_id.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %peer.0.i, null
  br i1 %tobool.not, label %ath11k_peer_find_by_id.exit.if.then_crit_edge, label %do.body

ath11k_peer_find_by_id.exit.if.then_crit_edge:    ; preds = %ath11k_peer_find_by_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %ath11k_peer_find_by_id.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.1, i32 noundef %conv) #4
  br label %exit

do.body:                                          ; preds = %ath11k_peer_find_by_id.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %4 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_peer_unmap_event, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !34

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  %vdev_id = getelementptr inbounds %struct.ath11k_peer, ptr %peer.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vdev_id, align 4
  %addr = getelementptr inbounds %struct.ath11k_peer, ptr %peer.0.i, i32 0, i32 3
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %6, ptr noundef %addr, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %lor.lhs.false
  %call.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %peer.0.i) #4
  br i1 %call.i.i20, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %peer.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %peer.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %peer.0.i) #4
  %peer_mapping_wq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %peer_mapping_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %exit

exit:                                             ; preds = %list_del.exit, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_peer_map_event(ptr noundef %ab, i8 noundef zeroext %vdev_id, i16 noundef zeroext %peer_id, ptr noundef %mac_addr, i16 noundef zeroext %ast_hash, i16 noundef zeroext %hw_peer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  %conv = zext i8 %vdev_id to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !33

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  %1 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.049.i = load ptr, ptr %peers.i, align 4
  %cmp26.not50.i = icmp eq ptr %peer.049.i, %peers.i
  br i1 %cmp26.not50.i, label %if.end.i.if.then_crit_edge, label %for.body.lr.ph.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr i8, ptr %mac_addr, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %peer.051.i = phi ptr [ %peer.049.i, %for.body.lr.ph.i ], [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vdev_id29.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i, i32 0, i32 2
  %2 = ptrtoint ptr %vdev_id29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdev_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp30.not.i = icmp eq i32 %3, %conv
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body.i
  %addr33.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i, i32 0, i32 3
  %4 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr33.i, align 4
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr, align 4
  %xor.i.i = xor i32 %7, %5
  %add.ptr.i.i = getelementptr %struct.ath11k_peer, ptr %peer.051.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %11, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %ath11k_peer_find.exit, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %peer.051.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %peer.0.i = load ptr, ptr %peer.051.i, align 4
  %cmp26.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp26.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

ath11k_peer_find.exit:                            ; preds = %if.end32.i
  %tobool.not = icmp eq ptr %peer.051.i, null
  br i1 %tobool.not, label %ath11k_peer_find.exit.if.then_crit_edge, label %ath11k_peer_find.exit.do.body_crit_edge

ath11k_peer_find.exit.do.body_crit_edge:          ; preds = %ath11k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

ath11k_peer_find.exit.if.then_crit_edge:          ; preds = %ath11k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %ath11k_peer_find.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2848, i32 noundef 2512) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %if.then
  %vdev_id5 = getelementptr inbounds %struct.ath11k_peer, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %vdev_id5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %vdev_id5, align 4
  %conv6 = zext i16 %peer_id to i32
  %peer_id7 = getelementptr inbounds %struct.ath11k_peer, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %peer_id7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv6, ptr %peer_id7, align 8
  %ast_hash8 = getelementptr inbounds %struct.ath11k_peer, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %ast_hash8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %ast_hash, ptr %ast_hash8, align 4
  %hw_peer_id9 = getelementptr inbounds %struct.ath11k_peer, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %hw_peer_id9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %hw_peer_id, ptr %hw_peer_id9, align 8
  %addr = getelementptr inbounds %struct.ath11k_peer, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mac_addr, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %addr, align 8
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ath11k_peer, ptr %call7.i.i, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 4
  %24 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peers.i, align 4
  %call.i.i36 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %peers.i, ptr noundef %25) #4
  br i1 %call.i.i36, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %peers.i, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %peers.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %peer_mapping_wq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %peer_mapping_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %do.body

do.body:                                          ; preds = %list_add.exit, %ath11k_peer_find.exit.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %30 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %do.body.if.then14_crit_edge

do.body.if.then14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_peer_map_event, %if.then14)) #4
          to label %exit [label %if.then14], !srcloc !34

if.then14:                                        ; preds = %lor.lhs.false, %do.body.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  %conv16 = zext i16 %peer_id to i32
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 8, ptr noundef nonnull @.str.3, i32 noundef %conv, ptr noundef %mac_addr, i32 noundef %conv16) #4
  br label %exit

exit:                                             ; preds = %if.then14, %lor.lhs.false, %if.then.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_peer_cleanup(ptr noundef %ar, i32 noundef %vdev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !33

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  %peers = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peers, align 8
  %cmp33.not62 = icmp eq ptr %4, %peers
  br i1 %cmp33.not62, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %num_peers = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer.063 = phi ptr [ %4, %for.body.lr.ph ], [ %tmp.065, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %peer.063 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.065 = load ptr, ptr %peer.063, align 4
  %vdev_id36 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.063, i32 0, i32 2
  %6 = ptrtoint ptr %vdev_id36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vdev_id36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %vdev_id)
  %cmp37.not = icmp eq i32 %7, %vdev_id
  br i1 %cmp37.not, label %if.end39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %addr = getelementptr inbounds %struct.ath11k_peer, ptr %peer.063, i32 0, i32 3
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %addr, i32 noundef %vdev_id) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.063) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.list_del.exit_crit_edge

if.end39.list_del.exit_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.063, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %peer.063 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer.063, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end39.list_del.exit_crit_edge
  %14 = ptrtoint ptr %peer.063 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.063, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer.063, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %peer.063) #4
  %16 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_peers, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %num_peers, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp33.not = icmp eq ptr %tmp.065, %peers
  br i1 %cmp33.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_wait_for_peer_delete_done(ptr noundef %ar, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %call.i = tail call fastcc i32 @ath11k_wait_for_peer_common(ptr noundef %1, i32 noundef %vdev_id, ptr noundef %addr, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %peer_delete_done = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 38
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %peer_delete_done, i32 noundef 300) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.5, %entry.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ -110, %if.end.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %3, ptr noundef nonnull %.str.6.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_peer_delete(ptr noundef %ar, i32 noundef %vdev_id, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !33

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %peer_delete_done = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 38
  %1 = ptrtoint ptr %peer_delete_done to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %peer_delete_done, align 4
  %conv = trunc i32 %vdev_id to i8
  %call24 = tail call i32 @ath11k_wmi_send_peer_delete_cmd(ptr noundef %ar, ptr noundef %addr, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 8
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %vdev_id, ptr noundef %addr, i32 noundef %call24) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call.i.i = tail call fastcc i32 @ath11k_wait_for_peer_common(ptr noundef %3, i32 noundef %vdev_id, ptr noundef %addr, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.ath11k_wait_for_peer_delete_done.exit_crit_edge

if.end27.ath11k_wait_for_peer_delete_done.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath11k_wait_for_peer_delete_done.exit

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %peer_delete_done, i32 noundef 300) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.ath11k_wait_for_peer_delete_done.exit_crit_edge, label %if.end31

if.end.i.ath11k_wait_for_peer_delete_done.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath11k_wait_for_peer_delete_done.exit

ath11k_wait_for_peer_delete_done.exit:            ; preds = %if.end.i.ath11k_wait_for_peer_delete_done.exit_crit_edge, %if.end27.ath11k_wait_for_peer_delete_done.exit_crit_edge
  %.str.6.sink.i = phi ptr [ @.str.5, %if.end27.ath11k_wait_for_peer_delete_done.exit_crit_edge ], [ @.str.6, %if.end.i.ath11k_wait_for_peer_delete_done.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %if.end27.ath11k_wait_for_peer_delete_done.exit_crit_edge ], [ -110, %if.end.i.ath11k_wait_for_peer_delete_done.exit_crit_edge ]
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %5, ptr noundef nonnull %.str.6.sink.i) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %num_peers = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 44
  %6 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_peers, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %num_peers, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %ath11k_wait_for_peer_delete_done.exit, %if.then26
  %retval.0 = phi i32 [ %call24, %if.then26 ], [ 0, %if.end31 ], [ %retval.0.ph.i, %ath11k_wait_for_peer_delete_done.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_peer_delete_cmd(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_peer_create(ptr noundef %ar, ptr nocapture noundef %arvif, ptr noundef %sta, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !33

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %num_peers = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 44
  %1 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_peers, align 8
  %max_num_peers = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 45
  %3 = ptrtoint ptr %max_num_peers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_num_peers, align 4
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub)
  %cmp24 = icmp sgt i32 %2, %sub
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 8
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %6, ptr noundef nonnull @.str.8) #4
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %6, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  %7 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ar, align 8
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %9 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pdev_idx, align 4
  %11 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end26.if.end.i_crit_edge, label %land.rhs.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end26
  %dep_map.i = getelementptr inbounds %struct.ath11k_base, ptr %8, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !33

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end26.if.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath11k_base, ptr %8, i32 0, i32 25
  %14 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %peer.051.i = load ptr, ptr %peers.i, align 4
  %cmp26.not52.i = icmp eq ptr %peer.051.i, %peers.i
  br i1 %cmp26.not52.i, label %if.end.i.if.end34_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr i8, ptr %12, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %peer.053.i = phi ptr [ %peer.051.i, %for.body.lr.ph.i ], [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ]
  %pdev_idx29.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.053.i, i32 0, i32 6
  %15 = ptrtoint ptr %pdev_idx29.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pdev_idx29.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %10)
  %cmp31.not.i = icmp eq i8 %16, %10
  br i1 %cmp31.not.i, label %if.end34.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end34.i:                                       ; preds = %for.body.i
  %addr35.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.053.i, i32 0, i32 3
  %17 = ptrtoint ptr %addr35.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr35.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  %xor.i.i = xor i32 %20, %18
  %add.ptr.i.i = getelementptr %struct.ath11k_peer, ptr %peer.053.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i, align 2
  %23 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %24, %22
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %ath11k_peer_find_by_pdev_idx.exit, label %if.end34.i.for.inc.i_crit_edge

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end34.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %peer.053.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %peer.0.i = load ptr, ptr %peer.053.i, align 4
  %cmp26.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp26.not.i, label %for.inc.i.if.end34_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end34_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

ath11k_peer_find_by_pdev_idx.exit:                ; preds = %if.end34.i
  %tobool30.not = icmp eq ptr %peer.053.i, null
  br i1 %tobool30.not, label %ath11k_peer_find_by_pdev_idx.exit.if.end34_crit_edge, label %if.then31

ath11k_peer_find_by_pdev_idx.exit.if.end34_crit_edge: ; preds = %ath11k_peer_find_by_pdev_idx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %ath11k_peer_find_by_pdev_idx.exit
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar, align 8
  %base_lock33 = getelementptr inbounds %struct.ath11k_base, ptr %27, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock33) #4
  br label %cleanup

if.end34:                                         ; preds = %ath11k_peer_find_by_pdev_idx.exit.if.end34_crit_edge, %for.inc.i.if.end34_crit_edge, %if.end.i.if.end34_crit_edge
  %28 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ar, align 8
  %base_lock36 = getelementptr inbounds %struct.ath11k_base, ptr %29, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock36) #4
  %call37 = tail call i32 @ath11k_wmi_send_peer_create_cmd(ptr noundef %ar, ptr noundef %param) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar, align 8
  %vdev_id = getelementptr inbounds %struct.peer_create_params, ptr %param, i32 0, i32 2
  %32 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vdev_id, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef %33, i32 noundef %call37) #4
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %vdev_id42 = getelementptr inbounds %struct.peer_create_params, ptr %param, i32 0, i32 2
  %34 = ptrtoint ptr %vdev_id42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vdev_id42, align 4
  %36 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %param, align 4
  %38 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ar, align 8
  %call.i198 = tail call fastcc i32 @ath11k_wait_for_peer_common(ptr noundef %39, i32 noundef %35, ptr noundef %37, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool45.not = icmp eq i32 %call.i198, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %40 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ar, align 8
  %base_lock49 = getelementptr inbounds %struct.ath11k_base, ptr %41, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock49) #4
  %42 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar, align 8
  %44 = ptrtoint ptr %vdev_id42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vdev_id42, align 4
  %46 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %param, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %48 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i199 = icmp eq i32 %48, 0
  br i1 %tobool.not.i199, label %if.end47.if.end.i206_crit_edge, label %land.rhs.i203

if.end47.if.end.i206_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i206

land.rhs.i203:                                    ; preds = %if.end47
  %dep_map.i200 = getelementptr inbounds %struct.ath11k_base, ptr %43, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i201 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i200, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %cmp.not.i202 = icmp eq i32 %call.i.i201, 0
  br i1 %cmp.not.i202, label %do.end.i204, label %land.rhs.i203.if.end.i206_crit_edge, !prof !33

land.rhs.i203.if.end.i206_crit_edge:              ; preds = %land.rhs.i203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i206

do.end.i204:                                      ; preds = %land.rhs.i203
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i206

if.end.i206:                                      ; preds = %do.end.i204, %land.rhs.i203.if.end.i206_crit_edge, %if.end47.if.end.i206_crit_edge
  %peers.i205 = getelementptr inbounds %struct.ath11k_base, ptr %43, i32 0, i32 25
  %49 = ptrtoint ptr %peers.i205 to i32
  call void @__asan_load4_noabort(i32 %49)
  %peer.049.i = load ptr, ptr %peers.i205, align 4
  %cmp26.not50.i = icmp eq ptr %peer.049.i, %peers.i205
  br i1 %cmp26.not50.i, label %if.end.i206.if.then55_crit_edge, label %for.body.lr.ph.i208

if.end.i206.if.then55_crit_edge:                  ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.body.lr.ph.i208:                              ; preds = %if.end.i206
  %add.ptr1.i.i207 = getelementptr i8, ptr %47, i32 4
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i219.for.body.i210_crit_edge, %for.body.lr.ph.i208
  %peer.051.i209 = phi ptr [ %peer.049.i, %for.body.lr.ph.i208 ], [ %peer.0.i217, %for.inc.i219.for.body.i210_crit_edge ]
  %vdev_id29.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 2
  %50 = ptrtoint ptr %vdev_id29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vdev_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %45)
  %cmp30.not.i = icmp eq i32 %51, %45
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body.i210.for.inc.i219_crit_edge

for.body.i210.for.inc.i219_crit_edge:             ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i219

if.end32.i:                                       ; preds = %for.body.i210
  %addr33.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 3
  %52 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr33.i, align 4
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %47, align 4
  %xor.i.i211 = xor i32 %55, %53
  %add.ptr.i.i212 = getelementptr %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i212 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i212, align 2
  %58 = ptrtoint ptr %add.ptr1.i.i207 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr1.i.i207, align 2
  %xor37.i.i213 = xor i16 %59, %57
  %xor3.i.i214 = zext i16 %xor37.i.i213 to i32
  %or.i.i215 = or i32 %xor.i.i211, %xor3.i.i214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i215)
  %cmp.i.i216 = icmp eq i32 %or.i.i215, 0
  br i1 %cmp.i.i216, label %ath11k_peer_find.exit, label %if.end32.i.for.inc.i219_crit_edge

if.end32.i.for.inc.i219_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i219

for.inc.i219:                                     ; preds = %if.end32.i.for.inc.i219_crit_edge, %for.body.i210.for.inc.i219_crit_edge
  %60 = ptrtoint ptr %peer.051.i209 to i32
  call void @__asan_load4_noabort(i32 %60)
  %peer.0.i217 = load ptr, ptr %peer.051.i209, align 4
  %cmp26.not.i218 = icmp eq ptr %peer.0.i217, %peers.i205
  br i1 %cmp26.not.i218, label %for.inc.i219.if.then55_crit_edge, label %for.inc.i219.for.body.i210_crit_edge

for.inc.i219.for.body.i210_crit_edge:             ; preds = %for.inc.i219
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i210

for.inc.i219.if.then55_crit_edge:                 ; preds = %for.inc.i219
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

ath11k_peer_find.exit:                            ; preds = %if.end32.i
  %tobool54.not = icmp eq ptr %peer.051.i209, null
  br i1 %tobool54.not, label %ath11k_peer_find.exit.if.then55_crit_edge, label %if.end76

ath11k_peer_find.exit.if.then55_crit_edge:        ; preds = %ath11k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

if.then55:                                        ; preds = %ath11k_peer_find.exit.if.then55_crit_edge, %for.inc.i219.if.then55_crit_edge, %if.end.i206.if.then55_crit_edge
  %61 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ar, align 8
  %base_lock57 = getelementptr inbounds %struct.ath11k_base, ptr %62, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock57) #4
  %63 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ar, align 8
  %65 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %param, align 4
  %67 = ptrtoint ptr %vdev_id42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vdev_id42, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %64, ptr noundef nonnull @.str.10, ptr noundef %66, i32 noundef %68) #4
  %peer_delete_done = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 38
  %69 = ptrtoint ptr %peer_delete_done to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %peer_delete_done, align 4
  %70 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %param, align 4
  %72 = ptrtoint ptr %vdev_id42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vdev_id42, align 4
  %conv = trunc i32 %73 to i8
  %call63 = tail call i32 @ath11k_wmi_send_peer_delete_cmd(ptr noundef %ar, ptr noundef %71, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end69, label %if.then65

if.then65:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ar, align 8
  %76 = ptrtoint ptr %vdev_id42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vdev_id42, align 4
  %78 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %param, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %75, ptr noundef nonnull @.str.11, i32 noundef %77, ptr noundef %79) #4
  br label %cleanup

if.end69:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %vdev_id42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vdev_id42, align 4
  %82 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %param, align 4
  %call72 = tail call i32 @ath11k_wait_for_peer_delete_done(ptr noundef %ar, i32 noundef %81, ptr noundef %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  %.call72 = select i1 %tobool73.not, i32 -2, i32 %call72
  br label %cleanup

if.end76:                                         ; preds = %ath11k_peer_find.exit
  %84 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pdev_idx, align 4
  %pdev_idx78 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 6
  %86 = ptrtoint ptr %pdev_idx78 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %pdev_idx78, align 2
  %sta79 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 1
  %87 = ptrtoint ptr %sta79 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %sta, ptr %sta79, align 4
  %vif = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 11
  %88 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vif, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp80 = icmp eq i32 %91, 2
  br i1 %cmp80, label %if.then82, label %if.end76.if.end84_crit_edge

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %ast_hash = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 5
  %92 = ptrtoint ptr %ast_hash to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %ast_hash, align 4
  %ast_hash83 = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 5
  %94 = ptrtoint ptr %ast_hash83 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %ast_hash83, align 4
  %hw_peer_id = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 7
  %95 = ptrtoint ptr %hw_peer_id to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %hw_peer_id, align 4
  %ast_idx = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 6
  %97 = ptrtoint ptr %ast_idx to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %ast_idx, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end76.if.end84_crit_edge
  %sec_type = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 13
  %98 = ptrtoint ptr %sec_type to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 7, ptr %sec_type, align 2
  %sec_type_grp = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 14
  %99 = ptrtoint ptr %sec_type_grp to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 7, ptr %sec_type_grp, align 4
  %tobool85.not = icmp eq ptr %sta, null
  br i1 %tobool85.not, label %if.end84.if.end132_crit_edge, label %do.end121

if.end84.if.end132_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

do.end121:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %peer_id = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i209, i32 0, i32 4
  %100 = ptrtoint ptr %peer_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %peer_id, align 4
  %tcl_metadata = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 10
  %102 = ptrtoint ptr %tcl_metadata to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %tcl_metadata, align 2
  %.tr = trunc i32 %101 to i16
  %104 = shl i16 %.tr, 2
  %.masked = and i16 %103, -3
  %105 = or i16 %.masked, %104
  store i16 %105, ptr %tcl_metadata, align 2
  br label %if.end132

if.end132:                                        ; preds = %do.end121, %if.end84.if.end132_crit_edge
  %106 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_peers, align 8
  %inc = add i32 %107, 1
  store i32 %inc, ptr %num_peers, align 8
  %108 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ar, align 8
  %base_lock135 = getelementptr inbounds %struct.ath11k_base, ptr %109, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock135) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end69, %if.then65, %if.end41.cleanup_crit_edge, %if.then39, %if.then31, %if.then25
  %retval.0 = phi i32 [ -105, %if.then25 ], [ -22, %if.then31 ], [ %call37, %if.then39 ], [ 0, %if.end132 ], [ %call63, %if.then65 ], [ %call.i198, %if.end41.cleanup_crit_edge ], [ %.call72, %if.end69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_peer_create_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_wait_for_peer_common(ptr noundef %ab, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr, i1 noundef zeroext %expect_mapped) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 162) #4
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !33

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 25
  %1 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.049.i = load ptr, ptr %peers.i, align 4
  %cmp26.not50.i = icmp eq ptr %peer.049.i, %peers.i
  br i1 %cmp26.not50.i, label %if.end.i.ath11k_peer_find.exit.thr_comm_crit_edge, label %for.body.lr.ph.i

if.end.i.ath11k_peer_find.exit.thr_comm_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath11k_peer_find.exit.thr_comm

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %peer.051.i = phi ptr [ %peer.049.i, %for.body.lr.ph.i ], [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vdev_id29.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i, i32 0, i32 2
  %2 = ptrtoint ptr %vdev_id29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdev_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vdev_id)
  %cmp30.not.i = icmp eq i32 %3, %vdev_id
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body.i
  %addr33.i = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i, i32 0, i32 3
  %4 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr33.i, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %7, %5
  %add.ptr.i.i = getelementptr %struct.ath11k_peer, ptr %peer.051.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %11, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %ath11k_peer_find.exit, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %peer.051.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %peer.0.i = load ptr, ptr %peer.051.i, align 4
  %cmp26.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp26.not.i, label %for.inc.i.ath11k_peer_find.exit.thr_comm_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.ath11k_peer_find.exit.thr_comm_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath11k_peer_find.exit.thr_comm

ath11k_peer_find.exit.thr_comm:                   ; preds = %for.inc.i.ath11k_peer_find.exit.thr_comm_crit_edge, %if.end.i.ath11k_peer_find.exit.thr_comm_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  br i1 %expect_mapped, label %ath11k_peer_find.exit.thr_comm.lor.rhs_crit_edge, label %ath11k_peer_find.exit.thr_comm.if.end74.thread_crit_edge

ath11k_peer_find.exit.thr_comm.if.end74.thread_crit_edge: ; preds = %ath11k_peer_find.exit.thr_comm
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.thread

ath11k_peer_find.exit.thr_comm.lor.rhs_crit_edge: ; preds = %ath11k_peer_find.exit.thr_comm
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

ath11k_peer_find.exit:                            ; preds = %if.end32.i
  %tobool = icmp eq ptr %peer.051.i, null
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  %cmp = xor i1 %tobool, %expect_mapped
  br i1 %cmp, label %ath11k_peer_find.exit.if.end74.thread_crit_edge, label %ath11k_peer_find.exit.lor.rhs_crit_edge

ath11k_peer_find.exit.lor.rhs_crit_edge:          ; preds = %ath11k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

ath11k_peer_find.exit.if.end74.thread_crit_edge:  ; preds = %ath11k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.thread

lor.rhs:                                          ; preds = %ath11k_peer_find.exit.lor.rhs_crit_edge, %ath11k_peer_find.exit.thr_comm.lor.rhs_crit_edge
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %13 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.then27, label %lor.rhs.if.end74.thread_crit_edge

lor.rhs.if.end74.thread_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.thread

if.then27:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %peer_mapping_wq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 26
  %dep_map.i104 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %add.ptr1.i.i113 = getelementptr i8, ptr %addr, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then27
  %__ret28.0 = phi i32 [ 300, %if.then27 ], [ %call71, %cleanup ]
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  call void @_raw_spin_lock_bh(ptr noundef %base_lock) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i103 = icmp eq i32 %17, 0
  br i1 %tobool.not.i103, label %for.cond.if.end.i112_crit_edge, label %land.rhs.i107

for.cond.if.end.i112_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i112

land.rhs.i107:                                    ; preds = %for.cond
  %call.i.i105 = call i32 @lock_is_held_type(ptr noundef %dep_map.i104, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %cmp.not.i106 = icmp eq i32 %call.i.i105, 0
  br i1 %cmp.not.i106, label %do.end.i108, label %land.rhs.i107.if.end.i112_crit_edge, !prof !33

land.rhs.i107.if.end.i112_crit_edge:              ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i112

do.end.i108:                                      ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i112

if.end.i112:                                      ; preds = %do.end.i108, %land.rhs.i107.if.end.i112_crit_edge, %for.cond.if.end.i112_crit_edge
  %18 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %peer.049.i110 = load ptr, ptr %peers.i, align 4
  %cmp26.not50.i111 = icmp eq ptr %peer.049.i110, %peers.i
  br i1 %cmp26.not50.i111, label %if.end.i112.ath11k_peer_find.exit131.thr_comm_crit_edge, label %if.end.i112.for.body.i118_crit_edge

if.end.i112.for.body.i118_crit_edge:              ; preds = %if.end.i112
  br label %for.body.i118

if.end.i112.ath11k_peer_find.exit131.thr_comm_crit_edge: ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath11k_peer_find.exit131.thr_comm

for.body.i118:                                    ; preds = %for.inc.i129.for.body.i118_crit_edge, %if.end.i112.for.body.i118_crit_edge
  %peer.051.i115 = phi ptr [ %peer.0.i127, %for.inc.i129.for.body.i118_crit_edge ], [ %peer.049.i110, %if.end.i112.for.body.i118_crit_edge ]
  %vdev_id29.i116 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i115, i32 0, i32 2
  %19 = ptrtoint ptr %vdev_id29.i116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vdev_id29.i116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %vdev_id)
  %cmp30.not.i117 = icmp eq i32 %20, %vdev_id
  br i1 %cmp30.not.i117, label %if.end32.i126, label %for.body.i118.for.inc.i129_crit_edge

for.body.i118.for.inc.i129_crit_edge:             ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i129

if.end32.i126:                                    ; preds = %for.body.i118
  %addr33.i119 = getelementptr inbounds %struct.ath11k_peer, ptr %peer.051.i115, i32 0, i32 3
  %21 = ptrtoint ptr %addr33.i119 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr33.i119, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %xor.i.i120 = xor i32 %24, %22
  %add.ptr.i.i121 = getelementptr %struct.ath11k_peer, ptr %peer.051.i115, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i121, align 2
  %27 = ptrtoint ptr %add.ptr1.i.i113 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i.i113, align 2
  %xor37.i.i122 = xor i16 %28, %26
  %xor3.i.i123 = zext i16 %xor37.i.i122 to i32
  %or.i.i124 = or i32 %xor.i.i120, %xor3.i.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i124)
  %cmp.i.i125 = icmp eq i32 %or.i.i124, 0
  br i1 %cmp.i.i125, label %ath11k_peer_find.exit131, label %if.end32.i126.for.inc.i129_crit_edge

if.end32.i126.for.inc.i129_crit_edge:             ; preds = %if.end32.i126
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i129

for.inc.i129:                                     ; preds = %if.end32.i126.for.inc.i129_crit_edge, %for.body.i118.for.inc.i129_crit_edge
  %29 = ptrtoint ptr %peer.051.i115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %peer.0.i127 = load ptr, ptr %peer.051.i115, align 4
  %cmp26.not.i128 = icmp eq ptr %peer.0.i127, %peers.i
  br i1 %cmp26.not.i128, label %for.inc.i129.ath11k_peer_find.exit131.thr_comm_crit_edge, label %for.inc.i129.for.body.i118_crit_edge

for.inc.i129.for.body.i118_crit_edge:             ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i118

for.inc.i129.ath11k_peer_find.exit131.thr_comm_crit_edge: ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath11k_peer_find.exit131.thr_comm

ath11k_peer_find.exit131.thr_comm:                ; preds = %for.inc.i129.ath11k_peer_find.exit131.thr_comm_crit_edge, %if.end.i112.ath11k_peer_find.exit131.thr_comm_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  br i1 %expect_mapped, label %ath11k_peer_find.exit131.thr_comm.lor.end50_crit_edge, label %ath11k_peer_find.exit131.thr_comm.lor.end50.thread_crit_edge

ath11k_peer_find.exit131.thr_comm.lor.end50.thread_crit_edge: ; preds = %ath11k_peer_find.exit131.thr_comm
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end50.thread

ath11k_peer_find.exit131.thr_comm.lor.end50_crit_edge: ; preds = %ath11k_peer_find.exit131.thr_comm
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end50

ath11k_peer_find.exit131:                         ; preds = %if.end32.i126
  %tobool34 = icmp eq ptr %peer.051.i115, null
  call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #4
  %cmp44 = xor i1 %tobool34, %expect_mapped
  br i1 %cmp44, label %ath11k_peer_find.exit131.lor.end50.thread_crit_edge, label %ath11k_peer_find.exit131.lor.end50_crit_edge

ath11k_peer_find.exit131.lor.end50_crit_edge:     ; preds = %ath11k_peer_find.exit131
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end50

ath11k_peer_find.exit131.lor.end50.thread_crit_edge: ; preds = %ath11k_peer_find.exit131
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end50.thread

lor.end50.thread:                                 ; preds = %ath11k_peer_find.exit131.lor.end50.thread_crit_edge, %ath11k_peer_find.exit131.thr_comm.lor.end50.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %tobool57.not134 = icmp eq i32 %__ret28.0, 0
  br i1 %tobool57.not134, label %if.end74.thread144, label %lor.end50.thread.if.end74_crit_edge

lor.end50.thread.if.end74_crit_edge:              ; preds = %lor.end50.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

lor.end50:                                        ; preds = %ath11k_peer_find.exit131.lor.end50_crit_edge, %ath11k_peer_find.exit131.thr_comm.lor.end50_crit_edge
  %30 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dev_flags, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool49.not = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %tobool64.not = icmp eq i32 %__ret28.0, 0
  br i1 %tobool49.not, label %33, label %if.end74.loopexit.split.loop.exit152

33:                                               ; preds = %lor.end50
  br i1 %tobool64.not, label %if.end74.thread164, label %cleanup

if.end74.thread164:                               ; preds = %33
  call void @__sanitizer_cov_trace_pc() #6
  call void @finish_wait(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end74.thread

cleanup:                                          ; preds = %33
  call void @__sanitizer_cov_trace_pc() #6
  %call71 = call i32 @schedule_timeout(i32 noundef %__ret28.0) #4
  br label %for.cond

if.end74.thread144:                               ; preds = %lor.end50.thread
  call void @__sanitizer_cov_trace_pc() #6
  call void @finish_wait(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end74.thread

if.end74.loopexit.split.loop.exit152:             ; preds = %lor.end50
  br i1 %tobool64.not, label %if.end74.thread161, label %if.end74.loopexit.split.loop.exit152.if.end74_crit_edge

if.end74.loopexit.split.loop.exit152.if.end74_crit_edge: ; preds = %if.end74.loopexit.split.loop.exit152
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.end74.thread161:                               ; preds = %if.end74.loopexit.split.loop.exit152
  call void @__sanitizer_cov_trace_pc() #6
  call void @finish_wait(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %34

if.end74:                                         ; preds = %if.end74.loopexit.split.loop.exit152.if.end74_crit_edge, %lor.end50.thread.if.end74_crit_edge
  call void @finish_wait(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %cmp76.inv = icmp sgt i32 %__ret28.0, 0
  br i1 %cmp76.inv, label %if.end74._crit_edge, label %if.end74.if.end74.thread_crit_edge

if.end74.if.end74.thread_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.thread

if.end74._crit_edge:                              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %34

34:                                               ; preds = %if.end74._crit_edge, %if.end74.thread161
  br label %if.end74.thread

if.end74.thread:                                  ; preds = %34, %if.end74.if.end74.thread_crit_edge, %if.end74.thread144, %if.end74.thread164, %lor.rhs.if.end74.thread_crit_edge, %ath11k_peer_find.exit.if.end74.thread_crit_edge, %ath11k_peer_find.exit.thr_comm.if.end74.thread_crit_edge
  %35 = phi i32 [ 0, %lor.rhs.if.end74.thread_crit_edge ], [ 0, %ath11k_peer_find.exit.if.end74.thread_crit_edge ], [ 0, %ath11k_peer_find.exit.thr_comm.if.end74.thread_crit_edge ], [ 0, %if.end74.thread144 ], [ 0, %34 ], [ -110, %if.end74.if.end74.thread_crit_edge ], [ -110, %if.end74.thread164 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 15, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 104, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 109, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 141, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 182, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 206, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 213, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 231, i32 8}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 261, i32 8}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 276, i32 8}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 291, i32 23}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/peer.c", i32 299, i32 24}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2148748240, i64 2148748245, i64 2148748258, i64 2148748302, i64 2148748336, i64 2148748357}
