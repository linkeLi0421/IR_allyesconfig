; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/dp_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/dp_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.htt_rx_ring_tlv_filter = type { i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hal_tx_info = type { i16, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.101, %struct.anon.102, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.109], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.136, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.137, [0 x i8], [52 x i8] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.109 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.possible_net_t = type { ptr }
%union.anon.132 = type { ptr }
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
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.133, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.135, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.133 = type { ptr, i32, i32 }
%struct.anon.135 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.136 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.137 = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath11k = type { ptr, ptr, ptr, ptr, ptr, %struct.ath11k_pdev_dp, [6 x i8], i32, i32, %struct.ath11k_he, i32, i8, %struct.anon.150, %struct.anon.151, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.completion, %struct.completion, i32, %struct.completion, i32, %struct.completion, %struct.completion, i32, i32, i32, i32, i64, %struct.idr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i8, [101 x %struct.survey_info], %struct.completion, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.ath11k_per_peer_tx_stats, %struct.list_head, i32, %struct.ath11k_per_peer_tx_stats, i32, i32, i32, %struct.ath11k_debug, %struct.ath11k_spectral, i8, %struct.ath11k_thermal, i32, %struct.completion, %struct.completion, i8, i8 }
%struct.ath11k_pdev_dp = type { i32, %struct.atomic_t, %struct.wait_queue_head, %struct.dp_rxdma_ring, [2 x %struct.dp_srng], [2 x %struct.dp_srng], %struct.dp_srng, %struct.dp_srng, %struct.dp_rxdma_ring, [2 x %struct.dp_rxdma_ring], [4 x i8], %struct.ieee80211_rx_status, %struct.ath11k_mon_data }
%struct.dp_rxdma_ring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ath11k_mon_data = type { [8 x %struct.dp_link_desc_bank], %struct.hal_rx_mon_ppdu_info, i32, i32, i64, i16, i8, i32, i32, ptr, %struct.hal_sw_mon_ring_entries, %struct.ath11k_pdev_mon_stats, %struct.spinlock, %struct.sk_buff_head }
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
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
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
%struct.ath11k_vif = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, ptr, ptr, i16, %struct.wmi_wmm_params_all_arg, %struct.list_head, %union.anon.156, i8, i8, i8, i8, i32, [6 x i8], %struct.cfg80211_bitrate_mask, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, %struct.ieee80211_chanctx_conf }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i8, i8, i16, i16, i16, i8 }
%union.anon.156 = type { %struct.anon.158 }
%struct.anon.158 = type { [16 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.141] }
%struct.anon.141 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ath11k_sta = type { ptr, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.rate_info, i32, %struct.rate_info, i64, i64, i8, i8, [4 x i8], ptr, ptr, i8, i8, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.hal_tx_status = type { i32, i32, i8, i32, i32, i8, i8, i16, i32 }
%struct.ath11k_peer = type { %struct.list_head, ptr, i32, [6 x i8], i32, i16, i8, i16, [4 x ptr], [17 x %struct.dp_rx_tid], ptr, i8, i8, i16, i16, i8 }
%struct.dp_rx_tid = type { i8, ptr, i32, i32, i32, i8, i32, i16, i16, %struct.sk_buff_head, ptr, %struct.timer_list, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.hal_wbm_release_ring = type { %struct.ath11k_buffer_addr, i32, i32, i32, %struct.hal_tx_rate_stats, i32 }
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.hal_tx_rate_stats = type { i32, i32 }
%struct.dp_reo_cmd = type { %struct.list_head, %struct.dp_rx_tid, i32, ptr }
%struct.hal_srng_params = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.htt_srng_setup_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.htt_rx_ring_selection_cfg_cmd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.htt_ext_stats_cfg_hdr = type { i8, i8, i8, i8 }
%struct.htt_ext_stats_cfg_cmd = type { %struct.htt_ext_stats_cfg_hdr, i32, i32, i32, i32, i32, i32, i32 }
%struct.htt_ext_stats_cfg_params = type { i32, i32, i32, i32 }
%struct.htt_rx_full_monitor_mode_cfg_cmd = type { i32, i32 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to DMA map data Tx buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dp tx msdu: \00", [19 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to find the peer by id %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid HT mcs index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid VHT mcs index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid HE mcs index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Unable to process some of the tx_status ring desc because status_fifo is full\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tx completion for unknown msdu_id %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s msi_addr_lo:0x%x, msi_addr_hi:0x%x, msi_data:0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ath11k_dp_tx_htt_srng_setup = private unnamed_addr constant [28 x i8] c"ath11k_dp_tx_htt_srng_setup\00", align 1
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ring_id:%d, ring_type:%d, intr_info:0x%x, flags:0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"htt target version request timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unsupported htt major version %d supported version is %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to send htt type stats request: %d\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to setup full monitor %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ath11k_mac_mon_status_filter_default = external dso_local local_unnamed_addr constant %struct.htt_rx_ring_tlv_filter, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown htt tx status %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"htt tx completion for unknown msdu_id %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ath11k_dp_tx_complete_msdu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath11k/dp_tx.c\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported ring type in DP :%d\0A\00", [63 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.ath11k_dp_tx_get_encrypt_type = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 7, i32 6, i32 1, i32 7, i32 7, i32 9, i32 10, i32 8], [56 x i8] zeroinitializer }, align 32
@switch.table.ath11k_dp_tx = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 7, i32 6, i32 1, i32 7, i32 7, i32 9, i32 10, i32 8], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 217, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 267, i32 46 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 435, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 473, i32 20 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 484, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 494, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 655, i32 19 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 687, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 914, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 919, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 965, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 970, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1120, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1140, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 326, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 396, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 332, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 525, i32 6 }
@___asan_gen_.84 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath11k/dp_tx.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 809, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 87, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [43 x i8] c"switch.table.ath11k_dp_tx_get_encrypt_type\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"switch.table.ath11k_dp_tx\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @switch.table.ath11k_dp_tx_get_encrypt_type, ptr @switch.table.ath11k_dp_tx], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_dp_tx_get_encrypt_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_dp_tx to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_dp_tx_get_encrypt_type(i32 noundef %cipher) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %cipher, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 10
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.ath11k_dp_tx_get_encrypt_type, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 7, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx(ptr noundef %ar, ptr nocapture noundef readonly %arvif, ptr noundef readonly %arsta, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  %ti = alloca %struct.hal_tx_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %ti) #7
  %2 = call ptr @memset(ptr %ti, i32 0, i32 52)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !55

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %and = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.rhs, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.rhs:                                         ; preds = %if.end
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %5, align 2
  %13 = and i16 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %13)
  %cmp.i.not = icmp eq i16 %13, 2048
  br i1 %cmp.i.not, label %land.rhs.if.end19_crit_edge, label %land.rhs.cleanup_crit_edge, !prof !55

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %land.rhs.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %14 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %queue_mapping.i, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %conv24 = trunc i32 %19 to i8
  %max_tx_ring = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 41
  %ring_id = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 1
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %.mask = and i16 %15, 3
  %conv124 = zext i16 %.mask to i32
  %shl125 = shl nuw nsw i32 %conv124, 19
  %desc_id = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 2
  %ar.i = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 10
  %encap_type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 4
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 4
  %tobool135.not = icmp eq ptr %arsta, null
  %use_4addr_set = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 19
  %tcl_metadata = getelementptr inbounds %struct.ath11k_sta, ptr %arsta, i32 0, i32 20
  %flags0 = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 9
  %tcl_metadata157 = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 7
  %flags170 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %cipher = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %encrypt_type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 8
  %hal_addr_search_flags = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 8
  %addr_search_flags = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 11
  %search_type = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 9
  %search_type186 = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 15
  %type = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 3
  %pkt_offset = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 7
  %lmac_id = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 36
  %lmac_id187 = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 16
  %ast_hash = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 5
  %bss_ast_hash = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 12
  %ast_idx = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 6
  %bss_ast_idx = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 13
  %dscp_tid_tbl_idx = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 17
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %vif = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 11
  %enable_mesh = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 18
  %flags1 = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 10
  %priority6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %tid = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 14
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %paddr = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 5
  %data_len = getelementptr inbounds %struct.hal_tx_info, ptr %ti, i32 0, i32 6
  %vif343 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %ar344 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 16
  %tx_err361 = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 5
  %misc_fail337 = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 5, i32 1
  br label %tcl_ring_sel

tcl_ring_sel:                                     ; preds = %tcl_ring_sel.backedge, %if.end19
  %ring_selector.0 = phi i8 [ %conv24, %if.end19 ], [ %ring_selector.0.be, %tcl_ring_sel.backedge ]
  %ring_map.0 = phi i32 [ 0, %if.end19 ], [ %or, %tcl_ring_sel.backedge ]
  %20 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_tx_ring, align 1
  %22 = urem i8 %ring_selector.0, %21
  %23 = ptrtoint ptr %ring_id to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ring_id, align 2
  %conv29 = zext i8 %22 to i32
  %shl = shl nuw i32 1, %conv29
  %conv30 = and i32 %ring_map.0, 255
  %or = or i32 %shl, %conv30
  %tx_idr_lock = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 16, i32 %conv29, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_idr_lock) #7
  %txbuf_idr = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 16, i32 %conv29, i32 3
  %call34 = tail call i32 @idr_alloc(ptr noundef %txbuf_idr, ptr noundef %skb, i32 noundef 0, i32 noundef 32767, i32 noundef 2592) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_idr_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.then43, label %do.body57, !prof !56

if.then43:                                        ; preds = %tcl_ring_sel
  %conv44 = and i32 %or, 255
  %24 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_tx_ring, align 1
  %conv47 = zext i8 %25 to i32
  %notmask523 = shl nsw i32 -1, %conv47
  %sub = xor i32 %notmask523, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv44, i32 %sub)
  %cmp49 = icmp eq i32 %conv44, %sub
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %misc_fail337, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %misc_fail337, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %misc_fail337, ptr %misc_fail337, i32 1, ptr elementtype(i32) %misc_fail337) #7, !srcloc !57
  br label %cleanup

if.end52:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i8 %ring_selector.0, 1
  br label %tcl_ring_sel.backedge

tcl_ring_sel.backedge:                            ; preds = %fail_remove_idr.tcl_ring_sel.backedge_crit_edge, %if.end52
  %ring_selector.0.be = phi i8 [ %inc, %if.end52 ], [ %ring_selector.2, %fail_remove_idr.tcl_ring_sel.backedge_crit_edge ]
  br label %tcl_ring_sel

do.body57:                                        ; preds = %tcl_ring_sel
  %27 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pdev_idx, align 4
  %29 = and i8 %28, 3
  %and75 = zext i8 %29 to i32
  %shl98 = shl i32 %call34, 2
  %and99 = and i32 %shl98, 524284
  %or100 = or i32 %and99, %and75
  %or127 = or i32 %or100, %shl125
  %30 = ptrtoint ptr %desc_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or127, ptr %desc_id, align 4
  %31 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ar.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %dev_flags.i, align 4
  %37 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body57.ath11k_dp_tx_get_encap_type.exit_crit_edge

do.body57.ath11k_dp_tx_get_encap_type.exit_crit_edge: ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_dp_tx_get_encap_type.exit

if.end.i:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cb.i, align 8
  %and.i533 = and i32 %39, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i533)
  %tobool3.not.i = icmp eq i32 %and.i533, 0
  %..i = select i1 %tobool3.not.i, i32 1, i32 2
  br label %ath11k_dp_tx_get_encap_type.exit

ath11k_dp_tx_get_encap_type.exit:                 ; preds = %if.end.i, %do.body57.ath11k_dp_tx_get_encap_type.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body57.ath11k_dp_tx_get_encap_type.exit_crit_edge ], [ %..i, %if.end.i ]
  %40 = ptrtoint ptr %encap_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %encap_type, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %5, align 2
  %43 = and i16 %42, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %43)
  %cmp.i534 = icmp eq i16 %43, 3
  br i1 %cmp.i534, label %land.lhs.true, label %ath11k_dp_tx_get_encap_type.exit.if.else_crit_edge

