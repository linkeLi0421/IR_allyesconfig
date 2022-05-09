; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/spectral.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/spectral.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rchan_callbacks = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_vif = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, ptr, ptr, i16, %struct.wmi_wmm_params_all_arg, %struct.list_head, %union.anon.152, i8, i8, i8, i8, i32, [6 x i8], %struct.cfg80211_bitrate_mask, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, %struct.ieee80211_chanctx_conf }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i8, i8, i16, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { [16 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.141] }
%struct.anon.141 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath11k_wmi_vdev_spectral_conf_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k = type { ptr, ptr, ptr, ptr, ptr, %struct.ath11k_pdev_dp, [6 x i8], i32, i32, %struct.ath11k_he, i32, i8, %struct.anon.150, %struct.anon.151, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.completion, %struct.completion, i32, %struct.completion, i32, %struct.completion, %struct.completion, i32, i32, i32, i32, i64, %struct.idr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i8, [101 x %struct.survey_info], %struct.completion, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.ath11k_per_peer_tx_stats, %struct.list_head, i32, %struct.ath11k_per_peer_tx_stats, i32, i32, i32, %struct.ath11k_debug, %struct.ath11k_spectral, i8, %struct.ath11k_thermal, i32, %struct.completion, %struct.completion, i8, i8 }
%struct.ath11k_pdev_dp = type { i32, %struct.atomic_t, %struct.wait_queue_head, %struct.dp_rxdma_ring, [2 x %struct.dp_srng], [2 x %struct.dp_srng], %struct.dp_srng, %struct.dp_srng, %struct.dp_rxdma_ring, [2 x %struct.dp_rxdma_ring], [4 x i8], %struct.ieee80211_rx_status, %struct.ath11k_mon_data }
%struct.dp_srng = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.dp_rxdma_ring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ath11k_mon_data = type { [8 x %struct.dp_link_desc_bank], %struct.hal_rx_mon_ppdu_info, i32, i32, i64, i16, i8, i32, i32, ptr, %struct.hal_sw_mon_ring_entries, %struct.ath11k_pdev_mon_stats, %struct.spinlock, %struct.sk_buff_head }
%struct.dp_link_desc_bank = type { ptr, ptr, i32, i32, i32 }
%struct.hal_rx_mon_ppdu_info = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i64 }
%struct.hal_sw_mon_ring_entries = type { i32, i32, i32, i32, ptr, ptr, i16, i8, i8, i8, i8 }
%struct.ath11k_pdev_mon_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_he = type { [5 x i8], i32, i32, [3 x i32], %struct.he_ppe_threshold, i32 }
%struct.he_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.150 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.anon.151 = type { [6 x %struct.ieee80211_supported_band], [6 x [13 x %struct.ieee80211_sband_iftype_data]] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ath11k_per_peer_tx_stats = type { i32, i32, i32, i16, i16, i16, i32, i8, i8 }
%struct.ath11k_debug = type { ptr, %struct.ath11k_dbg_htt_stats, i32, %struct.ath11k_fw_stats, %struct.completion, i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.ath11k_dbg_htt_stats = type { i8, i8, ptr, %struct.spinlock }
%struct.ath11k_fw_stats = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath11k_spectral = type { %struct.ath11k_dbring, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.ath11k_dbring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ath11k_thermal = type { ptr, %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.101, %struct.anon.102, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.109], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.136, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.137, [0 x i8], [52 x i8] }
%struct.ath11k_qmi = type { ptr, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, ptr, %struct.list_head, %struct.spinlock, %struct.ath11k_qmi_ce_cfg, [52 x %struct.target_mem_chunk], i32, i32, i8, i8, %struct.target_info, %struct.m3_mem_region, i32, %struct.wait_queue_head }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dp_tx_ring = type { i8, %struct.dp_srng, %struct.dp_srng, %struct.idr, %struct.spinlock, ptr, i32, i32 }
%struct.hal_wbm_idle_scatter_list = type { i32, ptr }
%struct.ath11k_hp_update_timer = type { %struct.timer_list, i8, i8, i32, i32, i32, i32, ptr }
%struct.anon.101 = type { i32, ptr }
%struct.anon.102 = type { %struct.completion }
%struct.ath11k_ce = type { [12 x %struct.ath11k_ce_pipe], %struct.spinlock, [12 x %struct.ath11k_hp_update_timer] }
%struct.ath11k_ce_pipe = type { ptr, i16, i32, i32, i32, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.103, i32 }
%union.anon.103 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.107, %struct.anon.108, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.anon.107 = type { ptr, i32 }
%struct.anon.108 = type { ptr, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.109 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.110, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.132, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.110 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.132 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ath11k_targ_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.133, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.135, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.133 = type { ptr, i32, i32 }
%struct.anon.135 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.136 = type { i32 }
%struct.anon.137 = type { i32, i32, i32, i32, i32 }
%struct.ath11k_dbring_cap = type { i32, i32, i32, i32, i32 }
%struct.ath11k_spectral_summary_report = type { %struct.wmi_dma_buf_release_meta_data, i32, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.wmi_dma_buf_release_meta_data = type { i32, [8 x i32], i32, i32, i32, i32 }
%struct.ath11k_dbring_data = type { ptr, i32, %struct.wmi_dma_buf_release_meta_data }
%struct.fft_sample_ath11k = type <{ %struct.fft_sample_tlv, i8, i8, i8, i16, i16, i16, i16, i32, i32, [0 x i8] }>
%struct.fft_sample_tlv = type <{ i8, i16 }>
%struct.spectral_tlv = type { i32, i32 }
%struct.spectral_summary_fft_report = type { i32, i32, i32, i32, i32, i32 }
%struct.spectral_search_fft_report = type { i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.rchan = type { i32, i32, i32, i32, ptr, %struct.kref, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, [255 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rchan_buf = type { ptr, ptr, i32, i32, i32, ptr, %struct.wait_queue_head, %struct.irq_work, ptr, %struct.kref, ptr, i32, i32, ptr, i32, i32, i32, i32, [124 x i8] }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@ath11k_spectral_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sp->rx_ring.idr_lock\00", [42 x i8] zeroinitializer }, align 32
@ath11k_spectral_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&sp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to init spectral ring for pdev %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register spectral for pdev %d\0A\00", [55 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath11k/spectral.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable spectral scan: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to configure spectral scan: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to setup db ring\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to setup db ring buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup db ring cfg\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to parse spectral tlv hdr at bytes %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid sign 0x%x at bytes %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"failed to parse spectral tlv payload at bytes %d tlv_len:%d data_len:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"found magic value in spectral summary, dropping\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to parse spectral search fft at bytes %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to process spectral fft at bytes %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid bin size type for hw rev %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mismatch in expected bin len %d and data len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid num of bins %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"found magic value in fft data, dropping\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid channel width %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spectral_scan\00", [18 x i8] zeroinitializer }, align 32
@rfs_scan_cb = internal constant { %struct.rchan_callbacks, [20 x i8] } { %struct.rchan_callbacks { ptr null, ptr @create_buf_file_handler, ptr @remove_buf_file_handler }, [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to open relay in pdev %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spectral_scan_ctl\00", [46 x i8] zeroinitializer }, align 32
@fops_scan_ctl = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_file_spec_scan_ctl, ptr @ath11k_write_file_spec_scan_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to open debugfs in pdev %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spectral_count\00", [17 x i8] zeroinitializer }, align 32
@fops_scan_count = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_file_spectral_count, ptr @ath11k_write_file_spectral_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spectral_bins\00", [18 x i8] zeroinitializer }, align 32
@fops_scan_bins = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_file_spectral_bins, ptr @ath11k_write_file_spectral_bins, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@relay_file_operations = external dso_local constant %struct.file_operations, align 4
@.str.31 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"background\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to reconfigure spectral scan: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to trigger spectral scan: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.ath11k_read_file_spec_scan_ctl = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 20, i64 40, i64 80]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 993, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 994, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 998, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1014, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 208, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 221, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 255, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 378, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 811, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 822, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 829, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 712, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 722, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 733, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 760, i32 25 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 771, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 782, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 589, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 601, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 614, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 621, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 640, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 916, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"rfs_scan_cb\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 149, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 922, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 927, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"fops_scan_ctl\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 348, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 932, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 938, i32 48 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"fops_scan_count\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 400, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 949, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"fops_scan_bins\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 459, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 267, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 277, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 280, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 283, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 308, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 316, i32 25 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 323, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 156, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath11k/spectral.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 369, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant [44 x i8] c"switch.table.ath11k_read_file_spec_scan_ctl\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @ath11k_spectral_init.__key, ptr @.str, ptr @ath11k_spectral_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xa_init_flags.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @rfs_scan_cb, ptr @.str.26, ptr @.str.27, ptr @fops_scan_ctl, ptr @.str.28, ptr @.str.29, ptr @fops_scan_count, ptr @.str.30, ptr @fops_scan_bins, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @switch.table.ath11k_read_file_spec_scan_ctl], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_spectral_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_spectral_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfs_scan_cb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_scan_ctl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_scan_count to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_scan_bins to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_read_file_spec_scan_ctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_spectral_vif_stop(ptr nocapture noundef readonly %arvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %spectral_enabled = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 18
  %0 = ptrtoint ptr %spectral_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spectral_enabled, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ar = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 10
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  %call = tail call fastcc i32 @ath11k_spectral_scan_config(ptr noundef %3, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_spectral_scan_config(ptr noundef %ar, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.ath11k_wmi_vdev_spectral_conf_param, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %param) #12
  %0 = call ptr @memset(ptr %param, i32 0, i32 76)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end.i_crit_edge, label %land.rhs

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 208, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !105

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 158, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %arvifs.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 28
  %2 = ptrtoint ptr %arvifs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arvifs.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %arvifs.i
  br i1 %cmp.i.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %arvifs.i, %if.end.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp31.not.i = icmp eq ptr %.pn.i, %arvifs.i
  br i1 %cmp31.not.i, label %for.cond.i.ath11k_spectral_get_vdev.exit_crit_edge, label %for.body.i

for.cond.i.ath11k_spectral_get_vdev.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_spectral_get_vdev.exit

for.body.i:                                       ; preds = %for.cond.i
  %spectral_enabled.i = getelementptr i8, ptr %.pn.i, i32 78
  %5 = ptrtoint ptr %spectral_enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %spectral_enabled.i, align 2, !range !104
  %tobool34.not.i = icmp eq i8 %6, 0
  br i1 %tobool34.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.ath11k_spectral_get_vdev.exit_crit_edge

for.body.i.ath11k_spectral_get_vdev.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_spectral_get_vdev.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

ath11k_spectral_get_vdev.exit:                    ; preds = %for.body.i.ath11k_spectral_get_vdev.exit_crit_edge, %for.cond.i.ath11k_spectral_get_vdev.exit_crit_edge
  %.pn = phi ptr [ %3, %for.cond.i.ath11k_spectral_get_vdev.exit_crit_edge ], [ %.pn.i, %for.body.i.ath11k_spectral_get_vdev.exit_crit_edge ]
  %retval.0.i = getelementptr i8, ptr %.pn, i32 -80
  %tobool25.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool25.not, label %ath11k_spectral_get_vdev.exit.cleanup_crit_edge, label %if.end27

ath11k_spectral_get_vdev.exit.cleanup_crit_edge:  ; preds = %ath11k_spectral_get_vdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %ath11k_spectral_get_vdev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp28 = icmp ne i32 %mode, 0
  %spectral_enabled = getelementptr i8, ptr %.pn, i32 78
  %frombool = zext i1 %cmp28 to i8
  %7 = ptrtoint ptr %spectral_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %spectral_enabled, align 2
  %mode29 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 6
  %8 = ptrtoint ptr %mode29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mode, ptr %mode29, align 4
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i, align 4
  %call30 = tail call i32 @ath11k_wmi_vdev_spectral_enable(ptr noundef %ar, i32 noundef %10, i32 noundef 2, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %call30) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %13 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.else [
    i32 0, label %if.end33.cleanup_crit_edge
    i32 1, label %if.end33.if.end47_crit_edge
  ]

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %count40 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 7
  %14 = ptrtoint ptr %count40 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count40, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp43 = icmp eq i16 %15, 0
  %narrow = select i1 %cmp43, i16 1, i16 %15
  %cond = zext i16 %narrow to i32
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end33.if.end47_crit_edge
  %count.0 = phi i32 [ %cond, %if.else ], [ 0, %if.end33.if.end47_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i, align 4
  %18 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %param, align 4
  %scan_count = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 1
  %19 = ptrtoint ptr %scan_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %count.0, ptr %scan_count, align 4
  %fft_size = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 8
  %20 = ptrtoint ptr %fft_size to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fft_size, align 2
  %conv51 = zext i8 %21 to i32
  %scan_fft_size = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 4
  %22 = ptrtoint ptr %scan_fft_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv51, ptr %scan_fft_size, align 4
  %scan_period = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 2
  %23 = ptrtoint ptr %scan_period to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 224, ptr %scan_period, align 4
  %scan_priority = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 3
  %24 = ptrtoint ptr %scan_priority to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %scan_priority, align 4
  %scan_gc_ena = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 5
  %25 = ptrtoint ptr %scan_gc_ena to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %scan_gc_ena, align 4
  %scan_restart_ena = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 6
  %26 = ptrtoint ptr %scan_restart_ena to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %scan_restart_ena, align 4
  %scan_noise_floor_ref = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 7
  %27 = ptrtoint ptr %scan_noise_floor_ref to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -96, ptr %scan_noise_floor_ref, align 4
  %scan_init_delay = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 8
  %28 = ptrtoint ptr %scan_init_delay to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 80, ptr %scan_init_delay, align 4
  %scan_nb_tone_thr = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 9
  %29 = ptrtoint ptr %scan_nb_tone_thr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 12, ptr %scan_nb_tone_thr, align 4
  %scan_str_bin_thr = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 10
  %30 = ptrtoint ptr %scan_str_bin_thr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %scan_str_bin_thr, align 4
  %scan_wb_rpt_mode = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 11
  %31 = ptrtoint ptr %scan_wb_rpt_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %scan_wb_rpt_mode, align 4
  %scan_rssi_rpt_mode = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 12
  %32 = ptrtoint ptr %scan_rssi_rpt_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %scan_rssi_rpt_mode, align 4
  %scan_rssi_thr = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 13
  %33 = ptrtoint ptr %scan_rssi_thr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 240, ptr %scan_rssi_thr, align 4
  %scan_pwr_format = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 14
  %34 = ptrtoint ptr %scan_pwr_format to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %scan_pwr_format, align 4
  %scan_rpt_mode = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 15
  %35 = ptrtoint ptr %scan_rpt_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %scan_rpt_mode, align 4
  %scan_bin_scale = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 16
  %36 = ptrtoint ptr %scan_bin_scale to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %scan_bin_scale, align 4
  %scan_dbm_adj = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 17
  %37 = ptrtoint ptr %scan_dbm_adj to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %scan_dbm_adj, align 4
  %scan_chn_mask = getelementptr inbounds %struct.ath11k_wmi_vdev_spectral_conf_param, ptr %param, i32 0, i32 18
  %38 = ptrtoint ptr %scan_chn_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %scan_chn_mask, align 4
  %call52 = call i32 @ath11k_wmi_vdev_spectral_conf(ptr noundef %ar, ptr noundef nonnull %param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end47.cleanup_crit_edge, label %if.then54

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ar, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %40, ptr noundef nonnull @.str.7, i32 noundef %call52) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end47.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then32, %ath11k_spectral_get_vdev.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then32 ], [ %call52, %if.then54 ], [ -19, %ath11k_spectral_get_vdev.exit.cleanup_crit_edge ], [ %mode, %if.end33.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_spectral_reset_buffer(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 9
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end:                                           ; preds = %entry
  %rfs_scan = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 2
  %2 = ptrtoint ptr %rfs_scan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rfs_scan, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @relay_reset(ptr noundef nonnull %3) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @relay_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_spectral_deinit(ptr nocapture noundef readonly %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %i.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %enabled = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 9
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %scan_bins.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 5
  %6 = ptrtoint ptr %scan_bins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_bins.i, align 8
  tail call void @debugfs_remove(ptr noundef %7) #12
  %8 = ptrtoint ptr %scan_bins.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scan_bins.i, align 8
  %scan_count.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 4
  %9 = ptrtoint ptr %scan_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_count.i, align 4
  tail call void @debugfs_remove(ptr noundef %10) #12
  %11 = ptrtoint ptr %scan_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %scan_count.i, align 4
  %scan_ctl.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 3
  %12 = ptrtoint ptr %scan_ctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scan_ctl.i, align 8
  tail call void @debugfs_remove(ptr noundef %13) #12
  %14 = ptrtoint ptr %scan_ctl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %scan_ctl.i, align 8
  %rfs_scan.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 2
  %15 = ptrtoint ptr %rfs_scan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rfs_scan.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.ath11k_spectral_debug_unregister.exit_crit_edge, label %if.then.i

if.end.ath11k_spectral_debug_unregister.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_spectral_debug_unregister.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @relay_close(ptr noundef nonnull %16) #12
  %17 = ptrtoint ptr %rfs_scan.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rfs_scan.i, align 4
  br label %ath11k_spectral_debug_unregister.exit

ath11k_spectral_debug_unregister.exit:            ; preds = %if.then.i, %if.end.ath11k_spectral_debug_unregister.exit_crit_edge
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i13 = icmp eq i8 %19, 0
  br i1 %tobool.not.i13, label %ath11k_spectral_debug_unregister.exit.ath11k_spectral_ring_free.exit_crit_edge, label %if.end.i

ath11k_spectral_debug_unregister.exit.ath11k_spectral_ring_free.exit_crit_edge: ; preds = %ath11k_spectral_debug_unregister.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_spectral_ring_free.exit

if.end.i:                                         ; preds = %ath11k_spectral_debug_unregister.exit
  call void @__sanitizer_cov_trace_pc() #14
  %spectral.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69
  tail call void @ath11k_dbring_srng_cleanup(ptr noundef %3, ptr noundef %spectral.i) #12
  tail call void @ath11k_dbring_buf_cleanup(ptr noundef %3, ptr noundef %spectral.i) #12
  br label %ath11k_spectral_ring_free.exit

ath11k_spectral_ring_free.exit:                   ; preds = %if.end.i, %ath11k_spectral_debug_unregister.exit.ath11k_spectral_ring_free.exit_crit_edge
  %lock = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mode = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 69, i32 6
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %mode, align 4
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %enabled, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %ath11k_spectral_ring_free.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %22 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_spectral_init(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  %db_cap = alloca %struct.ath11k_dbring_cap, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %db_cap) #12
  %0 = getelementptr inbounds %struct.ath11k_dbring_cap, ptr %db_cap, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 4, i32 6, i32 6
  %1 = call ptr @memset(ptr %db_cap, i32 255, i32 20)
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %spectral = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 25
  %5 = ptrtoint ptr %spectral to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %spectral, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %7 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp98 = icmp sgt i32 %8, 0
  br i1 %cmp98, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.099 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %i.099
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 35
  %13 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pdev_idx, align 4
  %call7 = call i32 @ath11k_dbring_get_cap(ptr noundef %12, i8 noundef zeroext %14, i32 noundef 0, ptr noundef nonnull %db_cap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %bufs_idr = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %bufs_idr, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_next.i.i, align 4
  %idr_lock = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %idr_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ath11k_spectral_init.__key, i16 noundef signext 3) #12
  %lock = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ath11k_spectral_init.__key.1, i16 noundef signext 3) #12
  %spectral.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %call.i = call i32 @ath11k_dbring_srng_setup(ptr noundef %10, ptr noundef %spectral.i, i32 noundef 0, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %22, ptr noundef nonnull @.str.9) #12
  br label %deinit

if.end.i:                                         ; preds = %if.end10
  %call2.i = call i32 @ath11k_dbring_set_cfg(ptr noundef %10, ptr noundef %spectral.i, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ath11k_spectral_process_data) #12
  %call4.i = call i32 @ath11k_dbring_buf_setup(ptr noundef %10, ptr noundef %spectral.i, ptr noundef nonnull %db_cap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %24, ptr noundef nonnull @.str.10) #12
  br label %srng_cleanup.i

if.end8.i:                                        ; preds = %if.end.i
  %call10.i = call i32 @ath11k_dbring_wmi_cfg_setup(ptr noundef %10, ptr noundef %spectral.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end20, label %if.then12.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %26, ptr noundef nonnull @.str.11) #12
  call void @ath11k_dbring_buf_cleanup(ptr noundef %10, ptr noundef %spectral.i) #12
  br label %srng_cleanup.i

srng_cleanup.i:                                   ; preds = %if.then12.i, %if.then6.i
  %ret.0.i = phi i32 [ %call4.i, %if.then6.i ], [ %call10.i, %if.then12.i ]
  call void @ath11k_dbring_srng_cleanup(ptr noundef %10, ptr noundef %spectral.i) #12
  br label %deinit

if.end20:                                         ; preds = %if.end8.i
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mode = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 6
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mode, align 4
  %count = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 7
  %28 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %count, align 4
  %fft_size = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 8
  %29 = ptrtoint ptr %fft_size to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %fft_size, align 2
  %enabled = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 9
  %30 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %enabled, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %debug.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 68
  %31 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debug.i, align 8
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %10, align 8
  %max_fft_bins.i = getelementptr inbounds %struct.ath11k_base, ptr %34, i32 0, i32 36, i32 25, i32 4
  %35 = ptrtoint ptr %max_fft_bins.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_fft_bins.i, align 4
  %37 = lshr i16 %36, 1
  %narrow.i = add nuw i16 %37, 22
  %add.i = zext i16 %narrow.i to i32
  %call.i56 = call ptr @relay_open(ptr noundef nonnull @.str.25, ptr noundef %32, i32 noundef %add.i, i32 noundef 2870, ptr noundef nonnull @rfs_scan_cb, ptr noundef null) #12
  %rfs_scan.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 2
  %38 = ptrtoint ptr %rfs_scan.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i56, ptr %rfs_scan.i, align 4
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %if.then.i58, label %if.end.i59

if.then.i58:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %10, align 8
  %41 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pdev_idx, align 4
  %conv5.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %40, ptr noundef nonnull @.str.26, i32 noundef %conv5.i) #12
  br label %deinit

if.end.i59:                                       ; preds = %if.end20
  %43 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debug.i, align 8
  %call8.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 384, ptr noundef %44, ptr noundef %10, ptr noundef nonnull @fops_scan_ctl) #12
  %scan_ctl.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 3
  %45 = ptrtoint ptr %scan_ctl.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i, ptr %scan_ctl.i, align 8
  %tobool12.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool12.not.i, label %if.end.i59.debug_unregister.i_crit_edge, label %if.end17.i

if.end.i59.debug_unregister.i_crit_edge:          ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_unregister.i

if.end17.i:                                       ; preds = %if.end.i59
  %46 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %debug.i, align 8
  %call20.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %47, ptr noundef %10, ptr noundef nonnull @fops_scan_count) #12
  %scan_count.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 4
  %48 = ptrtoint ptr %scan_count.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call20.i, ptr %scan_count.i, align 4
  %tobool24.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool24.not.i, label %if.end17.i.debug_unregister.i_crit_edge, label %if.end29.i

if.end17.i.debug_unregister.i_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_unregister.i

if.end29.i:                                       ; preds = %if.end17.i
  %49 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debug.i, align 8
  %call32.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 384, ptr noundef %50, ptr noundef %10, ptr noundef nonnull @fops_scan_bins) #12
  %scan_bins.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 5
  %51 = ptrtoint ptr %scan_bins.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call32.i, ptr %scan_bins.i, align 8
  %tobool36.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool36.not.i, label %if.end29.i.debug_unregister.i_crit_edge, label %if.end29.i.for.inc_crit_edge

if.end29.i.for.inc_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end29.i.debug_unregister.i_crit_edge:          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_unregister.i

debug_unregister.i:                               ; preds = %if.end29.i.debug_unregister.i_crit_edge, %if.end17.i.debug_unregister.i_crit_edge, %if.end.i59.debug_unregister.i_crit_edge
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %10, align 8
  %54 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pdev_idx, align 4
  %conv40.i = zext i8 %55 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %53, ptr noundef nonnull @.str.28, i32 noundef %conv40.i) #12
  %scan_bins.i.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 5
  %56 = ptrtoint ptr %scan_bins.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scan_bins.i.i, align 8
  call void @debugfs_remove(ptr noundef %57) #12
  %58 = ptrtoint ptr %scan_bins.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %scan_bins.i.i, align 8
  %scan_count.i.i = getelementptr inbounds %struct.ath11k, ptr %10, i32 0, i32 69, i32 4
  %59 = ptrtoint ptr %scan_count.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scan_count.i.i, align 4
  call void @debugfs_remove(ptr noundef %60) #12
  %61 = ptrtoint ptr %scan_count.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %scan_count.i.i, align 4
  %62 = ptrtoint ptr %scan_ctl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scan_ctl.i, align 8
  call void @debugfs_remove(ptr noundef %63) #12
  %64 = ptrtoint ptr %scan_ctl.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %scan_ctl.i, align 8
  %65 = ptrtoint ptr %rfs_scan.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rfs_scan.i, align 4
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %debug_unregister.i.deinit_crit_edge, label %if.then.i.i

debug_unregister.i.deinit_crit_edge:              ; preds = %debug_unregister.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %deinit

if.then.i.i:                                      ; preds = %debug_unregister.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @relay_close(ptr noundef nonnull %66) #12
  %67 = ptrtoint ptr %rfs_scan.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rfs_scan.i, align 4
  br label %deinit

for.inc:                                          ; preds = %if.end29.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.099, 1
  %68 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc, %69
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

deinit:                                           ; preds = %if.then.i.i, %debug_unregister.i.deinit_crit_edge, %if.then.i58, %srng_cleanup.i, %if.then.i
  %.str.4.sink = phi ptr [ @.str.3, %if.then.i ], [ @.str.3, %srng_cleanup.i ], [ @.str.4, %if.then.i58 ], [ @.str.4, %debug_unregister.i.deinit_crit_edge ], [ @.str.4, %if.then.i.i ]
  %ret.0 = phi i32 [ %call.i, %if.then.i ], [ %ret.0.i, %srng_cleanup.i ], [ -22, %if.then.i58 ], [ -22, %debug_unregister.i.deinit_crit_edge ], [ -22, %if.then.i.i ]
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull %.str.4.sink, i32 noundef %i.099) #12
  call void @ath11k_spectral_deinit(ptr noundef %ab)
  br label %cleanup

cleanup:                                          ; preds = %deinit, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %deinit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %db_cap) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dbring_get_cap(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_spectral_get_mode(ptr nocapture noundef readonly %ar) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 9
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ath11k_spectral_get_dbring(ptr noundef readonly %ar) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 9
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spectral = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69
  %retval.0 = select i1 %tobool.not, ptr null, ptr %spectral
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_vdev_spectral_enable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_vdev_spectral_conf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @relay_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dbring_srng_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dbring_buf_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dbring_srng_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dbring_set_cfg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_spectral_process_data(ptr noundef %ar, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  %summ_rpt = alloca %struct.ath11k_spectral_summary_report, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %summ_rpt) #12
  %2 = call ptr @memset(ptr %summ_rpt, i32 255, i32 72)
  %lock = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %enabled = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 9
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  %max_fft_bins = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 25, i32 4
  %5 = ptrtoint ptr %max_fft_bins to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_fft_bins, align 4
  %7 = lshr i16 %6, 1
  %narrow = add nuw i16 %7, 22
  %add = zext i16 %narrow to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #15
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end.unlock_crit_edge, label %if.end6

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param, align 4
  %data_sz = getelementptr inbounds %struct.ath11k_dbring_data, ptr %param, i32 0, i32 1
  %10 = ptrtoint ptr %data_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp231.not = icmp eq i32 %11, 0
  br i1 %cmp231.not, label %if.end6.err_crit_edge, label %while.body.lr.ph

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

while.body.lr.ph:                                 ; preds = %if.end6
  %dep_map.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 1, i32 0, i32 0, i32 4
  %ch_width.i = getelementptr inbounds %struct.wmi_dma_buf_release_meta_data, ptr %summ_rpt, i32 0, i32 5
  %chan_width_mhz91.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 1
  %length97.i = getelementptr inbounds %struct.fft_sample_tlv, ptr %call9.i, i32 0, i32 1
  %tsf.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 8
  %max_magnitude.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 6
  %max_index.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 2
  %inb_pwr_db.i164 = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 4
  %rssi.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 7
  %noise.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 9
  %freq1.i = getelementptr inbounds %struct.wmi_dma_buf_release_meta_data, ptr %summ_rpt, i32 0, i32 3
  %freq1124.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 4
  %freq2.i = getelementptr inbounds %struct.wmi_dma_buf_release_meta_data, ptr %summ_rpt, i32 0, i32 4
  %freq2127.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 5
  %data128.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 10
  %max_exp.i = getelementptr inbounds %struct.fft_sample_ath11k, ptr %call9.i, i32 0, i32 3
  %rfs_scan.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 69, i32 2
  %summary_pad_sz = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 25, i32 2
  %meta = getelementptr inbounds %struct.ath11k_dbring_data, ptr %param, i32 0, i32 2
  %timestamp1.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 1
  %agc_total_gain.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 2
  %out_of_band_flag.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 8
  %grp_idx.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 3
  %rf_saturation.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 9
  %false_scan.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 12
  %detector_id.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 7
  %primary80.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 10
  %peak_idx.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 5
  %peak_mag.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 6
  %gain_change.i = getelementptr inbounds %struct.ath11k_spectral_summary_report, ptr %summ_rpt, i32 0, i32 11
  %12 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %timestamp1.i.promoted = load i32, ptr %timestamp1.i, align 4
  %13 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %agc_total_gain.i.promoted = load i8, ptr %agc_total_gain.i, align 4
  %14 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %out_of_band_flag.i.promoted = load i8, ptr %out_of_band_flag.i, align 1
  %15 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %grp_idx.i.promoted = load i8, ptr %grp_idx.i, align 1
  %16 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %rf_saturation.i.promoted = load i8, ptr %rf_saturation.i, align 2
  %17 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_load2_noabort(i32 %17)
  %inb_pwr_db.i164.promoted = load i16, ptr %inb_pwr_db.i164, align 2
  %18 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %false_scan.i.promoted = load i8, ptr %false_scan.i, align 1
  %19 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %detector_id.i.promoted = load i8, ptr %detector_id.i, align 4
  %20 = ptrtoint ptr %primary80.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %primary80.i.promoted = load i8, ptr %primary80.i, align 1
  %21 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %peak_idx.i.promoted = load i16, ptr %peak_idx.i, align 4
  %22 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %peak_mag.i.promoted = load i16, ptr %peak_mag.i, align 2
  %23 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %gain_change.i.promoted = load i8, ptr %gain_change.i, align 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %24 = phi i8 [ %gain_change.i.promoted, %while.body.lr.ph ], [ %198, %sw.epilog.while.body_crit_edge ]
  %conv145.i364 = phi i16 [ %peak_mag.i.promoted, %while.body.lr.ph ], [ %conv145.i363, %sw.epilog.while.body_crit_edge ]
  %conv130.i358 = phi i16 [ %peak_idx.i.promoted, %while.body.lr.ph ], [ %conv130.i357, %sw.epilog.while.body_crit_edge ]
  %25 = phi i8 [ %primary80.i.promoted, %while.body.lr.ph ], [ %199, %sw.epilog.while.body_crit_edge ]
  %conv100.i346 = phi i8 [ %detector_id.i.promoted, %while.body.lr.ph ], [ %conv100.i345, %sw.epilog.while.body_crit_edge ]
  %26 = phi i8 [ %false_scan.i.promoted, %while.body.lr.ph ], [ %200, %sw.epilog.while.body_crit_edge ]
  %conv69.i334 = phi i16 [ %inb_pwr_db.i164.promoted, %while.body.lr.ph ], [ %conv69.i333, %sw.epilog.while.body_crit_edge ]
  %27 = phi i8 [ %rf_saturation.i.promoted, %while.body.lr.ph ], [ %201, %sw.epilog.while.body_crit_edge ]
  %conv38.i322 = phi i8 [ %grp_idx.i.promoted, %while.body.lr.ph ], [ %conv38.i321, %sw.epilog.while.body_crit_edge ]
  %28 = phi i8 [ %out_of_band_flag.i.promoted, %while.body.lr.ph ], [ %202, %sw.epilog.while.body_crit_edge ]
  %conv.i310 = phi i8 [ %agc_total_gain.i.promoted, %while.body.lr.ph ], [ %conv.i309, %sw.epilog.while.body_crit_edge ]
  %29 = phi i32 [ %timestamp1.i.promoted, %while.body.lr.ph ], [ %203, %sw.epilog.while.body_crit_edge ]
  %i.0233 = phi i32 [ 0, %while.body.lr.ph ], [ %add105.pre-phi, %sw.epilog.while.body_crit_edge ]
  %add10 = add i32 %i.0233, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %11)
  %cmp11 = icmp ugt i32 %add10, %11
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %timestamp1.i, align 4
  %31 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i310, ptr %agc_total_gain.i, align 4
  %32 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %28, ptr %out_of_band_flag.i, align 1
  %33 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv38.i322, ptr %grp_idx.i, align 1
  %34 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %27, ptr %rf_saturation.i, align 2
  %35 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv69.i334, ptr %inb_pwr_db.i164, align 2
  %36 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %26, ptr %false_scan.i, align 1
  %37 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv100.i346, ptr %detector_id.i, align 4
  %38 = ptrtoint ptr %primary80.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %25, ptr %primary80.i, align 1
  %39 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv130.i358, ptr %peak_idx.i, align 4
  %40 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv145.i364, ptr %peak_mag.i, align 2
  %41 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %24, ptr %gain_change.i, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %i.0233) #12
  br label %err

if.end14:                                         ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %9, i32 %i.0233
  %header = getelementptr inbounds %struct.spectral_tlv, ptr %arrayidx, i32 0, i32 1
  %42 = ptrtoint ptr %header to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %header, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %shr27 = lshr i32 %44, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %shr27)
  %cmp30.not = icmp eq i32 %shr27, 250
  br i1 %cmp30.not, label %do.end49, label %if.then32

if.then32:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %29, ptr %timestamp1.i, align 4
  %46 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i310, ptr %agc_total_gain.i, align 4
  %47 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %28, ptr %out_of_band_flag.i, align 1
  %48 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv38.i322, ptr %grp_idx.i, align 1
  %49 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %27, ptr %rf_saturation.i, align 2
  %50 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv69.i334, ptr %inb_pwr_db.i164, align 2
  %51 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %26, ptr %false_scan.i, align 1
  %52 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv100.i346, ptr %detector_id.i, align 4
  %53 = ptrtoint ptr %primary80.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %25, ptr %primary80.i, align 1
  %54 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv130.i358, ptr %peak_idx.i, align 4
  %55 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv145.i364, ptr %peak_mag.i, align 2
  %56 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %24, ptr %gain_change.i, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %shr27, i32 noundef %i.0233) #12
  br label %err

do.end49:                                         ; preds = %if.end14
  %and52 = shl i32 %44, 2
  %mul = and i32 %and52, 262140
  %add55 = add i32 %mul, %add10
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %11)
  %cmp56 = icmp ugt i32 %add55, %11
  br i1 %cmp56, label %if.then58, label %do.end74

if.then58:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %29, ptr %timestamp1.i, align 4
  %58 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i310, ptr %agc_total_gain.i, align 4
  %59 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %28, ptr %out_of_band_flag.i, align 1
  %60 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv38.i322, ptr %grp_idx.i, align 1
  %61 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %27, ptr %rf_saturation.i, align 2
  %62 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv69.i334, ptr %inb_pwr_db.i164, align 2
  %63 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %26, ptr %false_scan.i, align 1
  %64 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv100.i346, ptr %detector_id.i, align 4
  %65 = ptrtoint ptr %primary80.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %25, ptr %primary80.i, align 1
  %66 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv130.i358, ptr %peak_idx.i, align 4
  %67 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv145.i364, ptr %peak_mag.i, align 2
  %68 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %24, ptr %gain_change.i, align 4
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.0233, i32 noundef %mul, i32 noundef %11) #12
  br label %err

