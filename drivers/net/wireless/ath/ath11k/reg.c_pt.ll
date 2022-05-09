; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/reg.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.138, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.138 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.129 = type { i64, i64, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.scan_chan_list_params = type { i32, i16, [0 x %struct.channel_param] }
%struct.channel_param = type <{ i8, i8, i32, i16, i32, i32, i32, i8, i8, i8, i8, i8 }>
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.anon.109 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.110, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.132, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.110 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.132 = type { ptr }
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
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.cur_regulatory_info = type { i32, i8, i8, i16, i16, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.cur_reg_rule = type { i16, i16, i16, i8, i8, i16 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath11k/reg.c\00", [58 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mac channel [%d/%d] freq %d maxpower %d regpower %d antenna %d mode %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to receive default regd during init\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to perform regd update : %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\0D\0ACountry %s, CFG Regdomain %s FW Regdomain %d, num_reg_rules %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\09%d. (%d - %d @ %d) (%d, %d) (%d ms) (FLAGS %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to create intersected regdomain\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@ath11k_world_regd = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] }, [76 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 3, [3 x i8] c"00\00", i32 0, [3 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5715000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [76 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCC\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ETSI\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JP\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UNSET\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Regulatory Notification received for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unexpected Regulatory event for this wiphy\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Country is already set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"INIT Country code set to fw failed : %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ath11k_regdom_changes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@switch.table.ath11k_reg_build_regd = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 1, i32 2, i32 3], [40 x i8] zeroinitializer }, align 32
@switch.table.ath11k_reg_build_regd.17 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 121, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 171, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 232, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 283, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 620, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 674, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 693, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"ath11k_world_regd\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 21, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 461, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 463, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 465, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 467, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 54, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 64, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 75, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 90, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/reg.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 35, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant [35 x i8] c"switch.table.ath11k_reg_build_regd\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [38 x i8] c"switch.table.ath11k_reg_build_regd.17\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ath11k_world_regd, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.ath11k_reg_build_regd, ptr @switch.table.ath11k_reg_build_regd.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_world_regd to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_reg_build_regd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_reg_build_regd.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_reg_update_chan_list(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %bands2 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %bands2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bands2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc13_crit_edge, label %for.cond3.preheader

entry.for.inc13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.cond3.preheader:                              ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5245 = icmp sgt i32 %7, 0
  br i1 %cmp5245, label %for.body6.lr.ph, label %for.cond3.preheader.for.inc13_crit_edge

for.cond3.preheader.for.inc13_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %i.0247 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc12, %for.body6.for.body6_crit_edge ]
  %num_channels.1246 = phi i32 [ 0, %for.body6.lr.ph ], [ %spec.select, %for.body6.for.body6_crit_edge ]
  %flags = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.0247, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  %12 = xor i32 %and, 1
  %spec.select = add i32 %12, %num_channels.1246
  %inc12 = add nuw nsw i32 %i.0247, 1
  %exitcond.not = icmp eq i32 %inc12, %7
  br i1 %exitcond.not, label %for.body6.for.inc13_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.body6.for.inc13_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.inc13:                                        ; preds = %for.body6.for.inc13_crit_edge, %for.cond3.preheader.for.inc13_crit_edge, %entry.for.inc13_crit_edge
  %num_channels.3 = phi i32 [ 0, %entry.for.inc13_crit_edge ], [ 0, %for.cond3.preheader.for.inc13_crit_edge ], [ %spec.select, %for.body6.for.inc13_crit_edge ]
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc13.for.inc13.1_crit_edge, label %for.cond3.preheader.1

for.inc13.for.inc13.1_crit_edge:                  ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.1

for.cond3.preheader.1:                            ; preds = %for.inc13
  %n_channels.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_channels.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5245.1 = icmp sgt i32 %16, 0
  br i1 %cmp5245.1, label %for.body6.lr.ph.1, label %for.cond3.preheader.1.for.inc13.1_crit_edge

for.cond3.preheader.1.for.inc13.1_crit_edge:      ; preds = %for.cond3.preheader.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.1

for.body6.lr.ph.1:                                ; preds = %for.cond3.preheader.1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %for.body6.1

for.body6.1:                                      ; preds = %for.body6.1.for.body6.1_crit_edge, %for.body6.lr.ph.1
  %i.0247.1 = phi i32 [ 0, %for.body6.lr.ph.1 ], [ %inc12.1, %for.body6.1.for.body6.1_crit_edge ]
  %num_channels.1246.1 = phi i32 [ %num_channels.3, %for.body6.lr.ph.1 ], [ %spec.select.1, %for.body6.1.for.body6.1_crit_edge ]
  %flags.1 = getelementptr %struct.ieee80211_channel, ptr %18, i32 %i.0247.1, i32 4
  %19 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %20, 1
  %21 = xor i32 %and.1, 1
  %spec.select.1 = add i32 %21, %num_channels.1246.1
  %inc12.1 = add nuw nsw i32 %i.0247.1, 1
  %exitcond.1.not = icmp eq i32 %inc12.1, %16
  br i1 %exitcond.1.not, label %for.body6.1.for.inc13.1_crit_edge, label %for.body6.1.for.body6.1_crit_edge

for.body6.1.for.body6.1_crit_edge:                ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.1

for.body6.1.for.inc13.1_crit_edge:                ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.1

