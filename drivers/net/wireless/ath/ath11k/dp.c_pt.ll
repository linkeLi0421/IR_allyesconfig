; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/dp.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath11k_dp_service_srng\22, \22a\22\09"
module asm "\09.weak\09__crc_ath11k_dp_service_srng\09\09\09\09"
module asm "\09.long\09__crc_ath11k_dp_service_srng\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath11k_dp_service_srng:\09\09\09\09\09"
module asm "\09.asciz \09\22ath11k_dp_service_srng\22\09\09\09\09\09"
module asm "__kstrtabns_ath11k_dp_service_srng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
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
%struct.ath11k_peer = type { %struct.list_head, ptr, i32, [6 x i8], i32, i16, i8, i16, [4 x ptr], [17 x %struct.dp_rx_tid], ptr, i8, i8, i16, i16, i8 }
%struct.dp_rx_tid = type { i8, ptr, i32, i32, i32, i8, i32, i16, i16, %struct.sk_buff_head, ptr, %struct.timer_list, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
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
%struct.ath11k_per_peer_tx_stats = type { i32, i32, i32, i16, i16, i16, i32, i8, i8 }
%struct.ath11k_debug = type { ptr, %struct.ath11k_dbg_htt_stats, i32, %struct.ath11k_fw_stats, %struct.completion, i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.ath11k_dbg_htt_stats = type { i8, i8, ptr, %struct.spinlock }
%struct.ath11k_fw_stats = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath11k_spectral = type { %struct.ath11k_dbring, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.ath11k_dbring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ath11k_thermal = type { ptr, %struct.completion, i32, i32 }
%struct.hal_srng_params = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_hw_ring_mask = type { [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8] }
%struct.hal_wbm_link_desc = type { %struct.ath11k_buffer_addr }
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.ath11k_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath11k_htc_svc_conn_req = type { i16, %struct.ath11k_htc_ep_ops, i32 }
%struct.ath11k_htc_svc_conn_resp = type { i8, i8, i32, i32, i8 }
%struct.ath11k_vif = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, ptr, ptr, i16, %struct.wmi_wmm_params_all_arg, %struct.list_head, %union.anon.158, i8, i8, i8, i8, i32, [6 x i8], %struct.cfg80211_bitrate_mask, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, %struct.ieee80211_chanctx_conf }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i8, i8, i16, i16, i16, i8 }
%union.anon.158 = type { %struct.anon.160 }
%struct.anon.160 = type { [16 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.141] }
%struct.anon.141 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
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

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to lookup peer %pM on vdev %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to set default routing %d peer :%pM vdev_id :%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to setup rxd tid queue for tid %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup rx defrag context\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to find the peer to del rx tid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Not a valid ring type in dp :%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to setup srng: %d ring_id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to setup scatting idle list descriptor :%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_ath11k_dp_service_srng = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath11k_dp_service_srng = external dso_local constant [0 x i8], align 1
@__ksymtab_ath11k_dp_service_srng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath11k_dp_service_srng to i32), ptr @__kstrtab_ath11k_dp_service_srng, ptr @__kstrtabns_ath11k_dp_service_srng }, section "___ksymtab+ath11k_dp_service_srng", align 4
@ath11k_dp_pdev_pre_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&dp->rx_refill_buf_ring.idr_lock\00", [63 x i8] zeroinitializer }, align 32
@ath11k_dp_pdev_pre_alloc.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dp->tx_empty_waitq\00", [44 x i8] zeroinitializer }, align 32
@ath11k_dp_pdev_pre_alloc.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"&dp->rx_mon_status_refill_ring[j].idr_lock\00", [53 x i8] zeroinitializer }, align 32
@ath11k_dp_pdev_pre_alloc.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&dp->rxdma_mon_buf_ring.idr_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to allocate pdev rx for pdev_id :%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize mon pdev %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ath11k_dp_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dp->reo_cmd_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup wbm_idle_ring: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to setup link desc: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ath11k_dp_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dp->tx_ring[i].tx_idr_lock\00", [36 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath11k/dp.c\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ath11k_dp_shadow_init_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&update_timer->timer)\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DP\00", [29 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ring not part of an ext_group; ring_type: %d,ring_num %d\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"multiple msi_groups share one msi, msi_group_num %d\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set up wbm2sw_release ring :%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set up tcl_cmd ring :%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set up tcl_status ring :%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set up tcl_data ring (%d) :%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set up tcl_comp ring (%d) :%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set up reo_reinject ring :%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set up rx_rel ring :%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set up reo_exception ring :%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set up reo_cmd ring :%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set up reo_status ring :%d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.39 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 4, i64 13, i64 14, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 31, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 56, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 65, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 73, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 86, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 315, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 326, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 727, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 893, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 895, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 898, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 901, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 916, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 922, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1055, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1061, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1070, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1082, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1141, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1182, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 188, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 197, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 206, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 378, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 379, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 387, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 394, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 403, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 412, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 428, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 436, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 443, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 451, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath11k/dp.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 465, i32 19 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_ath11k_dp_service_srng, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ath11k_dp_pdev_pre_alloc.__key, ptr @.str.8, ptr @ath11k_dp_pdev_pre_alloc.__key.9, ptr @.str.10, ptr @ath11k_dp_pdev_pre_alloc.__key.11, ptr @.str.12, ptr @ath11k_dp_pdev_pre_alloc.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ath11k_dp_alloc.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ath11k_dp_alloc.__key.20, ptr @.str.21, ptr @.str.22, ptr @ath11k_dp_shadow_init_timer.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_pdev_pre_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_pdev_pre_alloc.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_pdev_pre_alloc.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_pdev_pre_alloc.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_dp_shadow_init_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_peer_cleanup(ptr noundef %ar, i32 noundef %vdev_id, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #5
  %call = tail call ptr @ath11k_peer_find(ptr noundef %1, i32 noundef %vdev_id, ptr noundef %addr) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %addr, i32 noundef %vdev_id) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath11k_peer_rx_tid_cleanup(ptr noundef %ar, ptr noundef nonnull %call) #5
  %tfm_mmic = getelementptr inbounds %struct.ath11k_peer, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %tfm_mmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm_mmic, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_peer_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_peer_rx_tid_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_peer_setup(ptr noundef %ar, i32 noundef %vdev_id, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %dp = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 5
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp, align 8
  %add = shl i32 %3, 1
  %or = add i32 %add, 3
  %call = tail call i32 @ath11k_wmi_set_peer_param(ptr noundef %ar, ptr noundef %addr, i32 noundef %vdev_id, i32 noundef 19, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call, ptr noundef %addr, i32 noundef %vdev_id) #5
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tid.062 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv = trunc i32 %tid.062 to i8
  %call2 = tail call i32 @ath11k_peer_rx_tid_setup(ptr noundef %ar, ptr noundef %addr, i32 noundef %vdev_id, i8 noundef zeroext %conv, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %tid.062, i32 noundef %call2) #5
  %base_lock = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock) #5
  %call10 = tail call ptr @ath11k_peer_find(ptr noundef %1, i32 noundef %vdev_id, ptr noundef %addr) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.then4.for.body18_crit_edge

if.then4.for.body18_crit_edge:                    ; preds = %if.then4
  br label %for.body18

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %tid.062, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call6 = tail call i32 @ath11k_peer_rx_frag_setup(ptr noundef %ar, ptr noundef %addr, i32 noundef %vdev_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.end.cleanup_crit_edge, label %if.then8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #5
  br label %cleanup

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then4.for.body18_crit_edge
  %tid.164 = phi i32 [ %dec, %for.body18.for.body18_crit_edge ], [ %tid.062, %if.then4.for.body18_crit_edge ]
  %conv19 = trunc i32 %tid.164 to i8
  tail call void @ath11k_peer_rx_tid_delete(ptr noundef %ar, ptr noundef nonnull %call10, i8 noundef zeroext %conv19) #5
  %dec = add nsw i32 %tid.164, -1
  %cmp16 = icmp sgt i32 %tid.164, 0
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.end21

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.end21:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end21, %if.then12, %if.then8, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %for.end21 ], [ -2, %if.then12 ], [ %call6, %if.then8 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_set_peer_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_peer_rx_tid_setup(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_peer_rx_frag_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_peer_rx_tid_delete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_srng_cleanup(ptr nocapture noundef readonly %ab, ptr nocapture noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %cached = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %paddr_unaligned = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 2
  %8 = ptrtoint ptr %paddr_unaligned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr_unaligned, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ring, align 4
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %ring, i32 noundef %type, i32 noundef %ring_num, i32 noundef %mac_id, i32 noundef %num_entries) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.hal_srng_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #5
  %0 = getelementptr inbounds i8, ptr %params, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %call = tail call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %ab, i32 noundef %type) #5
  %call1 = tail call i32 @ath11k_hal_srng_get_max_entries(ptr noundef %ab, i32 noundef %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 %num_entries)
  %mul = mul i32 %2, %call
  %sub = add i32 %mul, 7
  %size = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %size, align 4
  %alloc_cacheable_memory = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 44
  %4 = ptrtoint ptr %alloc_cacheable_memory to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alloc_cacheable_memory, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.then16_crit_edge, label %if.then6

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then6:                                         ; preds = %if.end
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.then6.if.then16_crit_edge [
    i32 13, label %if.then6.if.end8.i.i_crit_edge
    i32 0, label %if.then6.if.end8.i.i_crit_edge118
  ]

if.then6.if.end8.i.i_crit_edge118:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then6.if.end8.i.i_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then6.if.then16_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end8.i.i:                                      ; preds = %if.then6.if.end8.i.i_crit_edge, %if.then6.if.end8.i.i_crit_edge118
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #8
  %7 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %ring, align 4
  %8 = ptrtoint ptr %call9.i.i to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %8) #5
  %paddr_unaligned = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 2
  %9 = ptrtoint ptr %paddr_unaligned to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %paddr_unaligned, align 4
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %type, label %if.end8.i.i.if.then16_crit_edge [
    i32 13, label %if.end8.i.i.if.end21thread-pre-split_crit_edge
    i32 0, label %if.end8.i.i.if.end21thread-pre-split_crit_edge119
  ]

if.end8.i.i.if.end21thread-pre-split_crit_edge119: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21thread-pre-split

if.end8.i.i.if.end21thread-pre-split_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21thread-pre-split

if.end8.i.i.if.then16_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then16:                                        ; preds = %if.end8.i.i.if.then16_crit_edge, %if.then6.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %paddr_unaligned18 = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 2
  %call.i113 = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef %14, ptr noundef %paddr_unaligned18, i32 noundef 3264, i32 noundef 0) #5
  %15 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i113, ptr %ring, align 4
  br label %if.end21

if.end21thread-pre-split:                         ; preds = %if.end8.i.i.if.end21thread-pre-split_crit_edge, %if.end8.i.i.if.end21thread-pre-split_crit_edge119
  %16 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %ring, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %if.then16
  %17 = phi ptr [ %.pr, %if.end21thread-pre-split ], [ %call.i113, %if.then16 ]
  %cached.1.off0116 = phi i1 [ true, %if.end21thread-pre-split ], [ false, %if.then16 ]
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %17 to i32
  %add27 = add i32 %18, 7
  %and = and i32 %add27, -8
  %19 = inttoptr i32 %and to ptr
  %vaddr = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 1
  %20 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %vaddr, align 4
  %paddr_unaligned28 = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 2
  %21 = ptrtoint ptr %paddr_unaligned28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paddr_unaligned28, align 4
  %sub31 = sub i32 %and, %18
  %add32 = add i32 %22, %sub31
  %paddr = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 3
  %23 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add32, ptr %paddr, align 4
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %ring_base_vaddr, align 4
  %25 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add32, ptr %params, align 4
  %num_entries35 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 2
  %26 = ptrtoint ptr %num_entries35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %2, ptr %num_entries35, align 4
  %add36 = add i32 %mac_id, %ring_num
  call fastcc void @ath11k_dp_srng_msi_setup(ptr noundef %ab, ptr noundef nonnull %params, i32 noundef %type, i32 noundef %add36)
  %27 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %type, label %sw.default50 [
    i32 0, label %if.end25.sw.epilog51.sink.split_crit_edge
    i32 14, label %if.end25.sw.bb38_crit_edge
    i32 16, label %if.end25.sw.bb38_crit_edge120
    i32 17, label %if.end25.sw.bb38_crit_edge121
    i32 13, label %sw.bb41
    i32 1, label %if.end25.sw.bb47_crit_edge
    i32 2, label %if.end25.sw.bb47_crit_edge122
    i32 3, label %if.end25.sw.bb47_crit_edge123
    i32 4, label %if.end25.sw.bb47_crit_edge124
    i32 5, label %if.end25.sw.bb47_crit_edge125
    i32 6, label %if.end25.sw.bb47_crit_edge126
    i32 7, label %if.end25.sw.bb47_crit_edge127
    i32 11, label %if.end25.sw.bb47_crit_edge128
    i32 12, label %if.end25.sw.bb47_crit_edge129
    i32 15, label %if.end25.sw.bb47_crit_edge130
    i32 18, label %if.end25.sw.bb47_crit_edge131
    i32 19, label %if.end25.sw.bb47_crit_edge132
    i32 20, label %if.end25.sw.epilog51_crit_edge
  ]

if.end25.sw.epilog51_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog51

if.end25.sw.bb47_crit_edge132:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge131:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge130:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge129:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge128:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge127:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge126:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge125:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge124:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge123:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge122:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb47_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.end25.sw.bb38_crit_edge121:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

if.end25.sw.bb38_crit_edge120:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

if.end25.sw.bb38_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

if.end25.sw.epilog51.sink.split_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog51.sink.split

sw.bb38:                                          ; preds = %if.end25.sw.bb38_crit_edge, %if.end25.sw.bb38_crit_edge120, %if.end25.sw.bb38_crit_edge121
  %shr = ashr i32 %2, 3
  %low_threshold = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 7
  %28 = ptrtoint ptr %low_threshold to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr, ptr %low_threshold, align 4
  %flags = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 5
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or = or i32 %30, 65536
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog51.sink.split

sw.bb41:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ring_num)
  %cmp42 = icmp slt i32 %ring_num, 3
  br i1 %cmp42, label %sw.bb41.sw.epilog51.sink.split_crit_edge, label %sw.bb41.sw.bb47_crit_edge

sw.bb41.sw.bb47_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

sw.bb41.sw.epilog51.sink.split_crit_edge:         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog51.sink.split

sw.bb47:                                          ; preds = %sw.bb41.sw.bb47_crit_edge, %if.end25.sw.bb47_crit_edge, %if.end25.sw.bb47_crit_edge122, %if.end25.sw.bb47_crit_edge123, %if.end25.sw.bb47_crit_edge124, %if.end25.sw.bb47_crit_edge125, %if.end25.sw.bb47_crit_edge126, %if.end25.sw.bb47_crit_edge127, %if.end25.sw.bb47_crit_edge128, %if.end25.sw.bb47_crit_edge129, %if.end25.sw.bb47_crit_edge130, %if.end25.sw.bb47_crit_edge131, %if.end25.sw.bb47_crit_edge132
  br label %sw.epilog51.sink.split