do.end74:                                         ; preds = %do.end49
  %and77 = lshr i32 %44, 16
  %trunc = trunc i32 %and77 to i8
  %69 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %trunc, label %do.end74.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb95
  ]

do.end74.sw.epilog_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end74
  %70 = ptrtoint ptr %summary_pad_sz to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %summary_pad_sz, align 2
  %conv83 = zext i8 %71 to i32
  %add84 = add nuw nsw i32 %conv83, 16
  %call89 = tail call i32 @ath11k_dbring_validate_buffer(ptr noundef %ar, ptr noundef %9, i32 noundef %add84) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %29, ptr %timestamp1.i, align 4
  %73 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i310, ptr %agc_total_gain.i, align 4
  %74 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %28, ptr %out_of_band_flag.i, align 1
  %75 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv38.i322, ptr %grp_idx.i, align 1
  %76 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %27, ptr %rf_saturation.i, align 2
  %77 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv69.i334, ptr %inb_pwr_db.i164, align 2
  %78 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %26, ptr %false_scan.i, align 1
  %79 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv100.i346, ptr %detector_id.i, align 4
  %80 = ptrtoint ptr %primary80.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %25, ptr %primary80.i, align 1
  %81 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv130.i358, ptr %peak_idx.i, align 4
  %82 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv145.i364, ptr %peak_mag.i, align 2
  %83 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %24, ptr %gain_change.i, align 4
  %84 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %85, ptr noundef nonnull @.str.16) #12
  br label %err

