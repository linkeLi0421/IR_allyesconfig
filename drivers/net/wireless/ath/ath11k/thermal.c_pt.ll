; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/thermal.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.151 = type { [6 x %struct.ieee80211_supported_band], [6 x [13 x %struct.ieee80211_sband_iftype_data]] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ath11k_per_peer_tx_stats = type { i32, i32, i32, i16, i16, i16, i32, i8, i8 }
%struct.ath11k_debug = type { ptr, %struct.ath11k_dbg_htt_stats, i32, %struct.ath11k_fw_stats, %struct.completion, i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.ath11k_dbg_htt_stats = type { i8, i8, ptr, %struct.spinlock }
%struct.ath11k_fw_stats = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath11k_spectral = type { %struct.ath11k_dbring, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.ath11k_dbring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ath11k_thermal = type { ptr, %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thermal_mitigation_params = type { i32, i32, i32, i32, [1 x %struct.tt_level_config] }
%struct.tt_level_config = type { i32, i32, i32, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.138, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.138 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ath/ath11k/thermal.c\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to send thermal mitigation duty cycle %u ret %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ath11k_thermal\00", [17 x i8] zeroinitializer }, align 32
@ath11k_thermal_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @ath11k_thermal_get_max_throttle_state, ptr @ath11k_thermal_get_cur_throttle_state, ptr @ath11k_thermal_set_cur_throttle_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to setup thermal device result: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cooling_device\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to create cooling device symlink\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ath11k_hwmon\00", [19 x i8] zeroinitializer }, align 32
@ath11k_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ath11k_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register hwmon device: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"throttle state %ld is exceeding the limit %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ath11k_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ath11k_hwmon_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ath11k_hwmon_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], [24 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ath11k_thermal_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read temperature %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to synchronize thermal read\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 132, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 150, i32 19 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 171, i32 42 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"ath11k_thermal_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 56, i32 48 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 175, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 184, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 186, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 194, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"ath11k_hwmon_groups\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 197, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 44, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"ath11k_hwmon_group\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 124, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"ath11k_hwmon_attrs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 120, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 117, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 81, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 93, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [45 x i8] c"../drivers/net/wireless/ath/ath11k/thermal.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 103, i32 33 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ath11k_thermal_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ath11k_hwmon_groups, ptr @.str.7, ptr @.str.8, ptr @ath11k_hwmon_group, ptr @ath11k_hwmon_attrs, ptr @sensor_dev_attr_temp1_input, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_thermal_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hwmon_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_thermal_event_temperature(ptr noundef %ar, i32 noundef %temperature) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #5
  %temperature1 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 71, i32 3
  %0 = ptrtoint ptr %temperature1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %temperature, ptr %temperature1, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #5
  %wmi_sync = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 71, i32 1
  tail call void @complete(ptr noundef %wmi_sync) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_thermal_set_throttling(ptr noundef %ar, i32 noundef %throttle_state) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.thermal_mitigation_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param) #5
  %2 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 1
  %3 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 2
  %4 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 3
  %5 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 4
  %6 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.thermal_mitigation_params, ptr %param, i32 0, i32 4, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !43

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp24.not = icmp eq i32 %11, 1
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %pdev = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %pdev_id = getelementptr inbounds %struct.ath11k_pdev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pdev_id, align 4
  %16 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throttle_state)
  %tobool28.not = icmp ne i32 %throttle_state, 0
  %cond = zext i1 %tobool28.not to i32
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %3, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %4, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -100, ptr %5, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 150, ptr %6, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %throttle_state, ptr %7, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %8, align 4
  %call35 = call i32 @ath11k_wmi_send_thermal_mitigation_param_cmd(ptr noundef %ar, ptr noundef nonnull %param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end26.cleanup_crit_edge, label %if.then37

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %throttle_state, i32 noundef %call35) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call35, %if.then37 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_thermal_mitigation_param_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_thermal_register(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp56 = icmp sgt i32 %1, 0
  br i1 %cmp56, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %sc, i32 0, i32 19, i32 %i.057
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call ptr @thermal_cooling_device_register(ptr noundef nonnull @.str.2, ptr noundef nonnull %3, ptr noundef nonnull @ath11k_thermal_ops) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %sc, ptr noundef nonnull @.str.3, i32 noundef %4) #5
  br label %err_thermal_destroy

if.end5:                                          ; preds = %if.end
  %thermal = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 71
  %5 = ptrtoint ptr %thermal to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %thermal, align 8
  %hw = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  %device = getelementptr inbounds %struct.thermal_cooling_device, ptr %call, i32 0, i32 2
  %call8 = tail call i32 @sysfs_create_link(ptr noundef %dev, ptr noundef %device, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %sc, ptr noundef nonnull @.str.5) #5
  br label %err_thermal_destroy

if.end11:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %wiphy13 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy13, align 8
  %dev14 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  %call15 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev14, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef nonnull @ath11k_hwmon_groups) #5
  %cmp.i42 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then17, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %16 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %16) #5
  br label %err_thermal_destroy

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %17 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err_thermal_destroy:                              ; preds = %if.then17, %if.then10, %if.then3
  %ret.0 = phi i32 [ -22, %if.then3 ], [ %call8, %if.then10 ], [ -22, %if.then17 ]
  %19 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.i = icmp sgt i32 %20, 0
  br i1 %cmp7.i, label %err_thermal_destroy.for.body.i_crit_edge, label %err_thermal_destroy.cleanup_crit_edge

err_thermal_destroy.cleanup_crit_edge:            ; preds = %err_thermal_destroy
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_thermal_destroy.for.body.i_crit_edge:         ; preds = %err_thermal_destroy
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_thermal_destroy.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %err_thermal_destroy.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %sc, i32 0, i32 19, i32 %i.08.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %hw.i = getelementptr inbounds %struct.ath11k, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void @sysfs_remove_link(ptr noundef %dev.i, ptr noundef nonnull @.str.4) #5
  %thermal.i = getelementptr inbounds %struct.ath11k, ptr %22, i32 0, i32 71
  %27 = ptrtoint ptr %thermal.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %thermal.i, align 8
  tail call void @thermal_cooling_device_unregister(ptr noundef %28) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %29 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_radios, align 64
  %cmp.i43 = icmp slt i32 %inc.i, %30
  br i1 %cmp.i43, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %err_thermal_destroy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_thermal_destroy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.inc.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_thermal_unregister(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %sc, i32 0, i32 19, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void @sysfs_remove_link(ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  %thermal = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 71
  %8 = ptrtoint ptr %thermal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thermal, align 8
  tail call void @thermal_cooling_device_unregister(ptr noundef %9) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %10 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ath11k_thermal_get_max_throttle_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_thermal_get_cur_throttle_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #5
  %throttle_state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 71, i32 2
  %2 = ptrtoint ptr %throttle_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %throttle_state, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_thermal_set_cur_throttle_state(ptr nocapture noundef readonly %cdev, i32 noundef %throttle_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %throttle_state)
  %cmp = icmp ugt i32 %throttle_state, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %throttle_state, i32 noundef 100) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #5
  %call = tail call i32 @ath11k_thermal_set_throttling(ptr noundef %1, i32 noundef %throttle_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %throttle_state3 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 71, i32 2
  %4 = ptrtoint ptr %throttle_state3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %throttle_state, ptr %throttle_state3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_thermal_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %wmi_sync = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 71, i32 1
  %4 = ptrtoint ptr %wmi_sync to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wmi_sync, align 4
  %call1 = tail call i32 @ath11k_wmi_send_pdev_temperature_cmd(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %call1) #5
  br label %out

if.end3:                                          ; preds = %if.end
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %6, i32 0, i32 45
  %7 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dev_flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end8:                                          ; preds = %if.end3
  %call11 = tail call i32 @wait_for_completion_timeout(ptr noundef %wmi_sync, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %11, ptr noundef nonnull @.str.11) #5
  br label %out

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %data_lock = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #5
  %temperature17 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 71, i32 3
  %12 = ptrtoint ptr %temperature17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temperature17, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #5
  %mul = mul i32 %13, 1000
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %mul)
  br label %out

out:                                              ; preds = %if.end15, %if.then13, %if.end3.out_crit_edge, %if.then2, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then2 ], [ %call19, %if.end15 ], [ -110, %if.then13 ], [ -100, %entry.out_crit_edge ], [ -108, %if.end3.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_pdev_temperature_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 132, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 150, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 171, i32 42}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 175, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 184, i32 6}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 186, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 194, i32 12}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 197, i32 23}
!16 = !{ptr @ath11k_thermal_ops, !17, !"ath11k_thermal_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 56, i32 48}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 44, i32 23}
!20 = !{ptr @ath11k_hwmon_groups, !21, !"ath11k_hwmon_groups", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 124, i32 1}
!22 = !{ptr @ath11k_hwmon_group, !21, !"ath11k_hwmon_group", i1 false, i1 false}
!23 = !{ptr @ath11k_hwmon_attrs, !24, !"ath11k_hwmon_attrs", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 120, i32 26}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 117, i32 8}
!27 = !{ptr @sensor_dev_attr_temp1_input, !26, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 81, i32 23}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 93, i32 23}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/thermal.c", i32 103, i32 33}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