sw.default50:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.5, i32 noundef %type) #5
  br label %cleanup

sw.epilog51.sink.split:                           ; preds = %sw.bb47, %sw.bb41.sw.epilog51.sink.split_crit_edge, %sw.bb38, %if.end25.sw.epilog51.sink.split_crit_edge
  %.sink117 = phi i32 [ 1, %sw.bb47 ], [ 0, %sw.bb38 ], [ 128, %if.end25.sw.epilog51.sink.split_crit_edge ], [ 256, %sw.bb41.sw.epilog51.sink.split_crit_edge ]
  %.sink = phi i32 [ 256, %sw.bb47 ], [ 500, %sw.bb38 ], [ 500, %if.end25.sw.epilog51.sink.split_crit_edge ], [ 1000, %sw.bb41.sw.epilog51.sink.split_crit_edge ]
  %intr_batch_cntr_thres_entries48 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 3
  %31 = ptrtoint ptr %intr_batch_cntr_thres_entries48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink117, ptr %intr_batch_cntr_thres_entries48, align 4
  %intr_timer_thres_us49 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 4
  %32 = ptrtoint ptr %intr_timer_thres_us49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %intr_timer_thres_us49, align 4
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.epilog51.sink.split, %if.end25.sw.epilog51_crit_edge
  br i1 %cached.1.off0116, label %if.then53, label %sw.epilog51.if.end57_crit_edge

sw.epilog51.if.end57_crit_edge:                   ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then53:                                        ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #7
  %flags54 = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 5
  %33 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags54, align 4
  %or55 = or i32 %34, 536870912
  store i32 %or55, ptr %flags54, align 4
  %cached56 = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 6
  %35 = ptrtoint ptr %cached56 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %cached56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %sw.epilog51.if.end57_crit_edge
  %call58 = call i32 @ath11k_hal_srng_setup(ptr noundef %ab, i32 noundef %type, i32 noundef %ring_num, i32 noundef %mac_id, ptr noundef nonnull %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.6, i32 noundef %call58, i32 noundef %ring_num) #5
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %ring_id = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 5
  %36 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call58, ptr %ring_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then60, %sw.default50, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default50 ], [ %call58, %if.then60 ], [ 0, %if.end61 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_entrysize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_max_entries(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_dp_srng_msi_setup(ptr noundef %ab, ptr nocapture noundef %ring_params, i32 noundef %type, i32 noundef %ring_num) unnamed_addr #0 align 64 {
entry:
  %msi_data_count = alloca i32, align 4
  %msi_data_start = alloca i32, align 4
  %msi_irq_start = alloca i32, align 4
  %addr_lo = alloca i32, align 4
  %addr_hi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_data_count) #5
  %0 = ptrtoint ptr %msi_data_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msi_data_count, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_data_start) #5
  %1 = ptrtoint ptr %msi_data_start to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msi_data_start, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msi_irq_start) #5
  %2 = ptrtoint ptr %msi_irq_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %msi_irq_start, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_lo) #5
  %3 = ptrtoint ptr %addr_lo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %addr_lo, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_hi) #5
  %4 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %addr_hi, align 4, !annotation !88
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %get_user_msi_vector.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %get_user_msi_vector.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_user_msi_vector.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ath11k_get_user_msi_vector.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ath11k_get_user_msi_vector.exit:                  ; preds = %entry
  %call.i = call i32 %8(ptr noundef %ab, ptr noundef nonnull @.str.24, ptr noundef nonnull %msi_data_count, ptr noundef nonnull %msi_data_start, ptr noundef nonnull %msi_irq_start) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %ath11k_get_user_msi_vector.exit.cleanup_crit_edge

ath11k_get_user_msi_vector.exit.cleanup_crit_edge: ; preds = %ath11k_get_user_msi_vector.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ath11k_get_user_msi_vector.exit
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %type, label %if.end.do.body_crit_edge [
    i32 13, label %sw.bb.i
    i32 1, label %sw.bb8.i
    i32 0, label %sw.bb12.i
    i32 4, label %sw.bb16.i
    i32 17, label %if.end.sw.bb20.i_crit_edge
    i32 18, label %if.end.sw.bb20.i_crit_edge60
    i32 15, label %sw.bb24.i
    i32 14, label %sw.bb28.i
  ]

if.end.sw.bb20.i_crit_edge60:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end.sw.bb20.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ring_num)
  %cmp.i = icmp slt i32 %ring_num, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %10 = ptrtoint ptr %ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_mask.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ring_num)
  %cmp1.i = icmp eq i32 %ring_num, 3
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.do.body_crit_edge

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask4.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %12 = ptrtoint ptr %ring_mask4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring_mask4.i, align 4
  %rx_wbm_rel.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %13, i32 0, i32 4
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask10.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %14 = ptrtoint ptr %ring_mask10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_mask10.i, align 4
  %rx_err.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %15, i32 0, i32 3
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask14.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %16 = ptrtoint ptr %ring_mask14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_mask14.i, align 4
  %rx.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %17, i32 0, i32 2
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask18.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %18 = ptrtoint ptr %ring_mask18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring_mask18.i, align 4
  %reo_status.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %19, i32 0, i32 5
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end.sw.bb20.i_crit_edge, %if.end.sw.bb20.i_crit_edge60
  %ring_mask22.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %20 = ptrtoint ptr %ring_mask22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring_mask22.i, align 4
  %rx_mon_status.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %21, i32 0, i32 1
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask26.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %22 = ptrtoint ptr %ring_mask26.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring_mask26.i, align 4
  %rxdma2host.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %23, i32 0, i32 6
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring_mask30.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %24 = ptrtoint ptr %ring_mask30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring_mask30.i, align 4
  %host2rxdma.i = getelementptr inbounds %struct.ath11k_hw_ring_mask, ptr %25, i32 0, i32 7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb28.i, %sw.bb24.i, %sw.bb20.i, %sw.bb16.i, %sw.bb12.i, %sw.bb8.i, %if.then2.i, %if.then.i
  %ring_num.addr.0.i = phi i32 [ %ring_num, %sw.bb28.i ], [ %ring_num, %sw.bb24.i ], [ %ring_num, %sw.bb20.i ], [ %ring_num, %sw.bb16.i ], [ %ring_num, %sw.bb12.i ], [ %ring_num, %sw.bb8.i ], [ %ring_num, %if.then.i ], [ 0, %if.then2.i ]
  %grp_mask.0.i = phi ptr [ %host2rxdma.i, %sw.bb28.i ], [ %rxdma2host.i, %sw.bb24.i ], [ %rx_mon_status.i, %sw.bb20.i ], [ %reo_status.i, %sw.bb16.i ], [ %rx.i, %sw.bb12.i ], [ %rx_err.i, %sw.bb8.i ], [ %11, %if.then.i ], [ %rx_wbm_rel.i, %if.then2.i ]
  %shl.i.i = shl nuw i32 1, %ring_num.addr.0.i
  %26 = ptrtoint ptr %grp_mask.0.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %grp_mask.0.i, align 1
  %conv3.i.i = zext i8 %27 to i32
  %and.i.i = and i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.i.if.end7_crit_edge

sw.epilog.i.if.end7_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.i.i:                                      ; preds = %sw.epilog.i
  %arrayidx.1.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv3.1.i.i = zext i8 %29 to i32
  %and.1.i.i = and i32 %shl.i.i, %conv3.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.end7_crit_edge

for.inc.i.i.if.end7_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv3.2.i.i = zext i8 %31 to i32
  %and.2.i.i = and i32 %shl.i.i, %conv3.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.end7_crit_edge

for.inc.1.i.i.if.end7_crit_edge:                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv3.3.i.i = zext i8 %33 to i32
  %and.3.i.i = and i32 %shl.i.i, %conv3.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.end7_crit_edge

for.inc.2.i.i.if.end7_crit_edge:                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx.4.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv3.4.i.i = zext i8 %35 to i32
  %and.4.i.i = and i32 %shl.i.i, %conv3.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.end7_crit_edge

for.inc.3.i.i.if.end7_crit_edge:                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx.5.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 5
  %36 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv3.5.i.i = zext i8 %37 to i32
  %and.5.i.i = and i32 %shl.i.i, %conv3.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.if.end7_crit_edge

for.inc.4.i.i.if.end7_crit_edge:                  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx.6.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 6
  %38 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.6.i.i, align 1
  %conv3.6.i.i = zext i8 %39 to i32
  %and.6.i.i = and i32 %shl.i.i, %conv3.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.inc.6.i.i, label %for.inc.5.i.i.if.end7_crit_edge

for.inc.5.i.i.if.end7_crit_edge:                  ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx.7.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 7
  %40 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.7.i.i, align 1
  %conv3.7.i.i = zext i8 %41 to i32
  %and.7.i.i = and i32 %shl.i.i, %conv3.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.inc.7.i.i, label %for.inc.6.i.i.if.end7_crit_edge

for.inc.6.i.i.if.end7_crit_edge:                  ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %arrayidx.8.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 8
  %42 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.8.i.i, align 1
  %conv3.8.i.i = zext i8 %43 to i32
  %and.8.i.i = and i32 %shl.i.i, %conv3.8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.inc.8.i.i, label %for.inc.7.i.i.if.end7_crit_edge

for.inc.7.i.i.if.end7_crit_edge:                  ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %arrayidx.9.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 9
  %44 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.9.i.i, align 1
  %conv3.9.i.i = zext i8 %45 to i32
  %and.9.i.i = and i32 %shl.i.i, %conv3.9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %and.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %for.inc.9.i.i, label %for.inc.8.i.i.if.end7_crit_edge

for.inc.8.i.i.if.end7_crit_edge:                  ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %arrayidx.10.i.i = getelementptr i8, ptr %grp_mask.0.i, i32 10
  %46 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.10.i.i, align 1
  %conv3.10.i.i = zext i8 %47 to i32
  %and.10.i.i = and i32 %shl.i.i, %conv3.10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10.i.i)
  %tobool.not.10.i.i = icmp eq i32 %and.10.i.i, 0
  br i1 %tobool.not.10.i.i, label %for.inc.9.i.i.do.body_crit_edge, label %for.inc.9.i.i.if.end7_crit_edge

for.inc.9.i.i.if.end7_crit_edge:                  ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.9.i.i.do.body_crit_edge:                  ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.9.i.i.do.body_crit_edge, %if.else.i.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %48 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_dp_srng_msi_setup, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !89

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.25, i32 noundef %type, i32 noundef %ring_num) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %lor.lhs.false
  %msi_addr = getelementptr inbounds %struct.hal_srng_params, ptr %ring_params, i32 0, i32 8
  %49 = ptrtoint ptr %msi_addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %msi_addr, align 4
  %msi_data = getelementptr inbounds %struct.hal_srng_params, ptr %ring_params, i32 0, i32 9
  %50 = ptrtoint ptr %msi_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %msi_data, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.inc.9.i.i.if.end7_crit_edge, %for.inc.8.i.i.if.end7_crit_edge, %for.inc.7.i.i.if.end7_crit_edge, %for.inc.6.i.i.if.end7_crit_edge, %for.inc.5.i.i.if.end7_crit_edge, %for.inc.4.i.i.if.end7_crit_edge, %for.inc.3.i.i.if.end7_crit_edge, %for.inc.2.i.i.if.end7_crit_edge, %for.inc.1.i.i.if.end7_crit_edge, %for.inc.i.i.if.end7_crit_edge, %sw.epilog.i.if.end7_crit_edge
  %retval.0.i45.ph = phi i32 [ 10, %for.inc.9.i.i.if.end7_crit_edge ], [ 9, %for.inc.8.i.i.if.end7_crit_edge ], [ 8, %for.inc.7.i.i.if.end7_crit_edge ], [ 7, %for.inc.6.i.i.if.end7_crit_edge ], [ 6, %for.inc.5.i.i.if.end7_crit_edge ], [ 5, %for.inc.4.i.i.if.end7_crit_edge ], [ 4, %for.inc.3.i.i.if.end7_crit_edge ], [ 3, %for.inc.2.i.i.if.end7_crit_edge ], [ 2, %for.inc.1.i.i.if.end7_crit_edge ], [ 1, %for.inc.i.i.if.end7_crit_edge ], [ 0, %sw.epilog.i.if.end7_crit_edge ]
  %51 = ptrtoint ptr %msi_data_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msi_data_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i45.ph, i32 %52)
  %cmp8 = icmp sgt i32 %retval.0.i45.ph, %52
  br i1 %cmp8, label %do.body10, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.body10:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %53 = load i32, ptr @ath11k_debug_mask, align 4
  %and11 = and i32 %53, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %do.body10.if.then15_crit_edge

do.body10.if.then15_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false13:                                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_dp_srng_msi_setup, %if.then15)) #5
          to label %if.end19 [label %if.then15], !srcloc !89

if.then15:                                        ; preds = %lor.lhs.false13, %do.body10.if.then15_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i45.ph) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %lor.lhs.false13, %if.end7.if.end19_crit_edge
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %get_msi_address.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %get_msi_address.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_msi_address.i, align 4
  %tobool.not.i50 = icmp eq ptr %57, null
  br i1 %tobool.not.i50, label %if.end19.ath11k_get_msi_address.exit_crit_edge, label %if.end.i51

if.end19.ath11k_get_msi_address.exit_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_get_msi_address.exit

if.end.i51:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void %57(ptr noundef %ab, ptr noundef nonnull %addr_lo, ptr noundef nonnull %addr_hi) #5
  br label %ath11k_get_msi_address.exit