if.end93:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %arrayidx, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #12
  %info0.i = getelementptr inbounds %struct.spectral_summary_fft_report, ptr %arrayidx, i32 0, i32 2
  %89 = ptrtoint ptr %info0.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %info0.i, align 1
  %91 = lshr i32 %90, 24
  %conv.i = trunc i32 %91 to i8
  %92 = lshr i32 %90, 16
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = and i32 %90, 16646400
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  %shr37.i = lshr exact i32 %96, 9
  %conv38.i = trunc i32 %shr37.i to i8
  %97 = lshr i32 %90, 9
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = and i32 %90, 64527
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  %shr68.i = lshr exact i32 %101, 18
  %conv69.i = trunc i32 %shr68.i to i16
  %102 = trunc i32 %90 to i8
  %103 = lshr i8 %102, 4
  %104 = and i8 %103, 1
  %105 = lshr i8 %102, 5
  %conv100.i = and i8 %105, 3
  %106 = lshr i8 %102, 7
  %info2.i = getelementptr inbounds %struct.spectral_summary_fft_report, ptr %arrayidx, i32 0, i32 4
  %107 = ptrtoint ptr %info2.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %info2.i, align 1
  %109 = and i32 %108, -15794176
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #12
  %conv130.i = trunc i32 %110 to i16
  %111 = and i32 %108, 15744768
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #12
  %shr144.i = lshr exact i32 %112, 12
  %conv145.i = trunc i32 %shr144.i to i16
  %113 = trunc i32 %108 to i8
  %114 = lshr i8 %113, 6
  %115 = and i8 %114, 1
  %116 = call ptr @memcpy(ptr %summ_rpt, ptr %meta, i32 52)
  %.pre = add i32 %add10, %add84
  br label %sw.epilog