for.inc13.1:                                      ; preds = %for.body6.1.for.inc13.1_crit_edge, %for.cond3.preheader.1.for.inc13.1_crit_edge, %for.inc13.for.inc13.1_crit_edge
  %num_channels.3.1 = phi i32 [ %num_channels.3, %for.inc13.for.inc13.1_crit_edge ], [ %num_channels.3, %for.cond3.preheader.1.for.inc13.1_crit_edge ], [ %spec.select.1, %for.body6.1.for.inc13.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %23, null
  br i1 %tobool.not.2, label %for.inc13.1.for.inc13.2_crit_edge, label %for.cond3.preheader.2

for.inc13.1.for.inc13.2_crit_edge:                ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.2

for.cond3.preheader.2:                            ; preds = %for.inc13.1
  %n_channels.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_channels.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5245.2 = icmp sgt i32 %25, 0
  br i1 %cmp5245.2, label %for.body6.lr.ph.2, label %for.cond3.preheader.2.for.inc13.2_crit_edge

for.cond3.preheader.2.for.inc13.2_crit_edge:      ; preds = %for.cond3.preheader.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.2

for.body6.lr.ph.2:                                ; preds = %for.cond3.preheader.2
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %for.body6.2

for.body6.2:                                      ; preds = %for.body6.2.for.body6.2_crit_edge, %for.body6.lr.ph.2
  %i.0247.2 = phi i32 [ 0, %for.body6.lr.ph.2 ], [ %inc12.2, %for.body6.2.for.body6.2_crit_edge ]
  %num_channels.1246.2 = phi i32 [ %num_channels.3.1, %for.body6.lr.ph.2 ], [ %spec.select.2, %for.body6.2.for.body6.2_crit_edge ]
  %flags.2 = getelementptr %struct.ieee80211_channel, ptr %27, i32 %i.0247.2, i32 4
  %28 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %29, 1
  %30 = xor i32 %and.2, 1
  %spec.select.2 = add i32 %30, %num_channels.1246.2
  %inc12.2 = add nuw nsw i32 %i.0247.2, 1
  %exitcond.2.not = icmp eq i32 %inc12.2, %25
  br i1 %exitcond.2.not, label %for.body6.2.for.inc13.2_crit_edge, label %for.body6.2.for.body6.2_crit_edge

for.body6.2.for.body6.2_crit_edge:                ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.2

for.body6.2.for.inc13.2_crit_edge:                ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.2

for.inc13.2:                                      ; preds = %for.body6.2.for.inc13.2_crit_edge, %for.cond3.preheader.2.for.inc13.2_crit_edge, %for.inc13.1.for.inc13.2_crit_edge
  %num_channels.3.2 = phi i32 [ %num_channels.3.1, %for.inc13.1.for.inc13.2_crit_edge ], [ %num_channels.3.1, %for.cond3.preheader.2.for.inc13.2_crit_edge ], [ %spec.select.2, %for.body6.2.for.inc13.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %32, null
  br i1 %tobool.not.3, label %for.inc13.2.for.inc13.3_crit_edge, label %for.cond3.preheader.3

for.inc13.2.for.inc13.3_crit_edge:                ; preds = %for.inc13.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.3

for.cond3.preheader.3:                            ; preds = %for.inc13.2
  %n_channels.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp5245.3 = icmp sgt i32 %34, 0
  br i1 %cmp5245.3, label %for.body6.lr.ph.3, label %for.cond3.preheader.3.for.inc13.3_crit_edge

for.cond3.preheader.3.for.inc13.3_crit_edge:      ; preds = %for.cond3.preheader.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.3

for.body6.lr.ph.3:                                ; preds = %for.cond3.preheader.3
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %for.body6.3

for.body6.3:                                      ; preds = %for.body6.3.for.body6.3_crit_edge, %for.body6.lr.ph.3
  %i.0247.3 = phi i32 [ 0, %for.body6.lr.ph.3 ], [ %inc12.3, %for.body6.3.for.body6.3_crit_edge ]
  %num_channels.1246.3 = phi i32 [ %num_channels.3.2, %for.body6.lr.ph.3 ], [ %spec.select.3, %for.body6.3.for.body6.3_crit_edge ]
  %flags.3 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %i.0247.3, i32 4
  %37 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %38, 1
  %39 = xor i32 %and.3, 1
  %spec.select.3 = add i32 %39, %num_channels.1246.3
  %inc12.3 = add nuw nsw i32 %i.0247.3, 1
  %exitcond.3.not = icmp eq i32 %inc12.3, %34
  br i1 %exitcond.3.not, label %for.body6.3.for.inc13.3_crit_edge, label %for.body6.3.for.body6.3_crit_edge

for.body6.3.for.body6.3_crit_edge:                ; preds = %for.body6.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.3

for.body6.3.for.inc13.3_crit_edge:                ; preds = %for.body6.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.3

for.inc13.3:                                      ; preds = %for.body6.3.for.inc13.3_crit_edge, %for.cond3.preheader.3.for.inc13.3_crit_edge, %for.inc13.2.for.inc13.3_crit_edge
  %num_channels.3.3 = phi i32 [ %num_channels.3.2, %for.inc13.2.for.inc13.3_crit_edge ], [ %num_channels.3.2, %for.cond3.preheader.3.for.inc13.3_crit_edge ], [ %spec.select.3, %for.body6.3.for.inc13.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %41, null
  br i1 %tobool.not.4, label %for.inc13.3.for.inc13.4_crit_edge, label %for.cond3.preheader.4

for.inc13.3.for.inc13.4_crit_edge:                ; preds = %for.inc13.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.4

for.cond3.preheader.4:                            ; preds = %for.inc13.3
  %n_channels.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5245.4 = icmp sgt i32 %43, 0
  br i1 %cmp5245.4, label %for.body6.lr.ph.4, label %for.cond3.preheader.4.for.inc13.4_crit_edge

for.cond3.preheader.4.for.inc13.4_crit_edge:      ; preds = %for.cond3.preheader.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.4

for.body6.lr.ph.4:                                ; preds = %for.cond3.preheader.4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  br label %for.body6.4

for.body6.4:                                      ; preds = %for.body6.4.for.body6.4_crit_edge, %for.body6.lr.ph.4
  %i.0247.4 = phi i32 [ 0, %for.body6.lr.ph.4 ], [ %inc12.4, %for.body6.4.for.body6.4_crit_edge ]
  %num_channels.1246.4 = phi i32 [ %num_channels.3.3, %for.body6.lr.ph.4 ], [ %spec.select.4, %for.body6.4.for.body6.4_crit_edge ]
  %flags.4 = getelementptr %struct.ieee80211_channel, ptr %45, i32 %i.0247.4, i32 4
  %46 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %47, 1
  %48 = xor i32 %and.4, 1
  %spec.select.4 = add i32 %48, %num_channels.1246.4
  %inc12.4 = add nuw nsw i32 %i.0247.4, 1
  %exitcond.4.not = icmp eq i32 %inc12.4, %43
  br i1 %exitcond.4.not, label %for.body6.4.for.inc13.4_crit_edge, label %for.body6.4.for.body6.4_crit_edge

for.body6.4.for.body6.4_crit_edge:                ; preds = %for.body6.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.4

for.body6.4.for.inc13.4_crit_edge:                ; preds = %for.body6.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.4

for.inc13.4:                                      ; preds = %for.body6.4.for.inc13.4_crit_edge, %for.cond3.preheader.4.for.inc13.4_crit_edge, %for.inc13.3.for.inc13.4_crit_edge
  %num_channels.3.4 = phi i32 [ %num_channels.3.3, %for.inc13.3.for.inc13.4_crit_edge ], [ %num_channels.3.3, %for.cond3.preheader.4.for.inc13.4_crit_edge ], [ %spec.select.4, %for.body6.4.for.inc13.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 5
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %50, null
  br i1 %tobool.not.5, label %for.inc13.4.for.inc13.5_crit_edge, label %for.cond3.preheader.5

for.inc13.4.for.inc13.5_crit_edge:                ; preds = %for.inc13.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.5

for.cond3.preheader.5:                            ; preds = %for.inc13.4
  %n_channels.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_channels.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp5245.5 = icmp sgt i32 %52, 0
  br i1 %cmp5245.5, label %for.body6.lr.ph.5, label %for.cond3.preheader.5.for.inc13.5_crit_edge

for.cond3.preheader.5.for.inc13.5_crit_edge:      ; preds = %for.cond3.preheader.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.5

for.body6.lr.ph.5:                                ; preds = %for.cond3.preheader.5
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  br label %for.body6.5

for.body6.5:                                      ; preds = %for.body6.5.for.body6.5_crit_edge, %for.body6.lr.ph.5
  %i.0247.5 = phi i32 [ 0, %for.body6.lr.ph.5 ], [ %inc12.5, %for.body6.5.for.body6.5_crit_edge ]
  %num_channels.1246.5 = phi i32 [ %num_channels.3.4, %for.body6.lr.ph.5 ], [ %spec.select.5, %for.body6.5.for.body6.5_crit_edge ]
  %flags.5 = getelementptr %struct.ieee80211_channel, ptr %54, i32 %i.0247.5, i32 4
  %55 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %56, 1
  %57 = xor i32 %and.5, 1
  %spec.select.5 = add i32 %57, %num_channels.1246.5
  %inc12.5 = add nuw nsw i32 %i.0247.5, 1
  %exitcond.5.not = icmp eq i32 %inc12.5, %52
  br i1 %exitcond.5.not, label %for.body6.5.for.inc13.5_crit_edge, label %for.body6.5.for.body6.5_crit_edge

for.body6.5.for.body6.5_crit_edge:                ; preds = %for.body6.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.5

for.body6.5.for.inc13.5_crit_edge:                ; preds = %for.body6.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.5

for.inc13.5:                                      ; preds = %for.body6.5.for.inc13.5_crit_edge, %for.cond3.preheader.5.for.inc13.5_crit_edge, %for.inc13.4.for.inc13.5_crit_edge
  %num_channels.3.5 = phi i32 [ %num_channels.3.4, %for.inc13.4.for.inc13.5_crit_edge ], [ %num_channels.3.4, %for.cond3.preheader.5.for.inc13.5_crit_edge ], [ %spec.select.5, %for.body6.5.for.inc13.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.3.5)
  %tobool16.not = icmp eq i32 %num_channels.3.5, 0
  br i1 %tobool16.not, label %do.end, label %if.end8.i.i, !prof !44

do.end:                                           ; preds = %for.inc13.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.inc13.5
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_channels.3.5, i32 25) #7
  %59 = extractvalue { i32, i1 } %58, 1
  %60 = extractvalue { i32, i1 } %58, 0
  %61 = add nuw i32 %60, 8
  %retval.0.i = select i1 %59, i32 -1, i32 %61
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #10
  %tobool43.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool43.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end45

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end8.i.i
  %pdev = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 1
  %62 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev, align 4
  %pdev_id = getelementptr inbounds %struct.ath11k_pdev, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pdev_id, align 4
  %66 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %call9.i.i, align 128
  %conv = trunc i32 %num_channels.3.5 to i16
  %nallchans = getelementptr inbounds %struct.scan_chan_list_params, ptr %call9.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %nallchans to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv, ptr %nallchans, align 4
  %ch_param = getelementptr inbounds %struct.scan_chan_list_params, ptr %call9.i.i, i32 0, i32 2
  br label %for.body51

for.body51:                                       ; preds = %for.inc157.for.body51_crit_edge, %if.end45
  %band.1259 = phi i32 [ 0, %if.end45 ], [ %inc158, %for.inc157.for.body51_crit_edge ]
  %ch.0258 = phi ptr [ %ch_param, %if.end45 ], [ %ch.3, %for.inc157.for.body51_crit_edge ]
  %arrayidx52 = getelementptr ptr, ptr %bands2, i32 %band.1259
  %68 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %69, null
  br i1 %tobool53.not, label %for.body51.for.inc157_crit_edge, label %for.cond56.preheader

for.body51.for.inc157_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc157

for.cond56.preheader:                             ; preds = %for.body51
  %70 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx52, align 4
  %n_channels58250 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %n_channels58250 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_channels58250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp59251 = icmp sgt i32 %73, 0
  br i1 %cmp59251, label %for.cond56.preheader.for.body61_crit_edge, label %for.cond56.preheader.for.inc157_crit_edge

for.cond56.preheader.for.inc157_crit_edge:        ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc157

for.cond56.preheader.for.body61_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body61

for.body61:                                       ; preds = %for.inc154.for.body61_crit_edge, %for.cond56.preheader.for.body61_crit_edge
  %74 = phi ptr [ %128, %for.inc154.for.body61_crit_edge ], [ %71, %for.cond56.preheader.for.body61_crit_edge ]
  %i.1254 = phi i32 [ %inc155, %for.inc154.for.body61_crit_edge ], [ 0, %for.cond56.preheader.for.body61_crit_edge ]
  %ch.1252 = phi ptr [ %ch.2, %for.inc154.for.body61_crit_edge ], [ %ch.0258, %for.cond56.preheader.for.body61_crit_edge ]
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %flags65 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.1254, i32 4
  %77 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags65, align 4
  %and66 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end69, label %for.body61.for.inc154_crit_edge

for.body61.for.inc154_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc154

if.end69:                                         ; preds = %for.body61
  %arrayidx64 = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.1254
  %allow_ht = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 3
  %79 = ptrtoint ptr %allow_ht to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load = load i16, ptr %allow_ht, align 1
  %bf.set75 = or i16 %bf.load, 1792
  store i16 %bf.set75, ptr %allow_ht, align 1
  %80 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags65, align 4
  %82 = trunc i32 %81 to i16
  %83 = shl i16 %82, 10
  %bf.shl = and i16 %83, 8192
  %bf.clear84 = and i16 %bf.set75, -8193
  %bf.set85 = or i16 %bf.shl, %bf.clear84
  store i16 %bf.set85, ptr %allow_ht, align 1
  %84 = load i32, ptr %flags65, align 4
  %85 = trunc i32 %84 to i16
  %86 = shl i16 %85, 10
  %bf.shl95 = and i16 %86, 2048
  %bf.clear96 = and i16 %bf.set85, -2049
  %bf.lshr = lshr exact i16 %bf.shl, 2
  %or240 = or i16 %bf.shl95, %bf.lshr
  %bf.set111 = or i16 %or240, %bf.clear96
  store i16 %bf.set111, ptr %allow_ht, align 1
  %center_freq = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.1254, i32 1
  %87 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %center_freq, align 4
  %mhz = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 2
  %89 = ptrtoint ptr %mhz to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %mhz, align 1
  %90 = load i32, ptr %center_freq, align 4
  %cfreq1 = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 5
  %91 = ptrtoint ptr %cfreq1 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %cfreq1, align 1
  %minpower = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 8
  %92 = ptrtoint ptr %minpower to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %minpower, align 1
  %max_power = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.1254, i32 6
  %93 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_power, align 4
  %.tr = trunc i32 %94 to i8
  %conv114 = shl i8 %.tr, 1
  %maxpower = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 7
  %95 = ptrtoint ptr %maxpower to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv114, ptr %maxpower, align 1
  %max_reg_power = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.1254, i32 7
  %96 = ptrtoint ptr %max_reg_power to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_reg_power, align 4
  %.tr241 = trunc i32 %97 to i8
  %conv116 = shl i8 %.tr241, 1
  %maxregpower = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 9
  %98 = ptrtoint ptr %maxregpower to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv116, ptr %maxregpower, align 1
  %max_antenna_gain = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.1254, i32 5
  %99 = ptrtoint ptr %max_antenna_gain to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_antenna_gain, align 4
  %.tr242 = trunc i32 %100 to i8
  %conv118 = shl i8 %.tr242, 1
  %antennamax = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 10
  %101 = ptrtoint ptr %antennamax to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv118, ptr %antennamax, align 1
  %102 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp120 = icmp eq i32 %103, 0
  %spec.select262 = zext i1 %cmp120 to i32
  %104 = getelementptr inbounds %struct.channel_param, ptr %ch.1252, i32 0, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %spec.select262, ptr %104, align 1
  %106 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp126 = icmp eq i32 %107, 3
  br i1 %cmp126, label %cfg80211_channel_is_psc.exit, label %if.end69.do.body135_crit_edge

if.end69.do.body135_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body135

cfg80211_channel_is_psc.exit:                     ; preds = %if.end69
  %108 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %center_freq, align 4
  %mul.i.i = mul i32 %109, 1000
  %call.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #7
  %110 = and i32 %call.i.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %110)
  %cmp1.i = icmp eq i32 %110, 5
  br i1 %cmp1.i, label %if.then130, label %cfg80211_channel_is_psc.exit.do.body135_crit_edge

cfg80211_channel_is_psc.exit.do.body135_crit_edge: ; preds = %cfg80211_channel_is_psc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body135

if.then130:                                       ; preds = %cfg80211_channel_is_psc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %allow_ht to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %bf.load131 = load i16, ptr %allow_ht, align 1
  %bf.set133 = or i16 %bf.load131, 64
  store i16 %bf.set133, ptr %allow_ht, align 1
  br label %do.body135

do.body135:                                       ; preds = %if.then130, %cfg80211_channel_is_psc.exit.do.body135_crit_edge, %if.end69.do.body135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %112 = load i32, ptr @ath11k_debug_mask, align 4
  %and136 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %lor.lhs.false, label %do.body135.if.then140_crit_edge

do.body135.if.then140_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then140

lor.lhs.false:                                    ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_update_chan_list, %if.then140)) #7
          to label %do.end153 [label %if.then140], !srcloc !45