ath11k_dp_tx_get_encap_type.exit.if.else_crit_edge: ; preds = %ath11k_dp_tx_get_encap_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %ath11k_dp_tx_get_encap_type.exit
  %44 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr3, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not = icmp eq i32 %46, 0
  %or.cond526 = or i1 %tobool135.not, %tobool.i.not
  br i1 %or.cond526, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true136

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true136:                                 ; preds = %land.lhs.true
  %47 = ptrtoint ptr %use_4addr_set to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_4addr_set, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool137.not = icmp eq i8 %48, 0
  br i1 %tobool137.not, label %land.lhs.true136.if.else_crit_edge, label %if.then139

land.lhs.true136.if.else_crit_edge:               ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then139:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %tcl_metadata to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tcl_metadata, align 2
  %51 = ptrtoint ptr %ti to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %ti, align 4
  %52 = ptrtoint ptr %flags0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags0, align 4
  %or156 = or i32 %53, 2097152
  store i32 %or156, ptr %flags0, align 4
  br label %if.end159

if.else:                                          ; preds = %land.lhs.true136.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %ath11k_dp_tx_get_encap_type.exit.if.else_crit_edge
  %54 = ptrtoint ptr %tcl_metadata157 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tcl_metadata157, align 4
  %56 = ptrtoint ptr %ti to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %ti, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else, %if.then139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp161 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp161, label %if.then169, label %if.end159.if.end184_crit_edge, !prof !56

if.end159.if.end184_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.then169:                                       ; preds = %if.end159
  %57 = ptrtoint ptr %flags170 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags170, align 1
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool173.not = icmp eq i8 %59, 0
  br i1 %tobool173.not, label %if.else181, label %if.then174

if.then174:                                       ; preds = %if.then169
  %60 = ptrtoint ptr %cipher to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %cipher, align 1
  %switch.tableidx = add i32 %61, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %62 = icmp ult i32 %switch.tableidx, 10
  br i1 %62, label %switch.lookup, label %if.then174.ath11k_dp_tx_get_encrypt_type.exit_crit_edge

if.then174.ath11k_dp_tx_get_encrypt_type.exit_crit_edge: ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_dp_tx_get_encrypt_type.exit

switch.lookup:                                    ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.ath11k_dp_tx, i32 0, i32 %switch.tableidx
  %63 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ath11k_dp_tx_get_encrypt_type.exit

ath11k_dp_tx_get_encrypt_type.exit:               ; preds = %switch.lookup, %if.then174.ath11k_dp_tx_get_encrypt_type.exit_crit_edge
  %retval.0.i535 = phi i32 [ %switch.load, %switch.lookup ], [ 7, %if.then174.ath11k_dp_tx_get_encrypt_type.exit_crit_edge ]
  %64 = ptrtoint ptr %encrypt_type to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i535, ptr %encrypt_type, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %5, align 2
  %67 = and i16 %66, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i536.not = icmp eq i16 %67, 0
  br i1 %cmp.i536.not, label %ath11k_dp_tx_get_encrypt_type.exit.if.end184_crit_edge, label %if.then178

ath11k_dp_tx_get_encrypt_type.exit.if.end184_crit_edge: ; preds = %ath11k_dp_tx_get_encrypt_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.then178:                                       ; preds = %ath11k_dp_tx_get_encrypt_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call179 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #7
  br label %if.end184

if.else181:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %encrypt_type to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 7, ptr %encrypt_type, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.else181, %if.then178, %ath11k_dp_tx_get_encrypt_type.exit.if.end184_crit_edge, %if.end159.if.end184_crit_edge
  %69 = ptrtoint ptr %hal_addr_search_flags to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hal_addr_search_flags, align 2
  %conv185 = zext i8 %70 to i16
  %71 = ptrtoint ptr %addr_search_flags to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv185, ptr %addr_search_flags, align 4
  %72 = ptrtoint ptr %search_type to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %search_type, align 1
  %74 = ptrtoint ptr %search_type186 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %search_type186, align 1
  %75 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %type, align 4
  %76 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %pkt_offset, align 4
  %77 = ptrtoint ptr %lmac_id to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %lmac_id, align 1
  %79 = ptrtoint ptr %lmac_id187 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %lmac_id187, align 4
  %80 = ptrtoint ptr %ast_hash to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %ast_hash, align 4
  %82 = ptrtoint ptr %bss_ast_hash to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %bss_ast_hash, align 2
  %83 = ptrtoint ptr %ast_idx to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %ast_idx, align 2
  %85 = ptrtoint ptr %bss_ast_idx to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %bss_ast_idx, align 4
  %86 = ptrtoint ptr %dscp_tid_tbl_idx to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %dscp_tid_tbl_idx, align 1
  %87 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load = load i16, ptr %ip_summed, align 8
  %88 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %88)
  %cmp189 = icmp eq i16 %88, 1536
  br i1 %cmp189, label %land.rhs191, label %if.end184.if.end289_crit_edge, !prof !55

if.end184.if.end289_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

land.rhs191:                                      ; preds = %if.end184
  %89 = ptrtoint ptr %encap_type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %encap_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp193.not = icmp eq i32 %90, 0
  br i1 %cmp193.not, label %land.rhs191.if.end289_crit_edge, label %do.end217, !prof !56

land.rhs191.if.end289_crit_edge:                  ; preds = %land.rhs191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

do.end217:                                        ; preds = %land.rhs191
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %flags0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags0, align 4
  %or288 = or i32 %92, 2031616
  store i32 %or288, ptr %flags0, align 4
  br label %if.end289

if.end289:                                        ; preds = %do.end217, %land.rhs191.if.end289_crit_edge, %if.end184.if.end289_crit_edge
  %93 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vif, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %96)
  %cmp.i537 = icmp eq i32 %96, 7
  br i1 %cmp.i537, label %if.then291, label %if.end289.do.end307_crit_edge

if.end289.do.end307_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end307

if.then291:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %enable_mesh to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %enable_mesh, align 2
  br label %do.end307

do.end307:                                        ; preds = %if.then291, %if.end289.do.end307_crit_edge
  %98 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags1, align 4
  %or309 = or i32 %99, 2097152
  store i32 %or309, ptr %flags1, align 4
  %100 = ptrtoint ptr %flags170 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags170, align 1
  %102 = and i8 %101, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i538 = icmp eq i8 %102, 0
  br i1 %tobool.not.i538, label %if.else.i, label %do.end307.cleanup.sink.split.i_crit_edge

do.end307.cleanup.sink.split.i_crit_edge:         ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %do.end307
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %104, align 2
  %107 = and i16 %106, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %107)
  %cmp.i.i = icmp eq i16 %107, -30720
  br i1 %cmp.i.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.ath11k_dp_tx_get_tid.exit_crit_edge

if.else.i.ath11k_dp_tx_get_tid.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_dp_tx_get_tid.exit

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %do.end307.cleanup.sink.split.i_crit_edge
  %108 = ptrtoint ptr %priority6.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %priority6.i, align 4
  %110 = trunc i32 %109 to i8
  %conv8.i = and i8 %110, 15
  br label %ath11k_dp_tx_get_tid.exit

ath11k_dp_tx_get_tid.exit:                        ; preds = %cleanup.sink.split.i, %if.else.i.ath11k_dp_tx_get_tid.exit_crit_edge
  %retval.0.i539 = phi i8 [ 16, %if.else.i.ath11k_dp_tx_get_tid.exit_crit_edge ], [ %conv8.i, %cleanup.sink.split.i ]
  %111 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %retval.0.i539, ptr %tid, align 2
  %112 = ptrtoint ptr %encap_type to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %encap_type, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values)
  switch i32 %113, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb312
    i32 2, label %ath11k_dp_tx_get_tid.exit.sw.epilog_crit_edge
  ]

ath11k_dp_tx_get_tid.exit.sw.epilog_crit_edge:    ; preds = %ath11k_dp_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %ath11k_dp_tx_get_tid.exit
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %116, align 2
  %119 = and i16 %118, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %119)
  %cmp.i.i541 = icmp eq i16 %119, -30720
  br i1 %cmp.i.i541, label %if.end.i542, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i542:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %120 = and i16 %118, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %120)
  %cmp.i.i.i = icmp eq i16 %120, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %add.ptr.i = getelementptr i8, ptr %116, i32 2
  %121 = call ptr @memmove(ptr %add.ptr.i, ptr %116, i32 %retval.0.v.i.i)
  %call5.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  %122 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %123, align 2
  %126 = and i16 %125, 32767
  store i16 %126, ptr %123, align 2
  br label %sw.epilog

sw.bb312:                                         ; preds = %ath11k_dp_tx_get_tid.exit
  %127 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %dev_flags, align 4
  %129 = and i32 %128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool315.not = icmp eq i32 %129, 0
  br i1 %tobool315.not, label %sw.bb312.fail_remove_idr_crit_edge, label %sw.bb312.sw.epilog_crit_edge

sw.bb312.sw.epilog_crit_edge:                     ; preds = %sw.bb312
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb312.fail_remove_idr_crit_edge:               ; preds = %sw.bb312
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_remove_idr

sw.default:                                       ; preds = %ath11k_dp_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i530 = tail call zeroext i1 @__kasan_check_write(ptr noundef %misc_fail337, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %misc_fail337, i32 1, i32 3, i32 1) #7
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %misc_fail337, ptr %misc_fail337, i32 1, ptr elementtype(i32) %misc_fail337) #7, !srcloc !57
  br label %fail_remove_idr

sw.epilog:                                        ; preds = %sw.bb312.sw.epilog_crit_edge, %if.end.i542, %sw.bb.sw.epilog_crit_edge, %ath11k_dp_tx_get_tid.exit.sw.epilog_crit_edge
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 8
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 4
  %135 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %134) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %sw.epilog
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !55

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %132) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %132, i32 0, i32 3
  %137 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %132, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %140, %if.end.i.i ], [ %138, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %132, ptr noundef %134, i32 noundef %136) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %141 = load ptr, ptr @mem_map, align 4
  %142 = ptrtoint ptr %134 to i32
  %sub.i = add i32 %142, 1073741824
  %shr.i543 = lshr i32 %sub.i, 12
  %add.ptr.i544 = getelementptr %struct.page, ptr %141, i32 %shr.i543
  %and.i545 = and i32 %142, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %132, ptr noundef %add.ptr.i544, i32 noundef %and.i545, i32 noundef %136, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i546 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %143 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %retval.0.i546, ptr %paddr, align 4
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %145, i32 noundef %retval.0.i546) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i546)
  %cmp.i547 = icmp eq i32 %retval.0.i546, -1
  br i1 %cmp.i547, label %if.then334, label %if.end338

if.then334:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i531 = tail call zeroext i1 @__kasan_check_write(ptr noundef %misc_fail337, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %misc_fail337, i32 1, i32 3, i32 1) #7
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %misc_fail337, ptr %misc_fail337, i32 1, ptr elementtype(i32) %misc_fail337) #7, !srcloc !57
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str) #7
  br label %fail_remove_idr

if.end338:                                        ; preds = %dma_map_single_attrs.exit
  %147 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len, align 4
  %149 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %data_len, align 4
  %150 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %paddr, align 4
  %152 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %151, ptr %3, align 1
  %153 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %vif, align 4
  %155 = ptrtoint ptr %vif343 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store ptr %154, ptr %vif343, align 1
  %156 = ptrtoint ptr %ar344 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store ptr %ar, ptr %ar344, align 1
  %ring_id345 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 16, i32 %conv29, i32 1, i32 5
  %157 = ptrtoint ptr %ring_id345 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ring_id345, align 4
  %idxprom347 = and i32 %158, 255
  %arrayidx348 = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %idxprom347
  %lock = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %idxprom347, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  tail call void @ath11k_hal_srng_access_begin(ptr noundef %1, ptr noundef %arrayidx348) #7
  %call349 = tail call ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef %1, ptr noundef %arrayidx348) #7
  %tobool350.not = icmp eq ptr %call349, null
  br i1 %tobool350.not, label %if.then359, label %if.end390, !prof !56