ath11k_get_msi_address.exit:                      ; preds = %if.end.i51, %if.end19.ath11k_get_msi_address.exit_crit_edge
  %58 = ptrtoint ptr %addr_lo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr_lo, align 4
  %msi_addr20 = getelementptr inbounds %struct.hal_srng_params, ptr %ring_params, i32 0, i32 8
  %60 = ptrtoint ptr %msi_addr20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %msi_addr20, align 4
  %61 = ptrtoint ptr %msi_data_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msi_data_count, align 4
  %rem = srem i32 %retval.0.i45.ph, %62
  %63 = ptrtoint ptr %msi_data_start to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msi_data_start, align 4
  %add = add i32 %64, %rem
  %msi_data23 = getelementptr inbounds %struct.hal_srng_params, ptr %ring_params, i32 0, i32 9
  %65 = ptrtoint ptr %msi_data23 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %msi_data23, align 4
  %flags = getelementptr inbounds %struct.hal_srng_params, ptr %ring_params, i32 0, i32 5
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %or24 = or i32 %67, 131072
  store i32 %or24, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %ath11k_get_msi_address.exit, %do.end, %ath11k_get_user_msi_vector.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_hi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_lo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_irq_start) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_data_start) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msi_data_count) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_stop_shadow_timers(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %0 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supports_shadow_regs, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_tx_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 41
  %2 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_tx_ring, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20.not = icmp eq i8 %3, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %ath11k_dp_shadow_stop_timer.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %ath11k_dp_shadow_stop_timer.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.021
  %4 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %supports_shadow_regs, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.ath11k_dp_shadow_stop_timer.exit_crit_edge, label %if.end.i

for.body.ath11k_dp_shadow_stop_timer.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_shadow_stop_timer.exit

if.end.i:                                         ; preds = %for.body
  %init.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.021, i32 2
  %6 = ptrtoint ptr %init.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %init.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.ath11k_dp_shadow_stop_timer.exit_crit_edge, label %if.end3.i

if.end.i.ath11k_dp_shadow_stop_timer.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_shadow_stop_timer.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @del_timer_sync(ptr noundef %arrayidx) #5
  br label %ath11k_dp_shadow_stop_timer.exit

ath11k_dp_shadow_stop_timer.exit:                 ; preds = %if.end3.i, %if.end.i.ath11k_dp_shadow_stop_timer.exit_crit_edge, %for.body.ath11k_dp_shadow_stop_timer.exit_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %8 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_tx_ring, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %ath11k_dp_shadow_stop_timer.exit.for.body_crit_edge, label %ath11k_dp_shadow_stop_timer.exit.for.end_crit_edge

ath11k_dp_shadow_stop_timer.exit.for.end_crit_edge: ; preds = %ath11k_dp_shadow_stop_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

ath11k_dp_shadow_stop_timer.exit.for.body_crit_edge: ; preds = %ath11k_dp_shadow_stop_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %ath11k_dp_shadow_stop_timer.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %reo_cmd_timer = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 23
  %10 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supports_shadow_regs, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i12 = icmp eq i8 %11, 0
  br i1 %tobool.not.i12, label %for.end.cleanup_crit_edge, label %if.end.i15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i15:                                       ; preds = %for.end
  %init.i13 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 23, i32 2
  %12 = ptrtoint ptr %init.i13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %init.i13, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i14 = icmp eq i8 %13, 0
  br i1 %tobool1.not.i14, label %if.end.i15.cleanup_crit_edge, label %if.end3.i17

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i17:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  %call.i16 = tail call i32 @del_timer_sync(ptr noundef %reo_cmd_timer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i17, %if.end.i15.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_shadow_stop_timer(ptr nocapture noundef readonly %ab, ptr noundef %update_timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %0 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supports_shadow_regs, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %init = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 2
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @del_timer_sync(ptr noundef %update_timer) #5
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_link_desc_cleanup(ptr nocapture noundef %ab, ptr nocapture noundef %desc_bank, i32 noundef %ring_type, ptr nocapture noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath11k_dp_link_desc_bank_free(ptr noundef %ab, ptr noundef %desc_bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %ring_type)
  %cmp.not = icmp eq i32 %ring_type, 19
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.ath11k_dp_srng_cleanup.exit_crit_edge, label %if.end.i

if.then.ath11k_dp_srng_cleanup.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit

if.end.i:                                         ; preds = %if.then
  %cached.i = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %cached.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cached.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %paddr_unaligned.i = getelementptr inbounds %struct.dp_srng, ptr %ring, i32 0, i32 2
  %8 = ptrtoint ptr %paddr_unaligned.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr_unaligned.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ring, align 4
  br label %ath11k_dp_srng_cleanup.exit

ath11k_dp_srng_cleanup.exit:                      ; preds = %if.end5.i, %if.then.ath11k_dp_srng_cleanup.exit_crit_edge
  %scatter_list.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 17
  %dev.i3 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ath11k_dp_srng_cleanup.exit
  %i.016.i = phi i32 [ 0, %ath11k_dp_srng_cleanup.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %vaddr.i = getelementptr %struct.hal_wbm_idle_scatter_list, ptr %scatter_list.i, i32 %i.016.i, i32 1
  %11 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vaddr.i, align 4
  %tobool.not.i4 = icmp eq ptr %12, null
  br i1 %tobool.not.i4, label %for.body.i.for.inc.i_crit_edge, label %if.end.i5

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i5:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.hal_wbm_idle_scatter_list, ptr %scatter_list.i, i32 %i.016.i
  %13 = ptrtoint ptr %dev.i3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i3, align 8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef 32704, ptr noundef nonnull %12, i32 noundef %16, i32 noundef 0) #5
  %17 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vaddr.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i5, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_dp_link_desc_bank_free(ptr nocapture noundef readonly %ab, ptr nocapture noundef %link_desc_banks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %link_desc_banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_desc_banks, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %size = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %paddr_unaligned = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 0, i32 2
  %6 = ptrtoint ptr %paddr_unaligned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paddr_unaligned, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #5
  %8 = ptrtoint ptr %link_desc_banks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %link_desc_banks, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %size.1 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 1, i32 4
  %13 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.1, align 4
  %paddr_unaligned.1 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 1, i32 2
  %15 = ptrtoint ptr %paddr_unaligned.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr_unaligned.1, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %10, i32 noundef %16, i32 noundef 0) #5
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %19, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %size.2 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 2, i32 4
  %22 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.2, align 4
  %paddr_unaligned.2 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 2, i32 2
  %24 = ptrtoint ptr %paddr_unaligned.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paddr_unaligned.2, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %19, i32 noundef %25, i32 noundef 0) #5
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %28, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %size.3 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 3, i32 4
  %31 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.3, align 4
  %paddr_unaligned.3 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 3, i32 2
  %33 = ptrtoint ptr %paddr_unaligned.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %paddr_unaligned.3, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %28, i32 noundef %34, i32 noundef 0) #5
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %37, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %size.4 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 4, i32 4
  %40 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.4, align 4
  %paddr_unaligned.4 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 4, i32 2
  %42 = ptrtoint ptr %paddr_unaligned.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %paddr_unaligned.4, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %37, i32 noundef %43, i32 noundef 0) #5
  %44 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 5
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %46, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %size.5 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 5, i32 4
  %49 = ptrtoint ptr %size.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.5, align 4
  %paddr_unaligned.5 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 5, i32 2
  %51 = ptrtoint ptr %paddr_unaligned.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %paddr_unaligned.5, align 4
  tail call void @dma_free_attrs(ptr noundef %48, i32 noundef %50, ptr noundef nonnull %46, i32 noundef %52, i32 noundef 0) #5
  %53 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 6
  %54 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %55, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %size.6 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 6, i32 4
  %58 = ptrtoint ptr %size.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.6, align 4
  %paddr_unaligned.6 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 6, i32 2
  %60 = ptrtoint ptr %paddr_unaligned.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %paddr_unaligned.6, align 4
  tail call void @dma_free_attrs(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %55, i32 noundef %61, i32 noundef 0) #5
  %62 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 7
  %63 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %64, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  %size.7 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 7, i32 4
  %67 = ptrtoint ptr %size.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.7, align 4
  %paddr_unaligned.7 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 7, i32 2
  %69 = ptrtoint ptr %paddr_unaligned.7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %paddr_unaligned.7, align 4
  tail call void @dma_free_attrs(ptr noundef %66, i32 noundef %68, ptr noundef nonnull %64, i32 noundef %70, i32 noundef 0) #5
  %71 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_link_desc_setup(ptr noundef %ab, ptr noundef %link_desc_banks, i32 noundef %ring_type, ptr noundef %srng, i32 noundef %n_link_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %n_link_desc, 7
  %add = add i32 %mul, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097153, i32 %add)
  %cmp = icmp ult i32 %add, 2097153
  br i1 %cmp, label %entry.for.body.lr.ph.i_crit_edge, label %if.end3

entry.for.body.lr.ph.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i

if.end3:                                          ; preds = %entry
  %div = udiv i32 %add, 2097024
  %0 = mul i32 %div, 2097024
  %rem.decomposed = sub i32 %add, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  %add2 = zext i1 %tobool.not to i32
  %spec.select = add nuw nsw i32 %div, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select)
  %cmp4 = icmp ugt i32 %spec.select, 8
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end3.for.body.lr.ph.i_crit_edge

if.end3.for.body.lr.ph.i_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end3.for.body.lr.ph.i_crit_edge, %entry.for.body.lr.ph.i_crit_edge
  %last_bank_sz.0100 = phi i32 [ %rem.decomposed, %if.end3.for.body.lr.ph.i_crit_edge ], [ %add, %entry.for.body.lr.ph.i_crit_edge ]
  %n_link_desc_bank.099 = phi i32 [ %spec.select, %if.end3.for.body.lr.ph.i_crit_edge ], [ 1, %entry.for.body.lr.ph.i_crit_edge ]
  %sub.i = add nsw i32 %n_link_desc_bank.099, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_bank_sz.0100)
  %tobool.not.i = icmp eq i32 %last_bank_sz.0100, 0
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %desc_sz.053.i = phi i32 [ 2097152, %for.body.lr.ph.i ], [ %desc_sz.1.i, %if.end8.i.for.body.i_crit_edge ]
  %i.052.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.052.i, i32 %sub.i)
  %cmp2.i = icmp ne i32 %i.052.i, %sub.i
  %or.cond.i = or i1 %tobool.not.i, %cmp2.i
  %desc_sz.1.i = select i1 %or.cond.i, i32 %desc_sz.053.i, i32 %last_bank_sz.0100
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  %arrayidx.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.052.i
  %paddr_unaligned.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.052.i, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %desc_sz.1.i, ptr noundef %paddr_unaligned.i, i32 noundef 3264, i32 noundef 0) #5
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %ath11k_dp_link_desc_bank_alloc.exit, label %if.end8.i

if.end8.i:                                        ; preds = %for.body.i
  %4 = ptrtoint ptr %call.i.i to i32
  %add.i = add i32 %4, 127
  %and.i = and i32 %add.i, -128
  %5 = inttoptr i32 %and.i to ptr
  %vaddr.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.052.i, i32 1
  %6 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %vaddr.i, align 4
  %7 = ptrtoint ptr %paddr_unaligned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %paddr_unaligned.i, align 4
  %sub18.i = sub i32 %and.i, %4
  %add19.i = add i32 %sub18.i, %8
  %paddr.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.052.i, i32 3
  %9 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add19.i, ptr %paddr.i, align 4
  %size.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.052.i, i32 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %desc_sz.1.i, ptr %size.i, align 4
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n_link_desc_bank.099
  br i1 %exitcond.not.i, label %if.end9, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ath11k_dp_link_desc_bank_alloc.exit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %link_desc_banks.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 5
  tail call fastcc void @ath11k_dp_link_desc_bank_free(ptr noundef %ab, ptr noundef %link_desc_banks.i) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %call10 = tail call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %ab, i32 noundef %ring_type) #5
  %mul11 = mul i32 %call10, %n_link_desc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097153, i32 %mul11)
  %cmp12 = icmp ult i32 %mul11, 2097153
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %ring_type)
  %cmp13.not = icmp eq i32 %ring_type, 19
  %or.cond = or i1 %cmp13.not, %cmp12
  br i1 %or.cond, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end9
  %link_desc_banks2.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 5
  %scatter_list.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 17
  %call.i = tail call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %ab, i32 noundef 11) #5
  %div.i = sdiv i32 32696, %call.i
  %sub.i85 = add i32 %mul11, 32695
  %div4.i = sdiv i32 %sub.i85, 32696
  call void @__sanitizer_cov_trace_const_cmp4(i32 555831, i32 %sub.i85)
  %cmp.i = icmp sgt i32 %sub.i85, 555831
  br i1 %cmp.i, label %if.then17, label %for.end.i

for.end.i:                                        ; preds = %if.then14
  %vaddr14.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 17, i32 0, i32 1
  %11 = ptrtoint ptr %vaddr14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vaddr14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_link_desc_bank.099)
  %cmp1624.not.i = icmp eq i32 %n_link_desc_bank.099, 0
  br i1 %cmp1624.not.i, label %for.end.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge, label %for.end.i.for.body17.i_crit_edge

for.end.i.for.body17.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body17.i

for.end.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_scatter_idle_link_desc_setup.exit

for.body17.i:                                     ; preds = %for.inc34.i.for.body17.i_crit_edge, %for.end.i.for.body17.i_crit_edge
  %i.128.i = phi i32 [ %inc35.i, %for.inc34.i.for.body17.i_crit_edge ], [ 0, %for.end.i.for.body17.i_crit_edge ]
  %rem_entries.027.i = phi i32 [ %rem_entries.1.lcssa.i, %for.inc34.i.for.body17.i_crit_edge ], [ %div.i, %for.end.i.for.body17.i_crit_edge ]
  %scatter_buf.026.i = phi ptr [ %scatter_buf.1.lcssa.i, %for.inc34.i.for.body17.i_crit_edge ], [ %12, %for.end.i.for.body17.i_crit_edge ]
  %scatter_idx.025.i = phi i32 [ %scatter_idx.1.ph.lcssa.i, %for.inc34.i.for.body17.i_crit_edge ], [ 0, %for.end.i.for.body17.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks2.i, i32 %i.128.i
  %vaddr19.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks2.i, i32 %i.128.i, i32 1
  %13 = ptrtoint ptr %vaddr19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vaddr19.i, align 4
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx18.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.neg.i = sub i32 2097152, %sub.ptr.lhs.cast.i
  %sub21.i = add i32 %sub.ptr.sub.neg.i, %sub.ptr.rhs.cast.i
  %sub21.off.i = add i32 %sub21.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub21.off.i)
  %17 = icmp ult i32 %sub21.off.i, 255
  br i1 %17, label %for.body17.i.for.inc34.i_crit_edge, label %while.body.lr.ph.preheader.i

for.body17.i.for.inc34.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.i

while.body.lr.ph.preheader.i:                     ; preds = %for.body17.i
  %paddr24.i = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks2.i, i32 %i.128.i, i32 3
  %18 = ptrtoint ptr %paddr24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %paddr24.i, align 4
  %div22.i = sdiv i32 %sub21.i, 128
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end30.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.preheader.i
  %rem_entries.1.ph20.i = phi i32 [ %div.i, %if.end30.i.while.body.lr.ph.i_crit_edge ], [ %rem_entries.027.i, %while.body.lr.ph.preheader.i ]
  %paddr.0.ph19.i = phi i32 [ %add26.i, %if.end30.i.while.body.lr.ph.i_crit_edge ], [ %19, %while.body.lr.ph.preheader.i ]
  %n_entries.0.ph18.i = phi i32 [ %dec.i, %if.end30.i.while.body.lr.ph.i_crit_edge ], [ %div22.i, %while.body.lr.ph.preheader.i ]
  %scatter_buf.1.ph17.i = phi ptr [ %21, %if.end30.i.while.body.lr.ph.i_crit_edge ], [ %scatter_buf.026.i, %while.body.lr.ph.preheader.i ]
  %scatter_idx.1.ph16.i = phi i32 [ %inc31.i, %if.end30.i.while.body.lr.ph.i_crit_edge ], [ %scatter_idx.025.i, %while.body.lr.ph.preheader.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.then28.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %rem_entries.19.i = phi i32 [ %rem_entries.1.ph20.i, %while.body.lr.ph.i ], [ %dec29.i, %if.then28.i.while.body.i_crit_edge ]
  %paddr.08.i = phi i32 [ %paddr.0.ph19.i, %while.body.lr.ph.i ], [ %add26.i, %if.then28.i.while.body.i_crit_edge ]
  %n_entries.07.i = phi i32 [ %n_entries.0.ph18.i, %while.body.lr.ph.i ], [ %dec.i, %if.then28.i.while.body.i_crit_edge ]
  %scatter_buf.16.i = phi ptr [ %scatter_buf.1.ph17.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.then28.i.while.body.i_crit_edge ]
  tail call void @ath11k_hal_set_link_desc_addr(ptr noundef %scatter_buf.16.i, i32 noundef %i.128.i, i32 noundef %paddr.08.i) #5
  %dec.i = add i32 %n_entries.07.i, -1
  %add26.i = add i32 %paddr.08.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_entries.19.i)
  %tobool27.not.i = icmp eq i32 %rem_entries.19.i, 0
  br i1 %tobool27.not.i, label %if.end30.i, label %if.then28.i

