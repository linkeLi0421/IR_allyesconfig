; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/dbring.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/dbring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_dbring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dp_srng = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.dp_link_desc_bank = type { ptr, ptr, i32, i32, i32 }
%struct.dp_tx_ring = type { i8, %struct.dp_srng, %struct.dp_srng, %struct.idr, %struct.spinlock, ptr, i32, i32 }
%struct.hal_wbm_idle_scatter_list = type { i32, ptr }
%struct.ath11k_hp_update_timer = type { %struct.timer_list, i8, i8, i32, i32, i32, i32, ptr }
%struct.anon.101 = type { i32, ptr }
%struct.anon.102 = type { %struct.completion }
%struct.ath11k_ce = type { [12 x %struct.ath11k_ce_pipe], %struct.spinlock, [12 x %struct.ath11k_hp_update_timer] }
%struct.ath11k_ce_pipe = type { ptr, i16, i32, i32, i32, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.103, i32 }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.107, %struct.anon.108, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.anon.107 = type { ptr, i32 }
%struct.anon.108 = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ath11k_dbring_cap = type { i32, i32, i32, i32, i32 }
%struct.ath11k_dbring_element = type { i32, ptr }
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
%struct.ath11k_thermal = type { ptr, %struct.completion, i32, i32 }
%struct.ath11k_dbring_data = type { ptr, i32, %struct.wmi_dma_buf_release_meta_data }
%struct.wmi_dma_buf_release_meta_data = type { i32, [8 x i32], i32, i32, i32, i32 }
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.ath11k_wmi_dma_buf_release_fixed_param = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath11k_dbring_buf_release_event = type { %struct.ath11k_wmi_dma_buf_release_fixed_param, ptr, ptr, i32, i32 }
%struct.wmi_dma_buf_release_entry = type { i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup db ring cfg\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ath11k/dbring.c\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to setup srng: %d ring_id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid pdev id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Buffer entry %d mismatch meta entry %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ath11k_dbring_buffer_release_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Recv dma buffer release ev on unsupp module %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to replenish db ring num_remain %d req_ent %d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 173, i32 23 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 185, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 226, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 283, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 289, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 298, i32 7 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 309, i32 19 }
@___asan_gen_.35 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath11k/dbring.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 134, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 326, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_validate_buffer(ptr nocapture noundef readnone %ar, ptr nocapture noundef readonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp6.not = icmp ult i32 %size, 4
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %size, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %idx.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %temp.07 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %buffer, %for.body.preheader ]
  %0 = ptrtoint ptr %temp.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temp.07, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038801, i32 %1)
  %cmp1 = icmp eq i32 %1, -559038801
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.08, 1
  %incdec.ptr = getelementptr i32, ptr %temp.07, i32 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_wmi_cfg_setup(ptr noundef %ar, ptr nocapture noundef readonly %ring, i32 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  %param = alloca %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %param) #10
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp = icmp ugt i32 %id, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev_id = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 6
  %1 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdev_id, align 4
  %add = add i32 %2, 1
  %pdev_id1 = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 1
  %3 = ptrtoint ptr %pdev_id1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %pdev_id1, align 4
  %module_id = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %module_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %module_id, align 4
  %paddr = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 3
  %5 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %paddr, align 4
  %base_paddr_lo = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 3
  %7 = ptrtoint ptr %base_paddr_lo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %base_paddr_lo, align 4
  %base_paddr_hi = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 4
  %8 = ptrtoint ptr %base_paddr_hi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %base_paddr_hi, align 4
  %hp_addr = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 4
  %9 = ptrtoint ptr %hp_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hp_addr, align 4
  %head_idx_paddr_lo = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 5
  %11 = ptrtoint ptr %head_idx_paddr_lo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %head_idx_paddr_lo, align 4
  %head_idx_paddr_hi = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 6
  %12 = ptrtoint ptr %head_idx_paddr_hi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %head_idx_paddr_hi, align 4
  %tp_addr = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 3
  %13 = ptrtoint ptr %tp_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tp_addr, align 4
  %tail_idx_paddr_lo = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 7
  %15 = ptrtoint ptr %tail_idx_paddr_lo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tail_idx_paddr_lo, align 4
  %tail_idx_paddr_hi = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 8
  %16 = ptrtoint ptr %tail_idx_paddr_hi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tail_idx_paddr_hi, align 4
  %bufs_max = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 5
  %17 = ptrtoint ptr %bufs_max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bufs_max, align 4
  %num_elems = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 9
  %19 = ptrtoint ptr %num_elems to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_elems, align 4
  %buf_sz = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 7
  %20 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_sz, align 4
  %buf_size = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 10
  %22 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %buf_size, align 4
  %num_resp_per_event = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 9
  %23 = ptrtoint ptr %num_resp_per_event to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_resp_per_event, align 4
  %num_resp_per_event13 = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 11
  %25 = ptrtoint ptr %num_resp_per_event13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_resp_per_event13, align 4
  %event_timeout_ms = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 10
  %26 = ptrtoint ptr %event_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event_timeout_ms, align 4
  %event_timeout_ms14 = getelementptr inbounds %struct.ath11k_wmi_pdev_dma_ring_cfg_req_cmd, ptr %param, i32 0, i32 12
  %28 = ptrtoint ptr %event_timeout_ms14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %event_timeout_ms14, align 4
  %call = call i32 @ath11k_wmi_pdev_dma_ring_cfg(ptr noundef %ar, ptr noundef nonnull %param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %30, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then15 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %param) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_pdev_dma_ring_cfg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_set_cfg(ptr nocapture noundef readnone %ar, ptr noundef writeonly %ring, i32 noundef %num_resp_per_event, i32 noundef %event_timeout_ms, ptr noundef %handler) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_resp_per_event24 = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %num_resp_per_event24 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %num_resp_per_event, ptr %num_resp_per_event24, align 4
  %event_timeout_ms25 = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 10
  %1 = ptrtoint ptr %event_timeout_ms25 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %event_timeout_ms, ptr %event_timeout_ms25, align 4
  %handler26 = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %handler26 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handler, ptr %handler26, align 4
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_buf_setup(ptr nocapture noundef readonly %ar, ptr noundef %ring, ptr nocapture noundef readonly %db_cap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 16
  %ring_id = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_id, align 4
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %3
  %size = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call = tail call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %1, i32 noundef 20) #10
  %div = sdiv i32 %5, %call
  %bufs_max = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %bufs_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %bufs_max, align 4
  %min_buf_sz = getelementptr inbounds %struct.ath11k_dbring_cap, ptr %db_cap, i32 0, i32 3
  %7 = ptrtoint ptr %min_buf_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_buf_sz, align 4
  %buf_sz = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 7
  %9 = ptrtoint ptr %buf_sz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf_sz, align 4
  %min_buf_align = getelementptr inbounds %struct.ath11k_dbring_cap, ptr %db_cap, i32 0, i32 4
  %10 = ptrtoint ptr %min_buf_align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_buf_align, align 4
  %buf_align = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 8
  %12 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf_align, align 4
  %13 = ptrtoint ptr %db_cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %db_cap, align 4
  %pdev_id3 = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 6
  %15 = ptrtoint ptr %pdev_id3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pdev_id3, align 4
  %16 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ar, align 8
  %call5 = tail call i32 @ath11k_hal_srng_get_hp_addr(ptr noundef %17, ptr noundef %arrayidx) #10
  %hp_addr = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 4
  %18 = ptrtoint ptr %hp_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call5, ptr %hp_addr, align 4
  %19 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ar, align 8
  %call7 = tail call i32 @ath11k_hal_srng_get_tp_addr(ptr noundef %20, ptr noundef %arrayidx) #10
  %tp_addr = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 3
  %21 = ptrtoint ptr %tp_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call7, ptr %tp_addr, align 4
  %22 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ar, align 8
  %hal.i = getelementptr inbounds %struct.ath11k_base, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_id, align 4
  %arrayidx.i = getelementptr [172 x %struct.hal_srng], ptr %hal.i, i32 0, i32 %25
  %lock.i = getelementptr [172 x %struct.hal_srng], ptr %hal.i, i32 0, i32 %25, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %26 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar, align 8
  %call.i = tail call i32 @ath11k_hal_srng_src_num_free(ptr noundef %27, ptr noundef %arrayidx.i, i1 noundef zeroext true) #10
  %28 = ptrtoint ptr %bufs_max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bufs_max, align 4
  %30 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 %29) #10
  %31 = ptrtoint ptr %buf_align to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_align, align 4
  %33 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_sz, align 4
  %add.i = add i32 %34, %32
  %sub.i = add i32 %add.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp246.i = icmp sgt i32 %30, 0
  br i1 %cmp246.i, label %entry.while.body.i_crit_edge, label %entry.ath11k_dbring_fill_bufs.exit_crit_edge