if.then140:                                       ; preds = %lor.lhs.false, %do.body135.if.then140_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ar, align 8
  %115 = ptrtoint ptr %nallchans to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %nallchans, align 4
  %conv142 = zext i16 %116 to i32
  %117 = ptrtoint ptr %mhz to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %mhz, align 1
  %119 = ptrtoint ptr %maxpower to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %maxpower, align 1
  %conv145 = zext i8 %120 to i32
  %121 = ptrtoint ptr %maxregpower to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %maxregpower, align 1
  %conv147 = zext i8 %122 to i32
  %123 = ptrtoint ptr %antennamax to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %antennamax, align 1
  %conv149 = zext i8 %124 to i32
  %125 = ptrtoint ptr %104 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %104, align 1
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %114, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %i.1254, i32 noundef %conv142, i32 noundef %118, i32 noundef %conv145, i32 noundef %conv147, i32 noundef %conv149, i32 noundef %126) #7
  br label %do.end153

do.end153:                                        ; preds = %if.then140, %lor.lhs.false
  %incdec.ptr = getelementptr %struct.channel_param, ptr %ch.1252, i32 1
  br label %for.inc154

for.inc154:                                       ; preds = %do.end153, %for.body61.for.inc154_crit_edge
  %ch.2 = phi ptr [ %ch.1252, %for.body61.for.inc154_crit_edge ], [ %incdec.ptr, %do.end153 ]
  %inc155 = add nuw nsw i32 %i.1254, 1
  %127 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx52, align 4
  %n_channels58 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %n_channels58 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %n_channels58, align 4
  %cmp59 = icmp slt i32 %inc155, %130
  br i1 %cmp59, label %for.inc154.for.body61_crit_edge, label %for.inc154.for.inc157_crit_edge

for.inc154.for.inc157_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc157

for.inc154.for.body61_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

for.inc157:                                       ; preds = %for.inc154.for.inc157_crit_edge, %for.cond56.preheader.for.inc157_crit_edge, %for.body51.for.inc157_crit_edge
  %ch.3 = phi ptr [ %ch.0258, %for.body51.for.inc157_crit_edge ], [ %ch.0258, %for.cond56.preheader.for.inc157_crit_edge ], [ %ch.2, %for.inc154.for.inc157_crit_edge ]
  %inc158 = add nuw nsw i32 %band.1259, 1
  %exitcond261.not = icmp eq i32 %inc158, 6
  br i1 %exitcond261.not, label %for.end159, label %for.inc157.for.body51_crit_edge

for.inc157.for.body51_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.end159:                                       ; preds = %for.inc157
  %call160 = tail call i32 @ath11k_wmi_send_scan_chan_list_cmd(ptr noundef %ar, ptr noundef nonnull %call9.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %pending_11d = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 75
  %131 = ptrtoint ptr %pending_11d to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pending_11d, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool161.not = icmp eq i8 %132, 0
  br i1 %tobool161.not, label %for.end159.cleanup_crit_edge, label %if.then162

for.end159.cleanup_crit_edge:                     ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then162:                                       ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #9
  %finish_11d_ch_list = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 74
  tail call void @complete(ptr noundef %finish_11d_ch_list) #7
  %133 = ptrtoint ptr %pending_11d to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %pending_11d, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %for.end159.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call160, %if.then162 ], [ %call160, %for.end159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_scan_chan_list_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_regd_update(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %2 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pdev_idx, align 4
  %conv = zext i8 %3 to i32
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #7
  %arrayidx = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 40, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else:                                          ; preds = %entry
  %arrayidx4 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 39, i32 %conv
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.else9, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.else.if.end14_crit_edge, %entry.if.end14_crit_edge
  %regd.0 = phi ptr [ @ath11k_world_regd, %if.else9 ], [ %5, %entry.if.end14_crit_edge ], [ %7, %if.else.if.end14_crit_edge ]
  %n_reg_rules = getelementptr inbounds %struct.ieee80211_regdomain, ptr %regd.0, i32 0, i32 1
  %8 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_reg_rules, align 4
  %mul = mul i32 %9, 96
  %add = or i32 %mul, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #10
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %if.then20.critedge, label %if.then16

if.then16:                                        ; preds = %if.end14
  %10 = call ptr @memcpy(ptr %call9.i.i, ptr %regd.0, i32 20)
  %11 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_reg_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11.not.i = icmp eq i32 %12, 0
  br i1 %cmp11.not.i, label %if.then16.ath11k_copy_regd.exit_crit_edge, label %if.then16.for.body.i_crit_edge

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

if.then16.ath11k_copy_regd.exit_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_copy_regd.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %conv13.i = phi i32 [ %conv.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then16.for.body.i_crit_edge ]
  %i.012.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then16.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4, i32 %conv13.i
  %arrayidx4.i = getelementptr %struct.ieee80211_regdomain, ptr %regd.0, i32 0, i32 4, i32 %conv13.i
  %13 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx4.i, i32 96)
  %inc.i = add i8 %i.012.i, 1
  %conv.i = zext i8 %inc.i to i32
  %14 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_reg_rules, align 4
  %cmp.i = icmp ugt i32 %15, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath11k_copy_regd.exit_crit_edge

for.body.i.ath11k_copy_regd.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_copy_regd.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ath11k_copy_regd.exit:                            ; preds = %for.body.i.ath11k_copy_regd.exit_crit_edge, %if.then16.ath11k_copy_regd.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #7
  %pending_11d = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 75
  %16 = ptrtoint ptr %pending_11d to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pending_11d, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %ath11k_copy_regd.exit.if.end24_crit_edge, label %if.then23

ath11k_copy_regd.exit.if.end24_crit_edge:         ; preds = %ath11k_copy_regd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20.critedge:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #7
  br label %err

if.then23:                                        ; preds = %ath11k_copy_regd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %finish_11d_scan = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 73
  tail call void @complete(ptr noundef %finish_11d_scan) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %ath11k_copy_regd.exit.if.end24_crit_edge
  tail call void @rtnl_lock() #7
  %hw = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 2
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %21, i32 noundef 0) #7
  %22 = ptrtoint ptr %pending_11d to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pending_11d, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool26.not = icmp eq i8 %23, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %finish_11d_ch_list = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 74
  %24 = ptrtoint ptr %finish_11d_ch_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %finish_11d_ch_list, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %wiphy30 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy30, align 8
  %call31 = tail call i32 @regulatory_set_wiphy_regd_sync(ptr noundef %28, ptr noundef nonnull %call9.i.i) #7
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %wiphy33 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy33, align 8
  tail call void @mutex_unlock(ptr noundef %32) #7
  tail call void @rtnl_unlock() #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool34.not = icmp eq i32 %call31, 0
  br i1 %tobool34.not, label %if.end36, label %if.end28.err_crit_edge

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end36:                                         ; preds = %if.end28
  %state = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 10
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp = icmp eq i32 %34, 1
  br i1 %cmp, label %if.then38, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  %call39 = tail call i32 @ath11k_reg_update_chan_list(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.cleanup_crit_edge, label %if.then38.err_crit_edge

if.then38.err_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.then38.err_crit_edge, %if.end28.err_crit_edge, %if.then20.critedge
  %ret.0 = phi i32 [ %call31, %if.end28.err_crit_edge ], [ %call39, %if.then38.err_crit_edge ], [ -12, %if.then20.critedge ]
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then38.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then38.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_set_wiphy_regd_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath11k_reg_build_regd(ptr noundef %ab, ptr nocapture noundef readonly %reg_info, i1 noundef zeroext %intersect) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca i8, align 1
  %alpha2 = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i) #7
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alpha2) #7
  %1 = getelementptr inbounds [3 x i8], ptr %alpha2, i32 0, i32 2
  %num_5g_reg_rules = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 13
  %2 = ptrtoint ptr %num_5g_reg_rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_5g_reg_rules, align 4
  %num_2g_reg_rules = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 12
  %4 = ptrtoint ptr %num_2g_reg_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_2g_reg_rules, align 4
  %add = add i32 %5, %3
  %conv = trunc i32 %add to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %entry.ret_crit_edge, label %if.end