if.then28.i:                                      ; preds = %while.body.i
  %dec29.i = add i32 %rem_entries.19.i, -1
  %incdec.ptr.i = getelementptr %struct.hal_wbm_link_desc, ptr %scatter_buf.16.i, i32 1
  %tobool25.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool25.not.i, label %if.then28.i.for.inc34.i_crit_edge, label %if.then28.i.while.body.i_crit_edge

if.then28.i.while.body.i_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.then28.i.for.inc34.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.i

if.end30.i:                                       ; preds = %while.body.i
  %inc31.i = add i32 %scatter_idx.1.ph16.i, 1
  %vaddr33.i = getelementptr %struct.hal_wbm_idle_scatter_list, ptr %scatter_list.i, i32 %inc31.i, i32 1
  %20 = ptrtoint ptr %vaddr33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vaddr33.i, align 4
  %tobool25.not5.i = icmp eq i32 %dec.i, 0
  br i1 %tobool25.not5.i, label %if.end30.i.for.inc34.i_crit_edge, label %if.end30.i.while.body.lr.ph.i_crit_edge

if.end30.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

if.end30.i.for.inc34.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.end30.i.for.inc34.i_crit_edge, %if.then28.i.for.inc34.i_crit_edge, %for.body17.i.for.inc34.i_crit_edge
  %scatter_idx.1.ph.lcssa.i = phi i32 [ %scatter_idx.025.i, %for.body17.i.for.inc34.i_crit_edge ], [ %scatter_idx.1.ph16.i, %if.then28.i.for.inc34.i_crit_edge ], [ %inc31.i, %if.end30.i.for.inc34.i_crit_edge ]
  %scatter_buf.1.lcssa.i = phi ptr [ %scatter_buf.026.i, %for.body17.i.for.inc34.i_crit_edge ], [ %incdec.ptr.i, %if.then28.i.for.inc34.i_crit_edge ], [ %21, %if.end30.i.for.inc34.i_crit_edge ]
  %rem_entries.1.lcssa.i = phi i32 [ %rem_entries.027.i, %for.body17.i.for.inc34.i_crit_edge ], [ %dec29.i, %if.then28.i.for.inc34.i_crit_edge ], [ %div.i, %if.end30.i.for.inc34.i_crit_edge ]
  %inc35.i = add nuw nsw i32 %i.128.i, 1
  %exitcond37.not.i = icmp eq i32 %inc35.i, %n_link_desc_bank.099
  br i1 %exitcond37.not.i, label %for.inc34.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge, label %for.inc34.i.for.body17.i_crit_edge

for.inc34.i.for.body17.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.i

for.inc34.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge: ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_scatter_idle_link_desc_setup.exit

ath11k_dp_scatter_idle_link_desc_setup.exit:      ; preds = %for.inc34.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge, %for.end.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge
  %scatter_idx.0.lcssa.i = phi i32 [ 0, %for.end.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge ], [ %scatter_idx.1.ph.lcssa.i, %for.inc34.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge ]
  %scatter_buf.0.lcssa.i = phi ptr [ %12, %for.end.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge ], [ %scatter_buf.1.lcssa.i, %for.inc34.i.ath11k_dp_scatter_idle_link_desc_setup.exit_crit_edge ]
  %vaddr38.i = getelementptr %struct.hal_wbm_idle_scatter_list, ptr %scatter_list.i, i32 %scatter_idx.0.lcssa.i, i32 1
  %22 = ptrtoint ptr %vaddr38.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr38.i, align 4
  %sub.ptr.lhs.cast39.i = ptrtoint ptr %scatter_buf.0.lcssa.i to i32
  %sub.ptr.rhs.cast40.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub41.i = sub i32 %sub.ptr.lhs.cast39.i, %sub.ptr.rhs.cast40.i
  tail call void @ath11k_hal_setup_link_idle_list(ptr noundef %ab, ptr noundef %scatter_list.i, i32 noundef %div4.i, i32 noundef %n_link_desc, i32 noundef %sub.ptr.sub41.i) #5
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.7, i32 noundef -22) #5
  tail call fastcc void @ath11k_dp_link_desc_bank_free(ptr noundef %ab, ptr noundef %link_desc_banks)
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %lock = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  tail call void @ath11k_hal_srng_access_begin(ptr noundef %ab, ptr noundef %srng) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_link_desc_bank.099)
  %cmp20113.not = icmp eq i32 %n_link_desc_bank.099, 0
  br i1 %cmp20113.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.0114
  %vaddr = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.0114, i32 1
  %24 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vaddr, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %size = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.0114, i32 4
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %sub = add i32 %sub.ptr.sub.neg, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub)
  %tobool26.not110 = icmp ult i32 %sub, 128
  br i1 %tobool26.not110, label %for.body.for.inc_crit_edge, label %land.rhs.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.rhs.preheader:                               ; preds = %for.body
  %paddr25 = getelementptr %struct.dp_link_desc_bank, ptr %link_desc_banks, i32 %i.0114, i32 3
  %30 = ptrtoint ptr %paddr25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %paddr25, align 4
  %div2383 = lshr i32 %sub, 7
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %paddr.0112 = phi i32 [ %add29, %while.body.land.rhs_crit_edge ], [ %31, %land.rhs.preheader ]
  %n_entries.0111 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %div2383, %land.rhs.preheader ]
  %call27 = tail call ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef %ab, ptr noundef %srng) #5
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %land.rhs.for.inc_crit_edge, label %while.body

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body:                                       ; preds = %land.rhs
  tail call void @ath11k_hal_set_link_desc_addr(ptr noundef nonnull %call27, i32 noundef %i.0114, i32 noundef %paddr.0112) #5
  %dec = add i32 %n_entries.0111, -1
  %add29 = add i32 %paddr.0112, 128
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %while.body.for.inc_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, %n_link_desc_bank.099
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  tail call void @ath11k_hal_srng_access_end(ptr noundef %ab, ptr noundef %srng) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %ath11k_dp_scatter_idle_link_desc_setup.exit, %ath11k_dp_link_desc_bank_alloc.exit, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ 0, %for.end ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %ath11k_dp_link_desc_bank_alloc.exit ], [ 0, %ath11k_dp_scatter_idle_link_desc_setup.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_set_link_desc_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_service_srng(ptr noundef %ab, ptr noundef %irq_grp, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %napi1 = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %irq_grp, i32 0, i32 6
  %grp_id2 = getelementptr inbounds %struct.ath11k_ext_irq_grp, ptr %irq_grp, i32 0, i32 3
  %0 = ptrtoint ptr %grp_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %grp_id2, align 8
  %ring_mask = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 6
  %2 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_mask, align 4
  %arrayidx = getelementptr [11 x i8], ptr %3, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %5 to i32
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #5, !range !90
  %sub.i = xor i32 %6, 31
  tail call void @ath11k_dp_tx_completion_handler(ptr noundef %ab, i32 noundef %sub.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring_mask, align 4
  %arrayidx9 = getelementptr %struct.ath11k_hw_ring_mask, ptr %8, i32 0, i32 3, i32 %1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %if.end
  %call12 = tail call i32 @ath11k_dp_process_rx_err(ptr noundef %ab, ptr noundef %napi1, i32 noundef %budget) #5
  %sub = sub i32 %budget, %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then11.cleanup145_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11.cleanup145_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %tot_work_done.0 = phi i32 [ %call12, %if.then11.if.end16_crit_edge ], [ 0, %if.end.if.end16_crit_edge ]
  %budget.addr.0 = phi i32 [ %sub, %if.then11.if.end16_crit_edge ], [ %budget, %if.end.if.end16_crit_edge ]
  %11 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring_mask, align 4
  %arrayidx19 = getelementptr %struct.ath11k_hw_ring_mask, ptr %12, i32 0, i32 4, i32 %1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not = icmp eq i8 %14, 0
  br i1 %tobool20.not, label %if.end16.if.end29_crit_edge, label %if.then21

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then21:                                        ; preds = %if.end16
  %call22 = tail call i32 @ath11k_dp_rx_process_wbm_err(ptr noundef %ab, ptr noundef %napi1, i32 noundef %budget.addr.0) #5
  %sub23 = sub i32 %budget.addr.0, %call22
  %add24 = add i32 %call22, %tot_work_done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub23)
  %cmp25 = icmp slt i32 %sub23, 1
  br i1 %cmp25, label %if.then21.cleanup145_crit_edge, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then21.cleanup145_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

if.end29:                                         ; preds = %if.then21.if.end29_crit_edge, %if.end16.if.end29_crit_edge
  %tot_work_done.1 = phi i32 [ %add24, %if.then21.if.end29_crit_edge ], [ %tot_work_done.0, %if.end16.if.end29_crit_edge ]
  %budget.addr.1 = phi i32 [ %sub23, %if.then21.if.end29_crit_edge ], [ %budget.addr.0, %if.end16.if.end29_crit_edge ]
  %15 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_mask, align 4
  %arrayidx32 = getelementptr %struct.ath11k_hw_ring_mask, ptr %16, i32 0, i32 2, i32 %1
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  br i1 %tobool33.not, label %if.end29.if.end49_crit_edge, label %if.then34

if.end29.if.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then34:                                        ; preds = %if.end29
  %conv39 = zext i8 %18 to i32
  %19 = tail call i32 @llvm.ctlz.i32(i32 %conv39, i1 true) #5, !range !90
  %sub41 = xor i32 %19, 31
  %call42 = tail call i32 @ath11k_dp_process_rx(ptr noundef %ab, i32 noundef %sub41, ptr noundef %napi1, i32 noundef %budget.addr.1) #5
  %sub43 = sub i32 %budget.addr.1, %call42
  %add44 = add i32 %call42, %tot_work_done.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub43)
  %cmp45 = icmp slt i32 %sub43, 1
  br i1 %cmp45, label %if.then34.cleanup145_crit_edge, label %if.then34.if.end49_crit_edge

if.then34.if.end49_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then34.cleanup145_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

if.end49:                                         ; preds = %if.then34.if.end49_crit_edge, %if.end29.if.end49_crit_edge
  %tot_work_done.2 = phi i32 [ %add44, %if.then34.if.end49_crit_edge ], [ %tot_work_done.1, %if.end29.if.end49_crit_edge ]
  %budget.addr.2 = phi i32 [ %sub43, %if.then34.if.end49_crit_edge ], [ %budget.addr.1, %if.end29.if.end49_crit_edge ]
  %20 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring_mask, align 4
  %arrayidx52 = getelementptr %struct.ath11k_hw_ring_mask, ptr %21, i32 0, i32 1, i32 %1
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool53.not = icmp eq i8 %23, 0
  br i1 %tobool53.not, label %if.end49.if.end83_crit_edge, label %for.cond.preheader

if.end49.if.end83_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

for.cond.preheader:                               ; preds = %if.end49
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %24 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp55267 = icmp sgt i32 %25, 0
  br i1 %cmp55267, label %for.cond57.preheader.lr.ph, label %for.cond.preheader.if.end83_crit_edge

for.cond.preheader.if.end83_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

for.cond57.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %num_rxmda_per_pdev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 21
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %for.inc80.for.cond57.preheader_crit_edge, %for.cond57.preheader.lr.ph
  %budget.addr.3271 = phi i32 [ %budget.addr.2, %for.cond57.preheader.lr.ph ], [ %budget.addr.4.lcssa, %for.inc80.for.cond57.preheader_crit_edge ]
  %tot_work_done.3270 = phi i32 [ %tot_work_done.2, %for.cond57.preheader.lr.ph ], [ %tot_work_done.4.lcssa, %for.inc80.for.cond57.preheader_crit_edge ]
  %i.0268 = phi i32 [ 0, %for.cond57.preheader.lr.ph ], [ %inc81, %for.inc80.for.cond57.preheader_crit_edge ]
  %26 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp59262 = icmp sgt i32 %27, 0
  br i1 %cmp59262, label %for.cond57.preheader.for.body61_crit_edge, label %for.cond57.preheader.for.inc80_crit_edge

for.cond57.preheader.for.inc80_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc80

for.cond57.preheader.for.body61_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body61

for.body61:                                       ; preds = %for.inc.for.body61_crit_edge, %for.cond57.preheader.for.body61_crit_edge
  %28 = phi i32 [ %34, %for.inc.for.body61_crit_edge ], [ %27, %for.cond57.preheader.for.body61_crit_edge ]
  %budget.addr.4265 = phi i32 [ %budget.addr.5, %for.inc.for.body61_crit_edge ], [ %budget.addr.3271, %for.cond57.preheader.for.body61_crit_edge ]
  %tot_work_done.4264 = phi i32 [ %tot_work_done.5, %for.inc.for.body61_crit_edge ], [ %tot_work_done.3270, %for.cond57.preheader.for.body61_crit_edge ]
  %j.0263 = phi i32 [ %inc, %for.inc.for.body61_crit_edge ], [ 0, %for.cond57.preheader.for.body61_crit_edge ]
  %mul = mul i32 %28, %i.0268
  %add64 = add i32 %mul, %j.0263
  %29 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring_mask, align 4
  %arrayidx68 = getelementptr %struct.ath11k_hw_ring_mask, ptr %30, i32 0, i32 1, i32 %1
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %32 to i32
  %shl = shl nuw i32 1, %add64
  %and = and i32 %shl, %conv69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %for.body61.for.inc_crit_edge, label %if.then71

for.body61.for.inc_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then71:                                        ; preds = %for.body61
  %call72 = tail call i32 @ath11k_dp_rx_process_mon_rings(ptr noundef %ab, i32 noundef %add64, ptr noundef %napi1, i32 noundef %budget.addr.4265) #5
  %sub73 = sub i32 %budget.addr.4265, %call72
  %add74 = add i32 %call72, %tot_work_done.4264
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub73)
  %cmp75 = icmp slt i32 %sub73, 1
  br i1 %cmp75, label %if.then71.cleanup145_crit_edge, label %if.then71.for.inc_crit_edge

if.then71.for.inc_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then71.cleanup145_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