entry.ath11k_dbring_fill_bufs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath11k_dbring_fill_bufs.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %num_remain.047.i = phi i32 [ %dec.i, %if.end14.i.while.body.i_crit_edge ], [ %30, %entry.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2848, i32 noundef 8) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %while.body.i.ath11k_dbring_fill_bufs.exit_crit_edge, label %if.end8.i.i.i

while.body.i.ath11k_dbring_fill_bufs.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath11k_dbring_fill_bufs.exit

if.end8.i.i.i:                                    ; preds = %while.body.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i, i32 noundef 2848) #14
  %payload.i = getelementptr inbounds %struct.ath11k_dbring_element, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call9.i.i.i, ptr %payload.i, align 4
  %tobool6.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i.i.while.end.sink.split.i_crit_edge, label %if.end8.i

if.end8.i.i.i.while.end.sink.split.i_crit_edge:   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split.i

if.end8.i:                                        ; preds = %if.end8.i.i.i
  %call9.i = tail call fastcc i32 @ath11k_dbring_bufs_replenish(ptr noundef %ar, ptr noundef %ring, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end14.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload.i.le = getelementptr inbounds %struct.ath11k_dbring_element, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %38, ptr noundef nonnull @.str.7, i32 noundef %num_remain.047.i, i32 noundef %30) #10
  %39 = ptrtoint ptr %payload.i.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %payload.i.le, align 4
  tail call void @kfree(ptr noundef %40) #10
  br label %while.end.sink.split.i