if.then359:                                       ; preds = %if.end338
  tail call void @ath11k_hal_srng_access_end(ptr noundef %1, ptr noundef %arrayidx348) #7
  %159 = ptrtoint ptr %ring_id to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ring_id, align 2
  %idxprom363 = zext i8 %160 to i32
  %arrayidx364 = getelementptr [3 x i32], ptr %tx_err361, i32 0, i32 %idxprom363
  %161 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx364, align 4
  %inc365 = add i32 %162, 1
  store i32 %inc365, ptr %arrayidx364, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %conv367 = and i32 %or, 255
  %163 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %max_tx_ring, align 1
  %conv370 = zext i8 %164 to i32
  %notmask = shl nsw i32 -1, %conv370
  %sub372 = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv367, i32 %sub372)
  %cmp373.not = icmp eq i32 %conv367, %sub372
  br i1 %cmp373.not, label %if.then359.fail_unmap_dma_crit_edge, label %land.lhs.true381, !prof !55

if.then359.fail_unmap_dma_crit_edge:              ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_unmap_dma

land.lhs.true381:                                 ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %164)
  %cmp385 = icmp ugt i8 %164, 1
  %inc388 = zext i1 %cmp385 to i8
  %spec.select = add i8 %ring_selector.0, %inc388
  br label %fail_unmap_dma

if.end390:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call349, i32 4
  call void @ath11k_hal_tx_cmd_desc_setup(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull %ti) #7
  call void @ath11k_hal_srng_access_end(ptr noundef %1, ptr noundef %arrayidx348) #7
  %165 = ptrtoint ptr %ring_id to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %ring_id, align 2
  %idxprom392 = zext i8 %166 to i32
  %arrayidx393 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 24, i32 %idxprom392
  call void @ath11k_dp_shadow_start_timer(ptr noundef %1, ptr noundef %arrayidx348, ptr noundef %arrayidx393) #7
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data, align 4
  %169 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %len, align 4
  call void @ath11k_dbg_dump(ptr noundef %1, i32 noundef 4096, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %168, i32 noundef %170) #7
  %num_tx_pending = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 5, i32 1
  %call.i.i532 = call zeroext i1 @__kasan_check_write(ptr noundef %num_tx_pending, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %num_tx_pending, i32 1, i32 3, i32 1) #7
  %171 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_tx_pending, ptr %num_tx_pending, i32 1, ptr elementtype(i32) %num_tx_pending) #7, !srcloc !57
  br label %cleanup

fail_unmap_dma:                                   ; preds = %land.lhs.true381, %if.then359.fail_unmap_dma_crit_edge
  %ring_selector.1 = phi i8 [ %ring_selector.0, %if.then359.fail_unmap_dma_crit_edge ], [ %spec.select, %land.lhs.true381 ]
  %tcl_ring_retry.0.off0 = phi i1 [ false, %if.then359.fail_unmap_dma_crit_edge ], [ %cmp385, %land.lhs.true381 ]
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 8
  %174 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %paddr, align 4
  %176 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %data_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %173, i32 noundef %175, i32 noundef %177, i32 noundef 1, i32 noundef 0) #7
  br label %fail_remove_idr

fail_remove_idr:                                  ; preds = %fail_unmap_dma, %if.then334, %sw.default, %sw.bb312.fail_remove_idr_crit_edge
  %ret.0 = phi i32 [ -22, %sw.default ], [ -12, %if.then334 ], [ -12, %fail_unmap_dma ], [ -22, %sw.bb312.fail_remove_idr_crit_edge ]
  %ring_selector.2 = phi i8 [ %ring_selector.0, %sw.default ], [ %ring_selector.0, %if.then334 ], [ %ring_selector.1, %fail_unmap_dma ], [ %ring_selector.0, %sw.bb312.fail_remove_idr_crit_edge ]
  %tcl_ring_retry.1.off0 = phi i1 [ false, %sw.default ], [ false, %if.then334 ], [ %tcl_ring_retry.0.off0, %fail_unmap_dma ], [ false, %sw.bb312.fail_remove_idr_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_idr_lock) #7
  %178 = ptrtoint ptr %desc_id to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %desc_id, align 4
  %and420 = lshr i32 %179, 2
  %shr = and i32 %and420, 131071
  %call421 = tail call ptr @idr_remove(ptr noundef %txbuf_idr, i32 noundef %shr) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_idr_lock) #7
  br i1 %tcl_ring_retry.1.off0, label %fail_remove_idr.tcl_ring_sel.backedge_crit_edge, label %fail_remove_idr.cleanup_crit_edge

fail_remove_idr.cleanup_crit_edge:                ; preds = %fail_remove_idr
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail_remove_idr.tcl_ring_sel.backedge_crit_edge:  ; preds = %fail_remove_idr
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcl_ring_sel.backedge

cleanup:                                          ; preds = %fail_remove_idr.cleanup_crit_edge, %if.end390, %if.then51, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then51 ], [ 0, %if.end390 ], [ -108, %entry.cleanup_crit_edge ], [ -524, %land.rhs.cleanup_crit_edge ], [ %ret.0, %fail_remove_idr.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_tx_cmd_desc_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_shadow_start_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dbg_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_tx_update_txcompl(ptr noundef %ar, ptr nocapture noundef readonly %ts) local_unnamed_addr #1 align 64 {
entry:
  %rate = alloca i16, align 2
  %rate_idx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %cached_stats = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rate) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %rate, align 2, !annotation !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rate_idx) #7
  %3 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rate_idx, align 1, !annotation !59
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #7
  %peer_id = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 7
  %4 = ptrtoint ptr %peer_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %peer_id, align 2
  %conv = zext i16 %5 to i32
  %call = tail call ptr @ath11k_peer_find_by_id(ptr noundef %1, i32 noundef %conv) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %sta2 = getelementptr inbounds %struct.ath11k_peer, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sta2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end11

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %8 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %do.body.if.then8_crit_edge

do.body.if.then8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false5:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_dp_tx_update_txcompl, %if.then8)) #7
          to label %err_out [label %if.then8], !srcloc !60

if.then8:                                         ; preds = %lor.lhs.false5, %do.body.if.then8_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %peer_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %peer_id, align 2
  %conv10 = zext i16 %10 to i32
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.2, i32 noundef %conv10) #7
  br label %err_out

if.end11:                                         ; preds = %lor.lhs.false
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 0, i32 29
  %txrate = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 10
  %11 = call ptr @memset(ptr %txrate, i32 0, i32 10)
  %rate_stats = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 8
  %12 = ptrtoint ptr %rate_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate_stats, align 4
  %and28 = lshr i32 %13, 3
  %shr = and i32 %and28, 15
  %and46 = lshr i32 %13, 11
  %14 = trunc i32 %and46 to i8
  %conv48 = and i8 %14, 15
  %and66 = lshr i32 %13, 9
  %shr67 = and i32 %and66, 3
  %and104 = lshr i32 %13, 16
  %15 = trunc i32 %and104 to i16
  %conv106 = and i16 %15, 4095
  %nss = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 10
  %16 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool127.not = icmp eq i8 %17, 0
  br i1 %tobool127.not, label %if.else, label %if.end11.if.end136_crit_edge

if.end11.if.end136_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %peer_nss = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 22
  %18 = ptrtoint ptr %peer_nss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %peer_nss, align 4
  %conv133 = trunc i32 %19 to i8
  br label %if.end136

if.end136:                                        ; preds = %if.else, %if.end11.if.end136_crit_edge
  %.sink = phi i8 [ %conv133, %if.else ], [ %17, %if.end11.if.end136_crit_edge ]
  %20 = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 14
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %20, align 4
  %22 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr, label %if.end136.if.end224_crit_edge [
    i32 0, label %if.end136.if.then141_crit_edge
    i32 1, label %if.end136.if.then141_crit_edge303
    i32 2, label %if.then152
    i32 3, label %if.then184
    i32 4, label %if.then206
  ]

if.end136.if.then141_crit_edge303:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.end136.if.then141_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.end136.if.end224_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.then141:                                       ; preds = %if.end136.if.then141_crit_edge, %if.end136.if.then141_crit_edge303
  %conv142 = trunc i32 %shr to i8
  %call143 = call i32 @ath11k_mac_hw_ratecode_to_legacy_rate(i8 noundef zeroext %conv48, i8 noundef zeroext %conv142, ptr noundef nonnull %rate_idx, ptr noundef nonnull %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then141.err_out_crit_edge, label %if.end147

if.then141.err_out_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end147:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rate, align 2
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 12
  %25 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %legacy, align 2
  br label %if.end224

if.then152:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv48)
  %cmp154 = icmp ugt i8 %conv48, 7
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  %conv153 = zext i8 %conv48 to i32
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %conv153) #7
  br label %err_out

if.end158:                                        ; preds = %if.then152
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp162.not = icmp eq i8 %27, 0
  br i1 %cmp162.not, label %if.end158.if.end172_crit_edge, label %if.then164

if.end158.if.end172_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then164:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %sub = shl i8 %27, 3
  %mul = add nuw nsw i8 %conv48, -8
  %add = add i8 %mul, %sub
  %mcs171 = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 11
  %28 = ptrtoint ptr %mcs171 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %add, ptr %mcs171, align 1
  br label %if.end172

if.end172:                                        ; preds = %if.then164, %if.end158.if.end172_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr67)
  %tobool174.not = icmp eq i32 %shr67, 0
  %spec.store.select = select i1 %tobool174.not, i8 1, i8 5
  %29 = ptrtoint ptr %txrate to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.store.select, ptr %txrate, align 8
  br label %if.end224

if.then184:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv48)
  %cmp186 = icmp ugt i8 %conv48, 9
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #9
  %conv185 = zext i8 %conv48 to i32
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %conv185) #7
  br label %err_out

if.end190:                                        ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #9
  %mcs192 = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 11
  %30 = ptrtoint ptr %mcs192 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv48, ptr %mcs192, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr67)
  %tobool195.not = icmp eq i32 %shr67, 0
  %spec.store.select301 = select i1 %tobool195.not, i8 2, i8 6
  %31 = ptrtoint ptr %txrate to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.store.select301, ptr %txrate, align 8
  br label %if.end224

if.then206:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv48)
  %cmp208 = icmp ugt i8 %conv48, 11
  br i1 %cmp208, label %if.then210, label %if.end212

if.then210:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  %conv207 = zext i8 %conv48 to i32
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %conv207) #7
  br label %err_out

if.end212:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  %mcs214 = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 11
  %32 = ptrtoint ptr %mcs214 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv48, ptr %mcs214, align 1
  %33 = ptrtoint ptr %txrate to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %txrate, align 8
  %conv217 = trunc i32 %shr67 to i8
  %call218 = tail call i32 @ath11k_mac_he_gi_to_nl80211_he_gi(i8 noundef zeroext %conv217) #7
  %conv219 = trunc i32 %call218 to i8
  %he_gi = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 16
  %34 = ptrtoint ptr %he_gi to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv219, ptr %he_gi, align 2
  br label %if.end224

if.end224:                                        ; preds = %if.end212, %if.end190, %if.end172, %if.end147, %if.end136.if.end224_crit_edge
  %35 = trunc i32 %13 to i8
  %36 = lshr i8 %35, 1
  %conv225 = and i8 %36, 3
  %call226 = call zeroext i8 @ath11k_mac_bw_to_mac80211_bw(i8 noundef zeroext %conv225) #7
  %bw228 = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 15
  %37 = ptrtoint ptr %bw228 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call226, ptr %bw228, align 1
  %38 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool230.not = icmp ne i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp231 = icmp eq i32 %shr, 4
  %or.cond = select i1 %tobool230.not, i1 %cmp231, i1 false
  br i1 %or.cond, label %if.then233, label %if.end224.if.end239_crit_edge

if.end224.if.end239_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end239