sw.bb95:                                          ; preds = %do.end74
  %117 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %29, ptr %timestamp1.i, align 4
  %118 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i310, ptr %agc_total_gain.i, align 4
  %119 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %28, ptr %out_of_band_flag.i, align 1
  %120 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv38.i322, ptr %grp_idx.i, align 1
  %121 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %27, ptr %rf_saturation.i, align 2
  %122 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv69.i334, ptr %inb_pwr_db.i164, align 2
  %123 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %26, ptr %false_scan.i, align 1
  %124 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv100.i346, ptr %detector_id.i, align 4
  %125 = ptrtoint ptr %primary80.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %25, ptr %primary80.i, align 1
  %126 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv130.i358, ptr %peak_idx.i, align 4
  %127 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv145.i364, ptr %peak_mag.i, align 2
  %128 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %24, ptr %gain_change.i, align 4
  %header.le = getelementptr inbounds %struct.spectral_tlv, ptr %arrayidx, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul)
  %cmp96 = icmp ult i32 %mul, 16
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %i.0233) #12
  br label %err

if.end99:                                         ; preds = %sw.bb95
  %129 = call ptr @memset(ptr %call9.i, i32 0, i32 %add)
  %sub = sub i32 %11, %i.0233
  %130 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ar, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %132 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i, label %if.end99.if.end.i160_crit_edge, label %land.rhs.i