entry.ret_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end:                                           ; preds = %entry
  %dfs_region = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 6
  %6 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dfs_region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %add4 = add i32 %add, 2
  %num_rules.0 = select i1 %cmp, i32 %add4, i32 %add
  %conv7 = and i32 %num_rules.0, 255
  %mul = mul nuw nsw i32 %conv7, 96
  %add8 = or i32 %mul, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add8, i32 noundef 2848) #10
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end.ret_crit_edge, label %if.end11

if.end.ret_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end11:                                         ; preds = %if.end
  %alpha212 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 2
  %alpha213 = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %alpha212, ptr %alpha213, i32 3)
  %9 = ptrtoint ptr %alpha213 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %alpha213, align 2
  %11 = ptrtoint ptr %alpha2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %alpha2, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %1, align 2
  %13 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dfs_region, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 6
  br i1 %15, label %switch.lookup, label %if.end11.ath11k_map_fw_dfs_region.exit_crit_edge

if.end11.ath11k_map_fw_dfs_region.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_map_fw_dfs_region.exit

switch.lookup:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ath11k_reg_build_regd, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ath11k_map_fw_dfs_region.exit

ath11k_map_fw_dfs_region.exit:                    ; preds = %switch.lookup, %if.end11.ath11k_map_fw_dfs_region.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end11.ath11k_map_fw_dfs_region.exit_crit_edge ]
  %dfs_region20 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %dfs_region20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %dfs_region20, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %18 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %ath11k_map_fw_dfs_region.exit.if.then24_crit_edge

ath11k_map_fw_dfs_region.exit.if.then24_crit_edge: ; preds = %ath11k_map_fw_dfs_region.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false:                                    ; preds = %ath11k_map_fw_dfs_region.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_build_regd, %trace_ath11k_log_dbg_enabled.exit.thread)) #7
          to label %do.end [label %trace_ath11k_log_dbg_enabled.exit.thread], !srcloc !45

trace_ath11k_log_dbg_enabled.exit.thread:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dfs_region20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %dfs_region20, align 16
  br label %if.then24

if.then24:                                        ; preds = %trace_ath11k_log_dbg_enabled.exit.thread, %ath11k_map_fw_dfs_region.exit.if.then24_crit_edge
  %20 = phi i32 [ %.pr, %trace_ath11k_log_dbg_enabled.exit.thread ], [ %retval.0.i, %ath11k_map_fw_dfs_region.exit.if.then24_crit_edge ]
  %switch.tableidx231 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx231)
  %21 = icmp ult i32 %switch.tableidx231, 3
  br i1 %21, label %switch.lookup230, label %if.then24.ath11k_reg_get_regdom_str.exit_crit_edge

if.then24.ath11k_reg_get_regdom_str.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_reg_get_regdom_str.exit

switch.lookup230:                                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep232 = getelementptr inbounds [3 x ptr], ptr @switch.table.ath11k_reg_build_regd.17, i32 0, i32 %switch.tableidx231
  %22 = ptrtoint ptr %switch.gep232 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load233 = load ptr, ptr %switch.gep232, align 4
  br label %ath11k_reg_get_regdom_str.exit

ath11k_reg_get_regdom_str.exit:                   ; preds = %switch.lookup230, %if.then24.ath11k_reg_get_regdom_str.exit_crit_edge
  %retval.0.i206 = phi ptr [ %switch.load233, %switch.lookup230 ], [ @.str.11, %if.then24.ath11k_reg_get_regdom_str.exit_crit_edge ]
  %23 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dfs_region, align 4
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 512, ptr noundef nonnull @.str.4, ptr noundef nonnull %alpha2, ptr noundef nonnull %retval.0.i206, i32 noundef %24, i32 noundef %conv7) #7
  br label %do.end

do.end:                                           ; preds = %ath11k_reg_get_regdom_str.exit, %lor.lhs.false
  %25 = ptrtoint ptr %i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i, align 1
  %conv31220 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %conv31220)
  %cmp33221 = icmp ugt i32 %conv7, %conv31220
  br i1 %cmp33221, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %reg_rules_5g_ptr = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 15
  %max_bw_5g = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 11
  %reg_rules_2g_ptr = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 14
  %max_bw_2g = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 9
  %reg_rules = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv31223 = phi i32 [ %conv31220, %for.body.lr.ph ], [ %conv31, %for.inc.for.body_crit_edge ]
  %27 = phi i8 [ %26, %for.body.lr.ph ], [ %inc130, %for.inc.for.body_crit_edge ]
  %j.0222 = phi i8 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %num_2g_reg_rules to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_2g_reg_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool36.not = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv31223)
  %cmp39 = icmp ugt i32 %29, %conv31223
  %or.cond = select i1 %tobool36.not, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then41, label %if.else

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %reg_rules_2g_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_rules_2g_ptr, align 4
  %add.ptr = getelementptr %struct.cur_reg_rule, ptr %31, i32 %conv31223
  %max_bw43 = getelementptr %struct.cur_reg_rule, ptr %31, i32 %conv31223, i32 2
  br label %if.end78

if.else:                                          ; preds = %for.body
  %32 = ptrtoint ptr %num_5g_reg_rules to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_5g_reg_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool53.not = icmp eq i32 %33, 0
  br i1 %tobool53.not, label %if.else.for.end.loopexit_crit_edge, label %land.lhs.true54

if.else.for.end.loopexit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

land.lhs.true54:                                  ; preds = %if.else
  %conv55 = zext i8 %j.0222 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv55)
  %cmp57 = icmp ugt i32 %33, %conv55
  br i1 %cmp57, label %if.then59, label %land.lhs.true54.for.end.loopexit_crit_edge

land.lhs.true54.for.end.loopexit_crit_edge:       ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

if.then59:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %reg_rules_5g_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_rules_5g_ptr, align 4
  %inc = add i8 %j.0222, 1
  %add.ptr61 = getelementptr %struct.cur_reg_rule, ptr %35, i32 %conv55
  %max_bw62 = getelementptr %struct.cur_reg_rule, ptr %35, i32 %conv55, i32 2
  br label %if.end78

if.end78:                                         ; preds = %if.then59, %if.then41
  %max_bw62.sink = phi ptr [ %max_bw62, %if.then59 ], [ %max_bw43, %if.then41 ]
  %max_bw_5g.sink = phi ptr [ %max_bw_5g, %if.then59 ], [ %max_bw_2g, %if.then41 ]
  %reg_rule.0 = phi ptr [ %add.ptr61, %if.then59 ], [ %add.ptr, %if.then41 ]
  %j.1 = phi i8 [ %inc, %if.then59 ], [ %j.0222, %if.then41 ]
  %flags.0 = phi i32 [ 2048, %if.then59 ], [ 0, %if.then41 ]
  %36 = ptrtoint ptr %max_bw62.sink to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_bw62.sink, align 2
  %38 = ptrtoint ptr %max_bw_5g.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_bw_5g.sink, align 4
  %conv65 = zext i16 %37 to i32
  %conv66 = and i32 %39, 65535
  %40 = call i32 @llvm.umin.i32(i32 %conv66, i32 %conv65)
  %max_bw.0 = trunc i32 %40 to i16
  %flags79 = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule.0, i32 0, i32 5
  %41 = ptrtoint ptr %flags79 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags79, align 2
  %conv.i = zext i16 %42 to i32
  %and.i = shl nuw nsw i32 %conv.i, 6
  %43 = and i32 %and.i, 128
  %and2.i = shl nuw nsw i32 %conv.i, 1
  %44 = and i32 %and2.i, 16
  %45 = or i32 %44, %43
  %and7.i = lshr i32 %conv.i, 6
  %46 = and i32 %and7.i, 1
  %47 = or i32 %45, %46
  %48 = and i32 %and7.i, 8
  %49 = or i32 %47, %48
  %and19.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or22.i = or i32 %49, 24576
  %flags.3.i = select i1 %tobool20.not.i, i32 %49, i32 %or22.i
  %and25.i = shl nuw nsw i32 %conv.i, 8
  %50 = and i32 %and25.i, 98304
  %51 = or i32 %50, %flags.0
  %or = or i32 %51, %flags.3.i
  %add.ptr83 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv31223
  %52 = ptrtoint ptr %reg_rule.0 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %reg_rule.0, align 2
  %conv84 = zext i16 %53 to i32
  %end_freq = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule.0, i32 0, i32 1
  %54 = ptrtoint ptr %end_freq to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %end_freq, align 2
  %conv85 = zext i16 %55 to i32
  %ant_gain = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule.0, i32 0, i32 4
  %56 = ptrtoint ptr %ant_gain to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ant_gain, align 1
  %conv87 = zext i8 %57 to i32
  %reg_power = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule.0, i32 0, i32 3
  %58 = ptrtoint ptr %reg_power to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %reg_power, align 2
  %conv88 = zext i8 %59 to i32
  %mul.i = mul nuw nsw i32 %conv84, 1000
  %60 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul.i, ptr %add.ptr83, align 4
  %mul1.i = mul nuw nsw i32 %conv85, 1000
  %end_freq_khz.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr83, i32 0, i32 1
  %61 = ptrtoint ptr %end_freq_khz.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul1.i, ptr %end_freq_khz.i, align 8
  %mul3.i = mul nuw nsw i32 %40, 1000
  %max_bandwidth_khz.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr83, i32 0, i32 2
  %62 = ptrtoint ptr %max_bandwidth_khz.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul3.i, ptr %max_bandwidth_khz.i, align 4
  %mul5.i = mul nuw nsw i32 %conv87, 100
  %power_rule.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv31223, i32 1
  %63 = ptrtoint ptr %power_rule.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul5.i, ptr %power_rule.i, align 32
  %mul6.i = mul nuw nsw i32 %conv88, 100
  %max_eirp.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv31223, i32 1, i32 1
  %64 = ptrtoint ptr %max_eirp.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul6.i, ptr %max_eirp.i, align 4
  %flags.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv31223, i32 3
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %flags.i, align 8
  %and89 = and i32 %flags.3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end78.do.body107_crit_edge, label %land.lhs.true91

if.end78.do.body107_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