if.end14.i:                                       ; preds = %if.end8.i
  %dec.i = add nsw i32 %num_remain.047.i, -1
  %cmp2.i = icmp sgt i32 %num_remain.047.i, 1
  br i1 %cmp2.i, label %if.end14.i.while.body.i_crit_edge, label %if.end14.i.ath11k_dbring_fill_bufs.exit_crit_edge

if.end14.i.ath11k_dbring_fill_bufs.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath11k_dbring_fill_bufs.exit

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.sink.split.i:                           ; preds = %if.then11.i, %if.end8.i.i.i.while.end.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ath11k_dbring_fill_bufs.exit

ath11k_dbring_fill_bufs.exit:                     ; preds = %while.end.sink.split.i, %if.end14.i.ath11k_dbring_fill_bufs.exit_crit_edge, %while.body.i.ath11k_dbring_fill_bufs.exit_crit_edge, %entry.ath11k_dbring_fill_bufs.exit_crit_edge
  %num_remain.044.i = phi i32 [ %30, %entry.ath11k_dbring_fill_bufs.exit_crit_edge ], [ %num_remain.047.i, %while.end.sink.split.i ], [ %num_remain.047.i, %while.body.i.ath11k_dbring_fill_bufs.exit_crit_edge ], [ 0, %if.end14.i.ath11k_dbring_fill_bufs.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  ret i32 %num_remain.044.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_entrysize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_hp_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_tp_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_srng_setup(ptr nocapture noundef readonly %ar, ptr noundef %ring, i32 noundef %ring_num, i32 noundef %num_entries) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %2 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pdev_idx, align 4
  %conv = zext i8 %3 to i32
  %call = tail call i32 @ath11k_dp_srng_setup(ptr noundef %1, ptr noundef %ring, i32 noundef 20, i32 noundef %ring_num, i32 noundef %conv, i32 noundef %num_entries) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 8
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %call, i32 noundef %ring_num) #10
  %6 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar, align 8
  tail call void @ath11k_dp_srng_cleanup(ptr noundef %7, ptr noundef %ring) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_srng_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_srng_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_get_cap(ptr nocapture noundef readonly %ab, i8 noundef zeroext %pdev_idx, i32 noundef %id, ptr nocapture noundef writeonly %db_cap) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_db_cap = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 54
  %0 = ptrtoint ptr %num_db_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_db_cap, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %db_caps = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 53
  %2 = ptrtoint ptr %db_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_caps, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp = icmp ugt i32 %id, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %conv = zext i8 %pdev_idx to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.ath11k_dbring_cap, ptr %3, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp7 = icmp eq i32 %5, %conv
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id11 = getelementptr %struct.ath11k_dbring_cap, ptr %3, i32 %i.029, i32 1
  %6 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %id)
  %cmp12 = icmp eq i32 %7, %id
  br i1 %cmp12, label %if.then14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %db_cap, ptr %arrayidx, i32 20)
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then14, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dbring_buffer_release_event(ptr noundef %ab, ptr nocapture noundef readonly %ev) local_unnamed_addr #2 align 64 {
entry:
  %handler_data = alloca %struct.ath11k_dbring_data, align 4
  %desc = alloca %struct.ath11k_buffer_addr, align 4
  %rbm = alloca i8, align 1
  %cookie = alloca i32, align 4
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %handler_data) #10
  %0 = call ptr @memset(ptr %handler_data, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #10
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %desc, align 4, !annotation !39
  %2 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rbm) #10
  %4 = ptrtoint ptr %rbm to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %rbm, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie) #10
  %5 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cookie, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #10
  %6 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %paddr, align 4, !annotation !39
  %7 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ev, align 4
  %conv1 = and i32 %8, 255
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %9 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %10)
  %cmp.not = icmp slt i32 %conv1, %10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.3, i32 noundef %conv1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buf_release_entry = getelementptr inbounds %struct.ath11k_wmi_dma_buf_release_fixed_param, ptr %ev, i32 0, i32 2
  %11 = ptrtoint ptr %num_buf_release_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buf_release_entry, align 4
  %num_meta_data_entry = getelementptr inbounds %struct.ath11k_wmi_dma_buf_release_fixed_param, ptr %ev, i32 0, i32 3
  %13 = ptrtoint ptr %num_meta_data_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_meta_data_entry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6.not = icmp eq i32 %12, %14
  br i1 %cmp6.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %14) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %conv1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end13.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end13.rcu_read_lock.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end13.rcu_read_lock.exit_crit_edge
  %arrayidx16 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 22, i32 %conv1
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx16, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end25_crit_edge

