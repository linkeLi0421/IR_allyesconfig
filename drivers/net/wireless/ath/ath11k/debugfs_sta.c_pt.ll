; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/debugfs_sta.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/debugfs_sta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.ath11k_sta = type { ptr, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.rate_info, i32, %struct.rate_info, i64, i64, i8, i8, [4 x i8], ptr, ptr, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ath11k_htt_data_stats = type { [2 x [12 x i64]], [2 x [32 x i64]], [2 x [10 x i64]], [2 x [12 x i64]], [2 x [4 x i64]], [2 x [4 x i64]], [2 x [4 x i64]] }
%struct.ath11k_per_peer_tx_stats = type { i32, i32, i32, i16, i16, i16, i32, i8, i8 }
%struct.ath11k_htt_tx_stats = type { [4 x %struct.ath11k_htt_data_stats], i64, i64, i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.138, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.138 = type { i32, i16 }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ath11k_vif = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, ptr, ptr, i16, %struct.wmi_wmm_params_all_arg, %struct.list_head, %union.anon.152, i8, i8, i8, i8, i32, [6 x i8], %struct.cfg80211_bitrate_mask, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, %struct.ieee80211_chanctx_conf }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i8, i8, i16, i16, i16, i8 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { [16 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.141] }
%struct.anon.141 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.ath11k_rx_peer_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [13 x i64], [8 x i64], [4 x i64], [4 x i64], [2 x i64], [17 x i64], [5 x i64], [4 x i64], i64, i64, [6 x i64] }
%struct.debug_htt_stats_req = type { i8, i8, i8, [6 x i8], %struct.completion, i32, [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.155, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.156, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.157, ptr, %struct.address_space, %struct.list_head, %union.anon.158, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.155 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.156 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.158 = type { ptr }
%struct.htt_ext_stats_cfg_params = type { i32, i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stats\00", [23 x i8] zeroinitializer }, align 32
@fops_tx_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_dbg_sta_dump_tx_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_stats\00", [23 x i8] zeroinitializer }, align 32
@fops_rx_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_dbg_sta_dump_rx_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"htt_peer_stats\00", [17 x i8] zeroinitializer }, align 32
@fops_htt_peer_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_dbg_sta_read_htt_peer_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath11k_dbg_sta_open_htt_peer_stats, ptr null, ptr @ath11k_dbg_sta_release_htt_peer_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peer_pktlog\00", [20 x i8] zeroinitializer }, align 32
@fops_peer_pktlog = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_dbg_sta_read_peer_pktlog, ptr @ath11k_dbg_sta_write_peer_pktlog, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aggr_mode\00", [22 x i8] zeroinitializer }, align 32
@fops_aggr_mode = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_dbg_sta_read_aggr_mode, ptr @ath11k_dbg_sta_write_aggr_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"addba\00", [26 x i8] zeroinitializer }, align 32
@fops_addba = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath11k_dbg_sta_write_addba, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"addba_resp\00", [21 x i8] zeroinitializer }, align 32
@fops_addba_resp = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath11k_dbg_sta_write_addba_resp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delba\00", [26 x i8] zeroinitializer }, align 32
@fops_delba = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath11k_dbg_sta_write_delba, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"htt_peer_stats_reset\00", [43 x i8] zeroinitializer }, align 32
@fops_htt_peer_stats_reset = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath11k_write_htt_peer_stats_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ath11k_dbg_sta_dump_tx_stats.str_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"succ\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"retry\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ampdu\00", [26 x i8] zeroinitializer }, align 32
@ath11k_dbg_sta_dump_tx_stats.str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.13, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bytes\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"packets\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" HE MCS %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  %llu \00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" VHT MCS %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" HT MCS %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" BW %s (20,40,80,160 MHz)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  %llu %llu %llu %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" NSS %s (1x1,2x2,3x3,4x4)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" GI %s (0.4us,0.8us,1.6us,3.2us)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" legacy rate %s (1,2 ... Mbps)\0A  \00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu \00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0ATX duration\0A %llu usecs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BA fails\0A %llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ack fails\0A %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX peer stats:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Num of MSDUs: %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Num of MSDUs with TCP L4: %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Num of MSDUs with UDP L4: %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Num of MSDUs part of AMPDU: %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Num of MSDUs not part of AMPDU: %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Num of MSDUs using STBC: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Num of MSDUs beamformed: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Num of MPDUs with FCS ok: %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Num of MPDUs with FCS error: %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GI: 0.8us %llu 0.4us %llu 1.6us %llu 3.2us %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BW: 20Mhz %llu 40Mhz %llu 80Mhz %llu 160Mhz %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BCC %llu LDPC %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"preamble: 11A %llu 11B %llu 11N %llu 11AC %llu 11AX %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"reception type: SU %llu MU_MIMO %llu MU_OFDMA %llu MU_OFDMA_MIMO %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TID(0-15) Legacy TID(16):\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AMCS(0-11) Legacy MCS(12):\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0ANSS(1-8):\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0ARX Duration:%llu \00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\0ADCM: %llu\0ARU: 26 %llu 52: %llu 106: %llu 242: %llu 484: %llu 996: %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%08x %pM\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set peer pktlog filter %pM: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"peer pktlog filter set to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aggregation mode: %s\0A\0A%s\0A%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"auto = 0\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"manual = 1\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to clear addba session ret: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"failed to send addba request: vdev_id %u peer %pM tid %u buf_size %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"failed to send addba response: vdev_id %u peer %pM tid %u status%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %u %u\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"failed to send delba: vdev_id %u peer %pM tid %u initiator %u reason %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to send htt peer stats request: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 29]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 760, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"fops_tx_stats\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 234, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 763, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"fops_rx_stats\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 332, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 766, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"fops_htt_peer_stats\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 403, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 769, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"fops_peer_pktlog\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 470, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 772, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"fops_aggr_mode\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 686, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 773, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"fops_addba\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 623, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 774, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"fops_addba_resp\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 572, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 775, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"fops_delba\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 522, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 779, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"fops_htt_peer_stats_reset\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 747, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant [9 x i8] c"str_name\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 142, i32 21 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 142, i32 56 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 142, i32 64 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 143, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 143, i32 23 }
@___asan_gen_.134 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 144, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 144, i32 53 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 144, i32 62 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 162, i32 44 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 166, i32 7 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 170, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 172, i32 44 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 174, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 181, i32 44 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 188, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 190, i32 7 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 194, i32 7 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 200, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 207, i32 7 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 210, i32 45 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 217, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 220, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 222, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 263, i32 42 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 264, i32 42 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 266, i32 42 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 268, i32 42 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 270, i32 42 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 272, i32 42 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 274, i32 42 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 276, i32 42 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 278, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 280, i32 42 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 283, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 287, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 290, i32 42 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 293, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 298, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 301, i32 42 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 304, i32 42 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 307, i32 42 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 310, i32 42 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 313, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 462, i32 36 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 437, i32 23 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 442, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 642, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 644, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 644, i32 13 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 644, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 644, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 675, i32 23 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 595, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 613, i32 23 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 563, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 494, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 512, i32 23 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath11k/debugfs_sta.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 735, i32 23 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @.str, ptr @fops_tx_stats, ptr @.str.1, ptr @fops_rx_stats, ptr @.str.2, ptr @fops_htt_peer_stats, ptr @.str.3, ptr @fops_peer_pktlog, ptr @.str.4, ptr @fops_aggr_mode, ptr @.str.5, ptr @fops_addba, ptr @.str.6, ptr @fops_addba_resp, ptr @.str.7, ptr @fops_delba, ptr @.str.8, ptr @fops_htt_peer_stats_reset, ptr @ath11k_dbg_sta_dump_tx_stats.str_name, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ath11k_dbg_sta_dump_tx_stats.str, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tx_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_rx_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_htt_peer_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_peer_pktlog to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_aggr_mode to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_addba to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_addba_resp to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_delba to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_htt_peer_stats_reset to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dbg_sta_dump_tx_stats.str_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dbg_sta_dump_tx_stats.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_sta_add_tx_stats(ptr nocapture noundef readonly %arsta, ptr noundef readonly %peer_stats, i8 noundef zeroext %legacy_rate_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %txrate1 = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 8
  %tx_stats2 = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 16
  %0 = ptrtoint ptr %tx_stats2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_stats2, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %txrate1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txrate1, align 8
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 1
  %6 = zext i8 %5 to i32
  %mcs17 = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %mcs17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mcs17, align 1
  %conv18 = zext i8 %8 to i32
  %bw19 = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %bw19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bw19, align 1
  %conv20 = zext i8 %10 to i32
  %call = tail call i32 @ath11k_mac_mac80211_bw_to_ath11k_bw(i32 noundef %conv20) #7
  %nss21 = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %nss21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nss21, align 2
  %conv22 = zext i8 %12 to i32
  %sub = add nsw i32 %conv22, -1
  %13 = ptrtoint ptr %txrate1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %txrate1, align 2
  %conv24 = zext i8 %14 to i32
  %and25 = and i32 %conv24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer_stats, align 4
  %conv28 = zext i32 %16 to i64
  %he = getelementptr inbounds %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 3
  %arrayidx30 = getelementptr [12 x i64], ptr %he, i32 0, i32 %conv18
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx30, align 8
  %add = add i64 %18, %conv28
  store i64 %add, ptr %arrayidx30, align 8
  %succ_pkts = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %19 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %succ_pkts, align 4
  %conv31 = zext i16 %20 to i64
  %arrayidx36 = getelementptr %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 3, i32 1, i32 %conv18
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx36, align 8
  %add37 = add i64 %22, %conv31
  store i64 %add37, ptr %arrayidx36, align 8
  %failed_bytes = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %23 = ptrtoint ptr %failed_bytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %failed_bytes, align 4
  %conv38 = zext i32 %24 to i64
  %he41 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 3
  %arrayidx43 = getelementptr [12 x i64], ptr %he41, i32 0, i32 %conv18
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx43, align 8
  %add44 = add i64 %26, %conv38
  store i64 %add44, ptr %arrayidx43, align 8
  %failed_pkts = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 5
  %27 = ptrtoint ptr %failed_pkts to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %failed_pkts, align 4
  %conv45 = zext i16 %28 to i64
  %arrayidx50 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 3, i32 1, i32 %conv18
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx50, align 8
  %add51 = add i64 %30, %conv45
  store i64 %add51, ptr %arrayidx50, align 8
  %retry_bytes = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %31 = ptrtoint ptr %retry_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retry_bytes, align 4
  %conv52 = zext i32 %32 to i64
  %he55 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 3
  %arrayidx57 = getelementptr [12 x i64], ptr %he55, i32 0, i32 %conv18
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx57, align 8
  %add58 = add i64 %34, %conv52
  store i64 %add58, ptr %arrayidx57, align 8
  %arrayidx64 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 3, i32 1, i32 %conv18
  br label %if.end222

if.else:                                          ; preds = %if.end
  %and68 = and i32 %conv24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else118, label %if.then70

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %peer_stats, align 4
  %conv72 = zext i32 %36 to i64
  %vht = getelementptr inbounds %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 2
  %arrayidx76 = getelementptr [10 x i64], ptr %vht, i32 0, i32 %conv18
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx76, align 8
  %add77 = add i64 %38, %conv72
  store i64 %add77, ptr %arrayidx76, align 8
  %succ_pkts78 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %39 = ptrtoint ptr %succ_pkts78 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %succ_pkts78, align 4
  %conv79 = zext i16 %40 to i64
  %arrayidx84 = getelementptr %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 2, i32 1, i32 %conv18
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx84, align 8
  %add85 = add i64 %42, %conv79
  store i64 %add85, ptr %arrayidx84, align 8
  %failed_bytes86 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %43 = ptrtoint ptr %failed_bytes86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %failed_bytes86, align 4
  %conv87 = zext i32 %44 to i64
  %vht90 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 2
  %arrayidx92 = getelementptr [10 x i64], ptr %vht90, i32 0, i32 %conv18
  %45 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx92, align 8
  %add93 = add i64 %46, %conv87
  store i64 %add93, ptr %arrayidx92, align 8
  %failed_pkts94 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 5
  %47 = ptrtoint ptr %failed_pkts94 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %failed_pkts94, align 4
  %conv95 = zext i16 %48 to i64
  %arrayidx100 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 2, i32 1, i32 %conv18
  %49 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx100, align 8
  %add101 = add i64 %50, %conv95
  store i64 %add101, ptr %arrayidx100, align 8
  %retry_bytes102 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %51 = ptrtoint ptr %retry_bytes102 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %retry_bytes102, align 4
  %conv103 = zext i32 %52 to i64
  %vht106 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 2
  %arrayidx108 = getelementptr [10 x i64], ptr %vht106, i32 0, i32 %conv18
  %53 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx108, align 8
  %add109 = add i64 %54, %conv103
  store i64 %add109, ptr %arrayidx108, align 8
  %arrayidx116 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 2, i32 1, i32 %conv18
  br label %if.end222

if.else118:                                       ; preds = %if.else
  %and121 = and i32 %conv24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.else171, label %if.then123

if.then123:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %peer_stats, align 4
  %conv125 = zext i32 %56 to i64
  %ht = getelementptr inbounds %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 1
  %arrayidx129 = getelementptr [32 x i64], ptr %ht, i32 0, i32 %conv18
  %57 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx129, align 8
  %add130 = add i64 %58, %conv125
  store i64 %add130, ptr %arrayidx129, align 8
  %succ_pkts131 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %59 = ptrtoint ptr %succ_pkts131 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %succ_pkts131, align 4
  %conv132 = zext i16 %60 to i64
  %arrayidx137 = getelementptr %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 1, i32 1, i32 %conv18
  %61 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx137, align 8
  %add138 = add i64 %62, %conv132
  store i64 %add138, ptr %arrayidx137, align 8
  %failed_bytes139 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %63 = ptrtoint ptr %failed_bytes139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %failed_bytes139, align 4
  %conv140 = zext i32 %64 to i64
  %ht143 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 1
  %arrayidx145 = getelementptr [32 x i64], ptr %ht143, i32 0, i32 %conv18
  %65 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx145, align 8
  %add146 = add i64 %66, %conv140
  store i64 %add146, ptr %arrayidx145, align 8
  %failed_pkts147 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 5
  %67 = ptrtoint ptr %failed_pkts147 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %failed_pkts147, align 4
  %conv148 = zext i16 %68 to i64
  %arrayidx153 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 1, i32 1, i32 %conv18
  %69 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx153, align 8
  %add154 = add i64 %70, %conv148
  store i64 %add154, ptr %arrayidx153, align 8
  %retry_bytes155 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %71 = ptrtoint ptr %retry_bytes155 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %retry_bytes155, align 4
  %conv156 = zext i32 %72 to i64
  %ht159 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 1
  %arrayidx161 = getelementptr [32 x i64], ptr %ht159, i32 0, i32 %conv18
  %73 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx161, align 8
  %add162 = add i64 %74, %conv156
  store i64 %add162, ptr %arrayidx161, align 8
  %arrayidx169 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 1, i32 1, i32 %conv18
  br label %if.end222

if.else171:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  %conv172 = zext i8 %legacy_rate_idx to i32
  %75 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %peer_stats, align 4
  %conv174 = zext i32 %76 to i64
  %arrayidx178 = getelementptr [12 x i64], ptr %1, i32 0, i32 %conv172
  %77 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx178, align 8
  %add179 = add i64 %78, %conv174
  store i64 %add179, ptr %arrayidx178, align 8
  %succ_pkts180 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %79 = ptrtoint ptr %succ_pkts180 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %succ_pkts180, align 4
  %conv181 = zext i16 %80 to i64
  %arrayidx186 = getelementptr [2 x [12 x i64]], ptr %1, i32 0, i32 1, i32 %conv172
  %81 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx186, align 8
  %add187 = add i64 %82, %conv181
  store i64 %add187, ptr %arrayidx186, align 8
  %failed_bytes188 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %83 = ptrtoint ptr %failed_bytes188 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %failed_bytes188, align 4
  %conv189 = zext i32 %84 to i64
  %arrayidx191 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1
  %arrayidx194 = getelementptr [12 x i64], ptr %arrayidx191, i32 0, i32 %conv172
  %85 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx194, align 8
  %add195 = add i64 %86, %conv189
  store i64 %add195, ptr %arrayidx194, align 8
  %failed_pkts196 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 5
  %87 = ptrtoint ptr %failed_pkts196 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %failed_pkts196, align 4
  %conv197 = zext i16 %88 to i64
  %arrayidx202 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 0, i32 1, i32 %conv172
  %89 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx202, align 8
  %add203 = add i64 %90, %conv197
  store i64 %add203, ptr %arrayidx202, align 8
  %retry_bytes204 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %91 = ptrtoint ptr %retry_bytes204 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %retry_bytes204, align 4
  %conv205 = zext i32 %92 to i64
  %arrayidx207 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2
  %arrayidx210 = getelementptr [12 x i64], ptr %arrayidx207, i32 0, i32 %conv172
  %93 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx210, align 8
  %add211 = add i64 %94, %conv205
  store i64 %add211, ptr %arrayidx210, align 8
  %arrayidx218 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 0, i32 1, i32 %conv172
  br label %if.end222

if.end222:                                        ; preds = %if.else171, %if.then123, %if.then70, %if.then27
  %arrayidx116.sink715 = phi ptr [ %arrayidx116, %if.then70 ], [ %arrayidx218, %if.else171 ], [ %arrayidx169, %if.then123 ], [ %arrayidx64, %if.then27 ]
  %mcs.0 = phi i32 [ %conv18, %if.then70 ], [ %conv172, %if.else171 ], [ %conv18, %if.then123 ], [ %conv18, %if.then27 ]
  %conv111.sink.in.in = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %95 = ptrtoint ptr %conv111.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %95)
  %conv111.sink.in = load i16, ptr %conv111.sink.in.in, align 2
  %conv111.sink = zext i16 %conv111.sink.in to i64
  %96 = ptrtoint ptr %arrayidx116.sink715 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx116.sink715, align 8
  %add117 = add i64 %97, %conv111.sink
  store i64 %add117, ptr %arrayidx116.sink715, align 8
  %is_ampdu = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 8
  %98 = ptrtoint ptr %is_ampdu to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_ampdu, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool223.not = icmp eq i8 %99, 0
  %ba_fails375 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 7
  %100 = ptrtoint ptr %ba_fails375 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ba_fails375, align 4
  %conv376 = zext i8 %101 to i64
  br i1 %tobool223.not, label %if.else374, label %if.then224