land.lhs.true91:                                  ; preds = %if.end78
  %66 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dfs_region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp93 = icmp eq i32 %67, 2
  br i1 %cmp93, label %land.lhs.true95, label %land.lhs.true91.do.body107_crit_edge

land.lhs.true91.do.body107_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

land.lhs.true95:                                  ; preds = %land.lhs.true91
  %68 = ptrtoint ptr %end_freq to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %end_freq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5590, i16 %69)
  %cmp98 = icmp ugt i16 %69, 5590
  br i1 %cmp98, label %land.lhs.true100, label %land.lhs.true95.do.body107_crit_edge

land.lhs.true95.do.body107_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

land.lhs.true100:                                 ; preds = %land.lhs.true95
  %70 = ptrtoint ptr %reg_rule.0 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %reg_rule.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5650, i16 %71)
  %cmp103 = icmp ult i16 %71, 5650
  br i1 %cmp103, label %if.then105, label %land.lhs.true100.do.body107_crit_edge

land.lhs.true100.do.body107_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

if.then105:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ath11k_reg_update_weather_radar_band(ptr noundef %ab, ptr noundef nonnull %call9.i.i, ptr noundef %reg_rule.0, ptr noundef nonnull %i, i32 noundef %or, i16 noundef zeroext %max_bw.0)
  br label %for.inc

do.body107:                                       ; preds = %land.lhs.true100.do.body107_crit_edge, %land.lhs.true95.do.body107_crit_edge, %land.lhs.true91.do.body107_crit_edge, %if.end78.do.body107_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %72 = load i32, ptr @ath11k_debug_mask, align 4
  %and108 = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %do.body107.if.then113_crit_edge

do.body107.if.then113_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113

lor.lhs.false110:                                 ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_build_regd, %if.then113)) #7
          to label %for.inc [label %if.then113], !srcloc !45

if.then113:                                       ; preds = %lor.lhs.false110, %do.body107.if.then113_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %add115 = add nuw nsw i32 %conv31223, 1
  %73 = ptrtoint ptr %reg_rule.0 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %reg_rule.0, align 2
  %conv117 = zext i16 %74 to i32
  %75 = ptrtoint ptr %end_freq to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %end_freq, align 2
  %conv119 = zext i16 %76 to i32
  %77 = ptrtoint ptr %ant_gain to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ant_gain, align 1
  %conv122 = zext i8 %78 to i32
  %79 = ptrtoint ptr %reg_power to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %reg_power, align 2
  %conv124 = zext i8 %80 to i32
  %dfs_cac_ms = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4, i32 %conv31223, i32 4
  %81 = ptrtoint ptr %dfs_cac_ms to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dfs_cac_ms, align 4
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef %add115, i32 noundef %conv117, i32 noundef %conv119, i32 noundef %40, i32 noundef %conv122, i32 noundef %conv124, i32 noundef %82, i32 noundef %or) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then113, %lor.lhs.false110, %if.then105
  %83 = ptrtoint ptr %i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %i, align 1
  %inc130 = add i8 %84, 1
  store i8 %inc130, ptr %i, align 1
  %conv31 = zext i8 %inc130 to i32
  %cmp33 = icmp ugt i32 %conv7, %conv31
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %land.lhs.true54.for.end.loopexit_crit_edge, %if.else.for.end.loopexit_crit_edge
  %.lcssa219.ph = phi i8 [ %inc130, %for.inc.for.end.loopexit_crit_edge ], [ %27, %land.lhs.true54.for.end.loopexit_crit_edge ], [ %27, %if.else.for.end.loopexit_crit_edge ]
  %.pre = zext i8 %.lcssa219.ph to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end.for.end_crit_edge
  %conv31.le.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %conv31220, %do.end.for.end_crit_edge ]
  %.lcssa219 = phi i8 [ %.lcssa219.ph, %for.end.loopexit ], [ %26, %do.end.for.end_crit_edge ]
  %n_reg_rules = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv31.le.pre-phi, ptr %n_reg_rules, align 8
  br i1 %intersect, label %if.then133, label %for.end.ret_crit_edge

for.end.ret_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.then133:                                       ; preds = %for.end
  %phy_id = getelementptr inbounds %struct.cur_regulatory_info, ptr %reg_info, i32 0, i32 2
  %86 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %phy_id, align 1
  %idxprom135 = zext i8 %87 to i32
  %arrayidx136 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 39, i32 %idxprom135
  %88 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx136, align 4
  %n_reg_rules.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %n_reg_rules.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_reg_rules.i, align 4
  %conv4.i = and i32 %91, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp134.not.i = icmp eq i32 %conv4.i, 0
  br i1 %cmp134.not.i, label %if.then133.ath11k_regd_intersect.exit.thread_crit_edge, label %for.body.lr.ph.i

if.then133.ath11k_regd_intersect.exit.thread_crit_edge: ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_regd_intersect.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then133
  %reg_rules.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %89, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa219)
  %cmp10130.not.i = icmp eq i8 %.lcssa219, 0
  %reg_rules13.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv150.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next151.i, %for.inc18.i.for.body.i_crit_edge ]
  %num_new_regd_rules.0135.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %num_new_regd_rules.1.lcssa.i, %for.inc18.i.for.body.i_crit_edge ]
  br i1 %cmp10130.not.i, label %for.body.i.for.inc18.i_crit_edge, label %for.body12.lr.ph.i

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc18.i

for.body12.lr.ph.i:                               ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules.i, i32 %indvars.iv150.i
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i, align 4
  %end_freq_khz.i.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr.i, i32 0, i32 1
  br label %for.body12.i

for.body12.i:                                     ; preds = %ath11k_reg_can_intersect.exit.thread122.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next.i, %ath11k_reg_can_intersect.exit.thread122.i.for.body12.i_crit_edge ]
  %num_new_regd_rules.1131.i = phi i8 [ %num_new_regd_rules.0135.i, %for.body12.lr.ph.i ], [ %100, %ath11k_reg_can_intersect.exit.thread122.i.for.body12.i_crit_edge ]
  %add.ptr16.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules13.i, i32 %indvars.iv.i
  %94 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp.not.i.i = icmp ult i32 %93, %95
  br i1 %cmp.not.i.i, label %ath11k_reg_can_intersect.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body12.i
  %end_freq_khz5.i.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr16.i, i32 0, i32 1
  %96 = ptrtoint ptr %end_freq_khz5.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %end_freq_khz5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %97)
  %cmp6.i.i = icmp ult i32 %93, %97
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread.i_crit_edge, label %land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge

land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_reg_can_intersect.exit.thread122.i

land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_reg_can_intersect.exit.thread.i

ath11k_reg_can_intersect.exit.i:                  ; preds = %for.body12.i
  %98 = ptrtoint ptr %end_freq_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %end_freq_khz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %99)
  %cmp9.i.i = icmp ult i32 %95, %99
  br i1 %cmp9.i.i, label %ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread.i_crit_edge, label %ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge

ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge: ; preds = %ath11k_reg_can_intersect.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_reg_can_intersect.exit.thread122.i

ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread.i_crit_edge: ; preds = %ath11k_reg_can_intersect.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_reg_can_intersect.exit.thread.i

ath11k_reg_can_intersect.exit.thread.i:           ; preds = %ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread.i_crit_edge, %land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread.i_crit_edge
  %inc121.i = add i8 %num_new_regd_rules.1131.i, 1
  br label %ath11k_reg_can_intersect.exit.thread122.i

ath11k_reg_can_intersect.exit.thread122.i:        ; preds = %ath11k_reg_can_intersect.exit.thread.i, %ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge, %land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge
  %100 = phi i8 [ %inc121.i, %ath11k_reg_can_intersect.exit.thread.i ], [ %num_new_regd_rules.1131.i, %ath11k_reg_can_intersect.exit.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge ], [ %num_new_regd_rules.1131.i, %land.lhs.true.i.i.ath11k_reg_can_intersect.exit.thread122.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv31.le.pre-phi
  br i1 %exitcond.not.i, label %ath11k_reg_can_intersect.exit.thread122.i.for.inc18.i_crit_edge, label %ath11k_reg_can_intersect.exit.thread122.i.for.body12.i_crit_edge

ath11k_reg_can_intersect.exit.thread122.i.for.body12.i_crit_edge: ; preds = %ath11k_reg_can_intersect.exit.thread122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i

ath11k_reg_can_intersect.exit.thread122.i.for.inc18.i_crit_edge: ; preds = %ath11k_reg_can_intersect.exit.thread122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %ath11k_reg_can_intersect.exit.thread122.i.for.inc18.i_crit_edge, %for.body.i.for.inc18.i_crit_edge
  %num_new_regd_rules.1.lcssa.i = phi i8 [ %num_new_regd_rules.0135.i, %for.body.i.for.inc18.i_crit_edge ], [ %100, %ath11k_reg_can_intersect.exit.thread122.i.for.inc18.i_crit_edge ]
  %indvars.iv.next151.i = add nuw nsw i32 %indvars.iv150.i, 1
  %exitcond152.not.i = icmp eq i32 %indvars.iv.next151.i, %conv4.i
  br i1 %exitcond152.not.i, label %for.end20.i, label %for.inc18.i.for.body.i_crit_edge

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end20.i:                                      ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_new_regd_rules.1.lcssa.i)
  %tobool.not.i = icmp eq i8 %num_new_regd_rules.1.lcssa.i, 0
  br i1 %tobool.not.i, label %for.end20.i.ath11k_regd_intersect.exit.thread_crit_edge, label %if.end22.i

for.end20.i.ath11k_regd_intersect.exit.thread_crit_edge: ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_regd_intersect.exit.thread

if.end22.i:                                       ; preds = %for.end20.i
  %conv23.i = zext i8 %num_new_regd_rules.1.lcssa.i to i32
  %mul.i210 = mul nuw nsw i32 %conv23.i, 96
  %add.i = or i32 %mul.i210, 20
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2848) #10
  %tobool25.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool25.not.i, label %if.end22.i.ath11k_regd_intersect.exit.thread_crit_edge, label %for.body41.lr.ph.i

if.end22.i.ath11k_regd_intersect.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_regd_intersect.exit.thread

