; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath11k_debugfs_soc_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ath11k_debugfs_soc_destroy\09\09\09\09"
module asm "\09.long\09__crc_ath11k_debugfs_soc_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath11k_debugfs_soc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ath11k_debugfs_soc_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ath11k_debugfs_soc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.htt_rx_ring_tlv_filter = type { i32, i32, i32, i32, i32 }
%struct.ath11k_fw_stats = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath11k = type { ptr, ptr, ptr, ptr, ptr, %struct.ath11k_pdev_dp, [6 x i8], i32, i32, %struct.ath11k_he, i32, i8, %struct.anon.144, %struct.anon.145, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.completion, %struct.completion, i32, %struct.completion, i32, %struct.completion, %struct.completion, i32, i32, i32, i32, i64, %struct.idr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i8, [101 x %struct.survey_info], %struct.completion, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.ath11k_per_peer_tx_stats, %struct.list_head, i32, %struct.ath11k_per_peer_tx_stats, i32, i32, i32, %struct.ath11k_debug, %struct.ath11k_spectral, i8, %struct.ath11k_thermal, i32, %struct.completion, %struct.completion, i8, i8 }
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
%struct.anon.144 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.145 = type { [6 x %struct.ieee80211_supported_band], [6 x [13 x %struct.ieee80211_sband_iftype_data]] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.129 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.129 = type { ptr, i32 }
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
%struct.ath11k_per_peer_tx_stats = type { i32, i32, i32, i16, i16, i16, i32, i8, i8 }
%struct.ath11k_debug = type { ptr, %struct.ath11k_dbg_htt_stats, i32, %struct.ath11k_fw_stats, %struct.completion, i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.ath11k_dbg_htt_stats = type { i8, i8, ptr, %struct.spinlock }
%struct.ath11k_spectral = type { %struct.ath11k_dbring, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.ath11k_dbring = type { %struct.dp_srng, %struct.idr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ath11k_thermal = type { ptr, %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.101, %struct.anon.102, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.146], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.150, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.151, [0 x i8], [52 x i8] }
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
%struct.anon.146 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
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
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.147, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.149, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.147 = type { ptr, i32, i32 }
%struct.anon.149 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.150 = type { i32 }
%struct.anon.151 = type { i32, i32, i32, i32, i32 }
%struct.stats_request_params = type { i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.132, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.132 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.131, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.131 = type { i64, i64, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.152, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.153, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.154, ptr, %struct.address_space, %struct.list_head, %union.anon.155, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.152 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.153 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.154 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.155 = type { ptr }

@ath11k_debugfs_fw_stats_process.num_vdev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ath11k_debugfs_fw_stats_process.num_bcn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to pull fw stats: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get ar for pdev_id %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"empty vdev stats\00", [47 x i8] zeroinitializer }, align 32
@ath11k_debugfs_fw_stats_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ath/ath11k/debugfs.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"empty bcn stats\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request fw stats: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"debug get fw stat pdev id %d vdev id %d stats id 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"simulate_fw_crash\00", [46 x i8] zeroinitializer }, align 32
@fops_simulate_fw_crash = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_simulate_fw_crash, ptr @ath11k_write_simulate_fw_crash, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"soc_dp_stats\00", [19 x i8] zeroinitializer }, align 32
@fops_soc_dp_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_debugfs_dump_soc_dp_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath11k\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_ath11k_debugfs_soc_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath11k_debugfs_soc_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ath11k_debugfs_soc_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath11k_debugfs_soc_destroy to i32), ptr @__kstrtab_ath11k_debugfs_soc_destroy, ptr @__kstrtabns_ath11k_debugfs_soc_destroy }, section "___ksymtab+ath11k_debugfs_soc_destroy", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_stats\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pdev_stats\00", [21 x i8] zeroinitializer }, align 32
@fops_pdev_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_pdev_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath11k_open_pdev_stats, ptr null, ptr @ath11k_release_pdev_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdev_stats\00", [21 x i8] zeroinitializer }, align 32
@fops_vdev_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_vdev_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath11k_open_vdev_stats, ptr null, ptr @ath11k_release_vdev_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"beacon_stats\00", [19 x i8] zeroinitializer }, align 32
@fops_bcn_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath11k_read_bcn_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath11k_open_bcn_stats, ptr null, ptr @ath11k_release_bcn_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"../../ath11k/%pd2\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_tx_stats\00", [19 x i8] zeroinitializer }, align 32
@fops_extd_tx_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath11k_read_enable_extd_tx_stats, ptr @ath11k_write_enable_extd_tx_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_rx_stats\00", [19 x i8] zeroinitializer }, align 32
@fops_extd_rx_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath11k_read_extd_rx_stats, ptr @ath11k_write_extd_rx_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pktlog_filter\00", [18 x i8] zeroinitializer }, align 32
@fops_pktlog_filter = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath11k_read_pktlog_filter, ptr @ath11k_write_pktlog_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dfs_simulate_radar\00", [45 x i8] zeroinitializer }, align 32
@fops_simulate_radar = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @ath11k_write_simulate_radar, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dfs_block_radar_events\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not request fw stats (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@__const.ath11k_read_simulate_fw_crash.buf = private unnamed_addr constant [229 x i8] c"To simulate firmware crash write one of the keywords to this file:\0A`assert` - this will send WMI_FORCE_FW_HANG_CMDID to firmware to cause assert.\0A`hw-restart` - this will simply queue hw restart without fw/hw actually crashing.\0A\00", align 1
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"assert\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"simulating firmware assert crash\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to simulate firmware crash: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ath11k_debugfs_dump_soc_dp_stats.rxdma_err = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Overflow\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MPDU len\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCS\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Decrypt\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TKIP MIC\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Unencrypt\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSDU len\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSDU limit\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WiFi parse\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMSDU parse\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SA timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DA timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flow timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Flush req\00", [22 x i8] zeroinitializer }, align 32
@ath11k_debugfs_dump_soc_dp_stats.reo_err = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Desc addr zero\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Desc inval\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMPDU in non BA\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Non BA dup\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BA dup\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Frame 2k jump\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BAR 2k jump\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Frame OOR\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BAR OOR\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No BA session\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Frame SN equal SSN\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PN check fail\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2k err\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PN err\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Desc blocked\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOC RX STATS:\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err ring pkts: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid RBM: %u\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RXDMA errors:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0AREO errors:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0AHAL REO errors:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ring0: %u\0Aring1: %u\0Aring2: %u\0Aring3: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0ASOC TX STATS:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0ATCL Ring Full Failures:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ring%d: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AMisc Transmit Failures: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0ABackpressure Stats\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"==================\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ring: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@htt_bp_umac_ring = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], [56 x i8] zeroinitializer }, align 32
@htt_bp_lmac_ring = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110], [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdev: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No Ring Backpressure stats received\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REO2SW1_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REO2SW2_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REO2SW3_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REO2SW4_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WBM2REO_LINK_RING\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REO2TCL_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REO2FW_RING\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RELEASE_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PPE_RELEASE_RING\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCL2TQM_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TQM_RELEASE_RING\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REO_RELEASE_RING\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WBM2SW0_RELEASE_RING\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WBM2SW1_RELEASE_RING\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WBM2SW2_RELEASE_RING\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WBM2SW3_RELEASE_RING\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REO_CMD_RING\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REO_STATUS_RING\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"count: %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hp: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tp: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"seen before: %ums\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW2RXDMA_BUF_RING\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW2RXDMA_STATUS_RING\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FW2RXDMA_LINK_RING\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SW2RXDMA_BUF_RING\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WBM2RXDMA_LINK_RING\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RXDMA2FW_RING\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RXDMA2SW_RING\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RXDMA2RELEASE_RING\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RXDMA2REO_RING\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MONITOR_STATUS_RING\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MONITOR_BUF_RING\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MONITOR_DESC_RING\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MONITOR_DEST_RING\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request fw pdev stats: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request fw vdev stats: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request fw bcn stats: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ath11k_mac_mon_status_filter_default = external dso_local local_unnamed_addr constant %struct.htt_rx_ring_tlv_filter, align 4
@.str.117 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to set rx filter for monitor status ring\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%08x %08x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%x %u\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable pktlog filter %x: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable pktlog: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable pktlog lite: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to send htt ppdu stats req: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pktlog mode %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lite\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 8, i64 256, i64 2048]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"num_vdev\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 100, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant [8 x i8] c"num_bcn\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 100, i32 32 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 110, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 118, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 138, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 145, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 164, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 259, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 261, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 882, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant [23 x i8] c"fops_simulate_fw_crash\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 576, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 885, i32 22 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"fops_soc_dp_stats\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 866, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 899, i32 42 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 913, i32 50 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 921, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"fops_pdev_stats\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 335, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 923, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"fops_vdev_stats\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 407, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 925, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"fops_bcn_stats\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 492, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1116, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1116, i32 49 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1123, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1130, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c"fops_extd_tx_stats\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 632, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1133, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"fops_extd_rx_stats\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 724, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1136, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"fops_pktlog_filter\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1085, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1141, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c"fops_simulate_radar\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1105, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1144, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 695, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 723, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 214, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 555, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 556, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 566, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant [10 x i8] c"rxdma_err\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 804, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 805, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 805, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 805, i32 28 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 805, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 805, i32 46 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 806, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 806, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 806, i32 29 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 806, i32 43 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 807, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 807, i32 19 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 807, i32 33 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 808, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 808, i32 20 }
@___asan_gen_.296 = private unnamed_addr constant [8 x i8] c"reo_err\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 809, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 810, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 810, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 810, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 811, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 811, i32 18 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 811, i32 28 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 811, i32 45 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 812, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 812, i32 17 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 812, i32 28 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 813, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 813, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 813, i32 43 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 814, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 814, i32 14 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 822, i32 42 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 823, i32 42 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 825, i32 42 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 827, i32 42 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 829, i32 43 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 832, i32 42 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 837, i32 42 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 839, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 845, i32 42 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 846, i32 42 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 849, i32 43 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 853, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 755, i32 42 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 756, i32 42 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 765, i32 43 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"htt_bp_umac_ring\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 18, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"htt_bp_lmac_ring\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 39, i32 20 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 781, i32 44 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 791, i32 6 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 19, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 20, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 21, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 22, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 23, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 24, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 25, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 26, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 27, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 28, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 29, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 30, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 31, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 32, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 33, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 34, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 35, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 36, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 736, i32 42 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 738, i32 42 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 740, i32 42 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 742, i32 42 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 40, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 41, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 42, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 43, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 44, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 45, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 46, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 47, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 48, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 49, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 50, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 51, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 52, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 298, i32 19 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 370, i32 23 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 447, i32 24 }
@___asan_gen_.515 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 87, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 625, i32 42 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 717, i32 42 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 696, i32 24 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1077, i32 42 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 960, i32 20 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 970, i32 9 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 977, i32 24 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1013, i32 23 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1027, i32 23 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1055, i32 18 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1056, i32 44 }
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.555 = private constant [45 x i8] c"../drivers/net/wireless/ath/ath11k/debugfs.c\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1056, i32 53 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__ksymtab_ath11k_debugfs_soc_destroy, ptr @ath11k_debugfs_fw_stats_process.num_vdev, ptr @ath11k_debugfs_fw_stats_process.num_bcn, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fops_simulate_fw_crash, ptr @.str.9, ptr @fops_soc_dp_stats, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @fops_pdev_stats, ptr @.str.13, ptr @fops_vdev_stats, ptr @.str.14, ptr @fops_bcn_stats, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @fops_extd_tx_stats, ptr @.str.19, ptr @fops_extd_rx_stats, ptr @.str.20, ptr @fops_pktlog_filter, ptr @.str.21, ptr @fops_simulate_radar, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ath11k_debugfs_dump_soc_dp_stats.rxdma_err, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @ath11k_debugfs_dump_soc_dp_stats.reo_err, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @htt_bp_umac_ring, ptr @htt_bp_lmac_ring, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @init_completion.__key, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_debugfs_fw_stats_process.num_vdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_debugfs_fw_stats_process.num_bcn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_simulate_fw_crash to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_soc_dp_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pdev_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vdev_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_bcn_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_extd_tx_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_extd_rx_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pktlog_filter to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_simulate_radar to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_debugfs_dump_soc_dp_stats.rxdma_err to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_debugfs_dump_soc_dp_stats.reo_err to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_bp_umac_ring to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_bp_lmac_ring to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_fw_stats_process(ptr noundef %ab, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %stats = alloca %struct.ath11k_fw_stats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %stats) #12
  %0 = call ptr @memset(ptr %stats, i32 0, i32 12)
  %pdevs = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 3
  %1 = ptrtoint ptr %pdevs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pdevs, ptr %pdevs, align 4
  %prev.i = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdevs, ptr %prev.i, align 4
  %vdevs = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 4
  %3 = ptrtoint ptr %vdevs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vdevs, ptr %vdevs, align 4
  %prev.i111 = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vdevs, ptr %prev.i111, align 4
  %bcn = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 5
  %5 = ptrtoint ptr %bcn to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %bcn, ptr %bcn, align 4
  %prev.i112 = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bcn, ptr %prev.i112, align 4
  %call = call i32 @ath11k_wmi_pull_fw_stats(ptr noundef %ab, ptr noundef %skb, ptr noundef nonnull %stats) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str, i32 noundef %call) #12
  br label %free