if.then224:                                       ; preds = %if.end222
  %ba_fails226 = getelementptr inbounds %struct.ath11k_htt_tx_stats, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %ba_fails226 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ba_fails226, align 8
  %add227 = add i64 %103, %conv376
  store i64 %add227, ptr %ba_fails226, align 8
  %104 = ptrtoint ptr %txrate1 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %txrate1, align 2
  %conv229 = zext i8 %105 to i32
  %and230 = and i32 %conv229, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.else255, label %if.then232

if.then232:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %peer_stats, align 4
  %retry_bytes234 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %108 = ptrtoint ptr %retry_bytes234 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %retry_bytes234, align 4
  %add235 = add i32 %109, %107
  %conv236 = zext i32 %add235 to i64
  %he239 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 3
  %arrayidx241 = getelementptr [12 x i64], ptr %he239, i32 0, i32 %mcs.0
  %110 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx241, align 8
  %add242 = add i64 %111, %conv236
  store i64 %add242, ptr %arrayidx241, align 8
  %succ_pkts243 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %112 = ptrtoint ptr %succ_pkts243 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %succ_pkts243, align 4
  %conv244 = zext i16 %113 to i32
  %retry_pkts245 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %114 = ptrtoint ptr %retry_pkts245 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %retry_pkts245, align 2
  %conv246 = zext i16 %115 to i32
  %add247 = add nuw nsw i32 %conv246, %conv244
  %arrayidx253 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 3, i32 1, i32 %mcs.0
  br label %if.end307

if.else255:                                       ; preds = %if.then224
  %and258 = and i32 %conv229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258)
  %tobool259.not = icmp eq i32 %and258, 0
  %116 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %peer_stats, align 4
  %retry_bytes285 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %118 = ptrtoint ptr %retry_bytes285 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %retry_bytes285, align 4
  %add286 = add i32 %119, %117
  %conv287 = zext i32 %add286 to i64
  br i1 %tobool259.not, label %if.else283, label %if.then260

if.then260:                                       ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #9
  %ht267 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 1
  %arrayidx269 = getelementptr [32 x i64], ptr %ht267, i32 0, i32 %mcs.0
  %120 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx269, align 8
  %add270 = add i64 %121, %conv287
  store i64 %add270, ptr %arrayidx269, align 8
  %succ_pkts271 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %122 = ptrtoint ptr %succ_pkts271 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %succ_pkts271, align 4
  %conv272 = zext i16 %123 to i32
  %retry_pkts273 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %124 = ptrtoint ptr %retry_pkts273 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %retry_pkts273, align 2
  %conv274 = zext i16 %125 to i32
  %add275 = add nuw nsw i32 %conv274, %conv272
  %arrayidx281 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 1, i32 1, i32 %mcs.0
  br label %if.end307

if.else283:                                       ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #9
  %vht290 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 2
  %arrayidx292 = getelementptr [10 x i64], ptr %vht290, i32 0, i32 %mcs.0
  %126 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx292, align 8
  %add293 = add i64 %127, %conv287
  store i64 %add293, ptr %arrayidx292, align 8
  %succ_pkts294 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %128 = ptrtoint ptr %succ_pkts294 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %succ_pkts294, align 4
  %conv295 = zext i16 %129 to i32
  %retry_pkts296 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %130 = ptrtoint ptr %retry_pkts296 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %retry_pkts296, align 2
  %conv297 = zext i16 %131 to i32
  %add298 = add nuw nsw i32 %conv297, %conv295
  %arrayidx304 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 2, i32 1, i32 %mcs.0
  br label %if.end307