for.body41.lr.ph.i:                               ; preds = %if.end22.i
  %n_reg_rules29.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %n_reg_rules29.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv23.i, ptr %n_reg_rules29.i, align 8
  %alpha2.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 2
  %102 = call ptr @memcpy(ptr %alpha2.i, ptr %alpha212, i32 3)
  %103 = ptrtoint ptr %dfs_region20 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dfs_region20, align 16
  %dfs_region33.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %dfs_region33.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %dfs_region33.i, align 16
  %reg_rules34.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i.i, i32 0, i32 4
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc65.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %indvars.iv156.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %indvars.iv.next157.i, %for.inc65.i.for.body41.i_crit_edge ]
  %k.0148.i = phi i8 [ 0, %for.body41.lr.ph.i ], [ %k.1.lcssa.i, %for.inc65.i.for.body41.i_crit_edge ]
  br i1 %cmp10130.not.i, label %for.body41.i.for.inc65.i_crit_edge, label %for.body51.lr.ph.i

for.body41.i.for.inc65.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65.i

for.body51.lr.ph.i:                               ; preds = %for.body41.i
  %add.ptr45.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules.i, i32 %indvars.iv156.i
  %106 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr45.i, align 4
  %end_freq_khz.i107.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr45.i, i32 0, i32 1
  %108 = ptrtoint ptr %end_freq_khz.i107.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %end_freq_khz.i107.i, align 4
  %max_bandwidth_khz.i.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr45.i, i32 0, i32 2
  %power_rule.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules.i, i32 %indvars.iv156.i, i32 1
  %max_eirp.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules.i, i32 %indvars.iv156.i, i32 1, i32 1
  %flags.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules.i, i32 %indvars.iv156.i, i32 3
  %dfs_cac_ms.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules.i, i32 %indvars.iv156.i, i32 4
  br label %for.body51.i

for.body51.i:                                     ; preds = %for.inc62.i.for.body51.i_crit_edge, %for.body51.lr.ph.i
  %indvars.iv153.i = phi i32 [ 0, %for.body51.lr.ph.i ], [ %indvars.iv.next154.i, %for.inc62.i.for.body51.i_crit_edge ]
  %k.1142.i = phi i8 [ %k.0148.i, %for.body51.lr.ph.i ], [ %k.2.i, %for.inc62.i.for.body51.i_crit_edge ]
  %add.ptr55.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules13.i, i32 %indvars.iv153.i
  %110 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %111)
  %cmp.not.i108.i = icmp ult i32 %107, %111
  br i1 %cmp.not.i108.i, label %ath11k_reg_can_intersect.exit116.i, label %land.lhs.true.i111.i

land.lhs.true.i111.i:                             ; preds = %for.body51.i
  %end_freq_khz5.i109.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr55.i, i32 0, i32 1
  %112 = ptrtoint ptr %end_freq_khz5.i109.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %end_freq_khz5.i109.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %113)
  %cmp6.i110.i = icmp ult i32 %107, %113
  br i1 %cmp6.i110.i, label %land.lhs.true.i111.i.if.then57.i_crit_edge, label %land.lhs.true.i111.i.for.inc62.i_crit_edge

land.lhs.true.i111.i.for.inc62.i_crit_edge:       ; preds = %land.lhs.true.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

land.lhs.true.i111.i.if.then57.i_crit_edge:       ; preds = %land.lhs.true.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57.i

ath11k_reg_can_intersect.exit116.i:               ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %109)
  %cmp9.i112.i = icmp ult i32 %111, %109
  br i1 %cmp9.i112.i, label %ath11k_reg_can_intersect.exit116.i.if.then57.i_crit_edge, label %ath11k_reg_can_intersect.exit116.i.for.inc62.i_crit_edge

ath11k_reg_can_intersect.exit116.i.for.inc62.i_crit_edge: ; preds = %ath11k_reg_can_intersect.exit116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

ath11k_reg_can_intersect.exit116.i.if.then57.i_crit_edge: ; preds = %ath11k_reg_can_intersect.exit116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57.i

if.then57.i:                                      ; preds = %ath11k_reg_can_intersect.exit116.i.if.then57.i_crit_edge, %land.lhs.true.i111.i.if.then57.i_crit_edge
  %inc58.i = add i8 %k.1142.i, 1
  %conv59.i = zext i8 %k.1142.i to i32
  %add.ptr60.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules34.i, i32 %conv59.i
  %end_freq_khz5.i118.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr55.i, i32 0, i32 1
  %114 = ptrtoint ptr %end_freq_khz5.i118.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %end_freq_khz5.i118.i, align 8
  %116 = call i32 @llvm.umax.i32(i32 %107, i32 %111) #7
  %117 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %add.ptr60.i, align 4
  %118 = call i32 @llvm.umin.i32(i32 %109, i32 %115) #7
  %end_freq_khz15.i.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr60.i, i32 0, i32 1
  %119 = ptrtoint ptr %end_freq_khz15.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %end_freq_khz15.i.i, align 8
  %sub.i.i = sub i32 %118, %116
  %120 = ptrtoint ptr %max_bandwidth_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_bandwidth_khz.i.i, align 4
  %max_bandwidth_khz22.i.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr55.i, i32 0, i32 2
  %122 = ptrtoint ptr %max_bandwidth_khz22.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %max_bandwidth_khz22.i.i, align 4
  %124 = call i32 @llvm.umin.i32(i32 %121, i32 %123) #7
  %125 = call i32 @llvm.umin.i32(i32 %124, i32 %sub.i.i) #7
  %max_bandwidth_khz36.i.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr60.i, i32 0, i32 2
  %126 = ptrtoint ptr %max_bandwidth_khz36.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %max_bandwidth_khz36.i.i, align 4
  %127 = ptrtoint ptr %power_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %power_rule.i.i, align 4
  %power_rule37.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules13.i, i32 %indvars.iv153.i, i32 1
  %129 = ptrtoint ptr %power_rule37.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %power_rule37.i.i, align 32
  %131 = call i32 @llvm.umin.i32(i32 %128, i32 %130) #7
  %power_rule45.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules34.i, i32 %conv59.i, i32 1
  %132 = ptrtoint ptr %power_rule45.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %power_rule45.i.i, align 32
  %133 = ptrtoint ptr %max_eirp.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_eirp.i.i, align 4
  %max_eirp49.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules13.i, i32 %indvars.iv153.i, i32 1, i32 1
  %135 = ptrtoint ptr %max_eirp49.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_eirp49.i.i, align 4
  %137 = call i32 @llvm.umin.i32(i32 %134, i32 %136) #7
  %max_eirp57.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules34.i, i32 %conv59.i, i32 1, i32 1
  %138 = ptrtoint ptr %max_eirp57.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %max_eirp57.i.i, align 4
  %139 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags.i.i, align 4
  %flags58.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules13.i, i32 %indvars.iv153.i, i32 3
  %141 = ptrtoint ptr %flags58.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags58.i.i, align 8
  %or.i.i = or i32 %142, %140
  %flags59.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules34.i, i32 %conv59.i, i32 3
  %143 = ptrtoint ptr %flags59.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or.i.i, ptr %flags59.i.i, align 8
  %144 = ptrtoint ptr %dfs_cac_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dfs_cac_ms.i.i, align 4
  %dfs_cac_ms60.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules13.i, i32 %indvars.iv153.i, i32 4
  %146 = ptrtoint ptr %dfs_cac_ms60.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dfs_cac_ms60.i.i, align 4
  %148 = call i32 @llvm.umax.i32(i32 %145, i32 %147) #7
  %dfs_cac_ms67.i.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules34.i, i32 %conv59.i, i32 4
  %149 = ptrtoint ptr %dfs_cac_ms67.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %dfs_cac_ms67.i.i, align 4
  br label %for.inc62.i

for.inc62.i:                                      ; preds = %if.then57.i, %ath11k_reg_can_intersect.exit116.i.for.inc62.i_crit_edge, %land.lhs.true.i111.i.for.inc62.i_crit_edge
  %k.2.i = phi i8 [ %inc58.i, %if.then57.i ], [ %k.1142.i, %ath11k_reg_can_intersect.exit116.i.for.inc62.i_crit_edge ], [ %k.1142.i, %land.lhs.true.i111.i.for.inc62.i_crit_edge ]
  %indvars.iv.next154.i = add nuw nsw i32 %indvars.iv153.i, 1
  %exitcond155.not.i = icmp eq i32 %indvars.iv.next154.i, %conv31.le.pre-phi
  br i1 %exitcond155.not.i, label %for.inc62.i.for.inc65.i_crit_edge, label %for.inc62.i.for.body51.i_crit_edge

for.inc62.i.for.body51.i_crit_edge:               ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51.i

for.inc62.i.for.inc65.i_crit_edge:                ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %for.inc62.i.for.inc65.i_crit_edge, %for.body41.i.for.inc65.i_crit_edge
  %k.1.lcssa.i = phi i8 [ %k.0148.i, %for.body41.i.for.inc65.i_crit_edge ], [ %k.2.i, %for.inc62.i.for.inc65.i_crit_edge ]
  %indvars.iv.next157.i = add nuw nsw i32 %indvars.iv156.i, 1
  %exitcond158.not.i = icmp eq i32 %indvars.iv.next157.i, %conv4.i
  br i1 %exitcond158.not.i, label %ath11k_regd_intersect.exit, label %for.inc65.i.for.body41.i_crit_edge

for.inc65.i.for.body41.i_crit_edge:               ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.i

ath11k_regd_intersect.exit.thread:                ; preds = %if.end22.i.ath11k_regd_intersect.exit.thread_crit_edge, %for.end20.i.ath11k_regd_intersect.exit.thread_crit_edge, %if.then133.ath11k_regd_intersect.exit.thread_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.6) #7
  br label %ret

ath11k_regd_intersect.exit:                       ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %ret