for.inc:                                          ; preds = %if.then71.for.inc_crit_edge, %for.body61.for.inc_crit_edge
  %tot_work_done.5 = phi i32 [ %add74, %if.then71.for.inc_crit_edge ], [ %tot_work_done.4264, %for.body61.for.inc_crit_edge ]
  %budget.addr.5 = phi i32 [ %sub73, %if.then71.for.inc_crit_edge ], [ %budget.addr.4265, %for.body61.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0263, 1
  %33 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp59 = icmp slt i32 %inc, %34
  br i1 %cmp59, label %for.inc.for.body61_crit_edge, label %for.inc.for.inc80_crit_edge

for.inc.for.inc80_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc80

for.inc.for.body61_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body61

for.inc80:                                        ; preds = %for.inc.for.inc80_crit_edge, %for.cond57.preheader.for.inc80_crit_edge
  %tot_work_done.4.lcssa = phi i32 [ %tot_work_done.3270, %for.cond57.preheader.for.inc80_crit_edge ], [ %tot_work_done.5, %for.inc.for.inc80_crit_edge ]
  %budget.addr.4.lcssa = phi i32 [ %budget.addr.3271, %for.cond57.preheader.for.inc80_crit_edge ], [ %budget.addr.5, %for.inc.for.inc80_crit_edge ]
  %inc81 = add nuw nsw i32 %i.0268, 1
  %35 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_radios, align 64
  %cmp55 = icmp slt i32 %inc81, %36
  br i1 %cmp55, label %for.inc80.for.cond57.preheader_crit_edge, label %for.inc80.if.end83_crit_edge

for.inc80.if.end83_crit_edge:                     ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

for.inc80.for.cond57.preheader_crit_edge:         ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond57.preheader

if.end83:                                         ; preds = %for.inc80.if.end83_crit_edge, %for.cond.preheader.if.end83_crit_edge, %if.end49.if.end83_crit_edge
  %tot_work_done.7 = phi i32 [ %tot_work_done.2, %if.end49.if.end83_crit_edge ], [ %tot_work_done.2, %for.cond.preheader.if.end83_crit_edge ], [ %tot_work_done.4.lcssa, %for.inc80.if.end83_crit_edge ]
  %budget.addr.7 = phi i32 [ %budget.addr.2, %if.end49.if.end83_crit_edge ], [ %budget.addr.2, %for.cond.preheader.if.end83_crit_edge ], [ %budget.addr.4.lcssa, %for.inc80.if.end83_crit_edge ]
  %37 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring_mask, align 4
  %arrayidx86 = getelementptr %struct.ath11k_hw_ring_mask, ptr %38, i32 0, i32 5, i32 %1
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool87.not = icmp eq i8 %40, 0
  br i1 %tobool87.not, label %if.end83.if.end89_crit_edge, label %if.then88

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath11k_dp_process_reo_status(ptr noundef %ab) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end83.if.end89_crit_edge
  %num_radios91 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %41 = ptrtoint ptr %num_radios91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_radios91, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp92280 = icmp sgt i32 %42, 0
  br i1 %cmp92280, label %for.cond95.preheader.lr.ph, label %if.end89.cleanup145_crit_edge

if.end89.cleanup145_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

for.cond95.preheader.lr.ph:                       ; preds = %if.end89
  %num_rxmda_per_pdev97 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 21
  %hw_ops.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 5
  %hw_params.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36
  %hal_params133 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 42
  br label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.inc142.for.cond95.preheader_crit_edge, %for.cond95.preheader.lr.ph
  %budget.addr.8284 = phi i32 [ %budget.addr.7, %for.cond95.preheader.lr.ph ], [ %budget.addr.9.lcssa, %for.inc142.for.cond95.preheader_crit_edge ]
  %tot_work_done.8283 = phi i32 [ %tot_work_done.7, %for.cond95.preheader.lr.ph ], [ %tot_work_done.9.lcssa, %for.inc142.for.cond95.preheader_crit_edge ]
  %i.1281 = phi i32 [ 0, %for.cond95.preheader.lr.ph ], [ %inc143, %for.inc142.for.cond95.preheader_crit_edge ]
  %43 = ptrtoint ptr %num_rxmda_per_pdev97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_rxmda_per_pdev97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp98274 = icmp sgt i32 %44, 0
  br i1 %cmp98274, label %for.cond95.preheader.for.body100_crit_edge, label %for.cond95.preheader.for.inc142_crit_edge

for.cond95.preheader.for.inc142_crit_edge:        ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc142

for.cond95.preheader.for.body100_crit_edge:       ; preds = %for.cond95.preheader
  br label %for.body100

for.body100:                                      ; preds = %for.inc139.for.body100_crit_edge, %for.cond95.preheader.for.body100_crit_edge
  %45 = phi i32 [ %65, %for.inc139.for.body100_crit_edge ], [ %44, %for.cond95.preheader.for.body100_crit_edge ]
  %budget.addr.9277 = phi i32 [ %budget.addr.10, %for.inc139.for.body100_crit_edge ], [ %budget.addr.8284, %for.cond95.preheader.for.body100_crit_edge ]
  %tot_work_done.9276 = phi i32 [ %tot_work_done.10, %for.inc139.for.body100_crit_edge ], [ %tot_work_done.8283, %for.cond95.preheader.for.body100_crit_edge ]
  %j.1275 = phi i32 [ %inc140, %for.inc139.for.body100_crit_edge ], [ 0, %for.cond95.preheader.for.body100_crit_edge ]
  %mul104 = mul i32 %45, %i.1281
  %add105 = add i32 %mul104, %j.1275
  %46 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring_mask, align 4
  %arrayidx108 = getelementptr %struct.ath11k_hw_ring_mask, ptr %47, i32 0, i32 6, i32 %1
  %48 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %49 to i32
  %shl110 = shl nuw i32 1, %add105
  %and111 = and i32 %shl110, %conv109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %for.body100.if.end117_crit_edge, label %if.then113

for.body100.if.end117_crit_edge:                  ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then113:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #7
  %call114 = tail call i32 @ath11k_dp_process_rxdma_err(ptr noundef %ab, i32 noundef %add105, i32 noundef %budget.addr.9277) #5
  %sub115 = sub i32 %budget.addr.9277, %call114
  %add116 = add i32 %call114, %tot_work_done.9276
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %for.body100.if.end117_crit_edge
  %tot_work_done.10 = phi i32 [ %add116, %if.then113 ], [ %tot_work_done.9276, %for.body100.if.end117_crit_edge ]
  %budget.addr.10 = phi i32 [ %sub115, %if.then113 ], [ %budget.addr.9277, %for.body100.if.end117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget.addr.10)
  %cmp118 = icmp slt i32 %budget.addr.10, 1
  br i1 %cmp118, label %if.end117.cleanup145_crit_edge, label %if.end121

if.end117.cleanup145_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

if.end121:                                        ; preds = %if.end117
  %50 = ptrtoint ptr %ring_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring_mask, align 4
  %arrayidx124 = getelementptr %struct.ath11k_hw_ring_mask, ptr %51, i32 0, i32 7, i32 %1
  %52 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %53 to i32
  %and127 = and i32 %shl110, %conv125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end121.for.inc139_crit_edge, label %if.then129

if.end121.for.inc139_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc139

if.then129:                                       ; preds = %if.end121
  %54 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_ops.i.i, align 4
  %mac_id_to_pdev_id.i.i = getelementptr inbounds %struct.ath11k_hw_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %mac_id_to_pdev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac_id_to_pdev_id.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.then129.ath11k_ab_to_ar.exit_crit_edge, label %if.then.i.i

if.then129.ath11k_ab_to_ar.exit_crit_edge:        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_ab_to_ar.exit

if.then.i.i:                                      ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %57(ptr noundef %hw_params.i, i32 noundef %add105) #5
  br label %ath11k_ab_to_ar.exit

ath11k_ab_to_ar.exit:                             ; preds = %if.then.i.i, %if.then129.ath11k_ab_to_ar.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %if.then129.ath11k_ab_to_ar.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %retval.0.i.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 8
  %rx_refill_buf_ring = getelementptr inbounds %struct.ath11k, ptr %59, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %hal_params133 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hal_params133, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %call134 = tail call i32 @ath11k_dp_rxbufs_replenish(ptr noundef %ab, i32 noundef %add105, ptr noundef %rx_refill_buf_ring, i32 noundef 0, i32 noundef %63) #5
  br label %for.inc139

for.inc139:                                       ; preds = %ath11k_ab_to_ar.exit, %if.end121.for.inc139_crit_edge
  %inc140 = add nuw nsw i32 %j.1275, 1
  %64 = ptrtoint ptr %num_rxmda_per_pdev97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_rxmda_per_pdev97, align 4
  %cmp98 = icmp slt i32 %inc140, %65
  br i1 %cmp98, label %for.inc139.for.body100_crit_edge, label %for.inc139.for.inc142_crit_edge

for.inc139.for.inc142_crit_edge:                  ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc142

for.inc139.for.body100_crit_edge:                 ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body100

for.inc142:                                       ; preds = %for.inc139.for.inc142_crit_edge, %for.cond95.preheader.for.inc142_crit_edge
  %tot_work_done.9.lcssa = phi i32 [ %tot_work_done.8283, %for.cond95.preheader.for.inc142_crit_edge ], [ %tot_work_done.10, %for.inc139.for.inc142_crit_edge ]
  %budget.addr.9.lcssa = phi i32 [ %budget.addr.8284, %for.cond95.preheader.for.inc142_crit_edge ], [ %budget.addr.10, %for.inc139.for.inc142_crit_edge ]
  %inc143 = add nuw nsw i32 %i.1281, 1
  %66 = ptrtoint ptr %num_radios91 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_radios91, align 64
  %cmp92 = icmp slt i32 %inc143, %67
  br i1 %cmp92, label %for.inc142.for.cond95.preheader_crit_edge, label %for.inc142.cleanup145_crit_edge

for.inc142.cleanup145_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

for.inc142.for.cond95.preheader_crit_edge:        ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond95.preheader

cleanup145:                                       ; preds = %for.inc142.cleanup145_crit_edge, %if.end117.cleanup145_crit_edge, %if.end89.cleanup145_crit_edge, %if.then71.cleanup145_crit_edge, %if.then34.cleanup145_crit_edge, %if.then21.cleanup145_crit_edge, %if.then11.cleanup145_crit_edge
  %tot_work_done.11 = phi i32 [ %call12, %if.then11.cleanup145_crit_edge ], [ %add24, %if.then21.cleanup145_crit_edge ], [ %add44, %if.then34.cleanup145_crit_edge ], [ %tot_work_done.7, %if.end89.cleanup145_crit_edge ], [ %tot_work_done.10, %if.end117.cleanup145_crit_edge ], [ %tot_work_done.9.lcssa, %for.inc142.cleanup145_crit_edge ], [ %add74, %if.then71.cleanup145_crit_edge ]
  ret i32 %tot_work_done.11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_tx_completion_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_process_rx_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_rx_process_wbm_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_process_rx(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_rx_process_mon_rings(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_process_reo_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_process_rxdma_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_rxbufs_replenish(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_pdev_free(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_reap_timer = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 58
  %call = tail call i32 @del_timer_sync(ptr noundef %mon_reap_timer) #5
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  tail call void @ath11k_dp_rx_pdev_free(ptr noundef %ab, i32 noundef %i.011) #5
  tail call void @ath11k_debugfs_unregister(ptr noundef %3) #5
  %call2 = tail call i32 @ath11k_dp_rx_pdev_mon_detach(ptr noundef %3) #5
  %inc = add nuw nsw i32 %i.011, 1
  %4 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_rx_pdev_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_debugfs_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_rx_pdev_mon_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_pdev_pre_alloc(ptr nocapture noundef readonly %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp55 = icmp sgt i32 %1, 0
  br i1 %cmp55, label %for.body.lr.ph, label %entry.for.end28_crit_edge

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end28

for.body.lr.ph:                                   ; preds = %entry
  %num_rxmda_per_pdev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 21
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %i.056
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %dp2 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dp2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.056, ptr %dp2, align 8
  %bufs_idr = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %bufs_idr, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 3, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 3, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 3, i32 1, i32 2
  %8 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idr_next.i.i, align 4
  %idr_lock = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %idr_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath11k_dp_pdev_pre_alloc.__key, i16 noundef signext 3) #5
  %num_tx_pending = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_tx_pending, i32 noundef 4) #5
  %9 = ptrtoint ptr %num_tx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %num_tx_pending, align 4
  %tx_empty_waitq = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %tx_empty_waitq, ptr noundef nonnull @.str.10, ptr noundef nonnull @ath11k_dp_pdev_pre_alloc.__key.9) #5
  %10 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp853 = icmp sgt i32 %11, 0
  br i1 %cmp853, label %for.body.for.body9_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %j.054 = phi i32 [ %inc, %for.body9.for.body9_crit_edge ], [ 0, %for.body.for.body9_crit_edge ]
  %bufs_idr11 = getelementptr %struct.ath11k, ptr %3, i32 0, i32 5, i32 9, i32 %j.054, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %bufs_idr11, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i45 = getelementptr inbounds %struct.xarray, ptr %bufs_idr11, i32 0, i32 1
  %12 = ptrtoint ptr %xa_flags.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108868, ptr %xa_flags.i.i.i45, align 4
  %xa_head.i.i.i46 = getelementptr inbounds %struct.xarray, ptr %bufs_idr11, i32 0, i32 2
  %13 = ptrtoint ptr %xa_head.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xa_head.i.i.i46, align 4
  %idr_base.i.i47 = getelementptr %struct.ath11k, ptr %3, i32 0, i32 5, i32 9, i32 %j.054, i32 1, i32 1
  %14 = ptrtoint ptr %idr_base.i.i47 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_base.i.i47, align 4
  %idr_next.i.i48 = getelementptr %struct.ath11k, ptr %3, i32 0, i32 5, i32 9, i32 %j.054, i32 1, i32 2
  %15 = ptrtoint ptr %idr_next.i.i48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idr_next.i.i48, align 4
  %idr_lock15 = getelementptr %struct.ath11k, ptr %3, i32 0, i32 5, i32 9, i32 %j.054, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %idr_lock15, ptr noundef nonnull @.str.12, ptr noundef nonnull @ath11k_dp_pdev_pre_alloc.__key.11, i16 noundef signext 3) #5
  %inc = add nuw nsw i32 %j.054, 1
  %16 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp8 = icmp slt i32 %inc, %17
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end_crit_edge

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %for.body.for.end_crit_edge
  %bufs_idr19 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 8, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %bufs_idr19, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i49 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 8, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %xa_flags.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108868, ptr %xa_flags.i.i.i49, align 4
  %xa_head.i.i.i50 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 8, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %xa_head.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %xa_head.i.i.i50, align 4
  %idr_base.i.i51 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 8, i32 1, i32 1
  %20 = ptrtoint ptr %idr_base.i.i51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %idr_base.i.i51, align 4
  %idr_next.i.i52 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 8, i32 1, i32 2
  %21 = ptrtoint ptr %idr_next.i.i52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idr_next.i.i52, align 4
  %idr_lock22 = getelementptr inbounds %struct.ath11k, ptr %3, i32 0, i32 5, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %idr_lock22, ptr noundef nonnull @.str.14, ptr noundef nonnull @ath11k_dp_pdev_pre_alloc.__key.13, i16 noundef signext 3) #5
  %inc27 = add nuw nsw i32 %i.056, 1
  %22 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc27, %23
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end28_crit_edge

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end28

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end28:                                        ; preds = %for.end.for.end28_crit_edge, %entry.for.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_pdev_alloc(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %i.029
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %call = tail call i32 @ath11k_dp_rx_pdev_alloc(ptr noundef %ab, i32 noundef %i.029) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %for.body
  %call2 = tail call i32 @ath11k_dp_rx_pdev_mon_attach(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.029, 1
  %4 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_radios, align 64
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err:                                              ; preds = %if.end.err_crit_edge, %for.body.err_crit_edge
  %.str.16.sink = phi ptr [ @.str.15, %for.body.err_crit_edge ], [ @.str.16, %if.end.err_crit_edge ]
  %ret.0 = phi i32 [ %call, %for.body.err_crit_edge ], [ %call2, %if.end.err_crit_edge ]
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull %.str.16.sink, i32 noundef %i.029) #5
  %mon_reap_timer.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 58
  %call.i = tail call i32 @del_timer_sync(ptr noundef %mon_reap_timer.i) #5
  %6 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.i = icmp sgt i32 %7, 0
  br i1 %cmp10.i, label %err.for.body.i_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 19, i32 %i.011.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  tail call void @ath11k_dp_rx_pdev_free(ptr noundef %ab, i32 noundef %i.011.i) #5
  tail call void @ath11k_debugfs_unregister(ptr noundef %9) #5
  %call2.i = tail call i32 @ath11k_dp_rx_pdev_mon_detach(ptr noundef %9) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %10 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_radios, align 64
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_rx_pdev_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_rx_pdev_mon_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_htt_connect(ptr nocapture noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  %conn_req = alloca %struct.ath11k_htc_svc_conn_req, align 4
  %conn_resp = alloca %struct.ath11k_htc_svc_conn_resp, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_req) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn_resp) #5
  %0 = call ptr @memset(ptr %conn_req, i32 0, i32 20)
  %1 = call ptr @memset(ptr %conn_resp, i32 0, i32 16)
  %ep_ops = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1
  %2 = ptrtoint ptr %ep_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ath11k_dp_htt_htc_tx_complete, ptr %ep_ops, align 4
  %ep_rx_complete = getelementptr inbounds %struct.ath11k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ath11k_dp_htt_htc_t2h_msg_handler, ptr %ep_rx_complete, align 4
  %4 = ptrtoint ptr %conn_req to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 768, ptr %conn_req, align 4
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 4
  %htc = getelementptr inbounds %struct.ath11k_base, ptr %6, i32 0, i32 8
  %call = call i32 @ath11k_htc_connect_service(ptr noundef %htc, ptr noundef nonnull %conn_req, ptr noundef nonnull %conn_resp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %eid = getelementptr inbounds %struct.ath11k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 2
  %7 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eid, align 4
  %eid2 = getelementptr inbounds %struct.ath11k_dp, ptr %dp, i32 0, i32 1
  %9 = ptrtoint ptr %eid2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %eid2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_resp) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_req) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_dp_htt_htc_tx_complete(ptr nocapture noundef readnone %ab, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_htt_htc_t2h_msg_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_htc_connect_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_vdev_tx_attach(ptr nocapture noundef readonly %ar, ptr nocapture noundef %arvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arvif, align 4
  %pdev = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %pdev_id = getelementptr inbounds %struct.ath11k_pdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pdev_id, align 4
  %shl = shl i32 %1, 2
  %and22 = and i32 %shl, 1020
  %shl44 = shl i32 %5, 10
  %and45 = and i32 %shl44, 3072
  %or = or i32 %and45, %and22
  %tcl_metadata = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 7
  %6 = ptrtoint ptr %tcl_metadata to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tcl_metadata, align 4
  %8 = trunc i32 %or to i16
  %.masked = and i16 %7, -4
  %conv48 = or i16 %.masked, %8
  %9 = or i16 %conv48, 1
  store i16 %9, ptr %tcl_metadata, align 4
  %vdev_type.i = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 1
  %10 = ptrtoint ptr %vdev_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vdev_type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %11, label %entry.ath11k_dp_update_vdev_search.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %entry.sw.bb3.i_crit_edge
    i32 3, label %entry.sw.bb3.i_crit_edge62
  ]

entry.sw.bb3.i_crit_edge62:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.ath11k_dp_update_vdev_search.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_update_vdev_search.exit

sw.bb.i:                                          ; preds = %entry
  %ar.i = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 10
  %13 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ar.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %htt_peer_map_v2.i = getelementptr inbounds %struct.ath11k_base, ptr %16, i32 0, i32 36, i32 24
  %17 = ptrtoint ptr %htt_peer_map_v2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %htt_peer_map_v2.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %hal_addr_search_flags1.i = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hal_addr_search_flags1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %hal_addr_search_flags1.i, align 2
  br label %sw.epilog.sink.split.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hal_addr_search_flags1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %hal_addr_search_flags1.i, align 2
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge62
  %hal_addr_search_flags4.i = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 8
  %21 = ptrtoint ptr %hal_addr_search_flags4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %hal_addr_search_flags4.i, align 2
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %if.else.i, %if.then.i
  %.sink.i = phi i8 [ 1, %if.then.i ], [ 0, %if.else.i ], [ 0, %sw.bb3.i ]
  %search_type.i = getelementptr inbounds %struct.ath11k_vif, ptr %arvif, i32 0, i32 9
  %22 = ptrtoint ptr %search_type.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink.i, ptr %search_type.i, align 1
  br label %ath11k_dp_update_vdev_search.exit

ath11k_dp_update_vdev_search.exit:                ; preds = %sw.epilog.sink.split.i, %entry.ath11k_dp_update_vdev_search.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_free(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link_desc_banks = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 5
  %wbm_idle_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 6
  tail call void @ath11k_dp_link_desc_cleanup(ptr noundef %ab, ptr noundef %link_desc_banks, i32 noundef 11, ptr noundef %wbm_idle_ring)
  tail call fastcc void @ath11k_dp_srng_common_cleanup(ptr noundef %ab)
  tail call void @ath11k_dp_reo_cmd_list_cleanup(ptr noundef %ab) #5
  %max_tx_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 41
  %0 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_tx_ring, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp31.not = icmp eq i8 %1, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_idr_lock = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.032, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_idr_lock) #5
  %txbuf_idr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.032, i32 3
  %call = tail call i32 @idr_for_each(ptr noundef %txbuf_idr, ptr noundef nonnull @ath11k_dp_tx_pending_cleanup, ptr noundef %ab) #5
  tail call void @idr_destroy(ptr noundef %txbuf_idr) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_idr_lock) #5
  %tx_status = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.032, i32 5
  %2 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_status, align 4
  tail call void @kfree(ptr noundef %3) #5
  %inc = add nuw nsw i32 %i.032, 1
  %4 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_tx_ring, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_dp_srng_common_cleanup(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supports_shadow_regs.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %0 = ptrtoint ptr %supports_shadow_regs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supports_shadow_regs.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.ath11k_dp_stop_shadow_timers.exit_crit_edge, label %for.cond.preheader.i

entry.ath11k_dp_stop_shadow_timers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_stop_shadow_timers.exit

for.cond.preheader.i:                             ; preds = %entry
  %max_tx_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 41
  %2 = ptrtoint ptr %max_tx_ring.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_tx_ring.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20.not.i = icmp eq i8 %3, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %ath11k_dp_shadow_stop_timer.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %ath11k_dp_shadow_stop_timer.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.021.i
  %4 = ptrtoint ptr %supports_shadow_regs.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %supports_shadow_regs.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %for.body.i.ath11k_dp_shadow_stop_timer.exit.i_crit_edge, label %if.end.i.i

for.body.i.ath11k_dp_shadow_stop_timer.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_shadow_stop_timer.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %init.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.021.i, i32 2
  %6 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %init.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.ath11k_dp_shadow_stop_timer.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.ath11k_dp_shadow_stop_timer.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_shadow_stop_timer.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %arrayidx.i) #5
  br label %ath11k_dp_shadow_stop_timer.exit.i