if.then233:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %bw228 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 6, ptr %bw228, align 1
  %call236 = call i32 @ath11k_mac_he_ru_tones_to_nl80211_he_ru_alloc(i16 noundef zeroext %conv106) #7
  %conv237 = trunc i32 %call236 to i8
  %he_ru_alloc = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 6, i32 3, i32 18
  %40 = ptrtoint ptr %he_ru_alloc to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv237, ptr %he_ru_alloc, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.then233, %if.end224.if.end239_crit_edge
  %extd_tx_stats.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 2
  %41 = ptrtoint ptr %extd_tx_stats.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %extd_tx_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool241.not = icmp eq i32 %42, 0
  br i1 %tobool241.not, label %if.end239.err_out_crit_edge, label %if.then242

if.end239.err_out_crit_edge:                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.then242:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rate_idx, align 1
  call void @ath11k_debugfs_sta_add_tx_stats(ptr noundef %drv_priv, ptr noundef %cached_stats, i8 noundef zeroext %44) #7
  br label %err_out

err_out:                                          ; preds = %if.then242, %if.end239.err_out_crit_edge, %if.then210, %if.then188, %if.then156, %if.then141.err_out_crit_edge, %if.then8, %lor.lhs.false5
  call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rate_idx) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rate) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_peer_find_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mac_hw_ratecode_to_legacy_rate(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mac_he_gi_to_nl80211_he_gi(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath11k_mac_bw_to_mac80211_bw(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mac_he_ru_tones_to_nl80211_he_ru_alloc(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_debugfs_sta_add_tx_stats(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_tx_completion_handler(ptr noundef %ab, i32 noundef %ring_id) local_unnamed_addr #1 align 64 {
entry:
  %ts = alloca %struct.hal_tx_status, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id
  %ring_id2 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 2, i32 5
  %0 = ptrtoint ptr %ring_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id2, align 4
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %arrayidx3 = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ts) #7
  %2 = getelementptr inbounds i8, ptr %ts, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %lock = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %1, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  tail call void @ath11k_hal_srng_access_begin(ptr noundef %ab, ptr noundef %arrayidx3) #7
  %tx_status_head = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 6
  %tx_status_tail = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 7
  %4 = ptrtoint ptr %tx_status_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_status_head, align 4
  %add181 = add i32 %5, 1
  %rem182 = srem i32 %add181, 32768
  %6 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_status_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem182, i32 %7)
  %cmp.not183 = icmp eq i32 %rem182, %7
  br i1 %cmp.not183, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %tx_status = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %call = tail call ptr @ath11k_hal_srng_dst_get_next_entry(ptr noundef %ab, ptr noundef %arrayidx3) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_status, align 4
  %10 = ptrtoint ptr %tx_status_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_status_head, align 4
  %arrayidx8 = getelementptr %struct.hal_wbm_release_ring, ptr %9, i32 %11
  %12 = call ptr @memcpy(ptr %arrayidx8, ptr %call, i32 32)
  %13 = load i32, ptr %tx_status_head, align 4
  %add10 = add i32 %13, 1
  %rem11 = srem i32 %add10, 32768
  store i32 %rem11, ptr %tx_status_head, align 4
  %add = add nsw i32 %rem11, 1
  %rem = srem i32 %add, 32768
  %14 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_status_tail, align 4
  %cmp.not = icmp eq i32 %rem, %15
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %call13 = tail call ptr @ath11k_hal_srng_dst_peek(ptr noundef %ab, ptr noundef %arrayidx3) #7
  %cmp14.not = icmp eq ptr %call13, null
  br i1 %cmp14.not, label %while.end.if.end_crit_edge, label %land.rhs15

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs15:                                       ; preds = %while.end
  %16 = ptrtoint ptr %tx_status_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_status_head, align 4
  %add17 = add i32 %17, 1
  %rem18 = srem i32 %add17, 32768
  %18 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_status_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem18, i32 %19)
  %cmp20 = icmp eq i32 %rem18, %19
  br i1 %cmp20, label %if.then, label %land.rhs15.if.end_crit_edge, !prof !56

land.rhs15.if.end_crit_edge:                      ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.6) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs15.if.end_crit_edge, %while.end.if.end_crit_edge
  tail call void @ath11k_hal_srng_access_end(ptr noundef %ab, ptr noundef %arrayidx3) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %20 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_status_tail, align 4
  %add27187 = add i32 %21, 1
  %rem28188 = srem i32 %add27187, 32768
  %22 = ptrtoint ptr %tx_status_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_status_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem28188, i32 %23)
  %cmp30.not189 = icmp eq i32 %rem28188, %23
  br i1 %cmp30.not189, label %if.end.while.end120_crit_edge, label %while.body31.lr.ph

if.end.while.end120_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end120

while.body31.lr.ph:                               ; preds = %if.end
  %tx_status37 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 5
  %status.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 1
  %ppdu_id.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 4
  %try_cnt.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 5
  %ack_rssi.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 3
  %peer_id.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 7
  %tid.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 6
  %rate_stats119.i = getelementptr inbounds %struct.hal_tx_status, ptr %ts, i32 0, i32 8
  %tx_idr_lock = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 4
  %txbuf_idr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %ring_id, i32 3
  br label %while.body31

while.body31:                                     ; preds = %cleanup.while.body31_crit_edge, %while.body31.lr.ph
  %rem28190 = phi i32 [ %rem28188, %while.body31.lr.ph ], [ %rem28, %cleanup.while.body31_crit_edge ]
  %24 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem28190, ptr %tx_status_tail, align 4
  %25 = ptrtoint ptr %tx_status37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_status37, align 4
  %arrayidx39 = getelementptr %struct.hal_wbm_release_ring, ptr %26, i32 %rem28190
  %info0.i = getelementptr %struct.hal_wbm_release_ring, ptr %26, i32 %rem28190, i32 1
  %27 = ptrtoint ptr %info0.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %info0.i, align 1
  %and.i = and i32 %28, 7
  %29 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp11.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp11.not.i, label %do.end32.i, label %ath11k_dp_tx_status_parse.exit, !prof !61

do.end32.i:                                       ; preds = %while.body31
  %30 = ptrtoint ptr %info0.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %info0.i, align 1
  %and35.i = lshr i32 %31, 13
  %shr36.i = and i32 %and35.i, 15
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr36.i, ptr %status.i, align 4
  %info1.i = getelementptr %struct.hal_wbm_release_ring, ptr %26, i32 %rem28190, i32 2
  %33 = ptrtoint ptr %info1.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %info1.i, align 1
  %and48.i = and i32 %34, 16777215
  %35 = ptrtoint ptr %ppdu_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and48.i, ptr %ppdu_id.i, align 4
  %and62.i = lshr i32 %34, 24
  %36 = trunc i32 %and62.i to i8
  %conv.i = and i8 %36, 127
  %37 = ptrtoint ptr %try_cnt.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %try_cnt.i, align 4
  %info2.i = getelementptr %struct.hal_wbm_release_ring, ptr %26, i32 %rem28190, i32 3
  %38 = ptrtoint ptr %info2.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %info2.i, align 1
  %conv77.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %ack_rssi.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv77.i, ptr %ack_rssi.i, align 4
  %and79.i = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %do.end32.i.ath11k_dp_tx_status_parse.exit.thread_crit_edge, label %if.then81.i

do.end32.i.ath11k_dp_tx_status_parse.exit.thread_crit_edge: ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_dp_tx_status_parse.exit.thread

if.then81.i:                                      ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %ath11k_dp_tx_status_parse.exit.thread

ath11k_dp_tx_status_parse.exit.thread:            ; preds = %if.then81.i, %do.end32.i.ath11k_dp_tx_status_parse.exit.thread_crit_edge
  %info3.i = getelementptr %struct.hal_wbm_release_ring, ptr %26, i32 %rem28190, i32 5
  %43 = ptrtoint ptr %info3.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %info3.i, align 1
  %conv96.i = trunc i32 %44 to i16
  %45 = ptrtoint ptr %peer_id.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv96.i, ptr %peer_id.i, align 2
  %and109.i = lshr i32 %44, 16
  %46 = trunc i32 %and109.i to i8
  %conv111.i = and i8 %46, 15
  %47 = ptrtoint ptr %tid.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv111.i, ptr %tid.i, align 1
  %rate_stats.i = getelementptr %struct.hal_wbm_release_ring, ptr %26, i32 %rem28190, i32 4
  %48 = ptrtoint ptr %rate_stats.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %rate_stats.i, align 1
  %and113.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  %..i = select i1 %tobool114.not.i, i32 0, i32 %49
  %50 = ptrtoint ptr %rate_stats119.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %..i, ptr %rate_stats119.i, align 4
  %info1172 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %arrayidx39, i32 0, i32 1
  %51 = ptrtoint ptr %info1172 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %info1172, align 1
  %shr173 = lshr i32 %52, 11
  %53 = trunc i32 %shr173 to i8
  %conv174 = and i8 %53, 3
  %and86175 = lshr i32 %52, 13
  %shr87176 = and i32 %and86175, 131071
  br label %if.end97

ath11k_dp_tx_status_parse.exit:                   ; preds = %while.body31
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %arrayidx39, i32 0, i32 1
  %54 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %info1, align 1
  %shr = lshr i32 %55, 11
  %56 = trunc i32 %shr to i8
  %conv = and i8 %56, 3
  %and86 = lshr i32 %55, 13
  %shr87 = and i32 %and86, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp88 = icmp eq i32 %and.i, 3
  br i1 %cmp88, label %if.then96, label %ath11k_dp_tx_status_parse.exit.if.end97_crit_edge, !prof !56

ath11k_dp_tx_status_parse.exit.if.end97_crit_edge: ; preds = %ath11k_dp_tx_status_parse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then96:                                        ; preds = %ath11k_dp_tx_status_parse.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ath11k_dp_tx_process_htt_tx_complete(ptr noundef %ab, ptr noundef %arrayidx39, i8 noundef zeroext %conv, i32 noundef %shr87, ptr noundef %arrayidx)
  br label %cleanup

if.end97:                                         ; preds = %ath11k_dp_tx_status_parse.exit.if.end97_crit_edge, %ath11k_dp_tx_status_parse.exit.thread
  %shr87179 = phi i32 [ %shr87176, %ath11k_dp_tx_status_parse.exit.thread ], [ %shr87, %ath11k_dp_tx_status_parse.exit.if.end97_crit_edge ]
  %conv178 = phi i8 [ %conv174, %ath11k_dp_tx_status_parse.exit.thread ], [ %conv, %ath11k_dp_tx_status_parse.exit.if.end97_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %tx_idr_lock) #7
  %call98 = tail call ptr @idr_remove(ptr noundef %txbuf_idr, i32 noundef %shr87179) #7
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.then108, label %if.end110, !prof !56

if.then108:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.7, i32 noundef %shr87179) #7
  tail call void @_raw_spin_unlock(ptr noundef %tx_idr_lock) #7
  br label %cleanup

if.end110:                                        ; preds = %if.end97
  tail call void @_raw_spin_unlock(ptr noundef %tx_idr_lock) #7
  %idxprom = zext i8 %conv178 to i32
  %arrayidx112 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %idxprom
  %57 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx112, align 8
  %num_tx_pending = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 5, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_tx_pending, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %num_tx_pending, i32 1, i32 3, i32 1) #7
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_tx_pending, ptr %num_tx_pending, i32 1, ptr elementtype(i32) %num_tx_pending) #7, !srcloc !63
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then116, label %if.end110.if.end118_crit_edge

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then116:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %tx_empty_waitq = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 5, i32 2
  tail call void @__wake_up(ptr noundef %tx_empty_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end110.if.end118_crit_edge
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 8
  %62 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 0
  br i1 %cmp.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end118
  %.b173.i = load i1, ptr @ath11k_dp_tx_complete_msdu.__already_done, align 1
  br i1 %.b173.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !55

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ath11k_dp_tx_complete_msdu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 525, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38.i:                                       ; preds = %if.end118
  %64 = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 3, i32 8
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %61, i32 0, i32 2
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 8
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %64, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 6
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef 1, i32 noundef 0) #7
  %pdev_idx.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 35
  %71 = ptrtoint ptr %pdev_idx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pdev_idx.i, align 4
  %idxprom.i = zext i8 %72 to i32
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %61, i32 0, i32 22, i32 %idxprom.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool44.not.i = icmp eq ptr %74, null
  br i1 %tobool44.not.i, label %if.then53.i, label %if.end54.i, !prof !56