if.end:                                           ; preds = %entry
  %7 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !298
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %pdev_id = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdev_id, align 4
  %call1 = call ptr @ath11k_mac_get_ar_by_pdev_id(ptr noundef %ab, i32 noundef %12) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %rcu_read_lock.exit
  %call.i113 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i113, label %if.then3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i116

if.then3.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i116:                               ; preds = %if.then3
  %call1.i114 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, %if.then3.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !299
  %13 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i120 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i121, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %17 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdev_id, align 4
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef 0) #12
  br label %free

if.end5:                                          ; preds = %rcu_read_lock.exit
  %data_lock = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 27
  call void @_raw_spin_lock_bh(ptr noundef %data_lock) #12
  %stats_id = getelementptr inbounds %struct.ath11k_fw_stats, ptr %stats, i32 0, i32 2
  %19 = ptrtoint ptr %stats_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stats_id, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end5.complete_crit_edge [
    i32 4, label %if.then6
    i32 256, label %if.then13
    i32 8, label %if.then19
    i32 2048, label %if.then58
  ]

if.end5.complete_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %complete

if.then6:                                         ; preds = %if.end5
  %22 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pdevs, align 4
  %cmp.i.not.i = icmp eq ptr %23, %pdevs
  br i1 %cmp.i.not.i, label %if.then6.list_splice_tail_init.exit_crit_edge, label %if.then.i123

if.then6.list_splice_tail_init.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i123:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %pdevs8 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 3, i32 3
  %prev.i122 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 3, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i122, align 4
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %25, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pdevs8, ptr %27, align 4
  store ptr %27, ptr %prev.i122, align 4
  %31 = ptrtoint ptr %pdevs to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %pdevs, ptr %pdevs, align 4
  store ptr %pdevs, ptr %prev.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i123, %if.then6.list_splice_tail_init.exit_crit_edge
  %fw_stats_done = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 5
  %32 = ptrtoint ptr %fw_stats_done to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %fw_stats_done, align 8
  br label %complete

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %fw_stats_done15 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 5
  %33 = ptrtoint ptr %fw_stats_done15 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %fw_stats_done15, align 8
  br label %complete

if.then19:                                        ; preds = %if.end5
  %34 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %vdevs, align 4
  %cmp.i.not = icmp eq ptr %35, %vdevs
  br i1 %cmp.i.not, label %if.then23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then19
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %36 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp25171 = icmp sgt i32 %37, 0
  br i1 %cmp25171, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_started_vdevs = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 46
  br label %for.body

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.2) #12
  br label %complete

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0173 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %total_vdevs_started.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %total_vdevs_started.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 22, i32 %i.0173
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %arrayidx, align 4
  %call27 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true, label %for.body.do.end36_crit_edge

for.body.do.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

land.lhs.true:                                    ; preds = %for.body
  %call29 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true
  %.b110 = load i1, ptr @ath11k_debugfs_fw_stats_process.__warned, align 1
  br i1 %.b110, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ath11k_debugfs_fw_stats_process.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 145, ptr noundef nonnull @.str.4) #12
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %for.body.do.end36_crit_edge
  %tobool38.not = icmp eq ptr %39, null
  br i1 %tobool38.not, label %do.end36.for.inc_crit_edge, label %land.lhs.true39

do.end36.for.inc_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true39:                                  ; preds = %do.end36
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool41.not = icmp eq ptr %41, null
  br i1 %tobool41.not, label %land.lhs.true39.for.inc_crit_edge, label %if.then42

land.lhs.true39.for.inc_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %num_started_vdevs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_started_vdevs, align 8
  %add = add i32 %43, %total_vdevs_started.0172
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %land.lhs.true39.for.inc_crit_edge, %do.end36.for.inc_crit_edge
  %total_vdevs_started.1 = phi i32 [ %add, %if.then42 ], [ %total_vdevs_started.0172, %land.lhs.true39.for.inc_crit_edge ], [ %total_vdevs_started.0172, %do.end36.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0173, 1
  %44 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_radios, align 64
  %cmp25 = icmp slt i32 %inc, %45
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %total_vdevs_started.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %total_vdevs_started.1, %for.inc.for.end_crit_edge ]
  %46 = load i32, ptr @ath11k_debugfs_fw_stats_process.num_vdev, align 4
  %inc44 = add i32 %46, 1
  store i32 %inc44, ptr @ath11k_debugfs_fw_stats_process.num_vdev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc44, i32 %total_vdevs_started.0.lcssa)
  %cmp45 = icmp eq i32 %inc44, %total_vdevs_started.0.lcssa
  %47 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %vdevs, align 4
  %cmp.i.not.i124 = icmp eq ptr %48, %vdevs
  br i1 %cmp.i.not.i124, label %for.end.list_splice_tail_init.exit129_crit_edge, label %if.then.i128

for.end.list_splice_tail_init.exit129_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit129

if.then.i128:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %vdevs49 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 3, i32 4
  %prev.i125 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 3, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i125, align 4
  %51 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i111, align 4
  %prev3.i.i127 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i127 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i127, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %vdevs49, ptr %52, align 4
  store ptr %52, ptr %prev.i125, align 4
  %56 = ptrtoint ptr %vdevs to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %vdevs, ptr %vdevs, align 4
  store ptr %vdevs, ptr %prev.i111, align 4
  br label %list_splice_tail_init.exit129

list_splice_tail_init.exit129:                    ; preds = %if.then.i128, %for.end.list_splice_tail_init.exit129_crit_edge
  br i1 %cmp45, label %if.then51, label %list_splice_tail_init.exit129.complete_crit_edge

list_splice_tail_init.exit129.complete_crit_edge: ; preds = %list_splice_tail_init.exit129
  call void @__sanitizer_cov_trace_pc() #14
  br label %complete

if.then51:                                        ; preds = %list_splice_tail_init.exit129
  call void @__sanitizer_cov_trace_pc() #14
  %fw_stats_done53 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 5
  %57 = ptrtoint ptr %fw_stats_done53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %fw_stats_done53, align 8
  store i32 0, ptr @ath11k_debugfs_fw_stats_process.num_vdev, align 4
  br label %complete

if.then58:                                        ; preds = %if.end5
  %58 = ptrtoint ptr %bcn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %bcn, align 4
  %cmp.i130.not = icmp eq ptr %59, %bcn
  br i1 %cmp.i130.not, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.5) #12
  br label %complete

if.end63:                                         ; preds = %if.then58
  %60 = load i32, ptr @ath11k_debugfs_fw_stats_process.num_bcn, align 4
  %inc64 = add i32 %60, 1
  store i32 %inc64, ptr @ath11k_debugfs_fw_stats_process.num_bcn, align 4
  %num_started_vdevs65 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 46
  %61 = ptrtoint ptr %num_started_vdevs65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_started_vdevs65, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc64, i32 %62)
  %cmp66 = icmp eq i32 %inc64, %62
  %63 = ptrtoint ptr %bcn to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %bcn, align 4
  %cmp.i.not.i132 = icmp eq ptr %64, %bcn
  br i1 %cmp.i.not.i132, label %if.end63.list_splice_tail_init.exit137_crit_edge, label %if.then.i136

if.end63.list_splice_tail_init.exit137_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit137

if.then.i136:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %bcn71 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 3, i32 5
  %prev.i133 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 3, i32 5, i32 1
  %65 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i133, align 4
  %67 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i112, align 4
  %prev3.i.i135 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i135 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i135, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %66, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %bcn71, ptr %68, align 4
  store ptr %68, ptr %prev.i133, align 4
  %72 = ptrtoint ptr %bcn to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %bcn, ptr %bcn, align 4
  store ptr %bcn, ptr %prev.i112, align 4
  br label %list_splice_tail_init.exit137

list_splice_tail_init.exit137:                    ; preds = %if.then.i136, %if.end63.list_splice_tail_init.exit137_crit_edge
  br i1 %cmp66, label %if.then73, label %list_splice_tail_init.exit137.complete_crit_edge

list_splice_tail_init.exit137.complete_crit_edge: ; preds = %list_splice_tail_init.exit137
  call void @__sanitizer_cov_trace_pc() #14
  br label %complete

if.then73:                                        ; preds = %list_splice_tail_init.exit137
  call void @__sanitizer_cov_trace_pc() #14
  %fw_stats_done75 = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 5
  %73 = ptrtoint ptr %fw_stats_done75 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %fw_stats_done75, align 8
  store i32 0, ptr @ath11k_debugfs_fw_stats_process.num_bcn, align 4
  br label %complete

complete:                                         ; preds = %if.then73, %list_splice_tail_init.exit137.complete_crit_edge, %if.then62, %if.then51, %list_splice_tail_init.exit129.complete_crit_edge, %if.then23, %if.then13, %list_splice_tail_init.exit, %if.end5.complete_crit_edge
  %fw_stats_complete = getelementptr inbounds %struct.ath11k, ptr %call1, i32 0, i32 68, i32 4
  call void @complete(ptr noundef %fw_stats_complete) #12
  %call.i138 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i138, label %complete.rcu_read_unlock.exit148_crit_edge, label %land.lhs.true.i141