if.end99.if.end.i160_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i160

land.rhs.i:                                       ; preds = %if.end99
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i160_crit_edge, !prof !105

land.rhs.i.if.end.i160_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i160

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 586, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i160

if.end.i160:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i160_crit_edge, %if.end99.if.end.i160_crit_edge
  %spectral25.i = getelementptr inbounds %struct.ath11k_base, ptr %131, i32 0, i32 36, i32 25
  %133 = ptrtoint ptr %spectral25.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %spectral25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool26.not.i = icmp eq i8 %134, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %131, align 128
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %131, ptr noundef nonnull @.str.19, i32 noundef %136) #12
  br label %if.then102

if.end28.i:                                       ; preds = %if.end.i160
  %137 = ptrtoint ptr %header.le to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %header.le, align 1
  %139 = and i32 %138, -65536
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #12
  %mul.i = shl nuw nsw i32 %140, 2
  %fft_hdr_len.i = getelementptr inbounds %struct.ath11k_base, ptr %131, i32 0, i32 36, i32 25, i32 3
  %141 = ptrtoint ptr %fft_hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %fft_hdr_len.i, align 1
  %conv.i161 = zext i8 %142 to i32
  %sub.i = sub nsw i32 %mul.i, %conv.i161
  %add.i = add nsw i32 %sub.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp47.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp47.i, label %if.then49.i, label %if.end50.i

if.then49.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %131, ptr noundef nonnull @.str.20, i32 noundef %sub.i, i32 noundef %sub) #12
  br label %if.then102

if.end50.i:                                       ; preds = %if.end28.i
  %conv54.i = zext i8 %134 to i32
  %fft_pad_sz.i = getelementptr inbounds %struct.ath11k_base, ptr %131, i32 0, i32 36, i32 25, i32 1
  %143 = ptrtoint ptr %fft_pad_sz.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %fft_pad_sz.i, align 1
  %add58.i = add i8 %144, %134
  %conv60.i = zext i8 %add58.i to i32
  %div.i = sdiv i32 %sub.i, %conv60.i
  %shr61.i = ashr i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div.i)
  %cmp62.i = icmp slt i32 %div.i, 32
  br i1 %cmp62.i, label %if.end50.i.if.then72.i_crit_edge, label %lor.lhs.false.i

if.end50.i.if.then72.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72.i

lor.lhs.false.i:                                  ; preds = %if.end50.i
  %max_fft_bins.i = getelementptr inbounds %struct.ath11k_base, ptr %131, i32 0, i32 36, i32 25, i32 4
  %145 = ptrtoint ptr %max_fft_bins.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %max_fft_bins.i, align 4
  %147 = lshr i16 %146, 1
  %148 = zext i16 %147 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr61.i, i32 %148)
  %cmp68.i = icmp sle i32 %shr61.i, %148
  %149 = tail call i32 @llvm.ctpop.i32(i32 %shr61.i) #12, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp1.i.i = icmp ult i32 %149, 2
  %or.cond.i = and i1 %cmp1.i.i, %cmp68.i
  br i1 %or.cond.i, label %if.end73.i, label %lor.lhs.false.i.if.then72.i_crit_edge

lor.lhs.false.i.if.then72.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72.i