if.end307:                                        ; preds = %if.else283, %if.then260, %if.then232
  %arrayidx281.sink717 = phi ptr [ %arrayidx281, %if.then260 ], [ %arrayidx304, %if.else283 ], [ %arrayidx253, %if.then232 ]
  %.sink716.in = phi i32 [ %add275, %if.then260 ], [ %add298, %if.else283 ], [ %add247, %if.then232 ]
  %.sink716 = zext i32 %.sink716.in to i64
  %132 = ptrtoint ptr %arrayidx281.sink717 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx281.sink717, align 8
  %add282 = add i64 %133, %.sink716
  store i64 %add282, ptr %arrayidx281.sink717, align 8
  %134 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %peer_stats, align 4
  %retry_bytes309 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %136 = ptrtoint ptr %retry_bytes309 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %retry_bytes309, align 4
  %add310 = add i32 %137, %135
  %conv311 = zext i32 %add310 to i64
  %bw314 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 4
  %arrayidx316 = getelementptr [4 x i64], ptr %bw314, i32 0, i32 %call
  %138 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx316, align 8
  %add317 = add i64 %139, %conv311
  store i64 %add317, ptr %arrayidx316, align 8
  %140 = load i32, ptr %peer_stats, align 4
  %141 = load i32, ptr %retry_bytes309, align 4
  %add320 = add i32 %141, %140
  %conv321 = zext i32 %add320 to i64
  %nss324 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 5
  %arrayidx326 = getelementptr [4 x i64], ptr %nss324, i32 0, i32 %sub
  %142 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx326, align 8
  %add327 = add i64 %143, %conv321
  store i64 %add327, ptr %arrayidx326, align 8
  %144 = load i32, ptr %peer_stats, align 4
  %145 = load i32, ptr %retry_bytes309, align 4
  %add330 = add i32 %145, %144
  %conv331 = zext i32 %add330 to i64
  %gi334 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 6
  %arrayidx336 = getelementptr [4 x i64], ptr %gi334, i32 0, i32 %6
  %146 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx336, align 8
  %add337 = add i64 %147, %conv331
  store i64 %add337, ptr %arrayidx336, align 8
  %succ_pkts338 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %148 = ptrtoint ptr %succ_pkts338 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %succ_pkts338, align 4
  %conv339 = zext i16 %149 to i32
  %retry_pkts340 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %150 = ptrtoint ptr %retry_pkts340 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %retry_pkts340, align 2
  %conv341 = zext i16 %151 to i32
  %add342 = add nuw nsw i32 %conv341, %conv339
  %152 = zext i32 %add342 to i64
  %arrayidx348 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 4, i32 1, i32 %call
  %153 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx348, align 8
  %add349 = add i64 %154, %152
  store i64 %add349, ptr %arrayidx348, align 8
  %155 = load i16, ptr %succ_pkts338, align 4
  %conv351 = zext i16 %155 to i32
  %156 = load i16, ptr %retry_pkts340, align 2
  %conv353 = zext i16 %156 to i32
  %add354 = add nuw nsw i32 %conv353, %conv351
  %157 = zext i32 %add354 to i64
  %arrayidx360 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 5, i32 1, i32 %sub
  %158 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx360, align 8
  %add361 = add i64 %159, %157
  store i64 %add361, ptr %arrayidx360, align 8
  %160 = load i16, ptr %succ_pkts338, align 4
  %conv363 = zext i16 %160 to i32
  %161 = load i16, ptr %retry_pkts340, align 2
  %conv365 = zext i16 %161 to i32
  %add366 = add nuw nsw i32 %conv365, %conv363
  %162 = zext i32 %add366 to i64
  %arrayidx372 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 3, i32 6, i32 1, i32 %6
  br label %if.end378

if.else374:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  %ack_fails = getelementptr inbounds %struct.ath11k_htt_tx_stats, ptr %1, i32 0, i32 3
  br label %if.end378