rcu_read_lock.exit.do.end25_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b153 = load i1, ptr @ath11k_dbring_buffer_release_event.__warned, align 1
  br i1 %.b153, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath11k_dbring_buffer_release_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 298, ptr noundef nonnull @.str.5) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %rcu_read_lock.exit.do.end25_crit_edge
  %tobool27.not = icmp eq ptr %22, null
  br i1 %tobool27.not, label %do.end25.rcu_unlock_crit_edge, label %if.end29

do.end25.rcu_unlock_crit_edge:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_unlock

if.end29:                                         ; preds = %do.end25
  %module_id = getelementptr inbounds %struct.ath11k_wmi_dma_buf_release_fixed_param, ptr %ev, i32 0, i32 1
  %23 = ptrtoint ptr %module_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %module_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cond = icmp eq i32 %24, 0
  br i1 %cond, label %sw.epilog, label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.6, i32 noundef %24) #10
  br label %rcu_unlock

sw.epilog:                                        ; preds = %if.end29
  %call31 = tail call ptr @ath11k_spectral_get_dbring(ptr noundef %16) #10
  %tobool34.not = icmp eq ptr %call31, null
  br i1 %tobool34.not, label %sw.epilog.rcu_unlock_crit_edge, label %if.end36

sw.epilog.rcu_unlock_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_unlock