complete.rcu_read_unlock.exit148_crit_edge:       ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit148

land.lhs.true.i141:                               ; preds = %complete
  %call1.i139 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool.not.i140 = icmp eq i32 %call1.i139, 0
  br i1 %tobool.not.i140, label %land.lhs.true.i141.rcu_read_unlock.exit148_crit_edge, label %land.lhs.true2.i143

land.lhs.true.i141.rcu_read_unlock.exit148_crit_edge: ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit148

land.lhs.true2.i143:                              ; preds = %land.lhs.true.i141
  %.b4.i142 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i142, label %land.lhs.true2.i143.rcu_read_unlock.exit148_crit_edge, label %if.then.i144

land.lhs.true2.i143.rcu_read_unlock.exit148_crit_edge: ; preds = %land.lhs.true2.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit148

if.then.i144:                                     ; preds = %land.lhs.true2.i143
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #12
  br label %rcu_read_unlock.exit148

rcu_read_unlock.exit148:                          ; preds = %if.then.i144, %land.lhs.true2.i143.rcu_read_unlock.exit148_crit_edge, %land.lhs.true.i141.rcu_read_unlock.exit148_crit_edge, %complete.rcu_read_unlock.exit148_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !299
  %74 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i145 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i145 to ptr
  %preempt_count.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i146, align 4
  %sub.i.i.i147 = add i32 %77, -1
  store volatile i32 %sub.i.i.i147, ptr %preempt_count.i.i.i.i146, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #12
  br label %free

free:                                             ; preds = %rcu_read_unlock.exit148, %rcu_read_unlock.exit, %if.then
  %78 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdevs, align 4
  %cmp.not18.i = icmp eq ptr %79, %pdevs
  br i1 %cmp.not18.i, label %free.ath11k_fw_stats_pdevs_free.exit_crit_edge, label %free.for.body.i_crit_edge

free.for.body.i_crit_edge:                        ; preds = %free
  br label %for.body.i

free.ath11k_fw_stats_pdevs_free.exit_crit_edge:   ; preds = %free
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_pdevs_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %free.for.body.i_crit_edge
  %i.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %79, %free.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmp.0.i = load ptr, ptr %i.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %87 = ptrtoint ptr %i.019.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %i.019.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %pdevs
  br i1 %cmp.not.i, label %list_del.exit.i.ath11k_fw_stats_pdevs_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.ath11k_fw_stats_pdevs_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_pdevs_free.exit

ath11k_fw_stats_pdevs_free.exit:                  ; preds = %list_del.exit.i.ath11k_fw_stats_pdevs_free.exit_crit_edge, %free.ath11k_fw_stats_pdevs_free.exit_crit_edge
  %89 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vdevs, align 4
  %cmp.not18.i149 = icmp eq ptr %90, %vdevs
  br i1 %cmp.not18.i149, label %ath11k_fw_stats_pdevs_free.exit.ath11k_fw_stats_vdevs_free.exit_crit_edge, label %ath11k_fw_stats_pdevs_free.exit.for.body.i153_crit_edge

ath11k_fw_stats_pdevs_free.exit.for.body.i153_crit_edge: ; preds = %ath11k_fw_stats_pdevs_free.exit
  br label %for.body.i153

ath11k_fw_stats_pdevs_free.exit.ath11k_fw_stats_vdevs_free.exit_crit_edge: ; preds = %ath11k_fw_stats_pdevs_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_vdevs_free.exit

for.body.i153:                                    ; preds = %list_del.exit.i159.for.body.i153_crit_edge, %ath11k_fw_stats_pdevs_free.exit.for.body.i153_crit_edge
  %i.019.i150 = phi ptr [ %tmp.0.i151, %list_del.exit.i159.for.body.i153_crit_edge ], [ %90, %ath11k_fw_stats_pdevs_free.exit.for.body.i153_crit_edge ]
  %91 = ptrtoint ptr %i.019.i150 to i32
  call void @__asan_load4_noabort(i32 %91)
  %tmp.0.i151 = load ptr, ptr %i.019.i150, align 4
  %call.i.i.i152 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i150) #12
  br i1 %call.i.i.i152, label %if.end.i.i.i156, label %for.body.i153.list_del.exit.i159_crit_edge

for.body.i153.list_del.exit.i159_crit_edge:       ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i159

if.end.i.i.i156:                                  ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i154 = getelementptr inbounds %struct.list_head, ptr %i.019.i150, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i154, align 4
  %94 = ptrtoint ptr %i.019.i150 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i.019.i150, align 4
  %prev1.i.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i155, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del.exit.i159

list_del.exit.i159:                               ; preds = %if.end.i.i.i156, %for.body.i153.list_del.exit.i159_crit_edge
  %98 = ptrtoint ptr %i.019.i150 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i150, align 4
  %prev.i.i157 = getelementptr inbounds %struct.list_head, ptr %i.019.i150, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i157 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i157, align 4
  call void @kfree(ptr noundef %i.019.i150) #12
  %cmp.not.i158 = icmp eq ptr %tmp.0.i151, %vdevs
  br i1 %cmp.not.i158, label %list_del.exit.i159.ath11k_fw_stats_vdevs_free.exit_crit_edge, label %list_del.exit.i159.for.body.i153_crit_edge

list_del.exit.i159.for.body.i153_crit_edge:       ; preds = %list_del.exit.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i153

list_del.exit.i159.ath11k_fw_stats_vdevs_free.exit_crit_edge: ; preds = %list_del.exit.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_vdevs_free.exit

ath11k_fw_stats_vdevs_free.exit:                  ; preds = %list_del.exit.i159.ath11k_fw_stats_vdevs_free.exit_crit_edge, %ath11k_fw_stats_pdevs_free.exit.ath11k_fw_stats_vdevs_free.exit_crit_edge
  %100 = ptrtoint ptr %bcn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bcn, align 4
  %cmp.not18.i160 = icmp eq ptr %101, %bcn
  br i1 %cmp.not18.i160, label %ath11k_fw_stats_vdevs_free.exit.ath11k_fw_stats_bcn_free.exit_crit_edge, label %ath11k_fw_stats_vdevs_free.exit.for.body.i164_crit_edge

ath11k_fw_stats_vdevs_free.exit.for.body.i164_crit_edge: ; preds = %ath11k_fw_stats_vdevs_free.exit
  br label %for.body.i164

ath11k_fw_stats_vdevs_free.exit.ath11k_fw_stats_bcn_free.exit_crit_edge: ; preds = %ath11k_fw_stats_vdevs_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_bcn_free.exit

for.body.i164:                                    ; preds = %list_del.exit.i170.for.body.i164_crit_edge, %ath11k_fw_stats_vdevs_free.exit.for.body.i164_crit_edge
  %i.019.i161 = phi ptr [ %tmp.0.i162, %list_del.exit.i170.for.body.i164_crit_edge ], [ %101, %ath11k_fw_stats_vdevs_free.exit.for.body.i164_crit_edge ]
  %102 = ptrtoint ptr %i.019.i161 to i32
  call void @__asan_load4_noabort(i32 %102)
  %tmp.0.i162 = load ptr, ptr %i.019.i161, align 4
  %call.i.i.i163 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i161) #12
  br i1 %call.i.i.i163, label %if.end.i.i.i167, label %for.body.i164.list_del.exit.i170_crit_edge

for.body.i164.list_del.exit.i170_crit_edge:       ; preds = %for.body.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i170

if.end.i.i.i167:                                  ; preds = %for.body.i164
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %i.019.i161, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i.i165, align 4
  %105 = ptrtoint ptr %i.019.i161 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i.019.i161, align 4
  %prev1.i.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i.i166, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del.exit.i170

list_del.exit.i170:                               ; preds = %if.end.i.i.i167, %for.body.i164.list_del.exit.i170_crit_edge
  %109 = ptrtoint ptr %i.019.i161 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i161, align 4
  %prev.i.i168 = getelementptr inbounds %struct.list_head, ptr %i.019.i161, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i168 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i168, align 4
  call void @kfree(ptr noundef %i.019.i161) #12
  %cmp.not.i169 = icmp eq ptr %tmp.0.i162, %bcn
  br i1 %cmp.not.i169, label %list_del.exit.i170.ath11k_fw_stats_bcn_free.exit_crit_edge, label %list_del.exit.i170.for.body.i164_crit_edge

list_del.exit.i170.for.body.i164_crit_edge:       ; preds = %list_del.exit.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i164

list_del.exit.i170.ath11k_fw_stats_bcn_free.exit_crit_edge: ; preds = %list_del.exit.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_bcn_free.exit

ath11k_fw_stats_bcn_free.exit:                    ; preds = %list_del.exit.i170.ath11k_fw_stats_bcn_free.exit_crit_edge, %ath11k_fw_stats_vdevs_free.exit.ath11k_fw_stats_bcn_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stats) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_pull_fw_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_mac_get_ar_by_pdev_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_debugfs_get_fw_stats(ptr noundef %ar, i32 noundef %pdev_id, i32 noundef %vdev_id, i32 noundef %stats_id) local_unnamed_addr #0 align 64 {
entry:
  %req_param = alloca %struct.stats_request_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_param) #12
  %2 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %req_param, align 4, !annotation !300
  %3 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !300
  %5 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !300
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %entry.err_unlock_crit_edge

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unlock

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pdev_id, ptr %5, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vdev_id, ptr %3, align 4
  %11 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %stats_id, ptr %req_param, align 4
  %call = call fastcc i32 @ath11k_debugfs_fw_stats_request(ptr noundef %ar, ptr noundef nonnull %req_param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %call) #12
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %12 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body.if.then9_crit_edge

do.body.if.then9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_debugfs_get_fw_stats, %if.then9)) #12
          to label %err_unlock [label %if.then9], !srcloc !301

if.then9:                                         ; preds = %lor.lhs.false, %do.body.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %pdev_id, i32 noundef %vdev_id, i32 noundef %stats_id) #12
  br label %err_unlock

err_unlock:                                       ; preds = %if.then9, %lor.lhs.false, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %if.then9 ], [ -100, %entry.err_unlock_crit_edge ], [ %call, %lor.lhs.false ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_param) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_debugfs_fw_stats_request(ptr noundef %ar, ptr noundef %req_param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 26, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !302

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 198, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 300
  %data_lock.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock.i) #12
  %fw_stats_done.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 5
  %4 = ptrtoint ptr %fw_stats_done.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_stats_done.i, align 8
  %pdevs.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 3
  %5 = ptrtoint ptr %pdevs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdevs.i, align 4
  %cmp.not18.i.i = icmp eq ptr %6, %pdevs.i
  br i1 %cmp.not18.i.i, label %if.end.ath11k_fw_stats_pdevs_free.exit.i_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.ath11k_fw_stats_pdevs_free.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_pdevs_free.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %6, %if.end.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %i.019.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0.i.i = load ptr, ptr %i.019.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i.i, align 4
  %10 = ptrtoint ptr %i.019.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i.019.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %14 = ptrtoint ptr %i.019.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %i.019.i.i) #12
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %pdevs.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.ath11k_fw_stats_pdevs_free.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_del.exit.i.i.ath11k_fw_stats_pdevs_free.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_pdevs_free.exit.i