if.then72.i:                                      ; preds = %lor.lhs.false.i.if.then72.i_crit_edge, %if.end50.i.if.then72.i_crit_edge
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %131, ptr noundef nonnull @.str.21, i32 noundef %shr61.i) #12
  br label %if.then102

if.end73.i:                                       ; preds = %lor.lhs.false.i
  %mul78.i = mul i32 %shr61.i, %conv54.i
  %add79.i = add i32 %mul78.i, 24
  %call80.i = tail call i32 @ath11k_dbring_validate_buffer(ptr noundef %ar, ptr noundef %arrayidx, i32 noundef %add79.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end84.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %151, ptr noundef nonnull @.str.22) #12
  br label %if.then102

if.end84.i:                                       ; preds = %if.end73.i
  %info2.i172 = getelementptr inbounds %struct.spectral_search_fft_report, ptr %arrayidx, i32 0, i32 4
  %152 = ptrtoint ptr %info2.i172 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %info2.i172, align 1
  %154 = and i32 %153, 16712448
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #12
  %shr126.i = lshr exact i32 %155, 8
  %156 = ptrtoint ptr %ch_width.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ch_width.i, align 4
  %trunc.i = trunc i32 %157 to i8
  %158 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %trunc.i, label %sw.default.i [
    i8 20, label %if.end84.i.while.body.lr.ph.i.i_crit_edge
    i8 40, label %if.end84.i.while.body.lr.ph.i.i_crit_edge636
    i8 80, label %if.end84.i.while.body.lr.ph.i.i_crit_edge637
  ]

if.end84.i.while.body.lr.ph.i.i_crit_edge637:     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.i.i

if.end84.i.while.body.lr.ph.i.i_crit_edge636:     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.i.i

if.end84.i.while.body.lr.ph.i.i_crit_edge:        ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end84.i.while.body.lr.ph.i.i_crit_edge, %if.end84.i.while.body.lr.ph.i.i_crit_edge636, %if.end84.i.while.body.lr.ph.i.i_crit_edge637
  %159 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %arrayidx, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #12
  %conv127.i = trunc i32 %shr126.i to i16
  %info0.i165 = getelementptr inbounds %struct.spectral_search_fft_report, ptr %arrayidx, i32 0, i32 2
  %162 = ptrtoint ptr %info0.i165 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %info0.i165, align 1
  %164 = lshr i32 %163, 4
  %conv69.i170 = and i32 %164, 7
  %165 = ptrtoint ptr %chan_width_mhz91.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %trunc.i, ptr %chan_width_mhz91.i, align 1
  %166 = trunc i32 %shr61.i to i16
  %conv94.i = add i16 %166, 19
  %167 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 4, ptr %call9.i, align 128
  %168 = ptrtoint ptr %length97.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 %conv94.i, ptr %length97.i, align 1
  %169 = ptrtoint ptr %tsf.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %161, ptr %tsf.i, align 2
  %170 = ptrtoint ptr %max_magnitude.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv127.i, ptr %max_magnitude.i, align 2
  %171 = load i32, ptr %info0.i165, align 1
  %172 = and i32 %171, 65039
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #12
  %shr115.i = lshr exact i32 %173, 17
  %conv116.i = trunc i32 %shr115.i to i8
  %174 = ptrtoint ptr %max_index.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv116.i, ptr %max_index.i, align 4
  %175 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %inb_pwr_db.i164, align 2
  %177 = lshr i16 %176, 1
  store i16 %177, ptr %inb_pwr_db.i164, align 2
  %178 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %rssi.i, align 4
  %arrayidx.i = getelementptr %struct.wmi_dma_buf_release_meta_data, ptr %summ_rpt, i32 0, i32 1, i32 %conv69.i170
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i, align 4
  %181 = ptrtoint ptr %noise.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %noise.i, align 2
  %182 = ptrtoint ptr %freq1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %freq1.i, align 4
  %conv123.i = trunc i32 %183 to i16
  %184 = ptrtoint ptr %freq1124.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv123.i, ptr %freq1124.i, align 2
  %185 = ptrtoint ptr %freq2.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %freq2.i, align 4
  %conv126.i = trunc i32 %186 to i16
  %187 = ptrtoint ptr %freq2127.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv126.i, ptr %freq2127.i, align 8
  %bins.i = getelementptr inbounds %struct.spectral_search_fft_report, ptr %arrayidx, i32 0, i32 6
  %188 = ptrtoint ptr %spectral25.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %spectral25.i, align 4
  %conv.i.i = zext i8 %189 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %j.07.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %i.06.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %bins.i, i32 %j.07.i.i
  %190 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %data128.i, i32 %i.06.i.i
  %192 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx1.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %add.i.i = add i32 %j.07.i.i, %conv.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr61.i
  br i1 %exitcond.not.i.i, label %ath11k_spectral_parse_fft.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

ath11k_spectral_parse_fft.exit.i:                 ; preds = %while.body.i.i
  %193 = ptrtoint ptr %max_index.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %max_index.i, align 4
  %conv135.i = trunc i32 %shr126.i to i8
  %call138.i = tail call fastcc zeroext i8 @ath11k_spectral_get_max_exp(i8 noundef signext %194, i8 noundef zeroext %conv135.i, i32 noundef %shr61.i, ptr noundef %data128.i) #12
  %195 = ptrtoint ptr %max_exp.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %call138.i, ptr %max_exp.i, align 1
  %196 = ptrtoint ptr %rfs_scan.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rfs_scan.i, align 4
  %tobool140.not.i = icmp eq ptr %197, null
  br i1 %tobool140.not.i, label %ath11k_spectral_parse_fft.exit.i.err_crit_edge, label %if.then141.i

ath11k_spectral_parse_fft.exit.i.err_crit_edge:   ; preds = %ath11k_spectral_parse_fft.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

sw.default.i:                                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv90.i = and i32 %157, 255
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %131, ptr noundef nonnull @.str.24, i32 noundef %conv90.i) #12
  br label %if.then102

if.then141.i:                                     ; preds = %ath11k_spectral_parse_fft.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv144.i = zext i16 %conv94.i to i32
  %add145.i = add nuw nsw i32 %conv144.i, 3
  tail call fastcc void @relay_write(ptr noundef nonnull %197, ptr noundef nonnull %call9.i, i32 noundef %add145.i) #12
  br label %err

if.then102:                                       ; preds = %sw.default.i, %if.then82.i, %if.then72.i, %if.then49.i, %if.then27.i
  %retval.0.i.ph = phi i32 [ -22, %if.then27.i ], [ -22, %sw.default.i ], [ %call80.i, %if.then82.i ], [ -22, %if.then72.i ], [ -22, %if.then49.i ]
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %i.0233) #12
  br label %err

sw.epilog:                                        ; preds = %if.end93, %do.end74.sw.epilog_crit_edge
  %198 = phi i8 [ %24, %do.end74.sw.epilog_crit_edge ], [ %115, %if.end93 ]
  %conv145.i363 = phi i16 [ %conv145.i364, %do.end74.sw.epilog_crit_edge ], [ %conv145.i, %if.end93 ]
  %conv130.i357 = phi i16 [ %conv130.i358, %do.end74.sw.epilog_crit_edge ], [ %conv130.i, %if.end93 ]
  %199 = phi i8 [ %25, %do.end74.sw.epilog_crit_edge ], [ %106, %if.end93 ]
  %conv100.i345 = phi i8 [ %conv100.i346, %do.end74.sw.epilog_crit_edge ], [ %conv100.i, %if.end93 ]
  %200 = phi i8 [ %26, %do.end74.sw.epilog_crit_edge ], [ %104, %if.end93 ]
  %conv69.i333 = phi i16 [ %conv69.i334, %do.end74.sw.epilog_crit_edge ], [ %conv69.i, %if.end93 ]
  %201 = phi i8 [ %27, %do.end74.sw.epilog_crit_edge ], [ %99, %if.end93 ]
  %conv38.i321 = phi i8 [ %conv38.i322, %do.end74.sw.epilog_crit_edge ], [ %conv38.i, %if.end93 ]
  %202 = phi i8 [ %28, %do.end74.sw.epilog_crit_edge ], [ %94, %if.end93 ]
  %conv.i309 = phi i8 [ %conv.i310, %do.end74.sw.epilog_crit_edge ], [ %conv.i, %if.end93 ]
  %203 = phi i32 [ %29, %do.end74.sw.epilog_crit_edge ], [ %88, %if.end93 ]
  %add105.pre-phi = phi i32 [ %add55, %do.end74.sw.epilog_crit_edge ], [ %.pre, %if.end93 ]
  %cmp = icmp ugt i32 %11, %add105.pre-phi
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %err.loopexit

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