if.then53.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call98, i32 noundef 1) #7
  br label %cleanup

if.end54.i:                                       ; preds = %if.end38.i
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 3, i32 22
  %75 = ptrtoint ptr %vif.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load ptr, ptr %vif.i, align 1
  %tobool55.not.i = icmp eq ptr %76, null
  br i1 %tobool55.not.i, label %if.then64.i, label %if.end65.i, !prof !56

if.then64.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call98, i32 noundef 1) #7
  br label %cleanup

if.end65.i:                                       ; preds = %if.end54.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 3
  %77 = call ptr @memset(ptr %64, i32 0, i32 40)
  %78 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %64, align 8
  %79 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %80, label %if.end65.i.if.end83.i_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 2, label %land.lhs.true76.i
  ]

if.end65.i.if.end83.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  %82 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cb.i.i, align 8
  %and.i166 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool69.not.i = icmp eq i32 %and.i166, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %land.lhs.true.i.if.end83.i_crit_edge

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then70.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i167 = or i32 %83, 512
  %84 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i167, ptr %cb.i.i, align 8
  %85 = ptrtoint ptr %ack_rssi.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ack_rssi.i, align 4
  %conv.i169 = zext i8 %86 to i32
  %add.i = add nsw i32 %conv.i169, -95
  %ack_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 3, i32 20
  %87 = ptrtoint ptr %ack_signal.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i, ptr %ack_signal.i, align 4
  %is_valid_ack_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 3, i32 30
  %88 = ptrtoint ptr %is_valid_ack_signal.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %is_valid_ack_signal.i, align 2
  br label %if.end83.i

land.lhs.true76.i:                                ; preds = %if.end65.i
  %89 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cb.i.i, align 8
  %and78.i = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %land.lhs.true76.i.if.end83.i_crit_edge, label %if.then80.i

land.lhs.true76.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then80.i:                                      ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  %or82.i = or i32 %90, -2147483648
  %91 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or82.i, ptr %cb.i.i, align 8
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then80.i, %land.lhs.true76.i.if.end83.i_crit_edge, %if.then70.i, %land.lhs.true.i.if.end83.i_crit_edge, %if.end65.i.if.end83.i_crit_edge
  %extd_tx_stats.i.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 68, i32 2
  %92 = ptrtoint ptr %extd_tx_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %extd_tx_stats.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool85.not.i = icmp eq i32 %93, 0
  br i1 %tobool85.not.i, label %lor.lhs.false.i, label %if.end83.i.if.then94.i_crit_edge, !prof !55

if.end83.i.if.then94.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.i

lor.lhs.false.i:                                  ; preds = %if.end83.i
  %single_pdev_only.i = getelementptr inbounds %struct.ath11k_base, ptr %61, i32 0, i32 36, i32 16
  %94 = ptrtoint ptr %single_pdev_only.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %single_pdev_only.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool92.not.i = icmp eq i8 %95, 0
  br i1 %tobool92.not.i, label %lor.lhs.false.i.if.end124.i_crit_edge, label %lor.lhs.false.i.if.then94.i_crit_edge

lor.lhs.false.i.if.then94.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.i

lor.lhs.false.i.if.end124.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

if.then94.i:                                      ; preds = %lor.lhs.false.i.if.then94.i_crit_edge, %if.end83.i.if.then94.i_crit_edge
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i, align 4
  %and96.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.then94.i.if.end123.i_crit_edge, label %if.then98.i

if.then94.i.if.end123.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

if.then98.i:                                      ; preds = %if.then94.i
  %last_ppdu_id.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 65
  %98 = ptrtoint ptr %last_ppdu_id.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %last_ppdu_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp99.i = icmp eq i32 %99, 0
  %100 = ptrtoint ptr %ppdu_id.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ppdu_id.i, align 4
  br i1 %cmp99.i, label %if.then98.i.if.end120.i_crit_edge, label %if.else.i

if.then98.i.if.end120.i_crit_edge:                ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.else.i:                                        ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp105.i = icmp eq i32 %99, %101
  br i1 %cmp105.i, label %if.else.i.if.then111.i_crit_edge, label %lor.lhs.false107.i

if.else.i.if.then111.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111.i

lor.lhs.false107.i:                               ; preds = %if.else.i
  %cached_ppdu_id.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 66
  %102 = ptrtoint ptr %cached_ppdu_id.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cached_ppdu_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %99)
  %cmp109.i = icmp eq i32 %103, %99
  br i1 %cmp109.i, label %lor.lhs.false107.i.if.then111.i_crit_edge, label %lor.lhs.false107.i.if.end120.i.sink.split_crit_edge

lor.lhs.false107.i.if.end120.i.sink.split_crit_edge: ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i.sink.split

lor.lhs.false107.i.if.then111.i_crit_edge:        ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111.i

if.then111.i:                                     ; preds = %lor.lhs.false107.i.if.then111.i_crit_edge, %if.else.i.if.then111.i_crit_edge
  %cached_ppdu_id113.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 66
  %104 = ptrtoint ptr %cached_ppdu_id113.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %99, ptr %cached_ppdu_id113.i, align 8
  br label %if.end120.i.sink.split

if.end120.i.sink.split:                           ; preds = %if.then111.i, %lor.lhs.false107.i.if.end120.i.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then111.i ], [ 0, %lor.lhs.false107.i.if.end120.i.sink.split_crit_edge ]
  %cached_stats116.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 64
  %is_ampdu117.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 64, i32 8
  %105 = ptrtoint ptr %is_ampdu117.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink, ptr %is_ampdu117.i, align 1
  call void @ath11k_dp_tx_update_txcompl(ptr noundef %58, ptr noundef nonnull %ts) #7
  %106 = call ptr @memset(ptr %cached_stats116.i, i32 0, i32 28)
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.end120.i.sink.split, %if.then98.i.if.end120.i_crit_edge
  %107 = ptrtoint ptr %last_ppdu_id.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %101, ptr %last_ppdu_id.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end120.i, %if.then94.i.if.end123.i_crit_edge
  %108 = ptrtoint ptr %try_cnt.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %try_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp.i.i171 = icmp ugt i8 %109, 1
  br i1 %cmp.i.i171, label %if.then.i.i, label %if.end123.i.if.end124.i_crit_edge

if.end123.i.if.end124.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

if.then.i.i:                                      ; preds = %if.end123.i
  %conv.i.i = zext i8 %109 to i16
  %sub.i.i = add nsw i16 %conv.i.i, -1
  %retry_pkts.i.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 64, i32 4
  %110 = ptrtoint ptr %retry_pkts.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %retry_pkts.i.i, align 2
  %add.i.i = add i16 %sub.i.i, %111
  store i16 %add.i.i, ptr %retry_pkts.i.i, align 2
  %conv7.i.i = zext i8 %109 to i32
  %sub8.i.i = add nsw i32 %conv7.i.i, -1
  %112 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i, align 4
  %mul.i.i = mul i32 %113, %sub8.i.i
  %retry_bytes.i.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 64, i32 1
  %114 = ptrtoint ptr %retry_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %retry_bytes.i.i, align 4
  %add9.i.i = add i32 %mul.i.i, %115
  store i32 %add9.i.i, ptr %retry_bytes.i.i, align 4
  %116 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp10.not.i.i = icmp eq i32 %117, 0
  br i1 %cmp10.not.i.i, label %if.then.i.i.if.end124.i_crit_edge, label %if.then12.i.i

if.then.i.i.if.end124.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

if.then12.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %failed_pkts.i.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 64, i32 5
  %118 = ptrtoint ptr %failed_pkts.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %failed_pkts.i.i, align 4
  %add14.i.i = add i16 %119, 1
  store i16 %add14.i.i, ptr %failed_pkts.i.i, align 4
  %120 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i, align 4
  %failed_bytes.i.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 64, i32 2
  %122 = ptrtoint ptr %failed_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %failed_bytes.i.i, align 4
  %add17.i.i = add i32 %123, %121
  store i32 %add17.i.i, ptr %failed_bytes.i.i, align 4
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then12.i.i, %if.then.i.i.if.end124.i_crit_edge, %if.end123.i.if.end124.i_crit_edge, %lor.lhs.false.i.if.end124.i_crit_edge
  %hw.i = getelementptr inbounds %struct.ath11k, ptr %58, i32 0, i32 2
  %124 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw.i, align 8
  tail call void @ieee80211_tx_status(ptr noundef %125, ptr noundef nonnull %call98) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end124.i, %if.then64.i, %if.then53.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then108, %if.then96
  %126 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_status_tail, align 4
  %add27 = add i32 %127, 1
  %rem28 = srem i32 %add27, 32768
  %128 = ptrtoint ptr %tx_status_head to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_status_head, align 4
  %cmp30.not = icmp eq i32 %rem28, %129
  br i1 %cmp30.not, label %cleanup.while.end120_crit_edge, label %cleanup.while.body31_crit_edge

cleanup.while.body31_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body31

cleanup.while.end120_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end120

while.end120:                                     ; preds = %cleanup.while.end120_crit_edge, %if.end.while.end120_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ts) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_hal_srng_dst_get_next_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_hal_srng_dst_peek(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_dp_tx_process_htt_tx_complete(ptr noundef %ab, ptr nocapture noundef readonly %desc, i8 noundef zeroext %mac_id, i32 noundef %msdu_id, ptr noundef %tx_ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %desc, i32 8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %and = lshr i32 %1, 9
  %shr = and i32 %and, 15
  %2 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge56
    i32 2, label %entry.sw.bb_crit_edge57
    i32 3, label %entry.sw.bb32_crit_edge
    i32 4, label %entry.sw.bb32_crit_edge58
    i32 5, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb32_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

entry.sw.bb32_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

entry.sw.bb_crit_edge57:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge56, %entry.sw.bb_crit_edge57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 0
  %info1 = getelementptr i8, ptr %desc, i32 12
  %3 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %info1, align 1
  %shr31 = lshr i32 %4, 24
  %tx_idr_lock.i = getelementptr inbounds %struct.dp_tx_ring, ptr %tx_ring, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %tx_idr_lock.i) #7
  %txbuf_idr.i = getelementptr inbounds %struct.dp_tx_ring, ptr %tx_ring, i32 0, i32 3
  %call.i = tail call ptr @idr_remove(ptr noundef %txbuf_idr.i, i32 noundef %msdu_id) #7
  tail call void @_raw_spin_unlock(ptr noundef %tx_idr_lock.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !56

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.17, i32 noundef %msdu_id) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %5 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %ar8.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 18
  %6 = ptrtoint ptr %ar8.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %ar8.i, align 1
  %num_tx_pending.i = getelementptr inbounds %struct.ath11k, ptr %7, i32 0, i32 5, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_tx_pending.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %num_tx_pending.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_tx_pending.i, ptr %num_tx_pending.i, i32 1, ptr elementtype(i32) %num_tx_pending.i) #7, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then10.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_empty_waitq.i = getelementptr inbounds %struct.ath11k, ptr %7, i32 0, i32 5, i32 2
  tail call void @__wake_up(ptr noundef %tx_empty_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i.if.end12.i_crit_edge
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %5, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 0) #7
  %15 = call ptr @memset(ptr %5, i32 0, i32 40)
  br i1 %cmp.not, label %if.then14.i, label %if.end12.i.if.end21.i_crit_edge

if.end12.i.if.end21.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then14.i:                                      ; preds = %if.end12.i
  %16 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %17, 512
  %18 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %cb.i.i, align 8
  %add.i = add nsw i32 %shr31, -95
  %ack_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 20
  %19 = ptrtoint ptr %ack_signal.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %ack_signal.i, align 4
  %is_valid_ack_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 30
  %20 = ptrtoint ptr %is_valid_ack_signal.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_valid_ack_signal.i, align 2
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %or19.i = or i32 %17, -2147483648
  %21 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or19.i, ptr %cb.i.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then16.i, %if.end12.i.if.end21.i_crit_edge
  %hw.i = getelementptr inbounds %struct.ath11k, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 8
  tail call void @ieee80211_tx_status(ptr noundef %23, ptr noundef nonnull %call.i) #7
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry.sw.bb32_crit_edge, %entry.sw.bb32_crit_edge58
  %tx_idr_lock.i40 = getelementptr inbounds %struct.dp_tx_ring, ptr %tx_ring, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %tx_idr_lock.i40) #7
  %txbuf_idr.i41 = getelementptr inbounds %struct.dp_tx_ring, ptr %tx_ring, i32 0, i32 3
  %call.i42 = tail call ptr @idr_remove(ptr noundef %txbuf_idr.i41, i32 noundef %msdu_id) #7
  tail call void @_raw_spin_unlock(ptr noundef %tx_idr_lock.i40) #7
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %if.then.i44, label %if.end.i51, !prof !56