ath11k_dp_shadow_stop_timer.exit.i:               ; preds = %if.end3.i.i, %if.end.i.i.ath11k_dp_shadow_stop_timer.exit.i_crit_edge, %for.body.i.ath11k_dp_shadow_stop_timer.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %8 = ptrtoint ptr %max_tx_ring.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_tx_ring.i, align 1
  %conv.i = zext i8 %9 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %ath11k_dp_shadow_stop_timer.exit.i.for.body.i_crit_edge, label %ath11k_dp_shadow_stop_timer.exit.i.for.end.i_crit_edge

ath11k_dp_shadow_stop_timer.exit.i.for.end.i_crit_edge: ; preds = %ath11k_dp_shadow_stop_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

ath11k_dp_shadow_stop_timer.exit.i.for.body.i_crit_edge: ; preds = %ath11k_dp_shadow_stop_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %ath11k_dp_shadow_stop_timer.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %reo_cmd_timer.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 23
  %10 = ptrtoint ptr %supports_shadow_regs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supports_shadow_regs.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i12.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i12.i, label %for.end.i.ath11k_dp_stop_shadow_timers.exit_crit_edge, label %if.end.i15.i

for.end.i.ath11k_dp_stop_shadow_timers.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_stop_shadow_timers.exit

if.end.i15.i:                                     ; preds = %for.end.i
  %init.i13.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 23, i32 2
  %12 = ptrtoint ptr %init.i13.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %init.i13.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i14.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i14.i, label %if.end.i15.i.ath11k_dp_stop_shadow_timers.exit_crit_edge, label %if.end3.i17.i

if.end.i15.i.ath11k_dp_stop_shadow_timers.exit_crit_edge: ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_stop_shadow_timers.exit

if.end3.i17.i:                                    ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i16.i = tail call i32 @del_timer_sync(ptr noundef %reo_cmd_timer.i) #5
  br label %ath11k_dp_stop_shadow_timers.exit

ath11k_dp_stop_shadow_timers.exit:                ; preds = %if.end3.i17.i, %if.end.i15.i.ath11k_dp_stop_shadow_timers.exit_crit_edge, %for.end.i.ath11k_dp_stop_shadow_timers.exit_crit_edge, %entry.ath11k_dp_stop_shadow_timers.exit_crit_edge
  %wbm_desc_rel_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 7
  %14 = ptrtoint ptr %wbm_desc_rel_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wbm_desc_rel_ring, align 4
  %tobool.not.i29 = icmp eq ptr %15, null
  br i1 %tobool.not.i29, label %ath11k_dp_stop_shadow_timers.exit.ath11k_dp_srng_cleanup.exit_crit_edge, label %if.end.i

ath11k_dp_stop_shadow_timers.exit.ath11k_dp_srng_cleanup.exit_crit_edge: ; preds = %ath11k_dp_stop_shadow_timers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit

if.end.i:                                         ; preds = %ath11k_dp_stop_shadow_timers.exit
  %cached.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 7, i32 6
  %16 = ptrtoint ptr %cached.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cached.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %15) #5
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %size.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 7, i32 4
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  %paddr_unaligned.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 7, i32 2
  %22 = ptrtoint ptr %paddr_unaligned.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr_unaligned.i, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %15, i32 noundef %23, i32 noundef 0) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %24 = ptrtoint ptr %wbm_desc_rel_ring to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %wbm_desc_rel_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit

ath11k_dp_srng_cleanup.exit:                      ; preds = %if.end5.i, %ath11k_dp_stop_shadow_timers.exit.ath11k_dp_srng_cleanup.exit_crit_edge
  %tcl_cmd_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 8
  %25 = ptrtoint ptr %tcl_cmd_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcl_cmd_ring, align 4
  %tobool.not.i30 = icmp eq ptr %26, null
  br i1 %tobool.not.i30, label %ath11k_dp_srng_cleanup.exit.ath11k_dp_srng_cleanup.exit40_crit_edge, label %if.end.i33

ath11k_dp_srng_cleanup.exit.ath11k_dp_srng_cleanup.exit40_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit40

if.end.i33:                                       ; preds = %ath11k_dp_srng_cleanup.exit
  %cached.i31 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 8, i32 6
  %27 = ptrtoint ptr %cached.i31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cached.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i32 = icmp eq i8 %28, 0
  br i1 %tobool1.not.i32, label %if.else.i38, label %if.then2.i34

if.then2.i34:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %26) #5
  br label %if.end5.i39

if.else.i38:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i35 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %29 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i35, align 8
  %size.i36 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 8, i32 4
  %31 = ptrtoint ptr %size.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i36, align 4
  %paddr_unaligned.i37 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 8, i32 2
  %33 = ptrtoint ptr %paddr_unaligned.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %paddr_unaligned.i37, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %26, i32 noundef %34, i32 noundef 0) #5
  br label %if.end5.i39

if.end5.i39:                                      ; preds = %if.else.i38, %if.then2.i34
  %35 = ptrtoint ptr %tcl_cmd_ring to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %tcl_cmd_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit40

ath11k_dp_srng_cleanup.exit40:                    ; preds = %if.end5.i39, %ath11k_dp_srng_cleanup.exit.ath11k_dp_srng_cleanup.exit40_crit_edge
  %tcl_status_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 9
  %36 = ptrtoint ptr %tcl_status_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tcl_status_ring, align 4
  %tobool.not.i41 = icmp eq ptr %37, null
  br i1 %tobool.not.i41, label %ath11k_dp_srng_cleanup.exit40.ath11k_dp_srng_cleanup.exit51_crit_edge, label %if.end.i44

ath11k_dp_srng_cleanup.exit40.ath11k_dp_srng_cleanup.exit51_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit40
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit51

if.end.i44:                                       ; preds = %ath11k_dp_srng_cleanup.exit40
  %cached.i42 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 9, i32 6
  %38 = ptrtoint ptr %cached.i42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cached.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not.i43 = icmp eq i8 %39, 0
  br i1 %tobool1.not.i43, label %if.else.i49, label %if.then2.i45

if.then2.i45:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %37) #5
  br label %if.end5.i50

if.else.i49:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i46 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %40 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i46, align 8
  %size.i47 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 9, i32 4
  %42 = ptrtoint ptr %size.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i47, align 4
  %paddr_unaligned.i48 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 9, i32 2
  %44 = ptrtoint ptr %paddr_unaligned.i48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %paddr_unaligned.i48, align 4
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %37, i32 noundef %45, i32 noundef 0) #5
  br label %if.end5.i50

if.end5.i50:                                      ; preds = %if.else.i49, %if.then2.i45
  %46 = ptrtoint ptr %tcl_status_ring to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %tcl_status_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit51

ath11k_dp_srng_cleanup.exit51:                    ; preds = %if.end5.i50, %ath11k_dp_srng_cleanup.exit40.ath11k_dp_srng_cleanup.exit51_crit_edge
  %max_tx_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 41
  %47 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %max_tx_ring, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp130.not = icmp eq i8 %48, 0
  br i1 %cmp130.not, label %ath11k_dp_srng_cleanup.exit51.for.end_crit_edge, label %for.body.lr.ph