if.end36:                                         ; preds = %sw.epilog
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %ring_id = getelementptr inbounds %struct.dp_srng, ptr %call31, i32 0, i32 5
  %25 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_id, align 4
  %27 = ptrtoint ptr %num_buf_release_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_buf_release_entry, align 4
  %buf_sz = getelementptr inbounds %struct.ath11k_dbring, ptr %call31, i32 0, i32 7
  %29 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_sz, align 4
  %buf_align = getelementptr inbounds %struct.ath11k_dbring, ptr %call31, i32 0, i32 8
  %31 = ptrtoint ptr %buf_align to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_align, align 4
  %add = add i32 %30, -1
  %sub = add i32 %add, %32
  %lock = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %26, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40165.not = icmp eq i32 %28, 0
  br i1 %cmp40165.not, label %if.end36.while.end_crit_edge, label %while.body.lr.ph

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end36
  %buf_entry = getelementptr inbounds %struct.ath11k_dbring_buf_release_event, ptr %ev, i32 0, i32 1
  %meta = getelementptr inbounds %struct.ath11k_dbring_data, ptr %handler_data, i32 0, i32 2
  %meta_data = getelementptr inbounds %struct.ath11k_dbring_buf_release_event, ptr %ev, i32 0, i32 2
  %idr_lock = getelementptr inbounds %struct.ath11k_dbring, ptr %call31, i32 0, i32 2
  %bufs_idr = getelementptr inbounds %struct.ath11k_dbring, ptr %call31, i32 0, i32 1
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %handler = getelementptr inbounds %struct.ath11k_dbring, ptr %call31, i32 0, i32 11
  %data_sz = getelementptr inbounds %struct.ath11k_dbring_data, ptr %handler_data, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %num_buff_reaped.0166 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.backedge.while.body_crit_edge ]
  %33 = ptrtoint ptr %buf_entry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf_entry, align 4
  %paddr_lo = getelementptr %struct.wmi_dma_buf_release_entry, ptr %34, i32 %num_buff_reaped.0166, i32 1
  %35 = ptrtoint ptr %paddr_lo to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %paddr_lo, align 1
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %desc, align 4
  %paddr_hi = getelementptr %struct.wmi_dma_buf_release_entry, ptr %34, i32 %num_buff_reaped.0166, i32 2
  %38 = ptrtoint ptr %paddr_hi to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %paddr_hi, align 1
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %2, align 4
  %41 = ptrtoint ptr %meta_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %meta_data, align 4
  %arrayidx45 = getelementptr %struct.wmi_dma_buf_release_meta_data, ptr %42, i32 %num_buff_reaped.0166
  %43 = call ptr @memcpy(ptr %meta, ptr %arrayidx45, i32 52)
  %inc = add nuw i32 %num_buff_reaped.0166, 1
  call void @ath11k_hal_rx_buf_addr_info_get(ptr noundef nonnull %desc, ptr noundef nonnull %paddr, ptr noundef nonnull %cookie, ptr noundef nonnull %rbm) #10
  %44 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cookie, align 4
  %and = and i32 %45, 262143
  call void @_raw_spin_lock_bh(ptr noundef %idr_lock) #10
  %call62 = call ptr @idr_find(ptr noundef %bufs_idr, i32 noundef %and) #10
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then64, label %if.end66

if.then64:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end83, %if.then64
  %exitcond.not = icmp eq i32 %inc, %28
  br i1 %exitcond.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end66:                                         ; preds = %while.body
  %call68 = call ptr @idr_remove(ptr noundef %bufs_idr, i32 noundef %and) #10
  call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %48 = ptrtoint ptr %call62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call62, align 4
  %50 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_sz, align 4
  call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef 2, i32 noundef 0) #10
  %52 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handler, align 4
  %tobool72.not = icmp eq ptr %53, null
  br i1 %tobool72.not, label %if.end66.if.end83_crit_edge, label %if.then73