if.then.i44:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.7, i32 noundef %msdu_id) #7
  br label %sw.epilog

if.end.i51:                                       ; preds = %sw.bb32
  %24 = getelementptr inbounds %struct.sk_buff, ptr %call.i42, i32 0, i32 3, i32 8
  %dev.i45 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i45, align 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %24, align 1
  %len.i46 = getelementptr inbounds %struct.sk_buff, ptr %call.i42, i32 0, i32 6
  %29 = ptrtoint ptr %len.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i46, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i42, i32 noundef 1) #7
  %idxprom.i = zext i8 %mac_id to i32
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 8
  %num_tx_pending.i47 = getelementptr inbounds %struct.ath11k, ptr %32, i32 0, i32 5, i32 1
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_tx_pending.i47, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %num_tx_pending.i47, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_tx_pending.i47, ptr %num_tx_pending.i47, i32 1, ptr elementtype(i32) %num_tx_pending.i47) #7, !srcloc !63
  %asmresult.i.i.i.i.i.i49 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i49)
  %cmp.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i49, 0
  br i1 %cmp.i.i.i50, label %if.then8.i, label %if.end.i51.sw.epilog_crit_edge

if.end.i51.sw.epilog_crit_edge:                   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then8.i:                                       ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  %tx_empty_waitq.i52 = getelementptr inbounds %struct.ath11k, ptr %32, i32 0, i32 5, i32 2
  tail call void @__wake_up(ptr noundef %tx_empty_waitq.i52, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.16, i32 noundef %shr) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then8.i, %if.end.i51.sw.epilog_crit_edge, %if.then.i44, %if.end21.i, %if.then.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_send_reo_cmd(ptr noundef %ab, ptr nocapture noundef readonly %rx_tid, i32 noundef %type, ptr noundef %cmd, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %ring_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13, i32 5
  %3 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id, align 4
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %4
  %call2 = tail call i32 @ath11k_hal_reo_cmd_send(ptr noundef %ab, ptr noundef %arrayidx, i32 noundef %type, ptr noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5 = icmp eq i32 %call2, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %tobool8.not = icmp eq ptr %cb, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 160) #10
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %data = getelementptr inbounds %struct.dp_reo_cmd, ptr %call7.i.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %data, ptr %rx_tid, i32 144)
  %cmd_num15 = getelementptr inbounds %struct.dp_reo_cmd, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %cmd_num15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %cmd_num15, align 8
  %handler = getelementptr inbounds %struct.dp_reo_cmd, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cb, ptr %handler, align 4
  %reo_cmd_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %reo_cmd_lock) #7
  %reo_cmd_list = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 18
  %prev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %10, ptr noundef %reo_cmd_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reo_cmd_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %reo_cmd_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -108, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_reo_cmd_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_srng_setup(ptr noundef %ab, i32 noundef %ring_id, i32 noundef %mac_id, i32 noundef %ring_type) local_unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.hal_srng_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #7
  %call = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %ab, i32 noundef 52) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %ring_id
  %0 = call ptr @memset(ptr %params, i32 0, i32 40)
  call void @ath11k_hal_srng_get_params(ptr noundef %ab, ptr noundef %arrayidx, ptr noundef nonnull %params) #7
  %call1 = call i32 @ath11k_hal_srng_get_hp_addr(ptr noundef %ab, ptr noundef %arrayidx) #7
  %call2 = call i32 @ath11k_hal_srng_get_tp_addr(ptr noundef %ab, ptr noundef %arrayidx) #7
  %1 = zext i32 %ring_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %ring_type, label %sw.default.i [
    i32 14, label %sw.bb.i
    i32 15, label %if.end.if.end6_crit_edge
    i32 16, label %sw.bb10.i
    i32 17, label %sw.bb11.i
    i32 18, label %sw.bb12.i
    i32 19, label %sw.bb13.i
  ]

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb.i:                                          ; preds = %if.end
  %rx_mac_buf_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 22
  %2 = ptrtoint ptr %rx_mac_buf_ring.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_mac_buf_ring.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  %mul.i = mul i32 %mac_id, 15
  %add.i = add i32 %mul.i, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %ring_id)
  %cmp.i = icmp eq i32 %add.i, %ring_id
  %add1.i = add i32 %mul.i, 129
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %ring_id)
  %cmp2.i = icmp eq i32 %add1.i, %ring_id
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i.if.end6_crit_edge, label %if.then.i.err_free_crit_edge

if.then.i.err_free_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %ring_id)
  %cmp4.i = icmp eq i32 %ring_id, 128
  %spec.select = select i1 %cmp4.i, i32 2, i32 1
  %spec.select578 = select i1 %cmp4.i, i32 327680, i32 0
  br label %if.end6

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.19, i32 noundef %ring_type) #7
  br label %err_free

if.end6:                                          ; preds = %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %if.else.i, %if.then.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %htt_ring_type.0.ph = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ 1, %sw.bb10.i ], [ 1, %sw.bb11.i ], [ 0, %sw.bb12.i ], [ 1, %sw.bb13.i ], [ 1, %if.then.i.if.end6_crit_edge ], [ %spec.select, %if.else.i ]
  %htt_ring_id.0.ph = phi i32 [ 458752, %if.end.if.end6_crit_edge ], [ 131072, %sw.bb10.i ], [ 65536, %sw.bb11.i ], [ 262144, %sw.bb12.i ], [ 196608, %sw.bb13.i ], [ 0, %if.then.i.if.end6_crit_edge ], [ %spec.select578, %if.else.i ]
  %call7 = call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 52) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 11, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %htt_ring_type.0.ph)
  %switch = icmp ult i32 %htt_ring_type.0.ph, 2
  %add = zext i1 %switch to i32
  %storemerge.in.in.in = add i32 %add, %mac_id
  %storemerge.in.in = shl i32 %storemerge.in.in.in, 8
  %storemerge.in = and i32 %storemerge.in.in, 65280
  %shl94 = shl nuw nsw i32 %htt_ring_type.0.ph, 24
  %storemerge = or i32 %storemerge.in, %shl94
  %or97 = or i32 %storemerge, %htt_ring_id.0.ph
  %or123 = or i32 %or97, 11
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %or123, ptr %5, align 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 4
  %ring_base_addr_lo = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %ring_base_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %ring_base_addr_lo, align 1
  %ring_base_addr_hi = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %ring_base_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %ring_base_addr_hi, align 1
  %call127 = call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %ab, i32 noundef %ring_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.end6.err_free_crit_edge, label %if.end131

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end131:                                        ; preds = %if.end6
  %shr132 = lshr i32 %call127, 2
  %shl155 = shl i32 %shr132, 16
  %and156 = and i32 %shl155, 16711680
  %info1 = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %and156, ptr %info1, align 1
  %num_entries = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 2
  %13 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_entries, align 4
  %mul = mul i32 %14, %shr132
  %and184 = and i32 %mul, 65535
  %or186 = or i32 %and184, %and156
  store i32 %or186, ptr %info1, align 1
  %flags = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %17 = shl i32 %16, 24
  %shl226 = and i32 %17, 134217728
  %or229 = or i32 %shl226, %or186
  store i32 %or229, ptr %info1, align 1
  %18 = load i32, ptr %flags, align 4
  %19 = shl i32 %18, 24
  %shl273 = and i32 %19, 536870912
  %or276 = or i32 %shl273, %or229
  store i32 %or276, ptr %info1, align 1
  %20 = load i32, ptr %flags, align 4
  %21 = shl i32 %20, 24
  %shl320 = and i32 %21, 268435456
  %or323 = or i32 %shl320, %or276
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %htt_ring_type.0.ph)
  %cmp324 = icmp eq i32 %htt_ring_type.0.ph, 1
  %or328 = or i32 %or323, 33554432
  %spec.select577 = select i1 %cmp324, i32 %or328, i32 %or323
  %22 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %spec.select577, ptr %info1, align 1
  %ring_head_off32_remote_addr_lo = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %ring_head_off32_remote_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %call1, ptr %ring_head_off32_remote_addr_lo, align 1
  %ring_head_off32_remote_addr_hi = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %ring_head_off32_remote_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %ring_head_off32_remote_addr_hi, align 1
  %ring_tail_off32_remote_addr_lo = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %ring_tail_off32_remote_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %call2, ptr %ring_tail_off32_remote_addr_lo, align 1
  %ring_tail_off32_remote_addr_hi = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %ring_tail_off32_remote_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %ring_tail_off32_remote_addr_hi, align 1
  %msi_addr = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 8
  %27 = ptrtoint ptr %msi_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msi_addr, align 4
  %ring_msi_addr_lo = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 8
  %29 = ptrtoint ptr %ring_msi_addr_lo to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %ring_msi_addr_lo, align 1
  %ring_msi_addr_hi = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 9
  %30 = ptrtoint ptr %ring_msi_addr_hi to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %ring_msi_addr_hi, align 1
  %msi_data = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 9
  %31 = ptrtoint ptr %msi_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msi_data, align 4
  %msi_data342 = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %msi_data342 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %msi_data342, align 1
  %intr_batch_cntr_thres_entries = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 3
  %34 = ptrtoint ptr %intr_batch_cntr_thres_entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %intr_batch_cntr_thres_entries, align 4
  %mul350 = mul i32 %35, %shr132
  %and371 = and i32 %mul350, 32767
  %intr_info = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 11
  %36 = ptrtoint ptr %intr_info to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %and371, ptr %intr_info, align 1
  %intr_timer_thres_us = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 4
  %37 = ptrtoint ptr %intr_timer_thres_us to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %intr_timer_thres_us, align 4
  %39 = shl i32 %38, 13
  %shl399 = and i32 %39, -65536
  %or402 = or i32 %shl399, %and371
  store i32 %or402, ptr %intr_info, align 1
  %info2 = getelementptr inbounds %struct.htt_srng_setup_cmd, ptr %5, i32 0, i32 12
  %40 = ptrtoint ptr %info2 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %info2, align 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and404 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404)
  %tobool405.not = icmp eq i32 %and404, 0
  br i1 %tobool405.not, label %if.end131.do.body435_crit_edge, label %do.end428

if.end131.do.body435_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body435

do.end428:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %low_threshold = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 7
  %43 = ptrtoint ptr %low_threshold to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %low_threshold, align 4
  %and432 = and i32 %44, 65535
  %45 = ptrtoint ptr %info2 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %and432, ptr %info2, align 1
  br label %do.body435

do.body435:                                       ; preds = %do.end428, %if.end131.do.body435_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %46 = load i32, ptr @ath11k_debug_mask, align 4
  %and436 = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436)
  %tobool437.not = icmp eq i32 %and436, 0
  br i1 %tobool437.not, label %lor.lhs.false438, label %do.body435.if.then441_crit_edge

do.body435.if.then441_crit_edge:                  ; preds = %do.body435
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then441

lor.lhs.false438:                                 ; preds = %do.body435
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_dp_tx_htt_srng_setup, %if.then441)) #7
          to label %do.body448 [label %if.then441], !srcloc !60

if.then441:                                       ; preds = %lor.lhs.false438, %do.body435.if.then441_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ring_msi_addr_lo to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %ring_msi_addr_lo, align 1
  %49 = ptrtoint ptr %ring_msi_addr_hi to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ring_msi_addr_hi, align 1
  %51 = ptrtoint ptr %msi_data342 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %msi_data342, align 1
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ath11k_dp_tx_htt_srng_setup, i32 noundef %48, i32 noundef %50, i32 noundef %52) #7
  br label %do.body448