ath11k_fw_stats_pdevs_free.exit.i:                ; preds = %list_del.exit.i.i.ath11k_fw_stats_pdevs_free.exit.i_crit_edge, %if.end.ath11k_fw_stats_pdevs_free.exit.i_crit_edge
  %vdevs.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 4
  %16 = ptrtoint ptr %vdevs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdevs.i, align 4
  %cmp.not18.i9.i = icmp eq ptr %17, %vdevs.i
  br i1 %cmp.not18.i9.i, label %ath11k_fw_stats_pdevs_free.exit.i.ath11k_debugfs_fw_stats_reset.exit_crit_edge, label %ath11k_fw_stats_pdevs_free.exit.i.for.body.i13.i_crit_edge

ath11k_fw_stats_pdevs_free.exit.i.for.body.i13.i_crit_edge: ; preds = %ath11k_fw_stats_pdevs_free.exit.i
  br label %for.body.i13.i

ath11k_fw_stats_pdevs_free.exit.i.ath11k_debugfs_fw_stats_reset.exit_crit_edge: ; preds = %ath11k_fw_stats_pdevs_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_debugfs_fw_stats_reset.exit

for.body.i13.i:                                   ; preds = %list_del.exit.i19.i.for.body.i13.i_crit_edge, %ath11k_fw_stats_pdevs_free.exit.i.for.body.i13.i_crit_edge
  %i.019.i10.i = phi ptr [ %tmp.0.i11.i, %list_del.exit.i19.i.for.body.i13.i_crit_edge ], [ %17, %ath11k_fw_stats_pdevs_free.exit.i.for.body.i13.i_crit_edge ]
  %18 = ptrtoint ptr %i.019.i10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.0.i11.i = load ptr, ptr %i.019.i10.i, align 4
  %call.i.i.i12.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i10.i) #12
  br i1 %call.i.i.i12.i, label %if.end.i.i.i16.i, label %for.body.i13.i.list_del.exit.i19.i_crit_edge

for.body.i13.i.list_del.exit.i19.i_crit_edge:     ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i19.i

if.end.i.i.i16.i:                                 ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i14.i = getelementptr inbounds %struct.list_head, ptr %i.019.i10.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i14.i, align 4
  %21 = ptrtoint ptr %i.019.i10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i.019.i10.i, align 4
  %prev1.i.i.i.i15.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i15.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i19.i

list_del.exit.i19.i:                              ; preds = %if.end.i.i.i16.i, %for.body.i13.i.list_del.exit.i19.i_crit_edge
  %25 = ptrtoint ptr %i.019.i10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i10.i, align 4
  %prev.i.i17.i = getelementptr inbounds %struct.list_head, ptr %i.019.i10.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i17.i, align 4
  tail call void @kfree(ptr noundef %i.019.i10.i) #12
  %cmp.not.i18.i = icmp eq ptr %tmp.0.i11.i, %vdevs.i
  br i1 %cmp.not.i18.i, label %list_del.exit.i19.i.ath11k_debugfs_fw_stats_reset.exit_crit_edge, label %list_del.exit.i19.i.for.body.i13.i_crit_edge

list_del.exit.i19.i.for.body.i13.i_crit_edge:     ; preds = %list_del.exit.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i13.i

list_del.exit.i19.i.ath11k_debugfs_fw_stats_reset.exit_crit_edge: ; preds = %list_del.exit.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_debugfs_fw_stats_reset.exit

ath11k_debugfs_fw_stats_reset.exit:               ; preds = %list_del.exit.i19.i.ath11k_debugfs_fw_stats_reset.exit_crit_edge, %ath11k_fw_stats_pdevs_free.exit.i.ath11k_debugfs_fw_stats_reset.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock.i) #12
  %fw_stats_complete = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 4
  %27 = ptrtoint ptr %fw_stats_complete to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %fw_stats_complete, align 4
  %call26 = tail call i32 @ath11k_wmi_send_stats_request_cmd(ptr noundef %ar, ptr noundef %req_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %ath11k_debugfs_fw_stats_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %call26) #12
  br label %cleanup

if.end29:                                         ; preds = %ath11k_debugfs_fw_stats_reset.exit
  %call32 = tail call i32 @wait_for_completion_timeout(ptr noundef %fw_stats_complete, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %for.cond.preheader

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub61 = sub i32 %add, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub61)
  %cmp3662 = icmp slt i32 %sub61, 0
  br i1 %cmp3662, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.if.end38_crit_edge

for.cond.preheader.if.end38_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end38

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.end43.if.end38_crit_edge, %for.cond.preheader.if.end38_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock.i) #12
  %29 = ptrtoint ptr %fw_stats_done.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fw_stats_done.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp eq i8 %30, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock.i) #12
  br i1 %tobool40.not, label %if.end43, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %31
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %if.end43.cleanup_crit_edge, label %if.end43.if.end38_crit_edge

if.end43.if.end38_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then28
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ -110, %if.end29.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_debugfs_pdev_create(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %hw_params = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36
  %3 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_params, align 4
  %debugfs_ath11k = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 43
  %5 = ptrtoint ptr %debugfs_ath11k to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debugfs_ath11k, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %4, ptr noundef %6) #12
  %debugfs_soc = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 42
  %7 = ptrtoint ptr %debugfs_soc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %debugfs_soc, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call1 to i32
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %ab, ptr noundef nonnull @fops_simulate_fw_crash) #12
  %9 = ptrtoint ptr %debugfs_soc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_soc, align 8
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %10, ptr noundef %ab, ptr noundef nonnull @fops_soc_dp_stats) #12
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %entry.return_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ 0, %if.end7 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_pdev_destroy(ptr nocapture noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_soc = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 42
  %0 = ptrtoint ptr %debugfs_soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_soc, align 8
  tail call void @debugfs_remove(ptr noundef %1) #12
  %2 = ptrtoint ptr %debugfs_soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_soc, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_debugfs_soc_create(ptr nocapture noundef writeonly %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef null) #12
  %debugfs_ath11k = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 43
  %0 = ptrtoint ptr %debugfs_ath11k to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %debugfs_ath11k, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %1, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_soc_destroy(ptr nocapture noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_ath11k = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 43
  %0 = ptrtoint ptr %debugfs_ath11k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_ath11k, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  %2 = ptrtoint ptr %debugfs_ath11k to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_ath11k, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_debugfs_fw_stats_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %1) #12
  %fw_stats = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3
  %2 = ptrtoint ptr %fw_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fw_stats, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %ar, ptr noundef nonnull @fops_pdev_stats) #12
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %ar, ptr noundef nonnull @fops_vdev_stats) #12
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %ar, ptr noundef nonnull @fops_bcn_stats) #12
  %pdevs = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 3
  %3 = ptrtoint ptr %pdevs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pdevs, ptr %pdevs, align 4
  %prev.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdevs, ptr %prev.i, align 4
  %vdevs = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 4
  %5 = ptrtoint ptr %vdevs to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %vdevs, ptr %vdevs, align 4
  %prev.i23 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vdevs, ptr %prev.i23, align 4
  %bcn = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 5
  %7 = ptrtoint ptr %bcn to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %bcn, ptr %bcn, align 4
  %prev.i24 = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bcn, ptr %prev.i24, align 4
  %fw_stats_complete = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 4
  %9 = ptrtoint ptr %fw_stats_complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fw_stats_complete, align 4
  %wait.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_debugfs_register(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %pdev_name = alloca [5 x i8], align 1
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pdev_name) #12
  %2 = call ptr @memset(ptr %pdev_name, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #12
  %3 = call ptr @memset(ptr %buf, i32 0, i32 100)
  %pdev_idx = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 35
  %4 = ptrtoint ptr %pdev_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pdev_idx, align 4
  %conv = zext i8 %5 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pdev_name, i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv)
  %debugfs_soc = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %debugfs_soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_soc, align 8
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %pdev_name, ptr noundef %7) #12
  %debug = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %debug, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.17, ptr noundef %call3)
  %hw = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 2
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfsdir, align 4
  %call15 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.10, ptr noundef %15, ptr noundef nonnull %buf) #12
  call void @ath11k_debugfs_htt_stats_init(ptr noundef %ar) #12
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debug, align 8
  %call.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %17) #12
  %fw_stats.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3
  %18 = ptrtoint ptr %fw_stats.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %fw_stats.i, align 4
  %call2.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %call.i, ptr noundef %ar, ptr noundef nonnull @fops_pdev_stats) #12
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %call.i, ptr noundef %ar, ptr noundef nonnull @fops_vdev_stats) #12
  %call4.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %call.i, ptr noundef %ar, ptr noundef nonnull @fops_bcn_stats) #12
  %pdevs.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 3
  %19 = ptrtoint ptr %pdevs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pdevs.i, ptr %pdevs.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdevs.i, ptr %prev.i.i, align 4
  %vdevs.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 4
  %21 = ptrtoint ptr %vdevs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %vdevs.i, ptr %vdevs.i, align 4
  %prev.i23.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vdevs.i, ptr %prev.i23.i, align 4
  %bcn.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 5
  %23 = ptrtoint ptr %bcn.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %bcn.i, ptr %bcn.i, align 4
  %prev.i24.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 3, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i24.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bcn.i, ptr %prev.i24.i, align 4
  %fw_stats_complete.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 4
  %25 = ptrtoint ptr %fw_stats_complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %fw_stats_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 68, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debug, align 8
  %call18 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 420, ptr noundef %27, ptr noundef %ar, ptr noundef nonnull @fops_extd_tx_stats) #12
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debug, align 8
  %call21 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef %29, ptr noundef %ar, ptr noundef nonnull @fops_extd_rx_stats) #12
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %debug, align 8
  %call24 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %ar, ptr noundef nonnull @fops_pktlog_filter) #12
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %wiphy26 = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy26, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %35, i32 0, i32 53, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %debug, align 8
  %call30 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 128, ptr noundef %39, ptr noundef %ar, ptr noundef nonnull @fops_simulate_radar) #12
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %debug, align 8
  %dfs_block_radar_events = getelementptr inbounds %struct.ath11k, ptr %ar, i32 0, i32 70
  call void @debugfs_create_bool(ptr noundef nonnull @.str.22, i16 noundef zeroext 128, ptr noundef %41, ptr noundef %dfs_block_radar_events) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ 0, %if.then27 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_name) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_debugfs_htt_stats_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_debugfs_unregister(ptr nocapture noundef %ar) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_send_stats_request_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_simulate_fw_crash(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [229 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 229, ptr nonnull %buf) #12
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.ath11k_read_simulate_fw_crash.buf, i32 229)
  %call = call i32 @strlen(ptr noundef nonnull %buf) #15
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 229, ptr nonnull %buf) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_simulate_fw_crash(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pdevs = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdevs, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %4 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_radios, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp61 = icmp sgt i32 %6, 0
  br i1 %cmp61, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp63 = phi i1 [ %cmp, %for.inc.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %i.062 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 19, i32 %i.062
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.ath11k, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %6)
  %cmp = icmp slt i32 %inc, %6
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %cmp63, %land.lhs.true.for.end_crit_edge ], [ %cmp, %for.inc.for.end_crit_edge ]
  %ar.1 = phi ptr [ %3, %entry.for.end_crit_edge ], [ %8, %land.lhs.true.for.end_crit_edge ], [ %8, %for.inc.for.end_crit_edge ]
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp6.not = icmp ne i64 %12, 0
  %13 = add i32 %count, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %13)
  %14 = icmp ult i32 %13, -31
  %15 = or i1 %14, %cmp6.not
  br i1 %15, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 31, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ppos, align 8
  %18 = trunc i64 %17 to i32
  %idxprom = add i32 %18, -1
  %arrayidx15 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp16 = icmp eq i8 %20, 10
  br i1 %cmp16, label %if.then18, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx15, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end14.if.end22_crit_edge
  br i1 %cmp.lcssa, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.27, i32 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %if.then30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void (ptr, ptr, ...) @ath11k_info(ptr noundef %1, ptr noundef nonnull @.str.28) #12
  %call31 = call i32 @ath11k_wmi_force_fw_hang_cmd(ptr noundef %ar.1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  br i1 %tobool33.not, label %if.then30.cleanup_crit_edge, label %if.then34

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %call31) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ %call, %if.end11.cleanup_crit_edge ], [ %call31, %if.then34 ], [ -100, %if.end22.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ %count, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_force_fw_hang_cmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_debugfs_dump_soc_dp_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc_stats1 = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.59) #12
  %add.ptr4 = getelementptr i8, ptr %call7.i.i, i32 %call3
  %sub5 = sub i32 4096, %call3
  %3 = ptrtoint ptr %soc_stats1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %soc_stats1, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.60, i32 noundef %4) #12
  %add7 = add i32 %call6, %call3
  %add.ptr8 = getelementptr i8, ptr %call7.i.i, i32 %add7
  %sub9 = sub i32 4096, %add7
  %invalid_rbm = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 1
  %5 = ptrtoint ptr %invalid_rbm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %invalid_rbm, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.61, i32 noundef %6) #12
  %add11 = add i32 %call10, %add7
  %add.ptr12 = getelementptr i8, ptr %call7.i.i, i32 %add11
  %sub13 = sub i32 4096, %add11
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.62) #12
  %add15 = add i32 %add11, %call14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0177 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %len.0176 = phi i32 [ %add15, %if.end ], [ %add20, %for.body.for.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %call7.i.i, i32 %len.0176
  %sub17 = sub i32 4096, %len.0176
  %arrayidx = getelementptr [14 x ptr], ptr @ath11k_debugfs_dump_soc_dp_stats.rxdma_err, i32 0, i32 %i.0177
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 2, i32 %i.0177
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.63, ptr noundef %8, i32 noundef %10) #12
  %add20 = add i32 %call19, %len.0176
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr21 = getelementptr i8, ptr %call7.i.i, i32 %add20
  %sub22 = sub i32 4096, %add20
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.64) #12
  %add24 = add i32 %call23, %add20
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.end
  %i.1179 = phi i32 [ 0, %for.end ], [ %inc35, %for.body27.for.body27_crit_edge ]
  %len.1178 = phi i32 [ %add24, %for.end ], [ %add33, %for.body27.for.body27_crit_edge ]
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %len.1178
  %sub29 = sub i32 4096, %len.1178
  %arrayidx30 = getelementptr [15 x ptr], ptr @ath11k_debugfs_dump_soc_dp_stats.reo_err, i32 0, i32 %i.1179
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 3, i32 %i.1179
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx31, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.63, ptr noundef %12, i32 noundef %14) #12
  %add33 = add i32 %call32, %len.1178
  %inc35 = add nuw nsw i32 %i.1179, 1
  %exitcond186.not = icmp eq i32 %inc35, 15
  br i1 %exitcond186.not, label %for.end36, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27