if.end66.if.end83_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %payload = getelementptr inbounds %struct.ath11k_dbring_element, ptr %call62, i32 0, i32 1
  %54 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %payload, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = ptrtoint ptr %buf_align to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_align, align 4
  %sub75 = add i32 %58, -1
  %add76 = add i32 %sub75, %56
  %neg = sub i32 0, %58
  %and79 = and i32 %add76, %neg
  %59 = inttoptr i32 %and79 to ptr
  %60 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %handler_data, align 4
  %61 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf_sz, align 4
  %63 = ptrtoint ptr %data_sz to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %data_sz, align 4
  %call82 = call i32 %53(ptr noundef %16, ptr noundef nonnull %handler_data) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then73, %if.end66.if.end83_crit_edge
  %64 = ptrtoint ptr %call62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %call62, align 4
  %payload85 = getelementptr inbounds %struct.ath11k_dbring_element, ptr %call62, i32 0, i32 1
  %65 = ptrtoint ptr %payload85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %payload85, align 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 %sub)
  %call86 = call fastcc i32 @ath11k_dbring_bufs_replenish(ptr noundef %16, ptr noundef nonnull %call31, ptr noundef nonnull %call62)
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end36.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rcu_unlock

rcu_unlock:                                       ; preds = %while.end, %sw.epilog.rcu_unlock_crit_edge, %sw.epilog.thread, %do.end25.rcu_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %while.end ], [ -22, %do.end25.rcu_unlock_crit_edge ], [ -22, %sw.epilog.rcu_unlock_crit_edge ], [ -22, %sw.epilog.thread ]
  %call.i154 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i154, label %rcu_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i157

rcu_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %rcu_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i157:                               ; preds = %rcu_unlock
  %call1.i155 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155)
  %tobool.not.i156 = icmp eq i32 %call1.i155, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i157.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i159

land.lhs.true.i157.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i159:                              ; preds = %land.lhs.true.i157
  %.b4.i158 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i158, label %land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge, label %if.then.i160

land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i160:                                     ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i160, %land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i157.rcu_read_unlock.exit_crit_edge, %rcu_unlock.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %68 = call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i161 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i161 to ptr
  %preempt_count.i.i.i.i162 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i162, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i162, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then8 ], [ %ret.0, %rcu_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rbm) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %handler_data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_spectral_get_dbring(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_rx_buf_addr_info_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_dbring_bufs_replenish(ptr nocapture noundef readonly %ar, ptr noundef %ring, ptr noundef %buff) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 16
  %ring_id = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_id, align 4
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %3, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !38

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @ath11k_hal_srng_access_begin(ptr noundef %1, ptr noundef %arrayidx) #10
  %payload = getelementptr inbounds %struct.ath11k_dbring_element, ptr %buff, i32 0, i32 1
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %payload, align 4
  %7 = ptrtoint ptr %6 to i32
  %buf_align = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 8
  %8 = ptrtoint ptr %buf_align to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_align, align 4
  %sub = add i32 %9, -1
  %add = add i32 %sub, %7
  %neg = sub i32 0, %9
  %and = and i32 %add, %neg
  %10 = inttoptr i32 %and to ptr
  %buf_sz = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp1.not.i = icmp ult i32 %12, 4
  br i1 %cmp1.not.i, label %if.end.ath11k_dbring_fill_magic_value.exit_crit_edge, label %for.body.preheader.i

if.end.ath11k_dbring_fill_magic_value.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath11k_dbring_fill_magic_value.exit

for.body.preheader.i:                             ; preds = %if.end
  %shr.i = lshr i32 %12, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %idx.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %temp.02.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %10, %for.body.preheader.i ]
  %13 = ptrtoint ptr %temp.02.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -559038801, ptr %temp.02.i, align 4
  %inc.i = add nuw nsw i32 %idx.03.i, 1
  %incdec.ptr1.i = getelementptr i32, ptr %temp.02.i, i32 2
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.ath11k_dbring_fill_magic_value.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.ath11k_dbring_fill_magic_value.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath11k_dbring_fill_magic_value.exit