do.body448:                                       ; preds = %if.then441, %lor.lhs.false438
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %53 = load i32, ptr @ath11k_debug_mask, align 4
  %and449 = and i32 %53, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and449)
  %tobool450.not = icmp eq i32 %and449, 0
  br i1 %tobool450.not, label %lor.lhs.false451, label %do.body448.if.then454_crit_edge

do.body448.if.then454_crit_edge:                  ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then454

lor.lhs.false451:                                 ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_dp_tx_htt_srng_setup, %if.then454)) #7
          to label %do.end459 [label %if.then454], !srcloc !60

if.then454:                                       ; preds = %lor.lhs.false451, %do.body448.if.then454_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %intr_info to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %intr_info, align 1
  %56 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %info2, align 1
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.9, i32 noundef %ring_id, i32 noundef %ring_type, i32 noundef %55, i32 noundef %57) #7
  br label %do.end459

do.end459:                                        ; preds = %if.then454, %lor.lhs.false451
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  %eid = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %eid, align 4
  %call460 = call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %59, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call460)
  %tobool461.not = icmp eq i32 %call460, 0
  br i1 %tobool461.not, label %do.end459.cleanup_crit_edge, label %do.end459.err_free_crit_edge

do.end459.err_free_crit_edge:                     ; preds = %do.end459
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

do.end459.cleanup_crit_edge:                      ; preds = %do.end459
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free:                                         ; preds = %do.end459.err_free_crit_edge, %if.end6.err_free_crit_edge, %sw.default.i, %if.then.i.err_free_crit_edge
  %ret.0 = phi i32 [ %call127, %if.end6.err_free_crit_edge ], [ %call460, %do.end459.err_free_crit_edge ], [ -22, %sw.default.i ], [ -22, %if.then.i.err_free_crit_edge ]
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.end459.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end459.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_htc_alloc_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_get_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_hp_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_tp_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_entrysize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_htc_send(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_h2t_ver_req_msg(ptr noundef %ab) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %htt_tgt_version_received = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %htt_tgt_version_received to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %htt_tgt_version_received, align 4
  %wait.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #7
  %call = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %ab, i32 noundef 4) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 4) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %2, align 1
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  %eid = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eid, align 4
  %call15 = tail call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %5, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call20 = tail call i32 @wait_for_completion_timeout(ptr noundef %htt_tgt_version_received, i32 noundef 300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %htt_tgt_ver_major = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %htt_tgt_ver_major to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htt_tgt_ver_major, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp23.not = icmp eq i8 %7, 3
  br i1 %cmp23.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.then21, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ -110, %if.then21 ], [ -524, %if.then25 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_h2t_ppdu_stats_req(ptr nocapture noundef readonly %ar, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %num_rxmda_per_pdev = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 21
  %2 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp99 = icmp sgt i32 %3, 0
  br i1 %cmp99, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %shl63 = shl i32 %mask, 16
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 8
  %eid = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.0100, 1
  %4 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %1, i32 noundef 4) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 4) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 17, ptr %7, align 1
  %9 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pdev_idx, align 4
  %conv = zext i8 %10 to i32
  %add = add nuw i32 %i.0100, %conv
  %conv37 = shl i32 512, %add
  %and39 = and i32 %conv37, 65024
  %or = or i32 %and39, %shl63
  %or66 = or i32 %or, 17
  store i32 %or66, ptr %7, align 1
  %11 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eid, align 4
  %call67 = tail call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %12, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.cond, label %if.then69

if.then69:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.then69 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %ab, i32 noundef %ring_id, i32 noundef %mac_id, i32 noundef %ring_type, i32 noundef %rx_buf_size, ptr nocapture noundef readonly %tlv_filter) local_unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.hal_srng_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #7
  %call = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %ab, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %ring_id
  %0 = call ptr @memset(ptr %params, i32 0, i32 40)
  call void @ath11k_hal_srng_get_params(ptr noundef %ab, ptr noundef %arrayidx, ptr noundef nonnull %params) #7
  %1 = zext i32 %ring_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %ring_type, label %sw.default.i [
    i32 14, label %sw.bb.i
    i32 15, label %if.end.if.end4.thread_crit_edge
    i32 16, label %sw.bb10.i
    i32 17, label %sw.bb11.i
    i32 18, label %sw.bb12.i
    i32 19, label %sw.bb13.i
  ]

if.end.if.end4.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

sw.bb.i:                                          ; preds = %if.end
  %rx_mac_buf_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 22
  %2 = ptrtoint ptr %rx_mac_buf_ring.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_mac_buf_ring.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %sw.bb.i
  %mul.i = mul i32 %mac_id, 15
  %add.i = add i32 %mul.i, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %ring_id)
  %cmp.i = icmp eq i32 %add.i, %ring_id
  %add1.i = add i32 %mul.i, 129
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %ring_id)
  %cmp2.i = icmp eq i32 %add1.i, %ring_id
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i.if.end4.thread_crit_edge, label %if.then.i.err_free_crit_edge

if.then.i.err_free_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.then.i.if.end4.thread_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.19, i32 noundef %ring_type) #7
  br label %err_free

if.end4.thread:                                   ; preds = %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %if.then.i.if.end4.thread_crit_edge, %if.end.if.end4.thread_crit_edge
  %htt_ring_id.0.ph.ph = phi i32 [ 12, %if.then.i.if.end4.thread_crit_edge ], [ 196620, %sw.bb13.i ], [ 262156, %sw.bb12.i ], [ 65548, %sw.bb11.i ], [ 131084, %sw.bb10.i ], [ 458764, %if.end.if.end4.thread_crit_edge ]
  %call5273 = call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 28) #7
  %data274 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %data274 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data274, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 12, ptr %5, align 1
  br label %do.body26

if.end4:                                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %ring_id)
  %cmp4.i = icmp eq i32 %ring_id, 128
  %phi.bo = select i1 %cmp4.i, i32 327692, i32 12
  %call5 = call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 28) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 12, ptr %8, align 1
  br i1 %cmp4.i, label %if.end4.do.end90_crit_edge, label %if.end4.do.body26_crit_edge

if.end4.do.body26_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

if.end4.do.end90_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

do.body26:                                        ; preds = %if.end4.do.body26_crit_edge, %if.end4.thread
  %10 = phi ptr [ %5, %if.end4.thread ], [ %8, %if.end4.do.body26_crit_edge ]
  %htt_ring_id.0.ph276 = phi i32 [ %htt_ring_id.0.ph.ph, %if.end4.thread ], [ %phi.bo, %if.end4.do.body26_crit_edge ]
  %add = add i32 %mac_id, 1
  br label %do.end90

do.end90:                                         ; preds = %do.body26, %if.end4.do.end90_crit_edge
  %11 = phi ptr [ %10, %do.body26 ], [ %8, %if.end4.do.end90_crit_edge ]
  %htt_ring_id.0.ph275 = phi i32 [ %htt_ring_id.0.ph276, %do.body26 ], [ %phi.bo, %if.end4.do.end90_crit_edge ]
  %storemerge.in.in.in = phi i32 [ %add, %do.body26 ], [ %mac_id, %if.end4.do.end90_crit_edge ]
  %storemerge.in.in = shl i32 %storemerge.in.in.in, 8
  %storemerge.in = and i32 %storemerge.in.in, 65280
  %or95 = or i32 %htt_ring_id.0.ph275, %storemerge.in
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %or95, ptr %11, align 1
  %flags = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %15 = shl i32 %14, 21
  %shl135 = and i32 %15, 16777216
  %or138 = or i32 %shl135, %or95
  store i32 %or138, ptr %11, align 1
  %16 = load i32, ptr %flags, align 4
  %17 = shl i32 %16, 20
  %shl182 = and i32 %17, 33554432
  %or185 = or i32 %shl182, %or138
  store i32 %or185, ptr %11, align 1
  %and209 = and i32 %rx_buf_size, 65535
  %info1 = getelementptr inbounds %struct.htt_rx_ring_selection_cfg_cmd, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %and209, ptr %info1, align 1
  %pkt_filter_flags0 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 1
  %19 = ptrtoint ptr %pkt_filter_flags0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pkt_filter_flags0, align 4
  %pkt_type_en_flags0 = getelementptr inbounds %struct.htt_rx_ring_selection_cfg_cmd, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %pkt_type_en_flags0 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %pkt_type_en_flags0, align 1
  %pkt_filter_flags1 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 2
  %22 = ptrtoint ptr %pkt_filter_flags1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_filter_flags1, align 4
  %pkt_type_en_flags1 = getelementptr inbounds %struct.htt_rx_ring_selection_cfg_cmd, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %pkt_type_en_flags1 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %pkt_type_en_flags1, align 1
  %pkt_filter_flags2 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 3
  %25 = ptrtoint ptr %pkt_filter_flags2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pkt_filter_flags2, align 4
  %pkt_type_en_flags2 = getelementptr inbounds %struct.htt_rx_ring_selection_cfg_cmd, ptr %11, i32 0, i32 4
  %27 = ptrtoint ptr %pkt_type_en_flags2 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %pkt_type_en_flags2, align 1
  %pkt_filter_flags3 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 4
  %28 = ptrtoint ptr %pkt_filter_flags3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkt_filter_flags3, align 4
  %pkt_type_en_flags3 = getelementptr inbounds %struct.htt_rx_ring_selection_cfg_cmd, ptr %11, i32 0, i32 5
  %30 = ptrtoint ptr %pkt_type_en_flags3 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %pkt_type_en_flags3, align 1
  %31 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tlv_filter, align 4
  %rx_filter_tlv = getelementptr inbounds %struct.htt_rx_ring_selection_cfg_cmd, ptr %11, i32 0, i32 6
  %33 = ptrtoint ptr %rx_filter_tlv to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %rx_filter_tlv, align 1
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  %eid = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eid, align 4
  %call210 = call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %35, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %do.end90.cleanup_crit_edge, label %do.end90.err_free_crit_edge

do.end90.err_free_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free:                                         ; preds = %do.end90.err_free_crit_edge, %sw.default.i, %if.then.i.err_free_crit_edge
  %ret.0 = phi i32 [ %call210, %do.end90.err_free_crit_edge ], [ -22, %sw.default.i ], [ -22, %if.then.i.err_free_crit_edge ]
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.end90.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_h2t_ext_stats_req(ptr noundef %ar, i8 noundef zeroext %type, ptr nocapture noundef readonly %cfg_params, i64 noundef %cookie) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %call = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %1, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 32) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 31)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %3, align 1
  %single_pdev_only = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 16
  %7 = ptrtoint ptr %single_pdev_only to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %single_pdev_only, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call zeroext i8 @ath11k_mac_get_target_pdev_id(ptr noundef %ar) #7
  %conv = zext i8 %call6 to i32
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %pdev_id7 = getelementptr inbounds %struct.ath11k_pdev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pdev_id7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdev_id7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %pdev_id.0 = phi i32 [ %conv, %if.then5 ], [ %12, %if.else ]
  %shl = shl nuw i32 1, %pdev_id.0
  %conv9 = trunc i32 %shl to i8
  %pdev_mask = getelementptr inbounds %struct.htt_ext_stats_cfg_hdr, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %pdev_mask to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %pdev_mask, align 1
  %stats_type = getelementptr inbounds %struct.htt_ext_stats_cfg_hdr, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %stats_type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %type, ptr %stats_type, align 1
  %15 = ptrtoint ptr %cfg_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_params, align 4
  %cfg_param0 = getelementptr inbounds %struct.htt_ext_stats_cfg_cmd, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %cfg_param0 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %cfg_param0, align 1
  %cfg1 = getelementptr inbounds %struct.htt_ext_stats_cfg_params, ptr %cfg_params, i32 0, i32 1
  %18 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg1, align 4
  %cfg_param1 = getelementptr inbounds %struct.htt_ext_stats_cfg_cmd, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %cfg_param1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %cfg_param1, align 1
  %cfg2 = getelementptr inbounds %struct.htt_ext_stats_cfg_params, ptr %cfg_params, i32 0, i32 2
  %21 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg2, align 4
  %cfg_param2 = getelementptr inbounds %struct.htt_ext_stats_cfg_cmd, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %cfg_param2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %cfg_param2, align 1
  %cfg3 = getelementptr inbounds %struct.htt_ext_stats_cfg_params, ptr %cfg_params, i32 0, i32 3
  %24 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg3, align 4
  %cfg_param3 = getelementptr inbounds %struct.htt_ext_stats_cfg_cmd, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %cfg_param3 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %cfg_param3, align 1
  %conv12 = trunc i64 %cookie to i32
  %cookie_lsb = getelementptr inbounds %struct.htt_ext_stats_cfg_cmd, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %cookie_lsb to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %conv12, ptr %cookie_lsb, align 1
  %shr = lshr i64 %cookie, 32
  %conv14 = trunc i64 %shr to i32
  %cookie_msb = getelementptr inbounds %struct.htt_ext_stats_cfg_cmd, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %cookie_msb to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %conv14, ptr %cookie_msb, align 1
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 8
  %eid = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eid, align 4
  %call15 = tail call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %30, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %if.then17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %call15) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath11k_mac_get_target_pdev_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_monitor_mode_ring_config(ptr nocapture noundef readonly %ar, i1 noundef zeroext %reset) local_unnamed_addr #1 align 64 {