if.end378:                                        ; preds = %if.else374, %if.end307
  %ack_fails.sink718 = phi ptr [ %ack_fails, %if.else374 ], [ %arrayidx372, %if.end307 ]
  %conv376.sink = phi i64 [ %conv376, %if.else374 ], [ %162, %if.end307 ]
  %163 = ptrtoint ptr %ack_fails.sink718 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %ack_fails.sink718, align 8
  %add377 = add i64 %164, %conv376.sink
  store i64 %add377, ptr %ack_fails.sink718, align 8
  %165 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %peer_stats, align 4
  %conv380 = zext i32 %166 to i64
  %bw383 = getelementptr inbounds %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 4
  %arrayidx385 = getelementptr [4 x i64], ptr %bw383, i32 0, i32 %call
  %167 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx385, align 8
  %add386 = add i64 %168, %conv380
  store i64 %add386, ptr %arrayidx385, align 8
  %169 = load i32, ptr %peer_stats, align 4
  %conv388 = zext i32 %169 to i64
  %nss391 = getelementptr inbounds %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 5
  %arrayidx393 = getelementptr [4 x i64], ptr %nss391, i32 0, i32 %sub
  %170 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx393, align 8
  %add394 = add i64 %171, %conv388
  store i64 %add394, ptr %arrayidx393, align 8
  %172 = load i32, ptr %peer_stats, align 4
  %conv396 = zext i32 %172 to i64
  %gi399 = getelementptr inbounds %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 6
  %arrayidx401 = getelementptr [4 x i64], ptr %gi399, i32 0, i32 %6
  %173 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx401, align 8
  %add402 = add i64 %174, %conv396
  store i64 %add402, ptr %arrayidx401, align 8
  %succ_pkts403 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %175 = ptrtoint ptr %succ_pkts403 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %succ_pkts403, align 4
  %conv404 = zext i16 %176 to i64
  %arrayidx409 = getelementptr %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 4, i32 1, i32 %call
  %177 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx409, align 8
  %add410 = add i64 %178, %conv404
  store i64 %add410, ptr %arrayidx409, align 8
  %179 = load i16, ptr %succ_pkts403, align 4
  %conv412 = zext i16 %179 to i64
  %arrayidx417 = getelementptr %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 5, i32 1, i32 %sub
  %180 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx417, align 8
  %add418 = add i64 %181, %conv412
  store i64 %add418, ptr %arrayidx417, align 8
  %182 = load i16, ptr %succ_pkts403, align 4
  %conv420 = zext i16 %182 to i64
  %arrayidx425 = getelementptr %struct.ath11k_htt_data_stats, ptr %1, i32 0, i32 6, i32 1, i32 %6
  %183 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %arrayidx425, align 8
  %add426 = add i64 %184, %conv420
  store i64 %add426, ptr %arrayidx425, align 8
  %failed_bytes427 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %185 = ptrtoint ptr %failed_bytes427 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %failed_bytes427, align 4
  %conv428 = zext i32 %186 to i64
  %bw431 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 4
  %arrayidx433 = getelementptr [4 x i64], ptr %bw431, i32 0, i32 %call
  %187 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx433, align 8
  %add434 = add i64 %188, %conv428
  store i64 %add434, ptr %arrayidx433, align 8
  %189 = load i32, ptr %failed_bytes427, align 4
  %conv436 = zext i32 %189 to i64
  %nss439 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 5
  %arrayidx441 = getelementptr [4 x i64], ptr %nss439, i32 0, i32 %sub
  %190 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %arrayidx441, align 8
  %add442 = add i64 %191, %conv436
  store i64 %add442, ptr %arrayidx441, align 8
  %192 = load i32, ptr %failed_bytes427, align 4
  %conv444 = zext i32 %192 to i64
  %gi447 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 6
  %arrayidx449 = getelementptr [4 x i64], ptr %gi447, i32 0, i32 %6
  %193 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %arrayidx449, align 8
  %add450 = add i64 %194, %conv444
  store i64 %add450, ptr %arrayidx449, align 8
  %failed_pkts451 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 5
  %195 = ptrtoint ptr %failed_pkts451 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %failed_pkts451, align 4
  %conv452 = zext i16 %196 to i64
  %arrayidx457 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 4, i32 1, i32 %call
  %197 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %arrayidx457, align 8
  %add458 = add i64 %198, %conv452
  store i64 %add458, ptr %arrayidx457, align 8
  %199 = load i16, ptr %failed_pkts451, align 4
  %conv460 = zext i16 %199 to i64
  %arrayidx465 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 5, i32 1, i32 %sub
  %200 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %arrayidx465, align 8
  %add466 = add i64 %201, %conv460
  store i64 %add466, ptr %arrayidx465, align 8
  %202 = load i16, ptr %failed_pkts451, align 4
  %conv468 = zext i16 %202 to i64
  %arrayidx473 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 1, i32 6, i32 1, i32 %6
  %203 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %arrayidx473, align 8
  %add474 = add i64 %204, %conv468
  store i64 %add474, ptr %arrayidx473, align 8
  %retry_bytes475 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %205 = ptrtoint ptr %retry_bytes475 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %retry_bytes475, align 4
  %conv476 = zext i32 %206 to i64
  %bw479 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 4
  %arrayidx481 = getelementptr [4 x i64], ptr %bw479, i32 0, i32 %call
  %207 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %arrayidx481, align 8
  %add482 = add i64 %208, %conv476
  store i64 %add482, ptr %arrayidx481, align 8
  %209 = load i32, ptr %retry_bytes475, align 4
  %conv484 = zext i32 %209 to i64
  %nss487 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 5
  %arrayidx489 = getelementptr [4 x i64], ptr %nss487, i32 0, i32 %sub
  %210 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %arrayidx489, align 8
  %add490 = add i64 %211, %conv484
  store i64 %add490, ptr %arrayidx489, align 8
  %212 = load i32, ptr %retry_bytes475, align 4
  %conv492 = zext i32 %212 to i64
  %gi495 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 6
  %arrayidx497 = getelementptr [4 x i64], ptr %gi495, i32 0, i32 %6
  %213 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %arrayidx497, align 8
  %add498 = add i64 %214, %conv492
  store i64 %add498, ptr %arrayidx497, align 8
  %retry_pkts499 = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %215 = ptrtoint ptr %retry_pkts499 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %retry_pkts499, align 2
  %conv500 = zext i16 %216 to i64
  %arrayidx505 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 4, i32 1, i32 %call
  %217 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %arrayidx505, align 8
  %add506 = add i64 %218, %conv500
  store i64 %add506, ptr %arrayidx505, align 8
  %219 = load i16, ptr %retry_pkts499, align 2
  %conv508 = zext i16 %219 to i64
  %arrayidx513 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 5, i32 1, i32 %sub
  %220 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %arrayidx513, align 8
  %add514 = add i64 %221, %conv508
  store i64 %add514, ptr %arrayidx513, align 8
  %222 = load i16, ptr %retry_pkts499, align 2
  %conv516 = zext i16 %222 to i64
  %arrayidx521 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %1, i32 0, i32 2, i32 6, i32 1, i32 %6
  %223 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %arrayidx521, align 8
  %add522 = add i64 %224, %conv516
  store i64 %add522, ptr %arrayidx521, align 8
  %duration = getelementptr inbounds %struct.ath11k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 6
  %225 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %duration, align 4
  %conv523 = zext i32 %226 to i64
  %tx_duration = getelementptr inbounds %struct.ath11k_htt_tx_stats, ptr %1, i32 0, i32 1
  %227 = ptrtoint ptr %tx_duration to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %tx_duration, align 8
  %add524 = add i64 %228, %conv523
  store i64 %add524, ptr %tx_duration, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end378, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mac_mac80211_bw_to_ath11k_bw(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_sta_update_txcompl(ptr noundef %ar, ptr noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath11k_dp_tx_update_txcompl(ptr noundef %ar, ptr noundef %ts) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_tx_update_txcompl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_sta_op_add(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %extd_tx_stats.i = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 2
  %2 = ptrtoint ptr %extd_tx_stats.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extd_tx_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_tx_stats) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %extd_rx_stats.i = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 6
  %4 = ptrtoint ptr %extd_rx_stats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extd_rx_stats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_rx_stats) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_htt_peer_stats) #7
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_peer_pktlog) #7
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_aggr_mode) #7
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 128, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_addba) #7
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 128, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_addba_resp) #7
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_delba) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %7, i32 0, i32 4, i32 6, i32 6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %10 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.end6.if.end17_crit_edge, label %if.then15

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_htt_peer_stats_reset) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end6.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_dump_tx_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  %tx_stats = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 5
  %6 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_stats, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8192) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %data_lock = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #7
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc158.for.cond6.preheader_crit_edge, %if.end5
  %k.0356 = phi i32 [ 0, %if.end5 ], [ %inc159, %for.inc158.for.cond6.preheader_crit_edge ]
  %len.0355 = phi i32 [ 0, %if.end5 ], [ %add154, %for.inc158.for.cond6.preheader_crit_edge ]
  %arrayidx11 = getelementptr [4 x ptr], ptr @ath11k_dbg_sta_dump_tx_stats.str_name, i32 0, i32 %k.0356
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.end69.for.body8_crit_edge, %for.cond6.preheader
  %j.0354 = phi i32 [ 0, %for.cond6.preheader ], [ %inc156, %for.end69.for.body8_crit_edge ]
  %len.1353 = phi i32 [ %len.0355, %for.cond6.preheader ], [ %add154, %for.end69.for.body8_crit_edge ]
  %11 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_stats, align 8
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %len.1353
  %sub = sub i32 8192, %len.1353
  %arrayidx12 = getelementptr [2 x ptr], ptr @ath11k_dbg_sta_dump_tx_stats.str, i32 0, i32 %j.0354
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.15, ptr noundef %10, ptr noundef %14) #7
  %add = add i32 %call13, %len.1353
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add
  %sub15 = sub i32 8192, %add
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.16, ptr noundef %14) #7
  %add18 = add i32 %add, %call17
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add18
  %sub23 = sub i32 8192, %add18
  %arrayidx25 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 0
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx25, align 8
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.17, i64 noundef %16) #7
  %add27 = add i32 %call26, %add18
  %add.ptr22.1 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub23.1 = sub i32 8192, %add27
  %arrayidx25.1 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 1
  %17 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx25.1, align 8
  %call26.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.1, i32 noundef %sub23.1, ptr noundef nonnull @.str.17, i64 noundef %18) #7
  %add27.1 = add i32 %call26.1, %add27
  %add.ptr22.2 = getelementptr i8, ptr %call7.i.i, i32 %add27.1
  %sub23.2 = sub i32 8192, %add27.1
  %arrayidx25.2 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 2
  %19 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx25.2, align 8
  %call26.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.2, i32 noundef %sub23.2, ptr noundef nonnull @.str.17, i64 noundef %20) #7
  %add27.2 = add i32 %call26.2, %add27.1
  %add.ptr22.3 = getelementptr i8, ptr %call7.i.i, i32 %add27.2
  %sub23.3 = sub i32 8192, %add27.2
  %arrayidx25.3 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 3
  %21 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx25.3, align 8
  %call26.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.3, i32 noundef %sub23.3, ptr noundef nonnull @.str.17, i64 noundef %22) #7
  %add27.3 = add i32 %call26.3, %add27.2
  %add.ptr22.4 = getelementptr i8, ptr %call7.i.i, i32 %add27.3
  %sub23.4 = sub i32 8192, %add27.3
  %arrayidx25.4 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 4
  %23 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx25.4, align 8
  %call26.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.4, i32 noundef %sub23.4, ptr noundef nonnull @.str.17, i64 noundef %24) #7
  %add27.4 = add i32 %call26.4, %add27.3
  %add.ptr22.5 = getelementptr i8, ptr %call7.i.i, i32 %add27.4
  %sub23.5 = sub i32 8192, %add27.4
  %arrayidx25.5 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 5
  %25 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx25.5, align 8
  %call26.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.5, i32 noundef %sub23.5, ptr noundef nonnull @.str.17, i64 noundef %26) #7
  %add27.5 = add i32 %call26.5, %add27.4
  %add.ptr22.6 = getelementptr i8, ptr %call7.i.i, i32 %add27.5
  %sub23.6 = sub i32 8192, %add27.5
  %arrayidx25.6 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 6
  %27 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx25.6, align 8
  %call26.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.6, i32 noundef %sub23.6, ptr noundef nonnull @.str.17, i64 noundef %28) #7
  %add27.6 = add i32 %call26.6, %add27.5
  %add.ptr22.7 = getelementptr i8, ptr %call7.i.i, i32 %add27.6
  %sub23.7 = sub i32 8192, %add27.6
  %arrayidx25.7 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 7
  %29 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx25.7, align 8
  %call26.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.7, i32 noundef %sub23.7, ptr noundef nonnull @.str.17, i64 noundef %30) #7
  %add27.7 = add i32 %call26.7, %add27.6
  %add.ptr22.8 = getelementptr i8, ptr %call7.i.i, i32 %add27.7
  %sub23.8 = sub i32 8192, %add27.7
  %arrayidx25.8 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 8
  %31 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx25.8, align 8
  %call26.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.8, i32 noundef %sub23.8, ptr noundef nonnull @.str.17, i64 noundef %32) #7
  %add27.8 = add i32 %call26.8, %add27.7
  %add.ptr22.9 = getelementptr i8, ptr %call7.i.i, i32 %add27.8
  %sub23.9 = sub i32 8192, %add27.8
  %arrayidx25.9 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 9
  %33 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx25.9, align 8
  %call26.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.9, i32 noundef %sub23.9, ptr noundef nonnull @.str.17, i64 noundef %34) #7
  %add27.9 = add i32 %call26.9, %add27.8
  %add.ptr22.10 = getelementptr i8, ptr %call7.i.i, i32 %add27.9
  %sub23.10 = sub i32 8192, %add27.9
  %arrayidx25.10 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 10
  %35 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx25.10, align 8
  %call26.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.10, i32 noundef %sub23.10, ptr noundef nonnull @.str.17, i64 noundef %36) #7
  %add27.10 = add i32 %call26.10, %add27.9
  %add.ptr22.11 = getelementptr i8, ptr %call7.i.i, i32 %add27.10
  %sub23.11 = sub i32 8192, %add27.10
  %arrayidx25.11 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 3, i32 %j.0354, i32 11
  %37 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx25.11, align 8
  %call26.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.11, i32 noundef %sub23.11, ptr noundef nonnull @.str.17, i64 noundef %38) #7
  %add27.11 = add i32 %call26.11, %add27.10
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %add27.11
  %sub29 = sub i32 8192, %add27.11
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.18) #7
  %add31 = add i32 %call30, %add27.11
  %add.ptr32 = getelementptr i8, ptr %call7.i.i, i32 %add31
  %sub33 = sub i32 8192, %add31
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.19, ptr noundef %14) #7
  %add36 = add i32 %add31, %call35
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add36
  %sub41 = sub i32 8192, %add36
  %arrayidx43 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 0
  %39 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx43, align 8
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.17, i64 noundef %40) #7
  %add45 = add i32 %call44, %add36
  %add.ptr40.1 = getelementptr i8, ptr %call7.i.i, i32 %add45
  %sub41.1 = sub i32 8192, %add45
  %arrayidx43.1 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 1
  %41 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx43.1, align 8
  %call44.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.1, i32 noundef %sub41.1, ptr noundef nonnull @.str.17, i64 noundef %42) #7
  %add45.1 = add i32 %call44.1, %add45
  %add.ptr40.2 = getelementptr i8, ptr %call7.i.i, i32 %add45.1
  %sub41.2 = sub i32 8192, %add45.1
  %arrayidx43.2 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 2
  %43 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx43.2, align 8
  %call44.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.2, i32 noundef %sub41.2, ptr noundef nonnull @.str.17, i64 noundef %44) #7
  %add45.2 = add i32 %call44.2, %add45.1
  %add.ptr40.3 = getelementptr i8, ptr %call7.i.i, i32 %add45.2
  %sub41.3 = sub i32 8192, %add45.2
  %arrayidx43.3 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 3
  %45 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx43.3, align 8
  %call44.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.3, i32 noundef %sub41.3, ptr noundef nonnull @.str.17, i64 noundef %46) #7
  %add45.3 = add i32 %call44.3, %add45.2
  %add.ptr40.4 = getelementptr i8, ptr %call7.i.i, i32 %add45.3
  %sub41.4 = sub i32 8192, %add45.3
  %arrayidx43.4 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 4
  %47 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx43.4, align 8
  %call44.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.4, i32 noundef %sub41.4, ptr noundef nonnull @.str.17, i64 noundef %48) #7
  %add45.4 = add i32 %call44.4, %add45.3
  %add.ptr40.5 = getelementptr i8, ptr %call7.i.i, i32 %add45.4
  %sub41.5 = sub i32 8192, %add45.4
  %arrayidx43.5 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 5
  %49 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx43.5, align 8
  %call44.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.5, i32 noundef %sub41.5, ptr noundef nonnull @.str.17, i64 noundef %50) #7
  %add45.5 = add i32 %call44.5, %add45.4
  %add.ptr40.6 = getelementptr i8, ptr %call7.i.i, i32 %add45.5
  %sub41.6 = sub i32 8192, %add45.5
  %arrayidx43.6 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 6
  %51 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx43.6, align 8
  %call44.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.6, i32 noundef %sub41.6, ptr noundef nonnull @.str.17, i64 noundef %52) #7
  %add45.6 = add i32 %call44.6, %add45.5
  %add.ptr40.7 = getelementptr i8, ptr %call7.i.i, i32 %add45.6
  %sub41.7 = sub i32 8192, %add45.6
  %arrayidx43.7 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 7
  %53 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx43.7, align 8
  %call44.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.7, i32 noundef %sub41.7, ptr noundef nonnull @.str.17, i64 noundef %54) #7
  %add45.7 = add i32 %call44.7, %add45.6
  %add.ptr40.8 = getelementptr i8, ptr %call7.i.i, i32 %add45.7
  %sub41.8 = sub i32 8192, %add45.7
  %arrayidx43.8 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 8
  %55 = ptrtoint ptr %arrayidx43.8 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx43.8, align 8
  %call44.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.8, i32 noundef %sub41.8, ptr noundef nonnull @.str.17, i64 noundef %56) #7
  %add45.8 = add i32 %call44.8, %add45.7
  %add.ptr40.9 = getelementptr i8, ptr %call7.i.i, i32 %add45.8
  %sub41.9 = sub i32 8192, %add45.8
  %arrayidx43.9 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 2, i32 %j.0354, i32 9
  %57 = ptrtoint ptr %arrayidx43.9 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx43.9, align 8
  %call44.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.9, i32 noundef %sub41.9, ptr noundef nonnull @.str.17, i64 noundef %58) #7
  %add45.9 = add i32 %call44.9, %add45.8
  %add.ptr49 = getelementptr i8, ptr %call7.i.i, i32 %add45.9
  %sub50 = sub i32 8192, %add45.9
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.18) #7
  %add52 = add i32 %call51, %add45.9
  %add.ptr53 = getelementptr i8, ptr %call7.i.i, i32 %add52
  %sub54 = sub i32 8192, %add52
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.20, ptr noundef %14) #7
  %add57 = add i32 %add52, %call56
  br label %for.body60

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.body8
  %i.2350 = phi i32 [ 0, %for.body8 ], [ %inc68, %for.body60.for.body60_crit_edge ]
  %len.4349 = phi i32 [ %add57, %for.body8 ], [ %add66, %for.body60.for.body60_crit_edge ]
  %add.ptr61 = getelementptr i8, ptr %call7.i.i, i32 %len.4349
  %sub62 = sub i32 8192, %len.4349
  %arrayidx64 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 1, i32 %j.0354, i32 %i.2350
  %59 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx64, align 8
  %call65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.17, i64 noundef %60) #7
  %add66 = add i32 %call65, %len.4349
  %inc68 = add nuw nsw i32 %i.2350, 1
  %exitcond.not = icmp eq i32 %inc68, 32
  br i1 %exitcond.not, label %for.end69, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body60