for.end36:                                        ; preds = %for.body27
  %add.ptr37 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub38 = sub i32 4096, %add33
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.65) #12
  %add40 = add i32 %call39, %add33
  %add.ptr41 = getelementptr i8, ptr %call7.i.i, i32 %add40
  %sub42 = sub i32 4096, %add40
  %hal_reo_error = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 4
  %15 = ptrtoint ptr %hal_reo_error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hal_reo_error, align 4
  %arrayidx45 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx49, align 4
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.66, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #12
  %add51 = add i32 %call50, %add40
  %add.ptr52 = getelementptr i8, ptr %call7.i.i, i32 %add51
  %sub53 = sub i32 4096, %add51
  %call54 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.67) #12
  %add55 = add i32 %add51, %call54
  %add.ptr56 = getelementptr i8, ptr %call7.i.i, i32 %add55
  %sub57 = sub i32 4096, %add55
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.68) #12
  %add59 = add i32 %add55, %call58
  %max_tx_ring = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 41
  %23 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_tx_ring, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp61181.not = icmp eq i8 %24, 0
  br i1 %cmp61181.not, label %for.end36.for.end71_crit_edge, label %for.body63.lr.ph

for.end36.for.end71_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end71

for.body63.lr.ph:                                 ; preds = %for.end36
  %tx_err = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 5
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.lr.ph
  %i.2183 = phi i32 [ 0, %for.body63.lr.ph ], [ %inc70, %for.body63.for.body63_crit_edge ]
  %len.2182 = phi i32 [ %add59, %for.body63.lr.ph ], [ %add68, %for.body63.for.body63_crit_edge ]
  %add.ptr64 = getelementptr i8, ptr %call7.i.i, i32 %len.2182
  %sub65 = sub i32 4096, %len.2182
  %arrayidx66 = getelementptr [3 x i32], ptr %tx_err, i32 0, i32 %i.2183
  %25 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx66, align 4
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.69, i32 noundef %i.2183, i32 noundef %26) #12
  %add68 = add i32 %call67, %len.2182
  %inc70 = add nuw nsw i32 %i.2183, 1
  %27 = ptrtoint ptr %max_tx_ring to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_tx_ring, align 1
  %conv = zext i8 %28 to i32
  %cmp61 = icmp ult i32 %inc70, %conv
  br i1 %cmp61, label %for.body63.for.body63_crit_edge, label %for.body63.for.end71_crit_edge

for.body63.for.end71_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end71

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63

for.end71:                                        ; preds = %for.body63.for.end71_crit_edge, %for.end36.for.end71_crit_edge
  %len.2.lcssa = phi i32 [ %add59, %for.end36.for.end71_crit_edge ], [ %add68, %for.body63.for.end71_crit_edge ]
  %add.ptr72 = getelementptr i8, ptr %call7.i.i, i32 %len.2.lcssa
  %sub73 = sub i32 4096, %len.2.lcssa
  %misc_fail = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 5, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %misc_fail, i32 noundef 4) #12
  %29 = ptrtoint ptr %misc_fail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %misc_fail, align 4
  %call76 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.70, i32 noundef %30) #12
  %add77 = add i32 %call76, %len.2.lcssa
  %add.ptr78 = getelementptr i8, ptr %call7.i.i, i32 %add77
  %sub79 = sub i32 4096, %add77
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr78, i32 noundef %sub79, ptr noundef nonnull @.str.71) #12
  %add.ptr1.i = getelementptr i8, ptr %add.ptr78, i32 %call.i
  %sub2.i = sub i32 %sub79, %call.i
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.i, i32 noundef %sub2.i, ptr noundef nonnull @.str.72) #12
  %add4.i = add i32 %call3.i, %call.i
  %base_lock.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %base_lock.i) #12
  %bp_stats6.i = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end71
  %indvars.iv.i = phi i32 [ 0, %for.end71 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %len.0120.i = phi i32 [ %add4.i, %for.end71 ], [ %len.1.i, %for.inc.i.for.body.i_crit_edge ]
  %stats_rxd.0.off0118.i = phi i1 [ false, %for.end71 ], [ %stats_rxd.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %count.i = getelementptr [18 x %struct.ath11k_bp_stats], ptr %bp_stats6.i, i32 0, i32 %indvars.iv.i, i32 2
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [18 x %struct.ath11k_bp_stats], ptr %bp_stats6.i, i32 0, i32 %indvars.iv.i
  %add.ptr7.i = getelementptr i8, ptr %add.ptr78, i32 %len.0120.i
  %sub8.i = sub i32 %sub79, %len.0120.i
  %arrayidx10.i = getelementptr [18 x ptr], ptr @htt_bp_umac_ring, i32 0, i32 %indvars.iv.i
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub8.i, ptr noundef nonnull @.str.73, ptr noundef %34) #12
  %add12.i = add i32 %call11.i, %len.0120.i
  %call13.i = tail call fastcc i32 @ath11k_fill_bp_stats(ptr noundef %1, ptr noundef %arrayidx.i, ptr noundef %add.ptr78, i32 noundef %add12.i, i32 noundef %sub79) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %stats_rxd.1.off0.i = phi i1 [ true, %if.end.i ], [ %stats_rxd.0.off0118.i, %for.body.i.for.inc.i_crit_edge ]
  %len.1.i = phi i32 [ %call13.i, %if.end.i ], [ %len.0120.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i, label %for.inc.i.for.cond19.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.cond19.preheader.i_crit_edge:       ; preds = %for.inc.i
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %for.cond19.preheader.i.backedge, %for.inc.i.for.cond19.preheader.i_crit_edge
  %indvars.iv133.i = phi i32 [ %indvars.iv133.i.be, %for.cond19.preheader.i.backedge ], [ 0, %for.inc.i.for.cond19.preheader.i_crit_edge ]
  %len.2128.i = phi i32 [ %len.2128.i.be, %for.cond19.preheader.i.backedge ], [ %len.1.i, %for.inc.i.for.cond19.preheader.i_crit_edge ]
  %stats_rxd.2.off0126.i = phi i1 [ %stats_rxd.2.off0126.i.be, %for.cond19.preheader.i.backedge ], [ %stats_rxd.1.off0.i, %for.inc.i.for.cond19.preheader.i_crit_edge ]
  %arrayidx37.i = getelementptr [13 x ptr], ptr @htt_bp_lmac_ring, i32 0, i32 %indvars.iv133.i
  %count30.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6, i32 1, i32 %indvars.iv133.i, i32 0, i32 2
  %35 = ptrtoint ptr %count30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool31.not.i = icmp eq i32 %36, 0
  br i1 %tobool31.not.i, label %for.cond19.preheader.i.for.inc46.i_crit_edge, label %if.end33.i

for.cond19.preheader.i.for.inc46.i_crit_edge:     ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc46.i

if.end33.i:                                       ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx29.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6, i32 1, i32 %indvars.iv133.i, i32 0
  %add.ptr34.i = getelementptr i8, ptr %add.ptr78, i32 %len.2128.i
  %sub35.i = sub i32 %sub79, %len.2128.i
  %37 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx37.i, align 4
  %call38.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34.i, i32 noundef %sub35.i, ptr noundef nonnull @.str.73, ptr noundef %38) #12
  %add39.i = add i32 %call38.i, %len.2128.i
  %add.ptr40.i = getelementptr i8, ptr %add.ptr78, i32 %add39.i
  %sub41.i = sub i32 %sub79, %add39.i
  %call43.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.i, i32 noundef %sub41.i, ptr noundef nonnull @.str.74, i32 noundef 0) #12
  %add44.i = add i32 %add39.i, %call43.i
  %call45.i = tail call fastcc i32 @ath11k_fill_bp_stats(ptr noundef %1, ptr noundef %arrayidx29.i, ptr noundef %add.ptr78, i32 noundef %add44.i, i32 noundef %sub79) #12
  br label %for.inc46.i