err.loopexit:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %204 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %timestamp1.i, align 4
  %205 = ptrtoint ptr %agc_total_gain.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv.i309, ptr %agc_total_gain.i, align 4
  %206 = ptrtoint ptr %out_of_band_flag.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %202, ptr %out_of_band_flag.i, align 1
  %207 = ptrtoint ptr %grp_idx.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv38.i321, ptr %grp_idx.i, align 1
  %208 = ptrtoint ptr %rf_saturation.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %201, ptr %rf_saturation.i, align 2
  %209 = ptrtoint ptr %inb_pwr_db.i164 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv69.i333, ptr %inb_pwr_db.i164, align 2
  %210 = ptrtoint ptr %false_scan.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %200, ptr %false_scan.i, align 1
  %211 = ptrtoint ptr %detector_id.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv100.i345, ptr %detector_id.i, align 4
  %212 = ptrtoint ptr %primary80.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %199, ptr %primary80.i, align 1
  %213 = ptrtoint ptr %peak_idx.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv130.i357, ptr %peak_idx.i, align 4
  %214 = ptrtoint ptr %peak_mag.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv145.i363, ptr %peak_mag.i, align 2
  %215 = ptrtoint ptr %gain_change.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %198, ptr %gain_change.i, align 4
  br label %err

err:                                              ; preds = %err.loopexit, %if.then102, %if.then141.i, %ath11k_spectral_parse_fft.exit.i.err_crit_edge, %if.then98, %if.then91, %if.then58, %if.then32, %if.then13, %if.end6.err_crit_edge
  %ret.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.then32 ], [ -22, %if.then58 ], [ -22, %if.then98 ], [ %retval.0.i.ph, %if.then102 ], [ %call89, %if.then91 ], [ 0, %if.end6.err_crit_edge ], [ 0, %if.then141.i ], [ 0, %ath11k_spectral_parse_fft.exit.i.err_crit_edge ], [ 0, %err.loopexit ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %unlock

unlock:                                           ; preds = %err, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err ], [ -22, %entry.unlock_crit_edge ], [ -105, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %summ_rpt) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dbring_buf_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dbring_wmi_cfg_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dbring_validate_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ath11k_spectral_get_max_exp(i8 noundef signext %max_index, i8 noundef zeroext %max_magnitude, i32 noundef %bin_len, ptr nocapture noundef readonly %bins) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %bin_len, 2
  %conv = sext i8 %max_index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv)
  %cmp.not = icmp sgt i32 %div, %conv
  %sub = sub nsw i32 0, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp3.not = icmp slt i32 %sub, %conv
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add = add nsw i32 %div, %conv
  %arrayidx = getelementptr i8, ptr %bins, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %1 to i32
  %conv10 = zext i8 %max_magnitude to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %max_magnitude)
  %cmp12 = icmp eq i8 %1, %max_magnitude
  br i1 %cmp12, label %for.cond.preheader.for.end_crit_edge, label %for.inc

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %shr.1 = lshr i32 %conv10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1, i32 %conv9)
  %cmp12.1 = icmp eq i32 %shr.1, %conv9
  br i1 %cmp12.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %shr.2 = lshr i32 %conv10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2, i32 %conv9)
  %cmp12.2 = icmp eq i32 %shr.2, %conv9
  br i1 %cmp12.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %shr.3 = lshr i32 %conv10, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3, i32 %conv9)
  %cmp12.3 = icmp eq i32 %shr.3, %conv9
  br i1 %cmp12.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %shr.4 = lshr i32 %conv10, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4, i32 %conv9)
  %cmp12.4 = icmp eq i32 %shr.4, %conv9
  br i1 %cmp12.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %shr.5 = lshr i32 %conv10, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5, i32 %conv9)
  %cmp12.5 = icmp eq i32 %shr.5, %conv9
  br i1 %cmp12.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %shr.6 = lshr i32 %conv10, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6, i32 %conv9)
  %cmp12.6 = icmp eq i32 %shr.6, %conv9
  br i1 %cmp12.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %shr.7 = lshr i32 %conv10, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7, i32 %conv9)
  %cmp12.7 = icmp eq i32 %shr.7, %conv9
  %spec.select = select i1 %cmp12.7, i8 7, i8 8
  %spec.select42 = select i1 %cmp12.7, i32 7, i32 8
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %max_exp.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %conv5.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select42, %for.inc.6 ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %3 to i32
  %shr22 = lshr i32 %conv10, %conv5.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22, i32 %conv19)
  %cmp23.not = icmp eq i32 %shr22, %conv19
  %max_exp.0. = select i1 %cmp23.not, i8 %max_exp.0.lcssa, i8 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %max_exp.0., %for.end ]
  ret i8 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @relay_write(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %data, i32 noundef %length) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !107
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  %buf16 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %1 = ptrtoint ptr %buf16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf16, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !94) #12
  %and.i77 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i77 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %offset = getelementptr inbounds %struct.rchan_buf, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 8
  %add19 = add i32 %14, %length
  %subbuf_size = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 1
  %15 = ptrtoint ptr %subbuf_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %subbuf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %16)
  %cmp20 = icmp ugt i32 %add19, %16
  br i1 %cmp20, label %if.then24, label %do.body12.if.end26_crit_edge, !prof !105

do.body12.if.end26_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 @relay_switch_subbuf(ptr noundef %12, i32 noundef %length) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.body12.if.end26_crit_edge
  %length.addr.0 = phi i32 [ %call25, %if.then24 ], [ %length, %do.body12.if.end26_crit_edge ]
  %data27 = getelementptr inbounds %struct.rchan_buf, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %data27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data27, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 %20
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %length.addr.0)
  %22 = load i32, ptr %offset, align 8
  %add30 = add i32 %22, %length.addr.0
  store i32 %add30, ptr %offset, align 8
  br i1 %tobool.not, label %if.then40, label %if.end26.do.body42_crit_edge

if.end26.do.body42_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.then40:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body42

do.body42:                                        ; preds = %if.then40, %if.end26.do.body42_crit_edge
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !108
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool50.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool50.not, label %if.then59, label %do.body42.do.end62_crit_edge, !prof !105

do.body42.do.end62_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.then59:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body42.do.end62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !109
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_switch_subbuf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @relay_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_buf_file_handler(ptr noundef %filename, ptr noundef %parent, i16 noundef zeroext %mode, ptr noundef %buf, ptr nocapture noundef writeonly %is_global) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef %filename, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %buf, ptr noundef nonnull @relay_file_operations) #12
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_global, align 4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_buf_file_handler(ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debugfs_remove(ptr noundef %dentry) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_file_spec_scan_ctl(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %mode1 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 69, i32 6
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ath11k_read_file_spec_scan_ctl, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.0 = phi ptr [ @.str.31, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 @strlen(ptr noundef nonnull %mode.0) #16
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %mode.0, i32 noundef %call) #12
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_file_spec_scan_ctl(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %2, i32 -1226833920) #17, !srcloc !110
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !111

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #12
  %5 = call i32 @llvm.read_register.i32(metadata !94) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !112
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %2) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !111

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.35, ptr noundef nonnull dereferenceable(7) %buf, i32 7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else22

if.then4:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 69, i32 6
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then9, label %if.then4.unlock.thread_crit_edge

if.then4.unlock.thread_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.thread

if.then9:                                         ; preds = %if.then4
  %call12 = call fastcc i32 @ath11k_spectral_scan_config(ptr noundef %1, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %13, ptr noundef nonnull @.str.36, i32 noundef %call12) #12
  br label %unlock.thread

if.end15:                                         ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end15.if.end.i.i77_crit_edge, label %land.rhs.i

if.end15.if.end.i.i77_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i77

land.rhs.i:                                       ; preds = %if.end15
  %dep_map.i = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26, i32 5
  %call.i.i75 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75)
  %cmp.not.i = icmp eq i32 %call.i.i75, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !105

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 177, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i77_crit_edge, label %land.rhs.i.i

if.end.i.if.end.i.i77_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i77

land.rhs.i.i:                                     ; preds = %if.end.i
  %call.i.i.i76 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i76)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i76, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i77_crit_edge, !prof !105

land.rhs.i.i.if.end.i.i77_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i77

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 158, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i77

if.end.i.i77:                                     ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i77_crit_edge, %if.end.i.if.end.i.i77_crit_edge, %if.end15.if.end.i.i77_crit_edge
  %arvifs.i.i = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %arvifs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arvifs.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %arvifs.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i77.if.then18_crit_edge, label %if.end.i.i77.for.cond.i.i_crit_edge

if.end.i.i77.for.cond.i.i_crit_edge:              ; preds = %if.end.i.i77
  br label %for.cond.i.i

if.end.i.i77.if.then18_crit_edge:                 ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i77.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arvifs.i.i, %if.end.i.i77.for.cond.i.i_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp31.not.i.i = icmp eq ptr %.pn.i.i, %arvifs.i.i
  br i1 %cmp31.not.i.i, label %for.cond.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_spectral_get_vdev.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %spectral_enabled.i.i = getelementptr i8, ptr %.pn.i.i, i32 78
  %18 = ptrtoint ptr %spectral_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %spectral_enabled.i.i, align 2, !range !104
  %tobool34.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool34.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge

for.body.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_spectral_get_vdev.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