for.end69:                                        ; preds = %for.body60
  %arrayidx = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356
  %add.ptr70 = getelementptr i8, ptr %call7.i.i, i32 %add66
  %sub71 = sub i32 8192, %add66
  %call72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.18) #7
  %add73 = add i32 %call72, %add66
  %add.ptr74 = getelementptr i8, ptr %call7.i.i, i32 %add73
  %sub75 = sub i32 8192, %add73
  %call77 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.21, ptr noundef %14) #7
  %add78 = add i32 %add73, %call77
  %add.ptr79 = getelementptr i8, ptr %call7.i.i, i32 %add78
  %sub80 = sub i32 8192, %add78
  %arrayidx81 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 4, i32 %j.0354
  %61 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx81, align 8
  %arrayidx85 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 4, i32 %j.0354, i32 1
  %63 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx85, align 8
  %arrayidx88 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 4, i32 %j.0354, i32 2
  %65 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx88, align 8
  %arrayidx91 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 4, i32 %j.0354, i32 3
  %67 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx91, align 8
  %call92 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr79, i32 noundef %sub80, ptr noundef nonnull @.str.22, i64 noundef %62, i64 noundef %64, i64 noundef %66, i64 noundef %68) #7
  %add93 = add i32 %call92, %add78
  %add.ptr94 = getelementptr i8, ptr %call7.i.i, i32 %add93
  %sub95 = sub i32 8192, %add93
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr94, i32 noundef %sub95, ptr noundef nonnull @.str.23, ptr noundef %14) #7
  %add98 = add i32 %add93, %call97
  %add.ptr99 = getelementptr i8, ptr %call7.i.i, i32 %add98
  %sub100 = sub i32 8192, %add98
  %arrayidx101 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 5, i32 %j.0354
  %69 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx101, align 8
  %arrayidx105 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 5, i32 %j.0354, i32 1
  %71 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx105, align 8
  %arrayidx108 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 5, i32 %j.0354, i32 2
  %73 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx108, align 8
  %arrayidx111 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 5, i32 %j.0354, i32 3
  %75 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx111, align 8
  %call112 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.22, i64 noundef %70, i64 noundef %72, i64 noundef %74, i64 noundef %76) #7
  %add113 = add i32 %call112, %add98
  %add.ptr114 = getelementptr i8, ptr %call7.i.i, i32 %add113
  %sub115 = sub i32 8192, %add113
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.24, ptr noundef %14) #7
  %add118 = add i32 %add113, %call117
  %add.ptr119 = getelementptr i8, ptr %call7.i.i, i32 %add118
  %sub120 = sub i32 8192, %add118
  %arrayidx121 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 6, i32 %j.0354
  %77 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx121, align 8
  %arrayidx125 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 6, i32 %j.0354, i32 1
  %79 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx125, align 8
  %arrayidx128 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 6, i32 %j.0354, i32 2
  %81 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx128, align 8
  %arrayidx131 = getelementptr [4 x %struct.ath11k_htt_data_stats], ptr %12, i32 0, i32 %k.0356, i32 6, i32 %j.0354, i32 3
  %83 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx131, align 8
  %call132 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr119, i32 noundef %sub120, ptr noundef nonnull @.str.22, i64 noundef %78, i64 noundef %80, i64 noundef %82, i64 noundef %84) #7
  %add133 = add i32 %call132, %add118
  %add.ptr134 = getelementptr i8, ptr %call7.i.i, i32 %add133
  %sub135 = sub i32 8192, %add133
  %call137 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr134, i32 noundef %sub135, ptr noundef nonnull @.str.25, ptr noundef %14) #7
  %add138 = add i32 %add133, %call137
  %add.ptr142 = getelementptr i8, ptr %call7.i.i, i32 %add138
  %sub143 = sub i32 8192, %add138
  %arrayidx145 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 0
  %85 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx145, align 8
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142, i32 noundef %sub143, ptr noundef nonnull @.str.26, i64 noundef %86) #7
  %add147 = add i32 %call146, %add138
  %add.ptr142.1 = getelementptr i8, ptr %call7.i.i, i32 %add147
  %sub143.1 = sub i32 8192, %add147
  %arrayidx145.1 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 1
  %87 = ptrtoint ptr %arrayidx145.1 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx145.1, align 8
  %call146.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.1, i32 noundef %sub143.1, ptr noundef nonnull @.str.26, i64 noundef %88) #7
  %add147.1 = add i32 %call146.1, %add147
  %add.ptr142.2 = getelementptr i8, ptr %call7.i.i, i32 %add147.1
  %sub143.2 = sub i32 8192, %add147.1
  %arrayidx145.2 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 2
  %89 = ptrtoint ptr %arrayidx145.2 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx145.2, align 8
  %call146.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.2, i32 noundef %sub143.2, ptr noundef nonnull @.str.26, i64 noundef %90) #7
  %add147.2 = add i32 %call146.2, %add147.1
  %add.ptr142.3 = getelementptr i8, ptr %call7.i.i, i32 %add147.2
  %sub143.3 = sub i32 8192, %add147.2
  %arrayidx145.3 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 3
  %91 = ptrtoint ptr %arrayidx145.3 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx145.3, align 8
  %call146.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.3, i32 noundef %sub143.3, ptr noundef nonnull @.str.26, i64 noundef %92) #7
  %add147.3 = add i32 %call146.3, %add147.2
  %add.ptr142.4 = getelementptr i8, ptr %call7.i.i, i32 %add147.3
  %sub143.4 = sub i32 8192, %add147.3
  %arrayidx145.4 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 4
  %93 = ptrtoint ptr %arrayidx145.4 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx145.4, align 8
  %call146.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.4, i32 noundef %sub143.4, ptr noundef nonnull @.str.26, i64 noundef %94) #7
  %add147.4 = add i32 %call146.4, %add147.3
  %add.ptr142.5 = getelementptr i8, ptr %call7.i.i, i32 %add147.4
  %sub143.5 = sub i32 8192, %add147.4
  %arrayidx145.5 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 5
  %95 = ptrtoint ptr %arrayidx145.5 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx145.5, align 8
  %call146.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.5, i32 noundef %sub143.5, ptr noundef nonnull @.str.26, i64 noundef %96) #7
  %add147.5 = add i32 %call146.5, %add147.4
  %add.ptr142.6 = getelementptr i8, ptr %call7.i.i, i32 %add147.5
  %sub143.6 = sub i32 8192, %add147.5
  %arrayidx145.6 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 6
  %97 = ptrtoint ptr %arrayidx145.6 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx145.6, align 8
  %call146.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.6, i32 noundef %sub143.6, ptr noundef nonnull @.str.26, i64 noundef %98) #7
  %add147.6 = add i32 %call146.6, %add147.5
  %add.ptr142.7 = getelementptr i8, ptr %call7.i.i, i32 %add147.6
  %sub143.7 = sub i32 8192, %add147.6
  %arrayidx145.7 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 7
  %99 = ptrtoint ptr %arrayidx145.7 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx145.7, align 8
  %call146.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.7, i32 noundef %sub143.7, ptr noundef nonnull @.str.26, i64 noundef %100) #7
  %add147.7 = add i32 %call146.7, %add147.6
  %add.ptr142.8 = getelementptr i8, ptr %call7.i.i, i32 %add147.7
  %sub143.8 = sub i32 8192, %add147.7
  %arrayidx145.8 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 8
  %101 = ptrtoint ptr %arrayidx145.8 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx145.8, align 8
  %call146.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.8, i32 noundef %sub143.8, ptr noundef nonnull @.str.26, i64 noundef %102) #7
  %add147.8 = add i32 %call146.8, %add147.7
  %add.ptr142.9 = getelementptr i8, ptr %call7.i.i, i32 %add147.8
  %sub143.9 = sub i32 8192, %add147.8
  %arrayidx145.9 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 9
  %103 = ptrtoint ptr %arrayidx145.9 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx145.9, align 8
  %call146.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.9, i32 noundef %sub143.9, ptr noundef nonnull @.str.26, i64 noundef %104) #7
  %add147.9 = add i32 %call146.9, %add147.8
  %add.ptr142.10 = getelementptr i8, ptr %call7.i.i, i32 %add147.9
  %sub143.10 = sub i32 8192, %add147.9
  %arrayidx145.10 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 10
  %105 = ptrtoint ptr %arrayidx145.10 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx145.10, align 8
  %call146.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.10, i32 noundef %sub143.10, ptr noundef nonnull @.str.26, i64 noundef %106) #7
  %add147.10 = add i32 %call146.10, %add147.9
  %add.ptr142.11 = getelementptr i8, ptr %call7.i.i, i32 %add147.10
  %sub143.11 = sub i32 8192, %add147.10
  %arrayidx145.11 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0354, i32 11
  %107 = ptrtoint ptr %arrayidx145.11 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx145.11, align 8
  %call146.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.11, i32 noundef %sub143.11, ptr noundef nonnull @.str.26, i64 noundef %108) #7
  %add147.11 = add i32 %call146.11, %add147.10
  %add.ptr151 = getelementptr i8, ptr %call7.i.i, i32 %add147.11
  %sub152 = sub i32 8192, %add147.11
  %call153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151, i32 noundef %sub152, ptr noundef nonnull @.str.18) #7
  %add154 = add i32 %call153, %add147.11
  %inc156 = add nuw nsw i32 %j.0354, 1
  %exitcond358.not = icmp eq i32 %inc156, 2
  br i1 %exitcond358.not, label %for.inc158, label %for.end69.for.body8_crit_edge