for.inc46.i:                                      ; preds = %if.end33.i, %for.cond19.preheader.i.for.inc46.i_crit_edge
  %stats_rxd.4.off0.i = phi i1 [ true, %if.end33.i ], [ %stats_rxd.2.off0126.i, %for.cond19.preheader.i.for.inc46.i_crit_edge ]
  %len.4.i = phi i32 [ %call45.i, %if.end33.i ], [ %len.2128.i, %for.cond19.preheader.i.for.inc46.i_crit_edge ]
  %count30.1.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6, i32 1, i32 %indvars.iv133.i, i32 1, i32 2
  %39 = ptrtoint ptr %count30.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count30.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool31.not.1.i = icmp eq i32 %40, 0
  br i1 %tobool31.not.1.i, label %for.inc46.i.for.inc46.1.i_crit_edge, label %if.end33.1.i

for.inc46.i.for.inc46.1.i_crit_edge:              ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc46.1.i

if.end33.1.i:                                     ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx29.1.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6, i32 1, i32 %indvars.iv133.i, i32 1
  %add.ptr34.1.i = getelementptr i8, ptr %add.ptr78, i32 %len.4.i
  %sub35.1.i = sub i32 %sub79, %len.4.i
  %41 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx37.i, align 4
  %call38.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34.1.i, i32 noundef %sub35.1.i, ptr noundef nonnull @.str.73, ptr noundef %42) #12
  %add39.1.i = add i32 %call38.1.i, %len.4.i
  %add.ptr40.1.i = getelementptr i8, ptr %add.ptr78, i32 %add39.1.i
  %sub41.1.i = sub i32 %sub79, %add39.1.i
  %call43.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.1.i, i32 noundef %sub41.1.i, ptr noundef nonnull @.str.74, i32 noundef 1) #12
  %add44.1.i = add i32 %add39.1.i, %call43.1.i
  %call45.1.i = tail call fastcc i32 @ath11k_fill_bp_stats(ptr noundef %1, ptr noundef %arrayidx29.1.i, ptr noundef %add.ptr78, i32 noundef %add44.1.i, i32 noundef %sub79) #12
  br label %for.inc46.1.i

for.inc46.1.i:                                    ; preds = %if.end33.1.i, %for.inc46.i.for.inc46.1.i_crit_edge
  %stats_rxd.4.off0.1.i = phi i1 [ true, %if.end33.1.i ], [ %stats_rxd.4.off0.i, %for.inc46.i.for.inc46.1.i_crit_edge ]
  %len.4.1.i = phi i32 [ %call45.1.i, %if.end33.1.i ], [ %len.4.i, %for.inc46.i.for.inc46.1.i_crit_edge ]
  %count30.2.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6, i32 1, i32 %indvars.iv133.i, i32 2, i32 2
  %43 = ptrtoint ptr %count30.2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count30.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool31.not.2.i = icmp eq i32 %44, 0
  br i1 %tobool31.not.2.i, label %for.inc46.2.i, label %for.inc46.2.thread.i

for.inc46.2.i:                                    ; preds = %for.inc46.1.i
  %indvars.iv.next134.i = add nuw nsw i32 %indvars.iv133.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %indvars.iv.next134.i)
  %exitcond135.not.i = icmp eq i32 %indvars.iv.next134.i, 13
  br i1 %exitcond135.not.i, label %for.end51.i, label %for.inc46.2.i.for.cond19.preheader.i.backedge_crit_edge

for.inc46.2.i.for.cond19.preheader.i.backedge_crit_edge: ; preds = %for.inc46.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond19.preheader.i.backedge

for.inc46.2.thread.i:                             ; preds = %for.inc46.1.i
  %arrayidx29.2.i = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 44, i32 6, i32 1, i32 %indvars.iv133.i, i32 2
  %add.ptr34.2.i = getelementptr i8, ptr %add.ptr78, i32 %len.4.1.i
  %sub35.2.i = sub i32 %sub79, %len.4.1.i
  %45 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx37.i, align 4
  %call38.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34.2.i, i32 noundef %sub35.2.i, ptr noundef nonnull @.str.73, ptr noundef %46) #12
  %add39.2.i = add i32 %call38.2.i, %len.4.1.i
  %add.ptr40.2.i = getelementptr i8, ptr %add.ptr78, i32 %add39.2.i
  %sub41.2.i = sub i32 %sub79, %add39.2.i
  %call43.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.2.i, i32 noundef %sub41.2.i, ptr noundef nonnull @.str.74, i32 noundef 2) #12
  %add44.2.i = add i32 %add39.2.i, %call43.2.i
  %call45.2.i = tail call fastcc i32 @ath11k_fill_bp_stats(ptr noundef %1, ptr noundef %arrayidx29.2.i, ptr noundef %add.ptr78, i32 noundef %add44.2.i, i32 noundef %sub79) #12
  %indvars.iv.next134138.i = add nuw nsw i32 %indvars.iv133.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %indvars.iv.next134138.i)
  %exitcond135.not139.i = icmp eq i32 %indvars.iv.next134138.i, 13
  br i1 %exitcond135.not139.i, label %for.end51.thread.i, label %for.inc46.2.thread.i.for.cond19.preheader.i.backedge_crit_edge

for.inc46.2.thread.i.for.cond19.preheader.i.backedge_crit_edge: ; preds = %for.inc46.2.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond19.preheader.i.backedge

for.cond19.preheader.i.backedge:                  ; preds = %for.inc46.2.thread.i.for.cond19.preheader.i.backedge_crit_edge, %for.inc46.2.i.for.cond19.preheader.i.backedge_crit_edge
  %indvars.iv133.i.be = phi i32 [ %indvars.iv.next134.i, %for.inc46.2.i.for.cond19.preheader.i.backedge_crit_edge ], [ %indvars.iv.next134138.i, %for.inc46.2.thread.i.for.cond19.preheader.i.backedge_crit_edge ]
  %len.2128.i.be = phi i32 [ %len.4.1.i, %for.inc46.2.i.for.cond19.preheader.i.backedge_crit_edge ], [ %call45.2.i, %for.inc46.2.thread.i.for.cond19.preheader.i.backedge_crit_edge ]
  %stats_rxd.2.off0126.i.be = phi i1 [ %stats_rxd.4.off0.1.i, %for.inc46.2.i.for.cond19.preheader.i.backedge_crit_edge ], [ true, %for.inc46.2.thread.i.for.cond19.preheader.i.backedge_crit_edge ]
  br label %for.cond19.preheader.i

for.end51.thread.i:                               ; preds = %for.inc46.2.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock.i) #12
  br label %ath11k_debugfs_dump_soc_ring_bp_stats.exit

for.end51.i:                                      ; preds = %for.inc46.2.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %base_lock.i) #12
  br i1 %stats_rxd.4.off0.1.i, label %for.end51.i.ath11k_debugfs_dump_soc_ring_bp_stats.exit_crit_edge, label %if.then54.i

for.end51.i.ath11k_debugfs_dump_soc_ring_bp_stats.exit_crit_edge: ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_debugfs_dump_soc_ring_bp_stats.exit

if.then54.i:                                      ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr55.i = getelementptr i8, ptr %add.ptr78, i32 %len.4.1.i
  %sub56.i = sub i32 %sub79, %len.4.1.i
  %call57.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55.i, i32 noundef %sub56.i, ptr noundef nonnull @.str.75) #12
  %add58.i = add i32 %call57.i, %len.4.1.i
  br label %ath11k_debugfs_dump_soc_ring_bp_stats.exit