ath11k_dbring_fill_magic_value.exit:              ; preds = %for.body.i.ath11k_dbring_fill_magic_value.exit_crit_edge, %if.end.ath11k_dbring_fill_magic_value.exit_crit_edge
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_sz, align 4
  %call.i148 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #10
  br i1 %call.i148, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %ath11k_dbring_fill_magic_value.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !42

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %15) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #10
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %ath11k_dbring_fill_magic_value.exit
  tail call void @debug_dma_map_single(ptr noundef %15, ptr noundef %10, i32 noundef %17) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %and, 1073741824
  %shr.i149 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i149
  %and.i = and i32 %and, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %15, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %17, i32 noundef 2, i32 noundef 0) #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end33

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %dma_map_single_attrs.exit
  %idr_lock = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock) #10
  %bufs_idr = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 1
  %bufs_max = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 5
  %27 = ptrtoint ptr %bufs_max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bufs_max, align 4
  %call34 = tail call i32 @idr_alloc(ptr noundef %bufs_idr, ptr noundef %buff, i32 noundef 0, i32 noundef %28, i32 noundef 2592) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36 = icmp slt i32 %call34, 0
  br i1 %cmp36, label %if.end33.err_dma_unmap_crit_edge, label %if.end38

if.end33.err_dma_unmap_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma_unmap

if.end38:                                         ; preds = %if.end33
  %call39 = tail call ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef %1, ptr noundef %arrayidx) #10
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock) #10
  %call94 = tail call ptr @idr_remove(ptr noundef %bufs_idr, i32 noundef %call34) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  br label %err_dma_unmap

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call41.i, ptr %buff, align 4
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %30 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pdev_idx, align 4
  %conv66 = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv66, 18
  %and67 = and i32 %shl, 1835008
  %and91 = and i32 %call34, 262143
  %or = or i32 %and67, %and91
  tail call void @ath11k_hal_rx_buf_addr_info_set(ptr noundef nonnull %call39, i32 noundef %call41.i, i32 noundef %or, i8 noundef zeroext 0) #10
  br label %cleanup

err_dma_unmap:                                    ; preds = %if.then41, %if.end33.err_dma_unmap_crit_edge
  %ret.0 = phi i32 [ -2, %if.then41 ], [ -105, %if.end33.err_dma_unmap_crit_edge ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %34 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %call41.i, i32 noundef %35, i32 noundef 2, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dma_unmap, %if.end42, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ 0, %if.end42 ], [ %ret.0, %err_dma_unmap ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  tail call void @ath11k_hal_srng_access_end(ptr noundef %1, ptr noundef %arrayidx) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dbring_srng_cleanup(ptr nocapture noundef readonly %ar, ptr noundef %ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  tail call void @ath11k_dp_srng_cleanup(ptr noundef %1, ptr noundef %ring) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dbring_buf_cleanup(ptr nocapture noundef readonly %ar, ptr noundef %ring) local_unnamed_addr #2 align 64 {
entry:
  %buf_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_id) #10
  %idr_lock = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %idr_lock) #10
  %bufs_idr = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %buf_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf_id, align 4
  %call12 = call ptr @idr_get_next(ptr noundef %bufs_idr, ptr noundef nonnull %buf_id) #10
  %cmp.not13 = icmp eq ptr %call12, null
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buf_sz = getelementptr inbounds %struct.ath11k_dbring, ptr %ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call14 = phi ptr [ %call12, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %buf_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buf_id, align 4
  %call2 = call ptr @idr_remove(ptr noundef %bufs_idr, i32 noundef %2) #10
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call14, align 4
  %9 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_sz, align 4
  call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 2, i32 noundef 0) #10
  %payload = getelementptr inbounds %struct.ath11k_dbring_element, ptr %call14, i32 0, i32 1
  %11 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %payload, align 4
  call void @kfree(ptr noundef %12) #10
  call void @kfree(ptr noundef nonnull %call14) #10
  %13 = ptrtoint ptr %buf_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_id, align 4
  %add = add i32 %14, 1
  store i32 %add, ptr %buf_id, align 4
  %call = call ptr @idr_get_next(ptr noundef %bufs_idr, ptr noundef nonnull %buf_id) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @idr_destroy(ptr noundef %bufs_idr) #10
  call void @_raw_spin_unlock_bh(ptr noundef %idr_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_id) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_src_num_free(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_rx_buf_addr_info_set(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 173, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 185, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 226, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 283, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 289, i32 19}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 298, i32 7}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 309, i32 19}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath11k/dbring.c", i32 134, i32 24}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"auto-init"}
!40 = !{i64 2149322449}
!41 = !{i64 2149322715}
!42 = !{!"branch_weights", i32 2000, i32 1}