for.end69.for.body8_crit_edge:                    ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.inc158:                                       ; preds = %for.end69
  %inc159 = add nuw nsw i32 %k.0356, 1
  %exitcond359.not = icmp eq i32 %inc159, 4
  br i1 %exitcond359.not, label %for.end160, label %for.inc158.for.cond6.preheader_crit_edge

for.inc158.for.cond6.preheader_crit_edge:         ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.end160:                                       ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr161 = getelementptr i8, ptr %call7.i.i, i32 %add154
  %sub162 = sub i32 8192, %add154
  %109 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx_stats, align 8
  %tx_duration = getelementptr inbounds %struct.ath11k_htt_tx_stats, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %tx_duration to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %tx_duration, align 8
  %call164 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr161, i32 noundef %sub162, ptr noundef nonnull @.str.27, i64 noundef %112) #7
  %add165 = add i32 %call164, %add154
  %add.ptr166 = getelementptr i8, ptr %call7.i.i, i32 %add165
  %sub167 = sub i32 8192, %add165
  %113 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tx_stats, align 8
  %ba_fails = getelementptr inbounds %struct.ath11k_htt_tx_stats, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %ba_fails to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ba_fails, align 8
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166, i32 noundef %sub167, ptr noundef nonnull @.str.28, i64 noundef %116) #7
  %add170 = add i32 %call169, %add165
  %add.ptr171 = getelementptr i8, ptr %call7.i.i, i32 %add170
  %sub172 = sub i32 8192, %add170
  %117 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_stats, align 8
  %ack_fails = getelementptr inbounds %struct.ath11k_htt_tx_stats, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %ack_fails to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %ack_fails, align 8
  %call174 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr171, i32 noundef %sub172, ptr noundef nonnull @.str.29, i64 noundef %120) #7
  %add175 = add i32 %call174, %add170
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #7
  %121 = tail call i32 @llvm.smin.i32(i32 %add175, i32 8192)
  %call180 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %121) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end160, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call180, %for.end160 ], [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_dump_rx_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  %rx_stats2 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 7
  %6 = ptrtoint ptr %rx_stats2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_stats2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4096) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %10, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #7
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.30) #7
  %add.ptr8 = getelementptr i8, ptr %call7.i.i, i32 %call7
  %sub9 = sub i32 4096, %call7
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %7, align 8
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.31, i64 noundef %12) #7
  %add11 = add i32 %call10, %call7
  %add.ptr12 = getelementptr i8, ptr %call7.i.i, i32 %add11
  %sub13 = sub i32 4096, %add11
  %tcp_msdu_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %tcp_msdu_count to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tcp_msdu_count, align 8
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.32, i64 noundef %14) #7
  %add15 = add i32 %call14, %add11
  %add.ptr16 = getelementptr i8, ptr %call7.i.i, i32 %add15
  %sub17 = sub i32 4096, %add15
  %udp_msdu_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %udp_msdu_count to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %udp_msdu_count, align 8
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.33, i64 noundef %16) #7
  %add19 = add i32 %call18, %add15
  %add.ptr20 = getelementptr i8, ptr %call7.i.i, i32 %add19
  %sub21 = sub i32 4096, %add19
  %ampdu_msdu_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 6
  %17 = ptrtoint ptr %ampdu_msdu_count to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ampdu_msdu_count, align 8
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.34, i64 noundef %18) #7
  %add23 = add i32 %call22, %add19
  %add.ptr24 = getelementptr i8, ptr %call7.i.i, i32 %add23
  %sub25 = sub i32 4096, %add23
  %non_ampdu_msdu_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 7
  %19 = ptrtoint ptr %non_ampdu_msdu_count to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %non_ampdu_msdu_count, align 8
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.35, i64 noundef %20) #7
  %add27 = add i32 %call26, %add23
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub29 = sub i32 4096, %add27
  %stbc_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 8
  %21 = ptrtoint ptr %stbc_count to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stbc_count, align 8
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.36, i64 noundef %22) #7
  %add31 = add i32 %call30, %add27
  %add.ptr32 = getelementptr i8, ptr %call7.i.i, i32 %add31
  %sub33 = sub i32 4096, %add31
  %beamformed_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 9
  %23 = ptrtoint ptr %beamformed_count to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %beamformed_count, align 8
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.37, i64 noundef %24) #7
  %add35 = add i32 %call34, %add31
  %add.ptr36 = getelementptr i8, ptr %call7.i.i, i32 %add35
  %sub37 = sub i32 4096, %add35
  %num_mpdu_fcs_ok = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %num_mpdu_fcs_ok to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %num_mpdu_fcs_ok, align 8
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.38, i64 noundef %26) #7
  %add39 = add i32 %call38, %add35
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub41 = sub i32 4096, %add39
  %num_mpdu_fcs_err = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %num_mpdu_fcs_err to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %num_mpdu_fcs_err, align 8
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.39, i64 noundef %28) #7
  %add43 = add i32 %call42, %add39
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 4096, %add43
  %gi_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 13
  %29 = ptrtoint ptr %gi_count to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %gi_count, align 8
  %arrayidx47 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 13, i32 3
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx51, align 8
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.40, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36) #7
  %add53 = add i32 %call52, %add43
  %add.ptr54 = getelementptr i8, ptr %call7.i.i, i32 %add53
  %sub55 = sub i32 4096, %add53
  %bw_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 12
  %37 = ptrtoint ptr %bw_count to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bw_count, align 8
  %arrayidx58 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx58, align 8
  %arrayidx60 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 12, i32 2
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx60, align 8
  %arrayidx62 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 12, i32 3
  %43 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx62, align 8
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.41, i64 noundef %38, i64 noundef %40, i64 noundef %42, i64 noundef %44) #7
  %add64 = add i32 %call63, %add53
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %add64
  %sub66 = sub i32 4096, %add64
  %coding_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 14
  %45 = ptrtoint ptr %coding_count to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %coding_count, align 8
  %arrayidx69 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 14, i32 1
  %47 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx69, align 8
  %call70 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.42, i64 noundef %46, i64 noundef %48) #7
  %add71 = add i32 %call70, %add64
  %add.ptr72 = getelementptr i8, ptr %call7.i.i, i32 %add71
  %sub73 = sub i32 4096, %add71
  %pream_cnt = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 16
  %49 = ptrtoint ptr %pream_cnt to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pream_cnt, align 8
  %arrayidx76 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 16, i32 1
  %51 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx76, align 8
  %arrayidx78 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 16, i32 2
  %53 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx78, align 8
  %arrayidx80 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 16, i32 3
  %55 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 16, i32 4
  %57 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx82, align 8
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.43, i64 noundef %50, i64 noundef %52, i64 noundef %54, i64 noundef %56, i64 noundef %58) #7
  %add84 = add i32 %call83, %add71
  %add.ptr85 = getelementptr i8, ptr %call7.i.i, i32 %add84
  %sub86 = sub i32 4096, %add84
  %reception_type = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 17
  %59 = ptrtoint ptr %reception_type to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %reception_type, align 8
  %arrayidx89 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 17, i32 1
  %61 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx89, align 8
  %arrayidx91 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 17, i32 2
  %63 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx91, align 8
  %arrayidx93 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 17, i32 3
  %65 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx93, align 8
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.44, i64 noundef %60, i64 noundef %62, i64 noundef %64, i64 noundef %66) #7
  %add95 = add i32 %call94, %add84
  %add.ptr96 = getelementptr i8, ptr %call7.i.i, i32 %add95
  %sub97 = sub i32 4096, %add95
  %call98 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.45) #7
  %add99 = add i32 %add95, %call98
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %i.0324 = phi i32 [ 0, %if.end6 ], [ %inc, %for.body.for.body_crit_edge ]
  %len.0323 = phi i32 [ %add99, %if.end6 ], [ %add104, %for.body.for.body_crit_edge ]
  %add.ptr100 = getelementptr i8, ptr %call7.i.i, i32 %len.0323
  %sub101 = sub i32 4096, %len.0323
  %arrayidx102 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 15, i32 %i.0324
  %67 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx102, align 8
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.26, i64 noundef %68) #7
  %add104 = add i32 %call103, %len.0323
  %inc = add nuw nsw i32 %i.0324, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr105 = getelementptr i8, ptr %call7.i.i, i32 %add104
  %sub106 = sub i32 4096, %add104
  %call107 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105, i32 noundef %sub106, ptr noundef nonnull @.str.46) #7
  %add108 = add i32 %call107, %add104
  %add.ptr112 = getelementptr i8, ptr %call7.i.i, i32 %add108
  %sub113 = sub i32 4096, %add108
  %arrayidx114 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 0
  %69 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx114, align 8
  %call115 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112, i32 noundef %sub113, ptr noundef nonnull @.str.26, i64 noundef %70) #7
  %add116 = add i32 %call115, %add108
  %add.ptr112.1 = getelementptr i8, ptr %call7.i.i, i32 %add116
  %sub113.1 = sub i32 4096, %add116
  %arrayidx114.1 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %arrayidx114.1 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx114.1, align 8
  %call115.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.1, i32 noundef %sub113.1, ptr noundef nonnull @.str.26, i64 noundef %72) #7
  %add116.1 = add i32 %call115.1, %add116
  %add.ptr112.2 = getelementptr i8, ptr %call7.i.i, i32 %add116.1
  %sub113.2 = sub i32 4096, %add116.1
  %arrayidx114.2 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 2
  %73 = ptrtoint ptr %arrayidx114.2 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx114.2, align 8
  %call115.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.2, i32 noundef %sub113.2, ptr noundef nonnull @.str.26, i64 noundef %74) #7
  %add116.2 = add i32 %call115.2, %add116.1
  %add.ptr112.3 = getelementptr i8, ptr %call7.i.i, i32 %add116.2
  %sub113.3 = sub i32 4096, %add116.2
  %arrayidx114.3 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 3
  %75 = ptrtoint ptr %arrayidx114.3 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx114.3, align 8
  %call115.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.3, i32 noundef %sub113.3, ptr noundef nonnull @.str.26, i64 noundef %76) #7
  %add116.3 = add i32 %call115.3, %add116.2
  %add.ptr112.4 = getelementptr i8, ptr %call7.i.i, i32 %add116.3
  %sub113.4 = sub i32 4096, %add116.3
  %arrayidx114.4 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 4
  %77 = ptrtoint ptr %arrayidx114.4 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx114.4, align 8
  %call115.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.4, i32 noundef %sub113.4, ptr noundef nonnull @.str.26, i64 noundef %78) #7
  %add116.4 = add i32 %call115.4, %add116.3
  %add.ptr112.5 = getelementptr i8, ptr %call7.i.i, i32 %add116.4
  %sub113.5 = sub i32 4096, %add116.4
  %arrayidx114.5 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 5
  %79 = ptrtoint ptr %arrayidx114.5 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx114.5, align 8
  %call115.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.5, i32 noundef %sub113.5, ptr noundef nonnull @.str.26, i64 noundef %80) #7
  %add116.5 = add i32 %call115.5, %add116.4
  %add.ptr112.6 = getelementptr i8, ptr %call7.i.i, i32 %add116.5
  %sub113.6 = sub i32 4096, %add116.5
  %arrayidx114.6 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 6
  %81 = ptrtoint ptr %arrayidx114.6 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx114.6, align 8
  %call115.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.6, i32 noundef %sub113.6, ptr noundef nonnull @.str.26, i64 noundef %82) #7
  %add116.6 = add i32 %call115.6, %add116.5
  %add.ptr112.7 = getelementptr i8, ptr %call7.i.i, i32 %add116.6
  %sub113.7 = sub i32 4096, %add116.6
  %arrayidx114.7 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 7
  %83 = ptrtoint ptr %arrayidx114.7 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx114.7, align 8
  %call115.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.7, i32 noundef %sub113.7, ptr noundef nonnull @.str.26, i64 noundef %84) #7
  %add116.7 = add i32 %call115.7, %add116.6
  %add.ptr112.8 = getelementptr i8, ptr %call7.i.i, i32 %add116.7
  %sub113.8 = sub i32 4096, %add116.7
  %arrayidx114.8 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 8
  %85 = ptrtoint ptr %arrayidx114.8 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx114.8, align 8
  %call115.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.8, i32 noundef %sub113.8, ptr noundef nonnull @.str.26, i64 noundef %86) #7
  %add116.8 = add i32 %call115.8, %add116.7
  %add.ptr112.9 = getelementptr i8, ptr %call7.i.i, i32 %add116.8
  %sub113.9 = sub i32 4096, %add116.8
  %arrayidx114.9 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 9
  %87 = ptrtoint ptr %arrayidx114.9 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx114.9, align 8
  %call115.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.9, i32 noundef %sub113.9, ptr noundef nonnull @.str.26, i64 noundef %88) #7
  %add116.9 = add i32 %call115.9, %add116.8
  %add.ptr112.10 = getelementptr i8, ptr %call7.i.i, i32 %add116.9
  %sub113.10 = sub i32 4096, %add116.9
  %arrayidx114.10 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 10
  %89 = ptrtoint ptr %arrayidx114.10 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx114.10, align 8
  %call115.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.10, i32 noundef %sub113.10, ptr noundef nonnull @.str.26, i64 noundef %90) #7
  %add116.10 = add i32 %call115.10, %add116.9
  %add.ptr112.11 = getelementptr i8, ptr %call7.i.i, i32 %add116.10
  %sub113.11 = sub i32 4096, %add116.10
  %arrayidx114.11 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 11
  %91 = ptrtoint ptr %arrayidx114.11 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx114.11, align 8
  %call115.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.11, i32 noundef %sub113.11, ptr noundef nonnull @.str.26, i64 noundef %92) #7
  %add116.11 = add i32 %call115.11, %add116.10
  %add.ptr112.12 = getelementptr i8, ptr %call7.i.i, i32 %add116.11
  %sub113.12 = sub i32 4096, %add116.11
  %arrayidx114.12 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 10, i32 12
  %93 = ptrtoint ptr %arrayidx114.12 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx114.12, align 8
  %call115.12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.12, i32 noundef %sub113.12, ptr noundef nonnull @.str.26, i64 noundef %94) #7
  %add116.12 = add i32 %call115.12, %add116.11
  %add.ptr120 = getelementptr i8, ptr %call7.i.i, i32 %add116.12
  %sub121 = sub i32 4096, %add116.12
  %call122 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.47) #7
  %add123 = add i32 %call122, %add116.12
  %add.ptr127 = getelementptr i8, ptr %call7.i.i, i32 %add123
  %sub128 = sub i32 4096, %add123
  %arrayidx129 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 0
  %95 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx129, align 8
  %call130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127, i32 noundef %sub128, ptr noundef nonnull @.str.26, i64 noundef %96) #7
  %add131 = add i32 %call130, %add123
  %add.ptr127.1 = getelementptr i8, ptr %call7.i.i, i32 %add131
  %sub128.1 = sub i32 4096, %add131
  %arrayidx129.1 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 1
  %97 = ptrtoint ptr %arrayidx129.1 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx129.1, align 8
  %call130.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.1, i32 noundef %sub128.1, ptr noundef nonnull @.str.26, i64 noundef %98) #7
  %add131.1 = add i32 %call130.1, %add131
  %add.ptr127.2 = getelementptr i8, ptr %call7.i.i, i32 %add131.1
  %sub128.2 = sub i32 4096, %add131.1
  %arrayidx129.2 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 2
  %99 = ptrtoint ptr %arrayidx129.2 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx129.2, align 8
  %call130.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.2, i32 noundef %sub128.2, ptr noundef nonnull @.str.26, i64 noundef %100) #7
  %add131.2 = add i32 %call130.2, %add131.1
  %add.ptr127.3 = getelementptr i8, ptr %call7.i.i, i32 %add131.2
  %sub128.3 = sub i32 4096, %add131.2
  %arrayidx129.3 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 3
  %101 = ptrtoint ptr %arrayidx129.3 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx129.3, align 8
  %call130.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.3, i32 noundef %sub128.3, ptr noundef nonnull @.str.26, i64 noundef %102) #7
  %add131.3 = add i32 %call130.3, %add131.2
  %add.ptr127.4 = getelementptr i8, ptr %call7.i.i, i32 %add131.3
  %sub128.4 = sub i32 4096, %add131.3
  %arrayidx129.4 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 4
  %103 = ptrtoint ptr %arrayidx129.4 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx129.4, align 8
  %call130.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.4, i32 noundef %sub128.4, ptr noundef nonnull @.str.26, i64 noundef %104) #7
  %add131.4 = add i32 %call130.4, %add131.3
  %add.ptr127.5 = getelementptr i8, ptr %call7.i.i, i32 %add131.4
  %sub128.5 = sub i32 4096, %add131.4
  %arrayidx129.5 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 5
  %105 = ptrtoint ptr %arrayidx129.5 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx129.5, align 8
  %call130.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.5, i32 noundef %sub128.5, ptr noundef nonnull @.str.26, i64 noundef %106) #7
  %add131.5 = add i32 %call130.5, %add131.4
  %add.ptr127.6 = getelementptr i8, ptr %call7.i.i, i32 %add131.5
  %sub128.6 = sub i32 4096, %add131.5
  %arrayidx129.6 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 6
  %107 = ptrtoint ptr %arrayidx129.6 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx129.6, align 8
  %call130.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.6, i32 noundef %sub128.6, ptr noundef nonnull @.str.26, i64 noundef %108) #7
  %add131.6 = add i32 %call130.6, %add131.5
  %add.ptr127.7 = getelementptr i8, ptr %call7.i.i, i32 %add131.6
  %sub128.7 = sub i32 4096, %add131.6
  %arrayidx129.7 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 11, i32 7
  %109 = ptrtoint ptr %arrayidx129.7 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx129.7, align 8
  %call130.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.7, i32 noundef %sub128.7, ptr noundef nonnull @.str.26, i64 noundef %110) #7
  %add131.7 = add i32 %call130.7, %add131.6
  %add.ptr135 = getelementptr i8, ptr %call7.i.i, i32 %add131.7
  %sub136 = sub i32 4096, %add131.7
  %rx_duration = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 18
  %111 = ptrtoint ptr %rx_duration to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rx_duration, align 8
  %call137 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr135, i32 noundef %sub136, ptr noundef nonnull @.str.48, i64 noundef %112) #7
  %add138 = add i32 %call137, %add131.7
  %add.ptr139 = getelementptr i8, ptr %call7.i.i, i32 %add138
  %sub140 = sub i32 4096, %add138
  %dcm_count = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 19
  %113 = ptrtoint ptr %dcm_count to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %dcm_count, align 8
  %ru_alloc_cnt = getelementptr inbounds %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 20
  %115 = ptrtoint ptr %ru_alloc_cnt to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ru_alloc_cnt, align 8
  %arrayidx143 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 20, i32 1
  %117 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx143, align 8
  %arrayidx145 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 20, i32 2
  %119 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx145, align 8
  %arrayidx147 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 20, i32 3
  %121 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx147, align 8
  %arrayidx149 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 20, i32 4
  %123 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx149, align 8
  %arrayidx151 = getelementptr %struct.ath11k_rx_peer_stats, ptr %7, i32 0, i32 20, i32 5
  %125 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx151, align 8
  %call152 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr139, i32 noundef %sub140, ptr noundef nonnull @.str.49, i64 noundef %114, i64 noundef %116, i64 noundef %118, i64 noundef %120, i64 noundef %122, i64 noundef %124, i64 noundef %126) #7
  %add153 = add i32 %call152, %add138
  %add.ptr154 = getelementptr i8, ptr %call7.i.i, i32 %add153
  %sub155 = sub i32 4096, %add153
  %call156 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr154, i32 noundef %sub155, ptr noundef nonnull @.str.18) #7
  %add157 = add i32 %add153, %call156
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %5, align 8
  %base_lock159 = getelementptr inbounds %struct.ath11k_base, ptr %128, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock159) #7
  %129 = tail call i32 @llvm.smin.i32(i32 %add157, i32 4096)
  %call163 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %129) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call163, %for.end ], [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_read_htt_peer_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buf_len = getelementptr inbounds %struct.debug_htt_stats_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_len, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 524288)
  %buf1 = getelementptr inbounds %struct.debug_htt_stats_req, ptr %1, i32 0, i32 6
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %buf1, i32 noundef %4) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_open_htt_peer_stats(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  %htt_stats = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 1
  %6 = ptrtoint ptr %htt_stats to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htt_stats, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %entry.cleanup_crit_edge [
    i8 11, label %entry.if.end_crit_edge
    i8 29, label %entry.if.end_crit_edge46
  ]

entry.if.end_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge46
  %call = tail call noalias ptr @vzalloc(i32 noundef 524360) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %stats_req12 = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 1, i32 2
  %9 = ptrtoint ptr %stats_req12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %stats_req12, align 4
  %type14 = getelementptr inbounds %struct.debug_htt_stats_req, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %type14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %type14, align 2
  %peer_addr = getelementptr inbounds %struct.debug_htt_stats_req, ptr %call, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %peer_addr, ptr %addr, i32 6)
  %call17 = tail call i32 @ath11k_debugfs_htt_stats_req(ptr noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp slt i32 %call17, 0
  br i1 %cmp19, label %out, label %if.end22

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

out:                                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfree(ptr noundef nonnull %call) #7
  %13 = ptrtoint ptr %stats_req12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %stats_req12, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out ], [ 0, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_release_htt_peer_stats(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %7) #7
  %stats_req = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 1, i32 2
  %8 = ptrtoint ptr %stats_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %stats_req, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_debugfs_htt_stats_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_read_peer_pktlog(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #7
  %6 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %pktlog_peer_valid = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 9
  %7 = ptrtoint ptr %pktlog_peer_valid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pktlog_peer_valid, align 8
  %pktlog_peer_addr = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 10
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %8, ptr noundef %pktlog_peer_addr) #7
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_write_peer_pktlog(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #7
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %enable, align 4, !annotation !162
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable, align 4
  %pktlog_peer_valid = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 9
  %11 = ptrtoint ptr %pktlog_peer_valid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pktlog_peer_valid, align 8
  %pktlog_peer_addr = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 68, i32 10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %pktlog_peer_addr, ptr %addr, i32 6)
  %conv = trunc i32 %10 to i8
  %call9 = call i32 @ath11k_wmi_pdev_peer_pktlog_filter(ptr noundef %5, ptr noundef %addr, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body, label %if.then11

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %14, ptr noundef nonnull @.str.51, ptr noundef %addr, i32 noundef %call9) #7
  br label %out

do.body:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %15 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %do.body.if.then18_crit_edge

do.body.if.then18_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_dbg_sta_write_peer_pktlog, %if.then18)) #7
          to label %out [label %if.then18], !srcloc !163