ath11k_debugfs_dump_soc_ring_bp_stats.exit:       ; preds = %if.then54.i, %for.end51.i.ath11k_debugfs_dump_soc_ring_bp_stats.exit_crit_edge, %for.end51.thread.i
  %len.5.i = phi i32 [ %len.4.1.i, %for.end51.i.ath11k_debugfs_dump_soc_ring_bp_stats.exit_crit_edge ], [ %add58.i, %if.then54.i ], [ %call45.2.i, %for.end51.thread.i ]
  %add81 = add i32 %len.5.i, %add77
  %47 = tail call i32 @llvm.smin.i32(i32 %add81, i32 4096)
  %call86 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %47) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ath11k_debugfs_dump_soc_ring_bp_stats.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call86, %ath11k_debugfs_dump_soc_ring_bp_stats.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_fill_bp_stats(ptr noundef %ab, ptr nocapture noundef readonly %bp_stats, ptr noundef %buf, i32 noundef %len, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !302

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 734, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %sub = sub i32 %size, %len
  %count = getelementptr inbounds %struct.ath11k_bp_stats, ptr %bp_stats, i32 0, i32 2
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.94, i32 noundef %2) #12
  %add = add i32 %call24, %len
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %add
  %sub26 = sub i32 %size, %add
  %3 = ptrtoint ptr %bp_stats to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bp_stats, align 4
  %conv = zext i16 %4 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.95, i32 noundef %conv) #12
  %add28 = add i32 %call27, %add
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %add28
  %sub30 = sub i32 %size, %add28
  %tp = getelementptr inbounds %struct.ath11k_bp_stats, ptr %bp_stats, i32 0, i32 1
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tp, align 2
  %conv31 = zext i16 %6 to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.96, i32 noundef %conv31) #12
  %add33 = add i32 %call32, %add28
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %add33
  %sub35 = sub i32 %size, %add33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr inbounds %struct.ath11k_bp_stats, ptr %bp_stats, i32 0, i32 3
  %8 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jiffies, align 4
  %sub36 = sub i32 %7, %9
  %call37 = tail call i32 @jiffies_to_msecs(i32 noundef %sub36) #12
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.97, i32 noundef %call37) #12
  %add39 = add i32 %call38, %add33
  ret i32 %add39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_pdev_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #15
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_open_pdev_stats(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %req_param = alloca %struct.stats_request_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_param) #12
  %4 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %req_param, align 4, !annotation !300
  %5 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !300
  %7 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !300
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 1048576) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %pdev_id = getelementptr inbounds %struct.ath11k_pdev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdev_id, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %7, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %5, align 4
  %17 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %req_param, align 4
  %call5 = call fastcc i32 @ath11k_debugfs_fw_stats_request(ptr noundef %1, ptr noundef nonnull %req_param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %3, ptr noundef nonnull @.str.111, i32 noundef %call5) #12
  call void @vfree(ptr noundef nonnull %call) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %fw_stats = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 3
  %18 = ptrtoint ptr %req_param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_param, align 4
  call void @ath11k_wmi_fw_stats_fill(ptr noundef %1, ptr noundef %fw_stats, i32 noundef %19, ptr noundef nonnull %call) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call5, %if.then7 ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_release_pdev_stats(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_wmi_fw_stats_fill(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_vdev_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #15
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_open_vdev_stats(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %req_param = alloca %struct.stats_request_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_param) #12
  %2 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %req_param, align 4, !annotation !300
  %3 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !300
  %5 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !300
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 1048576) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %pdev_id = getelementptr inbounds %struct.ath11k_pdev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdev_id, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %5, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 4
  %15 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %req_param, align 4
  %call4 = call fastcc i32 @ath11k_debugfs_fw_stats_request(ptr noundef %1, ptr noundef nonnull %req_param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %17, ptr noundef nonnull @.str.112, i32 noundef %call4) #12
  call void @vfree(ptr noundef nonnull %call) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %fw_stats = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 3
  %18 = ptrtoint ptr %req_param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_param, align 4
  call void @ath11k_wmi_fw_stats_fill(ptr noundef %1, ptr noundef %fw_stats, i32 noundef %19, ptr noundef nonnull %call) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call4, %if.then6 ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_release_vdev_stats(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_bcn_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #15
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_open_bcn_stats(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %req_param = alloca %struct.stats_request_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_param) #12
  %2 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %req_param, align 4, !annotation !300
  %3 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !300
  %5 = getelementptr inbounds %struct.stats_request_params, ptr %req_param, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !300
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 1048576) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %9 = ptrtoint ptr %req_param to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2048, ptr %req_param, align 4
  %pdev = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %pdev_id = getelementptr inbounds %struct.ath11k_pdev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdev_id, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %5, align 4
  %arvifs = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %arvifs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn50 = load ptr, ptr %arvifs, align 4
  %cmp5.not52 = icmp eq ptr %.pn50, %arvifs
  br i1 %cmp5.not52, label %if.end2.for.end_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn50, %if.end2.for.body_crit_edge ]
  %is_up = getelementptr i8, ptr %.pn53, i32 77
  %16 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_up, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %arvif.054 = getelementptr i8, ptr %.pn53, i32 -80
  %18 = ptrtoint ptr %arvif.054 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arvif.054, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %3, align 4
  %call10 = call fastcc i32 @ath11k_debugfs_fw_stats_request(ptr noundef %1, ptr noundef nonnull %req_param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %if.then12

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %22, ptr noundef nonnull @.str.113, i32 noundef %call10) #12
  call void @vfree(ptr noundef nonnull %call) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp5.not = icmp eq ptr %.pn, %arvifs
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end2.for.end_crit_edge
  %fw_stats = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 3
  %24 = ptrtoint ptr %req_param to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_param, align 4
  call void @ath11k_wmi_fw_stats_fill(ptr noundef %1, ptr noundef %fw_stats, i32 noundef %25, ptr noundef nonnull %call) #12
  %data_lock = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 27
  call void @_raw_spin_lock_bh(ptr noundef %data_lock) #12
  %bcn = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 3, i32 5
  %26 = ptrtoint ptr %bcn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bcn, align 4
  %cmp.not18.i = icmp eq ptr %27, %bcn
  br i1 %cmp.not18.i, label %for.end.ath11k_fw_stats_bcn_free.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.ath11k_fw_stats_bcn_free.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_bcn_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %27, %for.end.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.0.i = load ptr, ptr %i.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %35 = ptrtoint ptr %i.019.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %i.019.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %bcn
  br i1 %cmp.not.i, label %list_del.exit.i.ath11k_fw_stats_bcn_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.ath11k_fw_stats_bcn_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath11k_fw_stats_bcn_free.exit

ath11k_fw_stats_bcn_free.exit:                    ; preds = %list_del.exit.i.ath11k_fw_stats_bcn_free.exit_crit_edge, %for.end.ath11k_fw_stats_bcn_free.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %37 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %ath11k_fw_stats_bcn_free.exit, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ath11k_fw_stats_bcn_free.exit ], [ %call10, %if.then12 ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_release_bcn_stats(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_enable_extd_tx_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %2, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %extd_tx_stats = getelementptr inbounds %struct.ath11k, ptr %2, i32 0, i32 68, i32 2
  %3 = ptrtoint ptr %extd_tx_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extd_tx_stats, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.115, i32 noundef %4) #12
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_enable_extd_tx_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %filter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #12
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %filter, align 4, !annotation !300
  %call = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %filter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %filter, align 4
  %extd_tx_stats = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 2
  %7 = ptrtoint ptr %extd_tx_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extd_tx_stats, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %if.end2.out_crit_edge, label %if.end5

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extd_tx_stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %extd_tx_stats, align 8
  br label %out

out:                                              ; preds = %if.end5, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %count, %if.end5 ], [ -100, %if.end.out_crit_edge ], [ %count, %if.end2.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_extd_rx_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
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
  %extd_rx_stats = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 6
  %3 = ptrtoint ptr %extd_rx_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extd_rx_stats, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.116, i32 noundef %4) #12
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_extd_rx_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %tlv_filter = alloca %struct.htt_rx_ring_tlv_filter, align 4
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tlv_filter) #12
  %4 = call ptr @memset(ptr %tlv_filter, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #12
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %enable, align 4, !annotation !300
  %call = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end3, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp ugt i32 %9, 1
  br i1 %cmp4, label %if.end3.exit_crit_edge, label %if.end6

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end6:                                          ; preds = %if.end3
  %extd_rx_stats = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 6
  %10 = ptrtoint ptr %extd_rx_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %extd_rx_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp eq i32 %9, %11
  br i1 %cmp7, label %if.end6.exit_crit_edge, label %if.end9

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7937, ptr %tlv_filter, align 4
  %pkt_filter_flags0 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 1
  %13 = ptrtoint ptr %pkt_filter_flags0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 151294537, ptr %pkt_filter_flags0, align 4
  %pkt_filter_flags1 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 2
  %14 = ptrtoint ptr %pkt_filter_flags1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4681, ptr %pkt_filter_flags1, align 4
  %pkt_filter_flags2 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 3
  %15 = ptrtoint ptr %pkt_filter_flags2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 153092096, ptr %pkt_filter_flags2, align 4
  %pkt_filter_flags3 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 4
  %16 = ptrtoint ptr %pkt_filter_flags3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 19173961, ptr %pkt_filter_flags3, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %17 = call ptr @memcpy(ptr %tlv_filter, ptr @ath11k_mac_mon_status_filter_default, i32 20)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11
  %18 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tlv_filter, align 4
  %rx_filter20 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 11
  %20 = ptrtoint ptr %rx_filter20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rx_filter20, align 4
  %num_rxmda_per_pdev = getelementptr inbounds %struct.ath11k_base, ptr %3, i32 0, i32 36, i32 21
  %21 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2160 = icmp sgt i32 %22, 0
  br i1 %cmp2160, label %for.body.lr.ph, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %dp = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.061, 1
  %23 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp21 = icmp slt i32 %inc, %24
  br i1 %cmp21, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %ring_id22 = getelementptr %struct.ath11k, ptr %1, i32 0, i32 5, i32 9, i32 %i.061, i32 0, i32 5
  %25 = ptrtoint ptr %ring_id22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_id22, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dp, align 8
  %call25 = call i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %28, i32 noundef %26, i32 noundef %30, i32 noundef 17, i32 noundef 2048, ptr noundef nonnull %tlv_filter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond, label %if.then27

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %32, ptr noundef nonnull @.str.117) #12
  br label %exit

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end17.for.end_crit_edge
  %33 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %enable, align 4
  %35 = ptrtoint ptr %extd_rx_stats to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %extd_rx_stats, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.then27, %if.end6.exit_crit_edge, %if.end3.exit_crit_edge, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %call25, %if.then27 ], [ %count, %for.end ], [ -100, %if.end.exit_crit_edge ], [ -22, %if.end3.exit_crit_edge ], [ %count, %if.end6.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tlv_filter) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_read_pktlog_filter(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %2, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %pktlog_filter = getelementptr inbounds %struct.ath11k, ptr %2, i32 0, i32 68, i32 7
  %3 = ptrtoint ptr %pktlog_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pktlog_filter, align 8
  %pktlog_mode = getelementptr inbounds %struct.ath11k, ptr %2, i32 0, i32 68, i32 8
  %5 = ptrtoint ptr %pktlog_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pktlog_mode, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.118, i32 noundef %4, i32 noundef %6) #12
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_pktlog_filter(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tlv_filter = alloca %struct.htt_rx_ring_tlv_filter, align 4
  %filter = alloca i32, align 4
  %mode = alloca i32, align 4
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tlv_filter) #12
  %4 = call ptr @memset(ptr %tlv_filter, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #12
  %5 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %filter, align 4, !annotation !300
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #12
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mode, align 4, !annotation !300
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #12
  %7 = call ptr @memset(ptr %buf, i32 0, i32 128)
  %conf_mutex = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 127, ptr noundef %ppos, ptr noundef %ubuf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr [128 x i8], ptr %buf, i32 0, i32 %call
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.119, ptr noundef nonnull %filter, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 2
  br i1 %cmp7.not, label %if.end9, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end9:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  %call11 = call i32 @ath11k_wmi_pdev_pktlog_enable(ptr noundef %1, i32 noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then13

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %pktlog_filter = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 7
  %15 = ptrtoint ptr %pktlog_filter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pktlog_filter, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %14, ptr noundef nonnull @.str.120, i32 noundef %16, i32 noundef %call11) #12
  br label %out

if.else:                                          ; preds = %if.end9
  %call16 = call i32 @ath11k_wmi_pdev_pktlog_disable(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.if.end21_crit_edge, label %if.then18

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %18, ptr noundef nonnull @.str.121, i32 noundef %call16) #12
  br label %out

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then10.if.end21_crit_edge
  %num_rxmda_per_pdev = getelementptr inbounds %struct.ath11k_base, ptr %3, i32 0, i32 36, i32 21
  %19 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22133 = icmp sgt i32 %20, 0
  br i1 %cmp22133, label %for.body.lr.ph, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %dp = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0134, 1
  %21 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp22 = icmp slt i32 %inc, %22
  br i1 %cmp22, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %ring_id24 = getelementptr %struct.ath11k, ptr %1, i32 0, i32 5, i32 9, i32 %i.0134, i32 0, i32 5
  %23 = ptrtoint ptr %ring_id24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_id24, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp, align 8
  %call27 = call i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %26, i32 noundef %24, i32 noundef %28, i32 noundef 17, i32 noundef 0, ptr noundef nonnull %tlv_filter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.cond, label %if.then29

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %30, ptr noundef nonnull @.str.117) #12
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end21.for.end_crit_edge
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %32, label %if.else42 [
    i32 2, label %for.end.if.end50.thread_crit_edge
    i32 1, label %if.then36
  ]

for.end.if.end50.thread_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.thread

if.then36:                                        ; preds = %for.end
  %call37 = call i32 @ath11k_dp_tx_htt_h2t_ppdu_stats_req(ptr noundef %1, i32 noundef 16383) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end50.thread_crit_edge, label %if.then39

if.then36.if.end50.thread_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.thread

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %35, ptr noundef nonnull @.str.122, i32 noundef %call37) #12
  br label %out