ath11k_dp_srng_cleanup.exit51.for.end_crit_edge:  ; preds = %ath11k_dp_srng_cleanup.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %ath11k_dp_srng_cleanup.exit51
  %dev.i57 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %ath11k_dp_srng_cleanup.exit73.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ath11k_dp_srng_cleanup.exit73.for.body_crit_edge ]
  %tcl_data_ring = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 1
  %49 = ptrtoint ptr %tcl_data_ring to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tcl_data_ring, align 4
  %tobool.not.i52 = icmp eq ptr %50, null
  br i1 %tobool.not.i52, label %for.body.ath11k_dp_srng_cleanup.exit62_crit_edge, label %if.end.i55

for.body.ath11k_dp_srng_cleanup.exit62_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit62

if.end.i55:                                       ; preds = %for.body
  %cached.i53 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 1, i32 6
  %51 = ptrtoint ptr %cached.i53 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cached.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool1.not.i54 = icmp eq i8 %52, 0
  br i1 %tobool1.not.i54, label %if.else.i60, label %if.then2.i56

if.then2.i56:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %50) #5
  br label %if.end5.i61

if.else.i60:                                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %dev.i57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i57, align 8
  %size.i58 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 1, i32 4
  %55 = ptrtoint ptr %size.i58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i58, align 4
  %paddr_unaligned.i59 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 1, i32 2
  %57 = ptrtoint ptr %paddr_unaligned.i59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %paddr_unaligned.i59, align 4
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %56, ptr noundef nonnull %50, i32 noundef %58, i32 noundef 0) #5
  br label %if.end5.i61

if.end5.i61:                                      ; preds = %if.else.i60, %if.then2.i56
  %59 = ptrtoint ptr %tcl_data_ring to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %tcl_data_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit62

ath11k_dp_srng_cleanup.exit62:                    ; preds = %if.end5.i61, %for.body.ath11k_dp_srng_cleanup.exit62_crit_edge
  %tcl_comp_ring = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 2
  %60 = ptrtoint ptr %tcl_comp_ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tcl_comp_ring, align 4
  %tobool.not.i63 = icmp eq ptr %61, null
  br i1 %tobool.not.i63, label %ath11k_dp_srng_cleanup.exit62.ath11k_dp_srng_cleanup.exit73_crit_edge, label %if.end.i66

ath11k_dp_srng_cleanup.exit62.ath11k_dp_srng_cleanup.exit73_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit73

if.end.i66:                                       ; preds = %ath11k_dp_srng_cleanup.exit62
  %cached.i64 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 2, i32 6
  %62 = ptrtoint ptr %cached.i64 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %cached.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool1.not.i65 = icmp eq i8 %63, 0
  br i1 %tobool1.not.i65, label %if.else.i71, label %if.then2.i67

if.then2.i67:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %61) #5
  br label %if.end5.i72

if.else.i71:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %dev.i57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i57, align 8
  %size.i69 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 2, i32 4
  %66 = ptrtoint ptr %size.i69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i69, align 4
  %paddr_unaligned.i70 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0131, i32 2, i32 2
  %68 = ptrtoint ptr %paddr_unaligned.i70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %paddr_unaligned.i70, align 4
  tail call void @dma_free_attrs(ptr noundef %65, i32 noundef %67, ptr noundef nonnull %61, i32 noundef %69, i32 noundef 0) #5
  br label %if.end5.i72

if.end5.i72:                                      ; preds = %if.else.i71, %if.then2.i67
  %70 = ptrtoint ptr %tcl_comp_ring to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %tcl_comp_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit73

ath11k_dp_srng_cleanup.exit73:                    ; preds = %if.end5.i72, %ath11k_dp_srng_cleanup.exit62.ath11k_dp_srng_cleanup.exit73_crit_edge
  %inc = add nuw nsw i32 %i.0131, 1
  %71 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %max_tx_ring, align 1
  %conv = zext i8 %72 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %ath11k_dp_srng_cleanup.exit73.for.body_crit_edge, label %ath11k_dp_srng_cleanup.exit73.for.end_crit_edge

ath11k_dp_srng_cleanup.exit73.for.end_crit_edge:  ; preds = %ath11k_dp_srng_cleanup.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

ath11k_dp_srng_cleanup.exit73.for.body_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %ath11k_dp_srng_cleanup.exit73.for.end_crit_edge, %ath11k_dp_srng_cleanup.exit51.for.end_crit_edge
  %reo_reinject_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 10
  %73 = ptrtoint ptr %reo_reinject_ring to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reo_reinject_ring, align 4
  %tobool.not.i74 = icmp eq ptr %74, null
  br i1 %tobool.not.i74, label %for.end.ath11k_dp_srng_cleanup.exit84_crit_edge, label %if.end.i77

for.end.ath11k_dp_srng_cleanup.exit84_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit84

if.end.i77:                                       ; preds = %for.end
  %cached.i75 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 10, i32 6
  %75 = ptrtoint ptr %cached.i75 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cached.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool1.not.i76 = icmp eq i8 %76, 0
  br i1 %tobool1.not.i76, label %if.else.i82, label %if.then2.i78

if.then2.i78:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %74) #5
  br label %if.end5.i83

if.else.i82:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i79 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %77 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i79, align 8
  %size.i80 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 10, i32 4
  %79 = ptrtoint ptr %size.i80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i80, align 4
  %paddr_unaligned.i81 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 10, i32 2
  %81 = ptrtoint ptr %paddr_unaligned.i81 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %paddr_unaligned.i81, align 4
  tail call void @dma_free_attrs(ptr noundef %78, i32 noundef %80, ptr noundef nonnull %74, i32 noundef %82, i32 noundef 0) #5
  br label %if.end5.i83

if.end5.i83:                                      ; preds = %if.else.i82, %if.then2.i78
  %83 = ptrtoint ptr %reo_reinject_ring to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %reo_reinject_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit84

ath11k_dp_srng_cleanup.exit84:                    ; preds = %if.end5.i83, %for.end.ath11k_dp_srng_cleanup.exit84_crit_edge
  %rx_rel_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 11
  %84 = ptrtoint ptr %rx_rel_ring to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_rel_ring, align 4
  %tobool.not.i85 = icmp eq ptr %85, null
  br i1 %tobool.not.i85, label %ath11k_dp_srng_cleanup.exit84.ath11k_dp_srng_cleanup.exit95_crit_edge, label %if.end.i88

ath11k_dp_srng_cleanup.exit84.ath11k_dp_srng_cleanup.exit95_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit95

if.end.i88:                                       ; preds = %ath11k_dp_srng_cleanup.exit84
  %cached.i86 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 11, i32 6
  %86 = ptrtoint ptr %cached.i86 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cached.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1.not.i87 = icmp eq i8 %87, 0
  br i1 %tobool1.not.i87, label %if.else.i93, label %if.then2.i89

if.then2.i89:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %85) #5
  br label %if.end5.i94

if.else.i93:                                      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i90 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %88 = ptrtoint ptr %dev.i90 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i90, align 8
  %size.i91 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 11, i32 4
  %90 = ptrtoint ptr %size.i91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size.i91, align 4
  %paddr_unaligned.i92 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 11, i32 2
  %92 = ptrtoint ptr %paddr_unaligned.i92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %paddr_unaligned.i92, align 4
  tail call void @dma_free_attrs(ptr noundef %89, i32 noundef %91, ptr noundef nonnull %85, i32 noundef %93, i32 noundef 0) #5
  br label %if.end5.i94

if.end5.i94:                                      ; preds = %if.else.i93, %if.then2.i89
  %94 = ptrtoint ptr %rx_rel_ring to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %rx_rel_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit95

ath11k_dp_srng_cleanup.exit95:                    ; preds = %if.end5.i94, %ath11k_dp_srng_cleanup.exit84.ath11k_dp_srng_cleanup.exit95_crit_edge
  %reo_except_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 12
  %95 = ptrtoint ptr %reo_except_ring to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reo_except_ring, align 4
  %tobool.not.i96 = icmp eq ptr %96, null
  br i1 %tobool.not.i96, label %ath11k_dp_srng_cleanup.exit95.ath11k_dp_srng_cleanup.exit106_crit_edge, label %if.end.i99

ath11k_dp_srng_cleanup.exit95.ath11k_dp_srng_cleanup.exit106_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit95
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit106

if.end.i99:                                       ; preds = %ath11k_dp_srng_cleanup.exit95
  %cached.i97 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 12, i32 6
  %97 = ptrtoint ptr %cached.i97 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %cached.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool1.not.i98 = icmp eq i8 %98, 0
  br i1 %tobool1.not.i98, label %if.else.i104, label %if.then2.i100

if.then2.i100:                                    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %96) #5
  br label %if.end5.i105

if.else.i104:                                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i101 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %99 = ptrtoint ptr %dev.i101 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i101, align 8
  %size.i102 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 12, i32 4
  %101 = ptrtoint ptr %size.i102 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size.i102, align 4
  %paddr_unaligned.i103 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 12, i32 2
  %103 = ptrtoint ptr %paddr_unaligned.i103 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %paddr_unaligned.i103, align 4
  tail call void @dma_free_attrs(ptr noundef %100, i32 noundef %102, ptr noundef nonnull %96, i32 noundef %104, i32 noundef 0) #5
  br label %if.end5.i105

if.end5.i105:                                     ; preds = %if.else.i104, %if.then2.i100
  %105 = ptrtoint ptr %reo_except_ring to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %reo_except_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit106

ath11k_dp_srng_cleanup.exit106:                   ; preds = %if.end5.i105, %ath11k_dp_srng_cleanup.exit95.ath11k_dp_srng_cleanup.exit106_crit_edge
  %reo_cmd_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13
  %106 = ptrtoint ptr %reo_cmd_ring to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reo_cmd_ring, align 4
  %tobool.not.i107 = icmp eq ptr %107, null
  br i1 %tobool.not.i107, label %ath11k_dp_srng_cleanup.exit106.ath11k_dp_srng_cleanup.exit117_crit_edge, label %if.end.i110

ath11k_dp_srng_cleanup.exit106.ath11k_dp_srng_cleanup.exit117_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit117

if.end.i110:                                      ; preds = %ath11k_dp_srng_cleanup.exit106
  %cached.i108 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13, i32 6
  %108 = ptrtoint ptr %cached.i108 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %cached.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool1.not.i109 = icmp eq i8 %109, 0
  br i1 %tobool1.not.i109, label %if.else.i115, label %if.then2.i111

if.then2.i111:                                    ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %107) #5
  br label %if.end5.i116

if.else.i115:                                     ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i112 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %110 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i112, align 8
  %size.i113 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13, i32 4
  %112 = ptrtoint ptr %size.i113 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size.i113, align 4
  %paddr_unaligned.i114 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13, i32 2
  %114 = ptrtoint ptr %paddr_unaligned.i114 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %paddr_unaligned.i114, align 4
  tail call void @dma_free_attrs(ptr noundef %111, i32 noundef %113, ptr noundef nonnull %107, i32 noundef %115, i32 noundef 0) #5
  br label %if.end5.i116

if.end5.i116:                                     ; preds = %if.else.i115, %if.then2.i111
  %116 = ptrtoint ptr %reo_cmd_ring to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %reo_cmd_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit117

ath11k_dp_srng_cleanup.exit117:                   ; preds = %if.end5.i116, %ath11k_dp_srng_cleanup.exit106.ath11k_dp_srng_cleanup.exit117_crit_edge
  %reo_status_ring = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 14
  %117 = ptrtoint ptr %reo_status_ring to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reo_status_ring, align 4
  %tobool.not.i118 = icmp eq ptr %118, null
  br i1 %tobool.not.i118, label %ath11k_dp_srng_cleanup.exit117.ath11k_dp_srng_cleanup.exit128_crit_edge, label %if.end.i121

ath11k_dp_srng_cleanup.exit117.ath11k_dp_srng_cleanup.exit128_crit_edge: ; preds = %ath11k_dp_srng_cleanup.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_srng_cleanup.exit128

if.end.i121:                                      ; preds = %ath11k_dp_srng_cleanup.exit117
  %cached.i119 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 14, i32 6
  %119 = ptrtoint ptr %cached.i119 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %cached.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool1.not.i120 = icmp eq i8 %120, 0
  br i1 %tobool1.not.i120, label %if.else.i126, label %if.then2.i122

if.then2.i122:                                    ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %118) #5
  br label %if.end5.i127

if.else.i126:                                     ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i123 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %121 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i123, align 8
  %size.i124 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 14, i32 4
  %123 = ptrtoint ptr %size.i124 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %size.i124, align 4
  %paddr_unaligned.i125 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 14, i32 2
  %125 = ptrtoint ptr %paddr_unaligned.i125 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %paddr_unaligned.i125, align 4
  tail call void @dma_free_attrs(ptr noundef %122, i32 noundef %124, ptr noundef nonnull %118, i32 noundef %126, i32 noundef 0) #5
  br label %if.end5.i127

if.end5.i127:                                     ; preds = %if.else.i126, %if.then2.i122
  %127 = ptrtoint ptr %reo_status_ring to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %reo_status_ring, align 4
  br label %ath11k_dp_srng_cleanup.exit128

ath11k_dp_srng_cleanup.exit128:                   ; preds = %if.end5.i127, %ath11k_dp_srng_cleanup.exit117.ath11k_dp_srng_cleanup.exit128_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_reo_cmd_list_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_dp_tx_pending_cleanup(i32 noundef %buf_id, ptr noundef %skb, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef 1, i32 noundef 0) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_dp_alloc(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ab, ptr %dp1, align 4
  %reo_cmd_list = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 18
  %1 = ptrtoint ptr %reo_cmd_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %reo_cmd_list, ptr %reo_cmd_list, align 4
  %prev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 18, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reo_cmd_list, ptr %prev.i, align 4
  %reo_cmd_cache_flush_list = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 19
  %3 = ptrtoint ptr %reo_cmd_cache_flush_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %reo_cmd_cache_flush_list, ptr %reo_cmd_cache_flush_list, align 4
  %prev.i97 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 19, i32 1
  %4 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reo_cmd_cache_flush_list, ptr %prev.i97, align 4
  %dp_full_mon_mpdu_list = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 20
  %5 = ptrtoint ptr %dp_full_mon_mpdu_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dp_full_mon_mpdu_list, ptr %dp_full_mon_mpdu_list, align 4
  %prev.i98 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 20, i32 1
  %6 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dp_full_mon_mpdu_list, ptr %prev.i98, align 4
  %reo_cmd_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %reo_cmd_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ath11k_dp_alloc.__key, i16 noundef signext 3) #5
  %reo_cmd_cache_flush_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 21
  %7 = ptrtoint ptr %reo_cmd_cache_flush_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %reo_cmd_cache_flush_count, align 4
  %wbm_idle_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 6
  %call4.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %wbm_idle_ring.i, i32 noundef 11, i32 noundef 0, i32 noundef 0, i32 noundef 32768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.18, i32 noundef %call4.i) #5
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.18, i32 noundef %call4.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16
  %ring_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 6, i32 5
  %8 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring_id, align 4
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %9
  %link_desc_banks = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 5
  %call4 = tail call i32 @ath11k_dp_link_desc_setup(ptr noundef %ab, ptr noundef %link_desc_banks, i32 noundef 11, ptr noundef %arrayidx, i32 noundef 32768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.19, i32 noundef %call4) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %wbm_desc_rel_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 7
  %call.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %wbm_desc_rel_ring.i, i32 noundef 12, i32 noundef 0, i32 noundef 0, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.28, i32 noundef %call.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end.i:                                         ; preds = %if.end7
  %tcl_cmd_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 8
  %call2.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %tcl_cmd_ring.i, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.29, i32 noundef %call2.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %tcl_status_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 9
  %call6.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %tcl_status_ring.i, i32 noundef 7, i32 noundef 0, i32 noundef 0, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.cond.preheader.i, label %if.then8.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %max_tx_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 41
  %10 = ptrtoint ptr %max_tx_ring.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_tx_ring.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp141.not.i = icmp eq i8 %11, 0
  br i1 %cmp141.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %supports_shadow_regs.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  br label %for.body.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.30, i32 noundef %call6.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