ath11k_spectral_get_vdev.exit.i:                  ; preds = %for.body.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge, %for.cond.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge
  %.pn.i = phi ptr [ %16, %for.cond.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge ], [ %.pn.i.i, %for.body.i.i.ath11k_spectral_get_vdev.exit.i_crit_edge ]
  %retval.0.i.i = getelementptr i8, ptr %.pn.i, i32 -80
  %tobool25.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool25.not.i, label %ath11k_spectral_get_vdev.exit.i.if.then18_crit_edge, label %if.end27.i

ath11k_spectral_get_vdev.exit.i.if.then18_crit_edge: ; preds = %ath11k_spectral_get_vdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end27.i:                                       ; preds = %ath11k_spectral_get_vdev.exit.i
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp28.i = icmp eq i32 %21, 0
  br i1 %cmp28.i, label %if.end27.i.unlock.thread89_crit_edge, label %if.end30.i

if.end27.i.unlock.thread89_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.thread89

if.end30.i:                                       ; preds = %if.end27.i
  %22 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retval.0.i.i, align 4
  %call31.i = call i32 @ath11k_wmi_vdev_spectral_enable(ptr noundef %1, i32 noundef %23, i32 noundef 2, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %ath11k_spectral_scan_trigger.exit, label %if.end30.i.if.then18_crit_edge

if.end30.i.if.then18_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

ath11k_spectral_scan_trigger.exit:                ; preds = %if.end30.i
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i.i, align 4
  %call36.i = call i32 @ath11k_wmi_vdev_spectral_enable(ptr noundef %1, i32 noundef %25, i32 noundef 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool17.not = icmp eq i32 %call36.i, 0
  br i1 %tobool17.not, label %ath11k_spectral_scan_trigger.exit.unlock.thread89_crit_edge, label %ath11k_spectral_scan_trigger.exit.if.then18_crit_edge

ath11k_spectral_scan_trigger.exit.if.then18_crit_edge: ; preds = %ath11k_spectral_scan_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

ath11k_spectral_scan_trigger.exit.unlock.thread89_crit_edge: ; preds = %ath11k_spectral_scan_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.thread89

if.then18:                                        ; preds = %ath11k_spectral_scan_trigger.exit.if.then18_crit_edge, %if.end30.i.if.then18_crit_edge, %ath11k_spectral_get_vdev.exit.i.if.then18_crit_edge, %if.end.i.i77.if.then18_crit_edge
  %retval.0.i82 = phi i32 [ %call36.i, %ath11k_spectral_scan_trigger.exit.if.then18_crit_edge ], [ -19, %if.end.i.i77.if.then18_crit_edge ], [ %call31.i, %if.end30.i.if.then18_crit_edge ], [ -19, %ath11k_spectral_get_vdev.exit.i.if.then18_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %27, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i82) #12
  br label %unlock.thread

if.else22:                                        ; preds = %if.end
  %bcmp72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.33, ptr noundef nonnull dereferenceable(10) %buf, i32 10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72)
  %cmp25 = icmp eq i32 %bcmp72, 0
  br i1 %cmp25, label %if.else22.unlock_crit_edge, label %if.else28

if.else22.unlock_crit_edge:                       ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.else28:                                        ; preds = %if.else22
  %bcmp73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.34, ptr noundef nonnull dereferenceable(6) %buf, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73)
  %cmp31 = icmp eq i32 %bcmp73, 0
  br i1 %cmp31, label %if.else28.unlock_crit_edge, label %if.else34

if.else28.unlock_crit_edge:                       ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.else34:                                        ; preds = %if.else28
  %bcmp74 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.32, ptr noundef nonnull dereferenceable(7) %buf, i32 7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74)
  %cmp37 = icmp eq i32 %bcmp74, 0
  br i1 %cmp37, label %if.else34.unlock_crit_edge, label %if.else34.unlock.thread_crit_edge

if.else34.unlock.thread_crit_edge:                ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.thread

if.else34.unlock_crit_edge:                       ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

unlock.thread:                                    ; preds = %if.else34.unlock.thread_crit_edge, %if.then18, %if.then14, %if.then4.unlock.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.else34.unlock.thread_crit_edge ], [ -22, %if.then4.unlock.thread_crit_edge ], [ %retval.0.i82, %if.then18 ], [ %call12, %if.then14 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  br label %cleanup

unlock.thread89:                                  ; preds = %ath11k_spectral_scan_trigger.exit.unlock.thread89_crit_edge, %if.end27.i.unlock.thread89_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  br label %28

unlock:                                           ; preds = %if.else34.unlock_crit_edge, %if.else28.unlock_crit_edge, %if.else22.unlock_crit_edge
  %.sink = phi i32 [ 1, %if.else22.unlock_crit_edge ], [ 2, %if.else28.unlock_crit_edge ], [ 0, %if.else34.unlock_crit_edge ]
  %call33 = call fastcc i32 @ath11k_spectral_scan_config(ptr noundef %1, i32 noundef %.sink)
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool46.not = icmp eq i32 %call33, 0
  br i1 %tobool46.not, label %unlock._crit_edge, label %unlock.cleanup_crit_edge

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

unlock._crit_edge:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %28

28:                                               ; preds = %unlock._crit_edge, %unlock.thread89
  br label %cleanup

cleanup:                                          ; preds = %28, %unlock.cleanup_crit_edge, %unlock.thread, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %28 ], [ %call33, %unlock.cleanup_crit_edge ], [ %ret.0.ph, %unlock.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_file_spectral_count(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %count1 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 69, i32 7
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count1, align 8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #12
  %conv = zext i16 %4 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_file_spectral_count(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !115
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #17, !srcloc !110
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !111

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #12
  %6 = call i32 @llvm.read_register.i32(metadata !94) #12
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !112
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !111

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %12)
  %cmp6 = icmp ugt i32 %12, 4095
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %conv = trunc i32 %14 to i16
  %count9 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 69, i32 7
  %15 = ptrtoint ptr %count9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %count9, align 8
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_file_spectral_bins(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %fft_size1 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 69, i32 8
  %3 = ptrtoint ptr %fft_size1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fft_size1, align 2
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #12
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.41, i32 noundef %shl)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_file_spectral_bins(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !115
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #17, !srcloc !110
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !111

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #12
  %6 = call i32 @llvm.read_register.i32(metadata !94) #12
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !112
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !111

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp6 = icmp ult i32 %12, 32
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %max_fft_bins = getelementptr inbounds %struct.ath11k_base, ptr %14, i32 0, i32 36, i32 25, i32 4
  %15 = ptrtoint ptr %max_fft_bins to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_fft_bins, align 4
  %conv = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp7 = icmp ule i32 %12, %conv
  %17 = call i32 @llvm.ctpop.i32(i32 %12) #12, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp1.i = icmp ult i32 %17, 2
  %or.cond = and i1 %cmp1.i, %cmp7
  br i1 %or.cond, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  %20 = call i32 @llvm.ctlz.i32(i32 %19, i1 true) #12, !range !106
  %21 = trunc i32 %20 to i8
  %22 = xor i8 %21, 31
  %conv26 = select i1 %tobool.not.i.i, i8 -1, i8 %22
  %fft_size = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 69, i32 8
  %23 = ptrtoint ptr %fft_size to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv26, ptr %fft_size, align 2
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end13 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92}
!llvm.named.register.sp = !{!94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @ath11k_spectral_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 993, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ath11k_spectral_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 994, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 998, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 1014, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 208, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 221, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 255, i32 23}
!16 = !{ptr @xa_init_flags.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 811, i32 23}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 822, i32 23}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 829, i32 23}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 712, i32 20}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 722, i32 20}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 733, i32 20}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 752, i32 21}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 760, i32 25}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 771, i32 21}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 782, i32 21}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 589, i32 19}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 601, i32 19}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 614, i32 19}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 621, i32 23}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 627, i32 19}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 640, i32 19}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 916, i32 37}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 922, i32 23}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 927, i32 46}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 932, i32 23}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 938, i32 48}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 949, i32 47}
!63 = !{ptr @rfs_scan_cb, !64, !"rfs_scan_cb", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 149, i32 37}
!65 = !{ptr @fops_scan_ctl, !66, !"fops_scan_ctl", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 348, i32 37}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 267, i32 15}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 277, i32 10}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 280, i32 10}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 283, i32 10}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 308, i32 14}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 316, i32 25}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 323, i32 25}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!83 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!88 = !{ptr @fops_scan_count, !89, !"fops_scan_count", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 400, i32 37}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 369, i32 21}
!92 = !{ptr @fops_scan_bins, !93, !"fops_scan_bins", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath11k/spectral.c", i32 459, i32 37}
!94 = !{!"sp"}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i32 0, i32 33}
!107 = !{i64 848345, i64 848406}
!108 = !{i64 851077}
!109 = !{i64 851362}
!110 = !{i64 2150590810, i64 2150590835}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 3086365}
!113 = !{i64 3086562}
!114 = !{i64 2150571795}
!115 = !{!"auto-init"}