ret:                                              ; preds = %ath11k_regd_intersect.exit, %ath11k_regd_intersect.exit.thread, %for.end.ret_crit_edge, %if.end.ret_crit_edge, %entry.ret_crit_edge
  %new_regd.0 = phi ptr [ %call9.i.i.i, %ath11k_regd_intersect.exit ], [ null, %ath11k_regd_intersect.exit.thread ], [ null, %if.end.ret_crit_edge ], [ null, %entry.ret_crit_edge ], [ %call9.i.i, %for.end.ret_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alpha2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i) #7
  ret ptr %new_regd.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_reg_update_weather_radar_band(ptr noundef %ab, ptr nocapture noundef %regd, ptr nocapture noundef readonly %reg_rule, ptr nocapture noundef %rule_idx, i32 noundef %flags, i16 noundef zeroext %max_bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rule_idx, align 1
  %dec = add i8 %1, -1
  %2 = ptrtoint ptr %reg_rule to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg_rule, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5590, i16 %3)
  %cmp.not.i = icmp ult i16 %3, 5590
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end.i:                                         ; preds = %entry
  %sub.i = sub nuw nsw i16 5590, %3
  %4 = tail call i16 @llvm.umin.i16(i16 %sub.i, i16 %max_bw) #7
  %5 = add nsw i16 %4, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %5)
  %6 = icmp ult i16 %5, 80
  br i1 %6, label %if.end.i.if.then_crit_edge, label %if.else.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else.i:                                        ; preds = %if.end.i
  %7 = add nsw i16 %4, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %7)
  %8 = icmp ult i16 %7, 40
  br i1 %8, label %if.else.i.if.then_crit_edge, label %if.else28.i

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else28.i:                                      ; preds = %if.else.i
  %9 = add nsw i16 %4, -20
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %9)
  %10 = icmp ult i16 %9, 20
  br i1 %10, label %if.else28.i.if.then_crit_edge, label %if.else28.i.if.end21_crit_edge

if.else28.i.if.end21_crit_edge:                   ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else28.i.if.then_crit_edge:                    ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.else28.i.if.then_crit_edge, %if.else.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ 40, %if.else.i.if.then_crit_edge ], [ 80, %if.end.i.if.then_crit_edge ], [ 20, %if.else28.i.if.then_crit_edge ]
  %reg_rules = getelementptr inbounds %struct.ieee80211_regdomain, ptr %regd, i32 0, i32 4
  %conv3 = zext i8 %1 to i32
  %add.ptr = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv3
  %conv5 = zext i16 %3 to i32
  %ant_gain = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 4
  %11 = ptrtoint ptr %ant_gain to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ant_gain, align 1
  %conv7 = zext i8 %12 to i32
  %reg_power = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 3
  %13 = ptrtoint ptr %reg_power to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_power, align 2
  %conv8 = zext i8 %14 to i32
  %mul.i = mul nuw nsw i32 %conv5, 1000
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %add.ptr, align 4
  %end_freq_khz.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %end_freq_khz.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5590000, ptr %end_freq_khz.i, align 4
  %mul3.i = mul nuw nsw i32 %retval.0.i.ph, 1000
  %max_bandwidth_khz.i = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr, i32 0, i32 2
  %17 = ptrtoint ptr %max_bandwidth_khz.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul3.i, ptr %max_bandwidth_khz.i, align 4
  %mul5.i = mul nuw nsw i32 %conv7, 100
  %power_rule.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv3, i32 1
  %18 = ptrtoint ptr %power_rule.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul5.i, ptr %power_rule.i, align 4
  %mul6.i = mul nuw nsw i32 %conv8, 100
  %max_eirp.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv3, i32 1, i32 1
  %19 = ptrtoint ptr %max_eirp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul6.i, ptr %max_eirp.i, align 4
  %flags.i = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules, i32 %conv3, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %flags, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %21 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then11_crit_edge

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_update_weather_radar_band, %if.then11)) #7
          to label %if.end21 [label %if.then11], !srcloc !45

if.then11:                                        ; preds = %lor.lhs.false, %if.then.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %conv3, 1
  %22 = ptrtoint ptr %reg_rule to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reg_rule, align 2
  %conv14 = zext i16 %23 to i32
  %24 = ptrtoint ptr %ant_gain to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ant_gain, align 1
  %conv17 = zext i8 %25 to i32
  %26 = ptrtoint ptr %reg_power to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_power, align 2
  %conv19 = zext i8 %27 to i32
  %dfs_cac_ms = getelementptr %struct.ieee80211_regdomain, ptr %regd, i32 0, i32 4, i32 %conv3, i32 4
  %28 = ptrtoint ptr %dfs_cac_ms to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dfs_cac_ms, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef %add, i32 noundef %conv14, i32 noundef 5590, i32 noundef %retval.0.i.ph, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %29, i32 noundef %flags) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %lor.lhs.false, %if.else28.i.if.end21_crit_edge, %entry.if.end21_crit_edge
  %i.0 = phi i8 [ %1, %if.then11 ], [ %1, %lor.lhs.false ], [ %dec, %if.else28.i.if.end21_crit_edge ], [ %dec, %entry.if.end21_crit_edge ]
  %30 = ptrtoint ptr %reg_rule to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg_rule, align 2
  %32 = tail call i16 @llvm.umax.i16(i16 %31, i16 5590)
  %cond = zext i16 %32 to i32
  %end_freq26 = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 1
  %33 = ptrtoint ptr %end_freq26 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %end_freq26, align 2
  %35 = tail call i16 @llvm.umin.i16(i16 %34, i16 5650)
  %cond34 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %32)
  %cmp.not.i185 = icmp ugt i16 %35, %32
  br i1 %cmp.not.i185, label %if.end.i187, label %if.end21.if.end77_crit_edge

if.end21.if.end77_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end.i187:                                      ; preds = %if.end21
  %sub.i186 = sub i16 %35, %32
  %36 = tail call i16 @llvm.umin.i16(i16 %sub.i186, i16 %max_bw) #7
  %37 = add i16 %36, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %37)
  %38 = icmp ult i16 %37, 80
  br i1 %38, label %if.end.i187.if.then41_crit_edge, label %if.else.i188

if.end.i187.if.then41_crit_edge:                  ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.else.i188:                                     ; preds = %if.end.i187
  %39 = add i16 %36, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %39)
  %40 = icmp ult i16 %39, 40
  br i1 %40, label %if.else.i188.if.then41_crit_edge, label %if.else28.i190

if.else.i188.if.then41_crit_edge:                 ; preds = %if.else.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.else28.i190:                                   ; preds = %if.else.i188
  %41 = add i16 %36, -20
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %41)
  %42 = icmp ult i16 %41, 20
  br i1 %42, label %if.else28.i190.if.then41_crit_edge, label %if.else28.i190.if.end77_crit_edge

if.else28.i190.if.end77_crit_edge:                ; preds = %if.else28.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.else28.i190.if.then41_crit_edge:               ; preds = %if.else28.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %if.else28.i190.if.then41_crit_edge, %if.else.i188.if.then41_crit_edge, %if.end.i187.if.then41_crit_edge
  %retval.0.i191.ph = phi i32 [ 40, %if.else.i188.if.then41_crit_edge ], [ 80, %if.end.i187.if.then41_crit_edge ], [ 20, %if.else28.i190.if.then41_crit_edge ]
  %inc42 = add i8 %i.0, 1
  %reg_rules43 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %regd, i32 0, i32 4
  %conv45 = zext i8 %inc42 to i32
  %add.ptr46 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules43, i32 %conv45
  %ant_gain48 = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 4
  %43 = ptrtoint ptr %ant_gain48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ant_gain48, align 1
  %conv49 = zext i8 %44 to i32
  %reg_power50 = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 3
  %45 = ptrtoint ptr %reg_power50 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg_power50, align 2
  %conv51 = zext i8 %46 to i32
  %mul.i193 = mul nuw nsw i32 %cond, 1000
  %47 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.i193, ptr %add.ptr46, align 4
  %mul1.i = mul nuw nsw i32 %cond34, 1000
  %end_freq_khz.i194 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr46, i32 0, i32 1
  %48 = ptrtoint ptr %end_freq_khz.i194 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul1.i, ptr %end_freq_khz.i194, align 4
  %mul3.i195 = mul nuw nsw i32 %retval.0.i191.ph, 1000
  %max_bandwidth_khz.i196 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr46, i32 0, i32 2
  %49 = ptrtoint ptr %max_bandwidth_khz.i196 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul3.i195, ptr %max_bandwidth_khz.i196, align 4
  %mul5.i197 = mul nuw nsw i32 %conv49, 100
  %power_rule.i198 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules43, i32 %conv45, i32 1
  %50 = ptrtoint ptr %power_rule.i198 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul5.i197, ptr %power_rule.i198, align 4
  %mul6.i199 = mul nuw nsw i32 %conv51, 100
  %max_eirp.i200 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules43, i32 %conv45, i32 1, i32 1
  %51 = ptrtoint ptr %max_eirp.i200 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul6.i199, ptr %max_eirp.i200, align 4
  %flags.i201 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules43, i32 %conv45, i32 3
  %52 = ptrtoint ptr %flags.i201 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %flags, ptr %flags.i201, align 4
  %dfs_cac_ms55 = getelementptr %struct.ieee80211_regdomain, ptr %regd, i32 0, i32 4, i32 %conv45, i32 4
  %53 = ptrtoint ptr %dfs_cac_ms55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 600000, ptr %dfs_cac_ms55, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %54 = load i32, ptr @ath11k_debug_mask, align 4
  %and57 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %if.then41.if.then62_crit_edge

if.then41.if.then62_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

lor.lhs.false59:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_update_weather_radar_band, %if.then62)) #7
          to label %if.end77 [label %if.then62], !srcloc !45

if.then62:                                        ; preds = %lor.lhs.false59, %if.then41.if.then62_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %add64 = add nuw nsw i32 %conv45, 1
  %55 = ptrtoint ptr %ant_gain48 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ant_gain48, align 1
  %conv67 = zext i8 %56 to i32
  %57 = ptrtoint ptr %reg_power50 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %reg_power50, align 2
  %conv69 = zext i8 %58 to i32
  %59 = ptrtoint ptr %dfs_cac_ms55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dfs_cac_ms55, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef %add64, i32 noundef %cond, i32 noundef %cond34, i32 noundef %retval.0.i191.ph, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %60, i32 noundef %flags) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then62, %lor.lhs.false59, %if.else28.i190.if.end77_crit_edge, %if.end21.if.end77_crit_edge
  %i.1 = phi i8 [ %inc42, %if.then62 ], [ %inc42, %lor.lhs.false59 ], [ %i.0, %if.else28.i190.if.end77_crit_edge ], [ %i.0, %if.end21.if.end77_crit_edge ]
  %61 = ptrtoint ptr %end_freq26 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %end_freq26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5650, i16 %62)
  %cmp.not.i205 = icmp ugt i16 %62, 5650
  br i1 %cmp.not.i205, label %if.end.i207, label %if.end77.if.end119_crit_edge