if.else42:                                        ; preds = %for.end
  %36 = call ptr @memcpy(ptr %tlv_filter, ptr @ath11k_mac_mon_status_filter_default, i32 20)
  %37 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tlv_filter, align 4
  %call44 = call i32 @ath11k_dp_tx_htt_h2t_ppdu_stats_req(ptr noundef %1, i32 noundef 3687) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %if.then46

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %40, ptr noundef nonnull @.str.123, i32 noundef %call44) #12
  br label %out

if.end50.thread:                                  ; preds = %if.then36.if.end50.thread_crit_edge, %for.end.if.end50.thread_crit_edge
  %rx_filter.0.ph = phi i32 [ 7937, %if.then36.if.end50.thread_crit_edge ], [ 8123, %for.end.if.end50.thread_crit_edge ]
  %rx_buf_sz.0.ph = phi i32 [ 1024, %if.then36.if.end50.thread_crit_edge ], [ 2048, %for.end.if.end50.thread_crit_edge ]
  %41 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rx_filter.0.ph, ptr %tlv_filter, align 4
  br label %if.then53

if.end50:                                         ; preds = %if.else42
  %42 = ptrtoint ptr %tlv_filter to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %38, ptr %tlv_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool52.not = icmp eq i32 %38, 0
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.end50.if.then53_crit_edge

if.end50.if.then53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %if.end50.if.then53_crit_edge, %if.end50.thread
  %rx_buf_sz.0130 = phi i32 [ %rx_buf_sz.0.ph, %if.end50.thread ], [ 2048, %if.end50.if.then53_crit_edge ]
  %pkt_filter_flags0 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 1
  %43 = ptrtoint ptr %pkt_filter_flags0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 151294537, ptr %pkt_filter_flags0, align 4
  %pkt_filter_flags1 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 2
  %44 = ptrtoint ptr %pkt_filter_flags1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4681, ptr %pkt_filter_flags1, align 4
  %pkt_filter_flags2 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 3
  %45 = ptrtoint ptr %pkt_filter_flags2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 153092096, ptr %pkt_filter_flags2, align 4
  %pkt_filter_flags3 = getelementptr inbounds %struct.htt_rx_ring_tlv_filter, ptr %tlv_filter, i32 0, i32 4
  %46 = ptrtoint ptr %pkt_filter_flags3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 19173961, ptr %pkt_filter_flags3, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %rx_buf_sz.0131 = phi i32 [ %rx_buf_sz.0130, %if.then53 ], [ 2048, %if.end50.if.end54_crit_edge ]
  %47 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_rxmda_per_pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp58135 = icmp sgt i32 %48, 0
  br i1 %cmp58135, label %for.body59.lr.ph, label %if.end54.for.end73_crit_edge

if.end54.for.end73_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

for.body59.lr.ph:                                 ; preds = %if.end54
  %dp60 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 5
  br label %for.body59

for.cond55:                                       ; preds = %for.body59
  %inc72 = add nuw nsw i32 %i.1136, 1
  %49 = ptrtoint ptr %num_rxmda_per_pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_rxmda_per_pdev, align 4
  %cmp58 = icmp slt i32 %inc72, %50
  br i1 %cmp58, label %for.cond55.for.body59_crit_edge, label %for.cond55.for.end73_crit_edge

for.cond55.for.end73_crit_edge:                   ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

for.cond55.for.body59_crit_edge:                  ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59

for.body59:                                       ; preds = %for.cond55.for.body59_crit_edge, %for.body59.lr.ph
  %i.1136 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc72, %for.cond55.for.body59_crit_edge ]
  %ring_id64 = getelementptr %struct.ath11k, ptr %1, i32 0, i32 5, i32 9, i32 %i.1136, i32 0, i32 5
  %51 = ptrtoint ptr %ring_id64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ring_id64, align 4
  %53 = ptrtoint ptr %dp60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dp60, align 8
  %add = add i32 %54, %i.1136
  %call67 = call i32 @ath11k_dp_tx_htt_rx_filter_setup(ptr noundef %3, i32 noundef %52, i32 noundef %add, i32 noundef 17, i32 noundef %rx_buf_sz.0131, ptr noundef nonnull %tlv_filter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.cond55, label %if.then69

if.then69:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %3, ptr noundef nonnull @.str.117) #12
  br label %out

for.end73:                                        ; preds = %for.cond55.for.end73_crit_edge, %if.end54.for.end73_crit_edge
  %55 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp74 = icmp eq i32 %56, 2
  %cond = select i1 %cmp74, ptr @.str.125, ptr @.str.126
  call void (ptr, ptr, ...) @ath11k_info(ptr noundef %3, ptr noundef nonnull @.str.124, ptr noundef nonnull %cond) #12
  %57 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %filter, align 4
  %pktlog_filter76 = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 7
  %59 = ptrtoint ptr %pktlog_filter76 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %pktlog_filter76, align 8
  %60 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode, align 4
  %pktlog_mode = getelementptr inbounds %struct.ath11k, ptr %1, i32 0, i32 68, i32 8
  %62 = ptrtoint ptr %pktlog_mode to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %pktlog_mode, align 4
  br label %out

out:                                              ; preds = %for.end73, %if.then69, %if.then46, %if.then39, %if.then29, %if.then18, %if.then13, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then13 ], [ %call27, %if.then29 ], [ %call67, %if.then69 ], [ %count, %for.end73 ], [ %call37, %if.then39 ], [ %call44, %if.then46 ], [ %call16, %if.then18 ], [ -100, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ], [ -22, %if.end4.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tlv_filter) #12
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_pdev_pktlog_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_pdev_pktlog_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_dp_tx_htt_h2t_ppdu_stats_req(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_write_simulate_radar(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @ath11k_wmi_simulate_radar(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_wmi_simulate_radar(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286}
!llvm.named.register.sp = !{!288}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @ath11k_debugfs_fw_stats_process.num_vdev, !1, !"num_vdev", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 100, i32 22}
!2 = !{ptr @ath11k_debugfs_fw_stats_process.num_bcn, !3, !"num_bcn", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 100, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 110, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 118, i32 19}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 138, i32 20}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 145, i32 11}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 164, i32 20}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 259, i32 19}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 261, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 882, i32 22}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 885, i32 22}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 899, i32 42}
!26 = !{ptr @__ksymtab_ath11k_debugfs_soc_destroy, !27, !"__ksymtab_ath11k_debugfs_soc_destroy", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 909, i32 1}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 913, i32 50}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 921, i32 22}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 923, i32 22}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 925, i32 22}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1116, i32 41}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1116, i32 49}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1123, i32 21}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1130, i32 22}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1133, i32 22}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1136, i32 22}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1141, i32 23}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1144, i32 23}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 214, i32 19}
!61 = !{ptr @fops_simulate_fw_crash, !62, !"fops_simulate_fw_crash", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 576, i32 37}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 555, i32 19}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 556, i32 19}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 566, i32 19}
!69 = !{ptr @fops_soc_dp_stats, !70, !"fops_soc_dp_stats", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 866, i32 37}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 805, i32 4}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 805, i32 16}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 805, i32 28}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 805, i32 35}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 805, i32 46}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 806, i32 4}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 806, i32 17}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 806, i32 29}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 806, i32 43}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 807, i32 4}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 807, i32 19}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 807, i32 33}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 808, i32 4}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 808, i32 20}
!99 = !{ptr @ath11k_debugfs_dump_soc_dp_stats.rxdma_err, !100, !"rxdma_err", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 804, i32 21}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 810, i32 4}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 810, i32 22}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 810, i32 36}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 811, i32 4}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 811, i32 18}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 811, i32 28}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 811, i32 45}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 812, i32 4}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 812, i32 17}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 812, i32 28}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 813, i32 4}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 813, i32 26}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 813, i32 43}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 814, i32 4}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 814, i32 14}
!131 = !{ptr @ath11k_debugfs_dump_soc_dp_stats.reo_err, !132, !"reo_err", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 809, i32 21}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 822, i32 42}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 823, i32 42}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 825, i32 42}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 827, i32 42}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 829, i32 43}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 832, i32 42}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 837, i32 42}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 839, i32 5}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 845, i32 42}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 846, i32 42}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 849, i32 43}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 853, i32 5}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 755, i32 42}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 756, i32 42}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 765, i32 43}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 781, i32 44}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 791, i32 6}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 19, i32 2}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 20, i32 2}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 21, i32 2}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 22, i32 2}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 23, i32 2}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 24, i32 2}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 25, i32 2}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 26, i32 2}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 27, i32 2}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 28, i32 2}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 29, i32 2}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 30, i32 2}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 31, i32 2}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 32, i32 2}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 33, i32 2}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 34, i32 2}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 35, i32 2}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 36, i32 2}
!203 = !{ptr @htt_bp_umac_ring, !204, !"htt_bp_umac_ring", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 18, i32 20}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 736, i32 42}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 738, i32 42}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 740, i32 42}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 742, i32 42}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 40, i32 2}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 41, i32 2}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 42, i32 2}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 43, i32 2}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 44, i32 2}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 45, i32 2}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 46, i32 2}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 47, i32 2}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 48, i32 2}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 49, i32 2}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 50, i32 2}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 51, i32 2}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 52, i32 2}
!239 = !{ptr @htt_bp_lmac_ring, !240, !"htt_bp_lmac_ring", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 39, i32 20}
!241 = !{ptr @fops_pdev_stats, !242, !"fops_pdev_stats", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 335, i32 37}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 298, i32 19}
!245 = !{ptr @fops_vdev_stats, !246, !"fops_vdev_stats", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 407, i32 37}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 370, i32 23}
!249 = !{ptr @fops_bcn_stats, !250, !"fops_bcn_stats", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 492, i32 37}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 447, i32 24}
!253 = !{ptr @init_completion.__key, !254, !"__key", i1 false, i1 false}
!254 = !{!"../include/linux/completion.h", i32 87, i32 2}
!255 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @fops_extd_tx_stats, !257, !"fops_extd_tx_stats", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 632, i32 37}
!258 = !{ptr @.str.115, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 625, i32 42}
!260 = !{ptr @fops_extd_rx_stats, !261, !"fops_extd_rx_stats", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 724, i32 37}
!262 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 717, i32 42}
!264 = !{ptr @.str.117, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 696, i32 24}
!266 = !{ptr @fops_pktlog_filter, !267, !"fops_pktlog_filter", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1085, i32 37}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1077, i32 42}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 960, i32 20}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 970, i32 9}
!274 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 977, i32 24}
!276 = !{ptr @.str.122, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1013, i32 23}
!278 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1027, i32 23}
!280 = !{ptr @.str.124, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1055, i32 18}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1056, i32 44}
!284 = !{ptr @.str.126, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1056, i32 53}
!286 = !{ptr @fops_simulate_radar, !287, !"fops_simulate_radar", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/ath11k/debugfs.c", i32 1105, i32 37}
!288 = !{!"sp"}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{i64 2149271263}
!299 = !{i64 2149271529}
!300 = !{!"auto-init"}
!301 = !{i64 2148338322, i64 2148338327, i64 2148338340, i64 2148338384, i64 2148338418, i64 2148338439}
!302 = !{!"branch_weights", i32 1, i32 2000}
!303 = !{i8 0, i8 2}