entry:
  %tlv_filter = alloca %struct.htt_rx_ring_tlv_filter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 5
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tlv_filter) #7
  %2 = call ptr @memset(ptr %tlv_filter, i32 0, i32 20)
  %full_monitor_mode = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 28
  %3 = ptrtoint ptr %full_monitor_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %full_monitor_mode, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp1, align 8
  %call.i = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %1, i32 noundef 8) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.then4_crit_edge, label %if.end.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 98784247808, ptr %8, align 1
  %shl.i = shl i32 %6, 8
  %and33.i = and i32 %shl.i, 65280
  %or.i = or i32 %and33.i, 23
  store i32 %or.i, ptr %8, align 1
  %cfg.i = getelementptr inbounds %struct.htt_rx_full_monitor_mode_cfg_cmd, ptr %8, i32 0, i32 1
  %spec.select.i = select i1 %reset, i32 17, i32 23
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %spec.select.i, ptr %cfg.i, align 1
  %htc.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 8
  %eid.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eid.i, align 4
  %call57.i = tail call i32 @ath11k_htc_send(ptr noundef %htc.i, i32 noundef %12, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end.i.if.end5_crit_edge, label %ath11k_dp_tx_htt_rx_full_mon_setup.exit

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

ath11k_dp_tx_htt_rx_full_mon_setup.exit:          ; preds = %if.end.i
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp = icmp slt i32 %call57.i, 0
  br i1 %cmp, label %ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.then4_crit_edge, label %ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.end5_crit_edge

ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.end5_crit_edge: ; preds = %ath11k_dp_tx_htt_rx_full_mon_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.then4_crit_edge: ; preds = %ath11k_dp_tx_htt_rx_full_mon_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %retval.0.i107 = phi i32 [ %call57.i, %ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.then4_crit_edge ], [ -12, %if.then.if.then4_crit_edge ]
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i107) #7
  br label %cleanup

if.end5:                                          ; preds = %ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call57.i, %ath11k_dp_tx_htt_rx_full_mon_setup.exit.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ], [ 0, %if.end.i.if.end5_crit_edge ]
  %ring_id6 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 5, i32 8, i32 0, i32 5
  %13 = ptrtoint ptr %ring_id6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ring_id6, align 4
  br i1 %reset, label %if.end9, label %if.end9.thread

if.end9:                                          ; preds = %if.end5
  %rxdma1_enable = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 20
  %15 = ptrtoint ptr %rxdma1_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rxdma1_enable, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %if.end9.if.end25_crit_edge, label %if.end9.if.then12_crit_edge

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end9.thread:                                   ; preds = %if.end5
  %17 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 255, ptr %tlv_filter, align 4
  %pkt_filter_flags0 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 1
  %18 = ptrtoint ptr %pkt_filter_flags0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 766958445, ptr %pkt_filter_flags0, align 4
  %pkt_filter_flags1 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 2
  %19 = ptrtoint ptr %pkt_filter_flags1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 187245, ptr %pkt_filter_flags1, align 4
  %pkt_filter_flags2 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 3
  %20 = ptrtoint ptr %pkt_filter_flags2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 766958445, ptr %pkt_filter_flags2, align 4
  %pkt_filter_flags3 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 4
  %21 = ptrtoint ptr %pkt_filter_flags3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 95869805, ptr %pkt_filter_flags3, align 4
  %rxdma1_enable116 = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 20
  %22 = ptrtoint ptr %rxdma1_enable116 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rxdma1_enable116, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not117 = icmp eq i8 %23, 0
  br i1 %tobool11.not117, label %for.cond.preheader, label %if.end9.thread.if.then12_crit_edge

if.end9.thread.if.then12_crit_edge:               ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %if.end9.thread.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  %24 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ar, align 8
  %26 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp1, align 8
  %call15 = call i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %25, i32 noundef %14, i32 noundef %27, i32 noundef 16, i32 noundef 2048, ptr noundef nonnull %tlv_filter)
  br label %if.end25

for.cond.preheader:                               ; preds = %if.end9.thread
  %num_rxmda_per_pdev = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 21
  %28 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp19111 = icmp sgt i32 %29, 0
  br i1 %cmp19111, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end25_crit_edge

for.cond.preheader.if.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ring_id20 = getelementptr %struct.ath11k, ptr %ar, i32 0, i32 5, i32 4, i32 %i.0112, i32 5
  %30 = ptrtoint ptr %ring_id20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ring_id20, align 4
  %32 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ar, align 8
  %34 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp1, align 8
  %add = add i32 %35, %i.0112
  %call23 = call i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %33, i32 noundef %31, i32 noundef %add, i32 noundef 14, i32 noundef 1024, ptr noundef nonnull %tlv_filter)
  %inc = add nuw nsw i32 %i.0112, 1
  %36 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp19 = icmp slt i32 %inc, %37
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end25:                                         ; preds = %for.body.if.end25_crit_edge, %for.cond.preheader.if.end25_crit_edge, %if.then12, %if.end9.if.end25_crit_edge
  %ret.2 = phi i32 [ %call15, %if.then12 ], [ %ret.0, %for.cond.preheader.if.end25_crit_edge ], [ %ret.0, %if.end9.if.end25_crit_edge ], [ %call23, %for.body.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool26.not = icmp eq i32 %ret.2, 0
  br i1 %tobool26.not, label %for.cond29.preheader, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond29.preheader:                             ; preds = %if.end25
  %num_rxmda_per_pdev31 = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 21
  %38 = ptrtoint ptr %num_rxmda_per_pdev31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_rxmda_per_pdev31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp32113 = icmp sgt i32 %39, 0
  br i1 %cmp32113, label %for.body33.lr.ph, label %for.cond29.preheader.for.end53_crit_edge

for.cond29.preheader.for.end53_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53

for.body33.lr.ph:                                 ; preds = %for.cond29.preheader
  %extd_rx_stats.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 6
  %rx_filter.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 11
  br label %for.body33

for.body33:                                       ; preds = %if.end47.for.body33_crit_edge, %for.body33.lr.ph
  %i.1114 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc52, %if.end47.for.body33_crit_edge ]
  %ring_id36 = getelementptr %struct.ath11k, ptr %ar, i32 0, i32 5, i32 9, i32 %i.1114, i32 0, i32 5
  %40 = ptrtoint ptr %ring_id36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_id36, align 4
  br i1 %reset, label %if.else40, label %if.then38

if.then38:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7937, ptr %tlv_filter, align 4
  br label %if.end47

if.else40:                                        ; preds = %for.body33
  %43 = call ptr @memcpy(ptr %tlv_filter, ptr @ath11k_mac_mon_status_filter_default, i32 20)
  %44 = ptrtoint ptr %extd_rx_stats.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %extd_rx_stats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool42.not = icmp eq i32 %45, 0
  br i1 %tobool42.not, label %if.else40.if.end47_crit_edge, label %if.then43

if.else40.if.end47_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_filter.i, align 4
  %48 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tlv_filter, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.else40.if.end47_crit_edge, %if.then38
  %49 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dp1, align 8
  %add49 = add i32 %50, %i.1114
  %call50 = call i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %1, i32 noundef %41, i32 noundef %add49, i32 noundef 17, i32 noundef 2048, ptr noundef nonnull %tlv_filter)
  %inc52 = add nuw nsw i32 %i.1114, 1
  %51 = ptrtoint ptr %num_rxmda_per_pdev31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_rxmda_per_pdev31, align 4
  %cmp32 = icmp slt i32 %inc52, %52
  br i1 %cmp32, label %if.end47.for.body33_crit_edge, label %if.end47.for.end53_crit_edge

if.end47.for.end53_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53

if.end47.for.body33_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end53:                                        ; preds = %if.end47.for.end53_crit_edge, %for.cond29.preheader.for.end53_crit_edge
  %ret.3.lcssa = phi i32 [ 0, %for.cond29.preheader.for.end53_crit_edge ], [ %call50, %if.end47.for.end53_crit_edge ]
  %53 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ar, align 8
  %rxdma1_enable56 = getelementptr inbounds %struct.ath11k_base, ptr %54, i32 0, i32 36, i32 20
  %55 = ptrtoint ptr %rxdma1_enable56 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rxdma1_enable56, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool57.not = icmp eq i8 %56, 0
  br i1 %tobool57.not, label %if.then58, label %for.end53.cleanup_crit_edge

for.end53.cleanup_crit_edge:                      ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #9
  %mon_reap_timer = getelementptr inbounds %struct.ath11k_base, ptr %54, i32 0, i32 58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add61 = add i32 %57, 1
  %call62 = tail call i32 @mod_timer(ptr noundef %mon_reap_timer, i32 noundef %add61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %for.end53.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %retval.0.i107, %if.then4 ], [ %ret.2, %if.end25.cleanup_crit_edge ], [ %ret.3.lcssa, %if.then58 ], [ %ret.3.lcssa, %for.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tlv_filter) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_tx_htt_rx_full_mon_setup(ptr noundef %ab, i32 noundef %mac_id, i1 noundef zeroext %config) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ath11k_htc_alloc_skb(ptr noundef %ab, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 8) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 98784247808, ptr %1, align 1
  %shl = shl i32 %mac_id, 8
  %and33 = and i32 %shl, 65280
  %or = or i32 %and33, 23
  store i32 %or, ptr %1, align 1
  %cfg = getelementptr inbounds %struct.htt_rx_full_monitor_mode_cfg_cmd, ptr %1, i32 0, i32 1
  %spec.select = select i1 %config, i32 23, i32 17
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %spec.select, ptr %cfg, align 1
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 8
  %eid = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eid, align 4
  %call57 = tail call i32 @ath11k_htc_send(ptr noundef %htc, i32 noundef %5, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end.cleanup_crit_edge, label %err_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !40, !42, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 217, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 267, i32 46}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 435, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 473, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 484, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 494, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 655, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 687, i32 20}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 914, i32 2}
!18 = !{ptr @__func__.ath11k_dp_tx_htt_srng_setup, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 919, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 965, i32 19}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 970, i32 18}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 1120, i32 19}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 1140, i32 19}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 396, i32 19}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 332, i32 19}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 525, i32 6}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/dp_tx.c", i32 809, i32 19}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2148294924, i64 2148294950, i64 2148294979, i64 2148295013, i64 2148295044, i64 2148295067}
!58 = !{i8 0, i8 2}
!59 = !{!"auto-init"}
!60 = !{i64 2148776739, i64 2148776744, i64 2148776757, i64 2148776801, i64 2148776835, i64 2148776856}
!61 = !{!"branch_weights", i32 4000000, i32 4001}
!62 = !{i64 2148383376}
!63 = !{i64 2148298109, i64 2148298141, i64 2148298170, i64 2148298204, i64 2148298235, i64 2148298258}
!64 = !{i64 2148383605}