for.body.i:                                       ; preds = %ath11k_dp_shadow_init_timer.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0142.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %ath11k_dp_shadow_init_timer.exit.i.for.body.i_crit_edge ]
  %tcl_data_ring.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0142.i, i32 1
  %call11.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %tcl_data_ring.i, i32 noundef 5, i32 noundef %i.0142.i, i32 noundef 0, i32 noundef 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.31, i32 noundef %i.0142.i, i32 noundef %call11.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end14.i:                                       ; preds = %for.body.i
  %tcl_comp_ring.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0142.i, i32 2
  %call17.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %tcl_comp_ring.i, i32 noundef 13, i32 noundef %i.0142.i, i32 noundef 0, i32 noundef 32768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.32, i32 noundef %i.0142.i, i32 noundef %call17.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end20.i:                                       ; preds = %if.end14.i
  %ring_id.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0142.i, i32 1, i32 5
  %12 = ptrtoint ptr %ring_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_id.i, align 4
  %arrayidx24.i = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %13
  tail call void @ath11k_hal_tx_init_data_ring(ptr noundef %ab, ptr noundef %arrayidx24.i) #5
  %14 = ptrtoint ptr %supports_shadow_regs.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %supports_shadow_regs.i.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.end20.i.ath11k_dp_shadow_init_timer.exit.i_crit_edge, label %if.end.i.i

if.end20.i.ath11k_dp_shadow_init_timer.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath11k_dp_shadow_init_timer.exit.i

if.end.i.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %ring_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_id.i, align 4
  %arrayidx25.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i
  %tx_num.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i, i32 3
  %18 = ptrtoint ptr %tx_num.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tx_num.i.i, align 4
  %timer_tx_num.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i, i32 4
  %19 = ptrtoint ptr %timer_tx_num.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %timer_tx_num.i.i, align 4
  %ab1.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i, i32 7
  %20 = ptrtoint ptr %ab1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ab, ptr %ab1.i.i, align 4
  %ring_id2.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i, i32 5
  %21 = ptrtoint ptr %ring_id2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %ring_id2.i.i, align 4
  %interval3.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i, i32 6
  %22 = ptrtoint ptr %interval3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %interval3.i.i, align 4
  %init.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 24, i32 %i.0142.i, i32 2
  %23 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %init.i.i, align 1
  tail call void @init_timer_key(ptr noundef %arrayidx25.i, ptr noundef nonnull @ath11k_dp_shadow_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @ath11k_dp_shadow_init_timer.__key) #5
  br label %ath11k_dp_shadow_init_timer.exit.i

ath11k_dp_shadow_init_timer.exit.i:               ; preds = %if.end.i.i, %if.end20.i.ath11k_dp_shadow_init_timer.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0142.i, 1
  %24 = ptrtoint ptr %max_tx_ring.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_tx_ring.i, align 1
  %conv.i = zext i8 %25 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %ath11k_dp_shadow_init_timer.exit.i.for.body.i_crit_edge, label %ath11k_dp_shadow_init_timer.exit.i.for.end.i_crit_edge

ath11k_dp_shadow_init_timer.exit.i.for.end.i_crit_edge: ; preds = %ath11k_dp_shadow_init_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

ath11k_dp_shadow_init_timer.exit.i.for.body.i_crit_edge: ; preds = %ath11k_dp_shadow_init_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %ath11k_dp_shadow_init_timer.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %reo_reinject_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 10
  %call30.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %reo_reinject_ring.i, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.then32.i

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.33, i32 noundef %call30.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end33.i:                                       ; preds = %for.end.i
  %rx_rel_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 11
  %call34.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %rx_rel_ring.i, i32 noundef 13, i32 noundef 3, i32 noundef 0, i32 noundef 1024) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.34, i32 noundef %call34.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end37.i:                                       ; preds = %if.end33.i
  %reo_except_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 12
  %call38.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %reo_except_ring.i, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.35, i32 noundef %call38.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end41.i:                                       ; preds = %if.end37.i
  %reo_cmd_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13
  %call42.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %reo_cmd_ring.i, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.36, i32 noundef %call42.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

if.end45.i:                                       ; preds = %if.end41.i
  %ring_id49.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 13, i32 5
  %26 = ptrtoint ptr %ring_id49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_id49.i, align 4
  %arrayidx50.i = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %27
  tail call void @ath11k_hal_reo_init_cmd_ring(ptr noundef %ab, ptr noundef %arrayidx50.i) #5
  %reo_cmd_timer.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 23
  %28 = ptrtoint ptr %ring_id49.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_id49.i, align 4
  tail call void @ath11k_dp_shadow_init_timer(ptr noundef %ab, ptr noundef %reo_cmd_timer.i, i32 noundef 10, i32 noundef %29) #5
  %reo_status_ring.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 14
  %call53.i = tail call i32 @ath11k_dp_srng_setup(ptr noundef %ab, ptr noundef %reo_status_ring.i, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %ath11k_dp_srng_common_setup.exit, label %if.then55.i

if.then55.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.37, i32 noundef %call53.i) #5
  br label %ath11k_dp_srng_common_setup.exit.thread

ath11k_dp_srng_common_setup.exit.thread:          ; preds = %if.then55.i, %if.then44.i, %if.then40.i, %if.then36.i, %if.then32.i, %if.then19.i, %if.then13.i, %if.then8.i, %if.then4.i, %if.then.i
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.then4.i ], [ %call6.i, %if.then8.i ], [ %call11.i, %if.then13.i ], [ %call17.i, %if.then19.i ], [ %call30.i, %if.then32.i ], [ %call34.i, %if.then36.i ], [ %call38.i, %if.then40.i ], [ %call42.i, %if.then44.i ], [ %call53.i, %if.then55.i ]
  tail call fastcc void @ath11k_dp_srng_common_cleanup(ptr noundef %ab) #5
  br label %fail_link_desc_cleanup

ath11k_dp_srng_common_setup.exit:                 ; preds = %if.end45.i
  %hw_ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 5
  %30 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_ops.i, align 4
  %reo_setup.i = getelementptr inbounds %struct.ath11k_hw_ops, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %reo_setup.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reo_setup.i, align 4
  tail call void %33(ptr noundef %ab) #5
  %34 = ptrtoint ptr %max_tx_ring.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %max_tx_ring.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp107.not = icmp eq i8 %35, 0
  br i1 %cmp107.not, label %ath11k_dp_srng_common_setup.exit.for.body39.preheader_crit_edge, label %ath11k_dp_srng_common_setup.exit.for.body_crit_edge

ath11k_dp_srng_common_setup.exit.for.body_crit_edge: ; preds = %ath11k_dp_srng_common_setup.exit
  br label %for.body

ath11k_dp_srng_common_setup.exit.for.body39.preheader_crit_edge: ; preds = %ath11k_dp_srng_common_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond.for.body39.preheader_crit_edge, %ath11k_dp_srng_common_setup.exit.for.body39.preheader_crit_edge
  br label %for.body39

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0108, 1
  %36 = ptrtoint ptr %max_tx_ring.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_tx_ring.i, align 1
  %conv = zext i8 %37 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.body39.preheader_crit_edge

for.cond.for.body39.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %ath11k_dp_srng_common_setup.exit.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %ath11k_dp_srng_common_setup.exit.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108
  %txbuf_idr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %txbuf_idr, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %txbuf_idr, i32 0, i32 1
  %38 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %txbuf_idr, i32 0, i32 2
  %39 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 3, i32 1
  %40 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 3, i32 2
  %41 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %idr_next.i.i, align 4
  %tx_idr_lock = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %tx_idr_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @ath11k_dp_alloc.__key.20, i16 noundef signext 3) #5
  %conv20 = trunc i32 %i.0108 to i8
  %42 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv20, ptr %arrayidx13, align 4
  %tx_status_head = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 6
  %43 = ptrtoint ptr %tx_status_head to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_status_head, align 4
  %tx_status_tail = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 7
  %44 = ptrtoint ptr %tx_status_tail to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32767, ptr %tx_status_tail, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 1048576, i32 noundef 3264, i32 noundef 8) #8
  %tx_status = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 16, i32 %i.0108, i32 5
  %45 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i.i, ptr %tx_status, align 4
  %tobool33.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool33.not, label %if.then34, label %for.cond

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ath11k_dp_srng_common_cleanup(ptr noundef %ab)
  br label %fail_link_desc_cleanup

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.body39.preheader
  %i.1109 = phi i32 [ %inc41, %for.body39.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  tail call void @ath11k_hal_tx_set_dscp_tid_map(ptr noundef %ab, i32 noundef %i.1109) #5
  %inc41 = add nuw nsw i32 %i.1109, 1
  %exitcond.not = icmp eq i32 %inc41, 48
  br i1 %exitcond.not, label %for.body39.cleanup_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail_link_desc_cleanup:                           ; preds = %if.then34, %ath11k_dp_srng_common_setup.exit.thread
  %ret.0 = phi i32 [ -12, %if.then34 ], [ %ret.0.i, %ath11k_dp_srng_common_setup.exit.thread ]
  tail call void @ath11k_dp_link_desc_cleanup(ptr noundef %ab, ptr noundef %link_desc_banks, i32 noundef 11, ptr noundef %wbm_idle_ring.i)
  br label %cleanup

cleanup:                                          ; preds = %fail_link_desc_cleanup, %for.body39.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %call4.i, %if.then ], [ %call4, %if.then6 ], [ %ret.0, %fail_link_desc_cleanup ], [ 0, %for.body39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_tx_set_dscp_tid_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_shadow_start_timer(ptr nocapture noundef readonly %ab, ptr noundef %srng, ptr noundef %update_timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !91

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1141, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %1 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supports_shadow_regs, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %if.end26

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end26:                                         ; preds = %if.end
  %tx_num = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 3
  %3 = ptrtoint ptr %tx_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_num, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_num, align 4
  %started = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 1
  %5 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %started, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool27.not = icmp eq i8 %6, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.return_crit_edge

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %started, align 4
  %timer_tx_num = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 4
  %8 = ptrtoint ptr %timer_tx_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %timer_tx_num, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %interval = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 6
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #5
  %add = add i32 %call2.i, %9
  %call33 = tail call i32 @mod_timer(ptr noundef %update_timer, i32 noundef %add) #5
  br label %return

return:                                           ; preds = %if.end29, %if.end26.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_dp_shadow_init_timer(ptr noundef %ab, ptr noundef %update_timer, i32 noundef %interval, i32 noundef %ring_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %0 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supports_shadow_regs, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_num = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 3
  %2 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_num, align 4
  %timer_tx_num = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 4
  %3 = ptrtoint ptr %timer_tx_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %timer_tx_num, align 4
  %ab1 = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 7
  %4 = ptrtoint ptr %ab1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ab, ptr %ab1, align 4
  %ring_id2 = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 5
  %5 = ptrtoint ptr %ring_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ring_id, ptr %ring_id2, align 4
  %interval3 = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 6
  %6 = ptrtoint ptr %interval3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %interval, ptr %interval3, align 4
  %init = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %update_timer, i32 0, i32 2
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %init, align 1
  tail call void @init_timer_key(ptr noundef %update_timer, ptr noundef nonnull @ath11k_dp_shadow_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @ath11k_dp_shadow_init_timer.__key) #5
  br label %do.end

do.end:                                           ; preds = %if.end, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_dp_shadow_timer_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ab1 = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %t, i32 0, i32 7
  %0 = ptrtoint ptr %ab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab1, align 4
  %hal = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 16
  %ring_id = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %t, i32 0, i32 5
  %2 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_id, align 4
  %lock = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %3, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %timer_tx_num = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %timer_tx_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timer_tx_num, align 4
  %tx_num = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %t, i32 0, i32 3
  %6 = ptrtoint ptr %tx_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %timer_tx_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %timer_tx_num, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %interval = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %t, i32 0, i32 6
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #5
  %add = add i32 %call2.i, %9
  %call4 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [172 x %struct.hal_srng], ptr %hal, i32 0, i32 %3
  %started = getelementptr inbounds %struct.ath11k_hp_update_timer, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %started, align 4
  tail call void @ath11k_hal_srng_shadow_update_hp_tp(ptr noundef %1, ptr noundef %arrayidx) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_setup_link_idle_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_tx_init_data_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_reo_init_cmd_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_shadow_update_hp_tp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !41, !43, !44, !46, !48, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 31, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 56, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 65, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 73, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 86, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 315, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 326, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 727, i32 20}
!16 = !{ptr @__ksymtab_ath11k_dp_service_srng, !17, !"__ksymtab_ath11k_dp_service_srng", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 864, i32 1}
!18 = !{ptr @ath11k_dp_pdev_pre_alloc.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 893, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ath11k_dp_pdev_pre_alloc.__key.9, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 895, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ath11k_dp_pdev_pre_alloc.__key.11, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 898, i32 4}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ath11k_dp_pdev_pre_alloc.__key.13, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 901, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 916, i32 20}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 922, i32 20}
!34 = !{ptr @ath11k_dp_alloc.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 1055, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 1061, i32 19}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 1070, i32 19}
!41 = !{ptr @ath11k_dp_alloc.__key.20, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 1082, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 1141, i32 2}
!46 = !{ptr @ath11k_dp_shadow_init_timer.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 1182, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 188, i32 39}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 197, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 206, i32 3}
!55 = !{ptr @xa_init_flags.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 379, i32 19}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 387, i32 19}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 394, i32 19}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 403, i32 20}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 412, i32 20}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 428, i32 19}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 436, i32 19}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 443, i32 19}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 451, i32 19}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath11k/dp.c", i32 465, i32 19}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{!"auto-init"}
!89 = !{i64 2148782863, i64 2148782868, i64 2148782881, i64 2148782925, i64 2148782959, i64 2148782980}
!90 = !{i32 0, i32 33}
!91 = !{!"branch_weights", i32 1, i32 2000}