if.then18:                                        ; preds = %lor.lhs.false, %do.body.if.then18_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable, align 4
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %17, i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef %19) #7
  br label %out

out:                                              ; preds = %if.then18, %lor.lhs.false, %if.then11, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call9, %if.then11 ], [ -100, %entry.out_crit_edge ], [ %count, %if.then18 ], [ %count, %lor.lhs.false ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_pdev_peer_pktlog_filter(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_read_aggr_mode(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %6 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 9
  %7 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aggr_mode, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  %cond = select i1 %cmp, ptr @.str.54, ptr @.str.55
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #7
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_write_aggr_mode(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %aggr_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aggr_mode) #7
  %6 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %aggr_mode, align 4, !annotation !162
  %call = call i32 @kstrtouint_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %aggr_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aggr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4.not = icmp eq i32 %10, 1
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end3
  %11 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aggr_mode, align 4
  %aggr_mode5 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 9
  %13 = ptrtoint ptr %aggr_mode5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aggr_mode5, align 8, !range !161
  %15 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp7 = icmp eq i32 %12, %15
  br i1 %cmp7, label %lor.lhs.false.out_crit_edge, label %if.end10

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_priv, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %call13 = call i32 @ath11k_wmi_addba_clear_resp(ptr noundef %5, i32 noundef %19, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %21, ptr noundef nonnull @.str.58, i32 noundef %call13) #7
  br label %out

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aggr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17 = icmp ne i32 %23, 0
  %frombool = zext i1 %tobool17 to i8
  %24 = ptrtoint ptr %aggr_mode5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %aggr_mode5, align 8
  br label %out

out:                                              ; preds = %if.end16, %if.then15, %lor.lhs.false.out_crit_edge, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then15 ], [ 0, %if.end16 ], [ %count, %lor.lhs.false.out_crit_edge ], [ %count, %if.end3.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aggr_mode) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_addba_clear_resp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_write_addba(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %buf_size = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #7
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_size) #7
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf_size, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %8 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.59, ptr noundef nonnull %tid, ptr noundef nonnull %buf_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 2
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp8 = icmp ugt i32 %10, 15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp11.not = icmp eq i32 %12, 1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 9
  %13 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aggr_mode, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp12.not = icmp eq i8 %14, 1
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tid, align 4
  %21 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_size, align 4
  %call18 = call i32 @ath11k_wmi_addba_send(ptr noundef %5, i32 noundef %18, ptr noundef %addr, i32 noundef %20, i32 noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.out_crit_edge, label %if.then20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_priv, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tid, align 4
  %31 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_size, align 4
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %24, ptr noundef nonnull @.str.60, i32 noundef %28, ptr noundef %addr, i32 noundef %30, i32 noundef %32) #7
  br label %out

out:                                              ; preds = %if.then20, %if.end15.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_addba_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_write_addba_resp(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %status = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #7
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %status, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %8 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.59, ptr noundef nonnull %tid, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 2
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp8 = icmp ugt i32 %10, 15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp11.not = icmp eq i32 %12, 1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 9
  %13 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aggr_mode, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp12.not = icmp eq i8 %14, 1
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tid, align 4
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %call18 = call i32 @ath11k_wmi_addba_set_resp(ptr noundef %5, i32 noundef %18, ptr noundef %addr, i32 noundef %20, i32 noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.out_crit_edge, label %if.then20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_priv, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tid, align 4
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %24, ptr noundef nonnull @.str.61, i32 noundef %28, ptr noundef %addr, i32 noundef %30, i32 noundef %32) #7
  br label %out

out:                                              ; preds = %if.then20, %if.end15.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_addba_set_resp(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dbg_sta_write_delba(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %initiator = alloca i32, align 4
  %reason = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #7
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initiator) #7
  %7 = ptrtoint ptr %initiator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %initiator, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reason) #7
  %8 = ptrtoint ptr %reason to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reason, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %9 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.62, ptr noundef nonnull %tid, ptr noundef nonnull %initiator, ptr noundef nonnull %reason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 3
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp8 = icmp ugt i32 %11, 15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11.not = icmp eq i32 %13, 1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 9
  %14 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aggr_mode, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp12.not = icmp eq i8 %15, 1
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_priv, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tid, align 4
  %22 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %initiator, align 4
  %24 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reason, align 4
  %call18 = call i32 @ath11k_wmi_delba_send(ptr noundef %5, i32 noundef %19, ptr noundef %addr, i32 noundef %21, i32 noundef %23, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.out_crit_edge, label %if.then20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 8
  %28 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv_priv, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tid, align 4
  %34 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %initiator, align 4
  %36 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reason, align 4
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %27, ptr noundef nonnull @.str.63, i32 noundef %31, ptr noundef %addr, i32 noundef %33, i32 noundef %35, i32 noundef %37) #7
  br label %out

out:                                              ; preds = %if.then20, %if.end15.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reason) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initiator) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_delba_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_htt_peer_stats_reset(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %cfg_params = alloca %struct.htt_ext_stats_cfg_params, align 4
  %type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath11k_vif, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg_params) #7
  %6 = getelementptr inbounds i8, ptr %cfg_params, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #7
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %type, align 1, !annotation !162
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %5, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #7
  %11 = ptrtoint ptr %cfg_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %cfg_params, align 4
  %cfg1 = getelementptr inbounds %struct.htt_ext_stats_cfg_params, ptr %cfg_params, i32 0, i32 1
  %12 = ptrtoint ptr %cfg1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 127, ptr %cfg1, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr, align 4
  %conv41 = zext i8 %14 to i32
  %cfg2 = getelementptr inbounds %struct.htt_ext_stats_cfg_params, ptr %cfg_params, i32 0, i32 2
  %15 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg2, align 4
  %or43 = or i32 %16, %conv41
  %arrayidx52 = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx52, align 1
  %conv73 = zext i8 %18 to i32
  %shl74 = shl nuw nsw i32 %conv73, 8
  %or77 = or i32 %shl74, %or43
  %arrayidx86 = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx86, align 2
  %conv107 = zext i8 %20 to i32
  %shl108 = shl nuw nsw i32 %conv107, 16
  %or111 = or i32 %shl108, %or77
  %arrayidx120 = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx120, align 1
  %conv141 = zext i8 %22 to i32
  %shl142 = shl nuw i32 %conv141, 24
  %or145 = or i32 %shl142, %or111
  store i32 %or145, ptr %cfg2, align 4
  %arrayidx154 = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx154, align 4
  %conv175 = zext i8 %24 to i32
  %cfg3 = getelementptr inbounds %struct.htt_ext_stats_cfg_params, ptr %cfg_params, i32 0, i32 3
  %25 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cfg3, align 4
  %or178 = or i32 %26, %conv175
  %arrayidx187 = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx187, align 1
  %conv208 = zext i8 %28 to i32
  %shl209 = shl nuw nsw i32 %conv208, 8
  %or212 = or i32 %or178, %shl209
  %or214 = or i32 %or212, 65536
  store i32 %or214, ptr %cfg3, align 4
  %call215 = call i32 @ath11k_dp_tx_htt_h2t_ext_stats_req(ptr noundef %5, i8 noundef zeroext 11, ptr noundef nonnull %cfg_params, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end4.cleanup.sink.split_crit_edge, label %if.then217

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then217:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %30, ptr noundef nonnull @.str.64, i32 noundef %call215) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then217, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call215, %if.then217 ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg_params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_tx_htt_h2t_ext_stats_req(ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 760, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 763, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 766, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 769, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 772, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 773, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 774, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 775, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 779, i32 23}
!18 = !{ptr @fops_tx_stats, !19, !"fops_tx_stats", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 234, i32 37}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 142, i32 56}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 142, i32 64}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 143, i32 14}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 143, i32 23}
!28 = !{ptr @ath11k_dbg_sta_dump_tx_stats.str_name, !29, !"str_name", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 142, i32 21}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 144, i32 53}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 144, i32 62}
!34 = !{ptr @ath11k_dbg_sta_dump_tx_stats.str, !35, !"str", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 144, i32 21}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 162, i32 44}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 166, i32 7}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 170, i32 8}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 172, i32 44}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 174, i32 7}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 181, i32 44}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 188, i32 6}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 190, i32 7}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 194, i32 7}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 200, i32 7}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 207, i32 7}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 210, i32 45}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 217, i32 5}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 220, i32 4}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 222, i32 4}
!66 = !{ptr @fops_rx_stats, !67, !"fops_rx_stats", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 332, i32 37}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 263, i32 42}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 264, i32 42}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 266, i32 42}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 268, i32 42}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 270, i32 42}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 272, i32 42}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 274, i32 42}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 276, i32 42}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 278, i32 42}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 280, i32 42}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 283, i32 5}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 287, i32 5}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 290, i32 42}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 293, i32 5}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 298, i32 5}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 301, i32 42}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 304, i32 42}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 307, i32 42}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 310, i32 42}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 313, i32 5}
!108 = !{ptr @fops_htt_peer_stats, !109, !"fops_htt_peer_stats", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 403, i32 37}
!110 = !{ptr @fops_peer_pktlog, !111, !"fops_peer_pktlog", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 470, i32 37}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 462, i32 36}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 437, i32 23}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 442, i32 2}
!118 = !{ptr @fops_aggr_mode, !119, !"fops_aggr_mode", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 686, i32 37}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 642, i32 4}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 644, i32 4}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 644, i32 13}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 644, i32 23}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 644, i32 35}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 675, i32 23}
!132 = !{ptr @fops_addba, !133, !"fops_addba", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 623, i32 37}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 595, i32 20}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 613, i32 23}
!138 = !{ptr @fops_addba_resp, !139, !"fops_addba_resp", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 572, i32 37}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 563, i32 23}
!142 = !{ptr @fops_delba, !143, !"fops_delba", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 522, i32 37}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 494, i32 20}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 512, i32 23}
!148 = !{ptr @fops_htt_peer_stats_reset, !149, !"fops_htt_peer_stats_reset", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 747, i32 37}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath11k/debugfs_sta.c", i32 735, i32 23}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i8 0, i8 2}
!162 = !{!"auto-init"}
!163 = !{i64 2148333588, i64 2148333593, i64 2148333606, i64 2148333650, i64 2148333684, i64 2148333705}