if.end77.if.end119_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.end.i207:                                      ; preds = %if.end77
  %sub.i206 = add i16 %62, -5650
  %63 = tail call i16 @llvm.umin.i16(i16 %sub.i206, i16 %max_bw) #7
  %64 = add i16 %63, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %64)
  %65 = icmp ult i16 %64, 80
  br i1 %65, label %if.end.i207.if.then83_crit_edge, label %if.else.i208

if.end.i207.if.then83_crit_edge:                  ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.else.i208:                                     ; preds = %if.end.i207
  %66 = add i16 %63, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %66)
  %67 = icmp ult i16 %66, 40
  br i1 %67, label %if.else.i208.if.then83_crit_edge, label %if.else28.i210

if.else.i208.if.then83_crit_edge:                 ; preds = %if.else.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.else28.i210:                                   ; preds = %if.else.i208
  %68 = add i16 %63, -20
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %68)
  %69 = icmp ult i16 %68, 20
  br i1 %69, label %if.else28.i210.if.then83_crit_edge, label %if.else28.i210.if.end119_crit_edge

if.else28.i210.if.end119_crit_edge:               ; preds = %if.else28.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.else28.i210.if.then83_crit_edge:               ; preds = %if.else28.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.then83:                                        ; preds = %if.else28.i210.if.then83_crit_edge, %if.else.i208.if.then83_crit_edge, %if.end.i207.if.then83_crit_edge
  %retval.0.i211.ph = phi i32 [ 40, %if.else.i208.if.then83_crit_edge ], [ 80, %if.end.i207.if.then83_crit_edge ], [ 20, %if.else28.i210.if.then83_crit_edge ]
  %inc84 = add i8 %i.1, 1
  %reg_rules85 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %regd, i32 0, i32 4
  %conv87 = zext i8 %inc84 to i32
  %add.ptr88 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules85, i32 %conv87
  %conv90 = zext i16 %62 to i32
  %ant_gain92 = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 4
  %70 = ptrtoint ptr %ant_gain92 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ant_gain92, align 1
  %conv93 = zext i8 %71 to i32
  %reg_power94 = getelementptr inbounds %struct.cur_reg_rule, ptr %reg_rule, i32 0, i32 3
  %72 = ptrtoint ptr %reg_power94 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %reg_power94, align 2
  %conv95 = zext i8 %73 to i32
  %74 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 5650000, ptr %add.ptr88, align 4
  %mul1.i213 = mul nuw nsw i32 %conv90, 1000
  %end_freq_khz.i214 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr88, i32 0, i32 1
  %75 = ptrtoint ptr %end_freq_khz.i214 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul1.i213, ptr %end_freq_khz.i214, align 4
  %mul3.i215 = mul nuw nsw i32 %retval.0.i211.ph, 1000
  %max_bandwidth_khz.i216 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %add.ptr88, i32 0, i32 2
  %76 = ptrtoint ptr %max_bandwidth_khz.i216 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul3.i215, ptr %max_bandwidth_khz.i216, align 4
  %mul5.i217 = mul nuw nsw i32 %conv93, 100
  %power_rule.i218 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules85, i32 %conv87, i32 1
  %77 = ptrtoint ptr %power_rule.i218 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul5.i217, ptr %power_rule.i218, align 4
  %mul6.i219 = mul nuw nsw i32 %conv95, 100
  %max_eirp.i220 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules85, i32 %conv87, i32 1, i32 1
  %78 = ptrtoint ptr %max_eirp.i220 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul6.i219, ptr %max_eirp.i220, align 4
  %flags.i221 = getelementptr %struct.ieee80211_reg_rule, ptr %reg_rules85, i32 %conv87, i32 3
  %79 = ptrtoint ptr %flags.i221 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %flags, ptr %flags.i221, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %80 = load i32, ptr @ath11k_debug_mask, align 4
  %and97 = and i32 %80, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %lor.lhs.false99, label %if.then83.if.then102_crit_edge

if.then83.if.then102_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false99:                                  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_update_weather_radar_band, %if.then102)) #7
          to label %if.end119 [label %if.then102], !srcloc !45

if.then102:                                       ; preds = %lor.lhs.false99, %if.then83.if.then102_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %add104 = add nuw nsw i32 %conv87, 1
  %81 = ptrtoint ptr %end_freq26 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %end_freq26, align 2
  %conv106 = zext i16 %82 to i32
  %83 = ptrtoint ptr %ant_gain92 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ant_gain92, align 1
  %conv109 = zext i8 %84 to i32
  %85 = ptrtoint ptr %reg_power94 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reg_power94, align 2
  %conv111 = zext i8 %86 to i32
  %dfs_cac_ms115 = getelementptr %struct.ieee80211_regdomain, ptr %regd, i32 0, i32 4, i32 %conv87, i32 4
  %87 = ptrtoint ptr %dfs_cac_ms115 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dfs_cac_ms115, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef %add104, i32 noundef 5650, i32 noundef %conv106, i32 noundef %retval.0.i211.ph, i32 noundef %conv109, i32 noundef %conv111, i32 noundef %88, i32 noundef %flags) #7
  br label %if.end119

if.end119:                                        ; preds = %if.then102, %lor.lhs.false99, %if.else28.i210.if.end119_crit_edge, %if.end77.if.end119_crit_edge
  %i.2 = phi i8 [ %inc84, %if.then102 ], [ %inc84, %lor.lhs.false99 ], [ %i.1, %if.else28.i210.if.end119_crit_edge ], [ %i.1, %if.end77.if.end119_crit_edge ]
  %89 = ptrtoint ptr %rule_idx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %i.2, ptr %rule_idx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_regd_update_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -15552
  %call = tail call i32 @ath11k_regd_update(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_reg_init(ptr nocapture noundef readonly %ar) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %regulatory_flags, align 4
  %5 = load ptr, ptr %hw, align 8
  %wiphy2 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy2, align 8
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ath11k_reg_notifier, ptr %reg_notifier, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_reg_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #7
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %2 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_notifier, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !45

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.wiphy_name.exit_crit_edge

if.then.wiphy_name.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.then.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.wiphy_name.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %4, i32 noundef 512, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i) #7
  br label %do.end

do.end:                                           ; preds = %wiphy_name.exit, %lor.lhs.false
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %9 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.then4_crit_edge

do.end.if.then4_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.lhs.true:                                    ; preds = %do.end
  %user_reg_hint_type = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 3
  %11 = ptrtoint ptr %user_reg_hint_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %user_reg_hint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.end6, label %land.lhs.true.if.then4_crit_edge

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %land.lhs.true.if.then4_crit_edge, %do.end.if.then4_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %14, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %hw.i = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy.i, align 8
  %regd1.i = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 55
  %19 = ptrtoint ptr %regd1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %regd1.i, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end6.do.end9.i_crit_edge, label %lor.lhs.false.i

if.end6.do.end9.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %call3.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end9.i_crit_edge

lor.lhs.false.i.do.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @ath11k_regdom_changes.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath11k_regdom_changes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.16) #7
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %lor.lhs.false.i.do.end9.i_crit_edge, %if.end6.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end19_crit_edge, label %ath11k_regdom_changes.exit

do.end9.i.if.end19_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

ath11k_regdom_changes.exit:                       ; preds = %do.end9.i
  %alpha214.i = getelementptr inbounds %struct.ieee80211_regdomain, ptr %20, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %alpha214.i, ptr noundef dereferenceable(2) %alpha2, i32 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i.not, label %do.body9, label %ath11k_regdom_changes.exit.if.end19_crit_edge

ath11k_regdom_changes.exit.if.end19_crit_edge:    ; preds = %ath11k_regdom_changes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body9:                                         ; preds = %ath11k_regdom_changes.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %21 = load i32, ptr @ath11k_debug_mask, align 4
  %and10 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %do.body9.if.then14_crit_edge

do.body9.if.then14_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false12:                                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_reg_notifier, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !45

if.then14:                                        ; preds = %lor.lhs.false12, %do.body9.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %23, i32 noundef 512, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end19:                                         ; preds = %ath11k_regdom_changes.exit.if.end19_crit_edge, %do.end9.i.if.end19_crit_edge
  %24 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %init_country_param.sroa.0.sroa.0.0.copyload = load i16, ptr %alpha2, align 4
  %init_country_param.sroa.0.sroa.0.0.insert.ext = zext i16 %init_country_param.sroa.0.sroa.0.0.copyload to i32
  %init_country_param.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %init_country_param.sroa.0.sroa.0.0.insert.ext, 16
  %init_country_param.sroa.0.sroa.0.0.insert.insert = or i32 %init_country_param.sroa.0.sroa.0.0.insert.shift, 255
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %init_country_param.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 3, 1
  %call23 = tail call i32 @ath11k_wmi_send_init_country_cmd(ptr noundef %1, [2 x i32] %.fca.1.insert) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end19.if.end27_crit_edge, label %if.then25

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %26, ptr noundef nonnull @.str.15, i32 noundef %call23) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end19.if.end27_crit_edge
  tail call void @ath11k_mac_11d_scan_stop(ptr noundef %1) #7
  %regdom_set_by_user = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 76
  %27 = ptrtoint ptr %regdom_set_by_user to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %regdom_set_by_user, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then14, %lor.lhs.false12, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_reg_free(ptr nocapture noundef readonly %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 2
  %0 = ptrtoint ptr %max_radios to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_radios, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 39, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #7
  %arrayidx2 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 40, i32 %i.010
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  tail call void @kfree(ptr noundef %5) #7
  %inc = add nuw nsw i32 %i.010, 1
  %6 = ptrtoint ptr %max_radios to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_radios, align 2
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_init_country_cmd(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_mac_11d_scan_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 121, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 171, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 232, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 283, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 620, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 674, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 693, i32 20}
!14 = !{ptr @ath11k_world_regd, !15, !"ath11k_world_regd", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 21, i32 41}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 461, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 463, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 465, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 467, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 54, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 64, i32 23}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 75, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 90, i32 8}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/reg.c", i32 35, i32 9}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2148188262, i64 2148188267, i64 2148188280, i64 2148188324, i64 2148188358, i64 2148188379}
!46 = !{i8 0, i8 2}
