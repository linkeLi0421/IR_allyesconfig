; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt76_mcu_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.anon.148 = type { [3 x i32] }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mt7915_mcu_rxd = type { [6 x i32], i16, i16, i8, i8, i16, i8, [2 x i8], i8 }
%struct.mt7915_mcu_thermal_notify = type { %struct.mt7915_mcu_rxd, %struct.mt7915_mcu_thermal_ctrl, i32, [8 x i8] }
%struct.mt7915_mcu_thermal_ctrl = type { i8, i8, %union.anon.178 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i8, i8 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.146 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.128 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.128 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.146 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.mt7915_mcu_rdd_report = type { %struct.mt7915_mcu_rxd, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [3 x i32], [32 x %struct.anon.192], [32 x %struct.anon.193], [32 x %struct.anon.194] }
%struct.anon.192 = type { i32, i16, i16, i8, [3 x i8] }
%struct.anon.193 = type { i32, i16, i16, i8, [3 x i8] }
%struct.anon.194 = type { i32, i16, i16, i8, i8, i8, i8 }
%struct.mt7915_dev = type { %union.anon, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.anon.147 = type { i8, i8 }
%struct.mt7915_mcu_csa_notify = type { %struct.mt7915_mcu_rxd, i8, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.130 = type { i64, i64, i8 }
%struct.mt7915_he_obss_narrow_bw_ru_data = type { i8 }
%struct.anon.195 = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, [6 x i8] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.138, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.138 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.139] }
%struct.anon.139 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }
%struct.sta_ntlv_hdr = type { [2 x i8], i16 }
%struct.bss_info_omac = type { i16, i16, i8, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.bss_info_basic = type { i16, i16, i32, i8, i8, i16, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.bss_info_rf_ch = type { i16, i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.bss_info_bmc_rate = type { i16, i16, i16, i16, i8, [7 x i8] }
%struct.bss_info_ra = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i32, i32, i32 }
%struct.bss_info_hw_amsdu = type { i16, i16, i32, i32, i16, i8, i8 }
%struct.bss_info_he = type { i16, i16, i8, i8, i16, [3 x i16], [6 x i8] }
%struct.bss_info_ext_bss = type { i16, i16, i32, [8 x i8] }
%struct.mt7915_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, %struct.list_head, [8 x i32], i32, i32, i32, %struct.mt76_sta_stats, %struct.mt7915_sta_key_conf, %struct.anon.149 }
%struct.mt76_sta_stats = type { [12 x i64], [4 x i64], [4 x i64], [16 x i64] }
%struct.mt7915_sta_key_conf = type { i8, [16 x i8] }
%struct.anon.149 = type { i8, [8 x %struct.mt7915_twt_flow] }
%struct.mt7915_twt_flow = type { %struct.list_head, i64, i64, i32, i16, i16, i8, i8, i8, i8 }
%struct.sta_rec_sec = type { i16, i16, i8, i8, [2 x i8], [2 x %struct.sec_key] }
%struct.sec_key = type { i8, i8, i8, i8, [32 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.wtbl_ba = type { i16, i16, i8, i8, [2 x i8], i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, [4 x i8] }
%struct.sta_rec_ba = type { i16, i16, i8, i8, i8, i8, i16, i16 }
%struct.wtbl_hdr_trans = type { i16, i16, i8, i8, i8, i8 }
%struct.sta_rec_ra_fixed = type <{ i16, i16, i32, i8, i8, i8, i8, %struct.sta_phy, i8, i8, i8, i8 }>
%struct.sta_phy = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wtbl_smps = type { i16, i16, i8, [3 x i8] }
%struct.sta_rec_ra = type <{ i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i16], i8, i8, i8, i8, i32, %struct.sta_phy }>
%struct.mt7915_vif = type { %struct.mt76_vif, %struct.mt7915_vif_cap, %struct.mt7915_sta, ptr, [4 x %struct.ieee80211_tx_queue_params], %struct.cfg80211_bitrate_mask }
%struct.mt7915_vif_cap = type { i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sta_rec_he = type { i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i16], [2 x i8] }
%struct.anon.202 = type { i32, i8, i8, i8, [5 x i8], i32, [8 x i8] }
%struct.sta_rec_basic = type { i16, i16, i32, i8, i8, i16, [6 x i8], i16 }
%struct.sta_rec_bf = type { i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x %struct.anon.196], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.anon.196 = type { i8, i8 }
%struct.sta_rec_ht = type { i16, i16, i16, i16 }
%struct.sta_rec_vht = type { i16, i16, i32, i16, i16, i8, [3 x i8] }
%struct.sta_rec_uapsd = type { i16, i16, i8, i8, i8, i8, i16, [2 x i8] }
%struct.wtbl_generic = type { i16, i16, [6 x i8], i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.wtbl_rx = type { i16, i16, i8, i8, i8, i8, [4 x i8] }
%struct.wtbl_ht = type { i16, i16, i8, i8, i8, i8, [4 x i8] }
%struct.wtbl_vht = type { i16, i16, i8, i8, i8, i8, [4 x i8] }
%struct.sta_rec_amsdu = type { i16, i16, i8, i8, i8, i8 }
%struct.sta_rec_muru = type { i16, i16, %struct.anon.197, %struct.anon.198, %struct.anon.199, %struct.anon.200, %struct.anon.201 }
%struct.anon.197 = type { i8, i8, i8, i8, [4 x i8] }
%struct.anon.198 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.199 = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.anon.200 = type { i8, i8, [2 x i8] }
%struct.anon.201 = type { i8, i8, [2 x i8] }
%struct.sta_rec_bfee = type { i16, i16, i8, i8, [2 x i8] }
%struct.anon.150 = type { %struct.req_hdr, %struct.req_tlv }
%struct.req_hdr = type { i8, i8, i16, i8, [3 x i8] }
%struct.req_tlv = type { i16, i16, i8, i8, [6 x i8] }
%struct.ieee80211_mutable_offsets = type { i16, i16, [2 x i16] }
%struct.bss_info_bcn = type { i16, i16, i8, i8, i16 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.203 }
%union.anon.203 = type { %struct.anon.209, [16 x i8] }
%struct.anon.209 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.bss_info_bcn_cntdwn = type { i16, i16, i8, [3 x i8] }
%struct.bss_info_bcn_cont = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.158 = type { i8, [3 x i8] }
%struct.anon.159 = type { i8, i8, i16, i8, [3 x i8], i32 }
%struct.anon.160 = type { i32, i8 }
%struct.anon.163 = type { i32, i8 }
%struct.anon.164 = type { i32, [4 x i8] }
%struct.anon.246 = type { i8, [3 x i8] }
%struct.mt7915_mcu_txd = type { [8 x i32], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32] }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.237 = type { i8, [3 x i8] }
%struct.anon.243 = type { i32, i32, i32 }
%struct.anon.242 = type { i32 }
%struct.anon.244 = type { i8, [3 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.mt7915_patch_hdr = type { [16 x i8], [4 x i8], i32, i32, i16, i16, %struct.anon.239 }
%struct.anon.239 = type { i32, i32, i32, i32, i32, [11 x i32] }
%struct.mt7915_patch_sec = type { i32, i32, i32, %union.anon.240 }
%union.anon.240 = type { [13 x i32] }
%struct.anon.241 = type { i32, i32, i32, i32, [9 x i32] }
%struct.mt7915_fw_trailer = type { i8, i8, i8, i8, i8, [2 x i8], [10 x i8], [15 x i8], i32 }
%struct.anon.247 = type { i16, i16, i32, i32, [12 x i8], i8, i8, i8, [9 x i8], i8, i8, [98 x i8] }
%struct.anon.248 = type { i8, i8, [2 x i8], i8, i8, i16 }
%struct.anon.165 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.166 = type { i8, i8, [2 x i8] }
%struct.anon.167 = type <{ i32, i8, i8 }>
%struct.anon.168 = type { i8, i8, [2 x i8], i32, i32 }
%struct.mt7915_mcu_tx = type { i8, i8, i8, i8, [4 x %struct.edca] }
%struct.edca = type { i8, i8, i8, i8, i16, i16 }
%struct.anon.169 = type { i8, i8, [6 x i8], i8, i8, i16, i32, i32, i8, i8, [2 x i8], i32, i8, i8, i8, i8 }
%struct.anon.170 = type { i8, i8, i8, i8, [4 x i8] }
%struct.anon.171 = type { i32, i16, [2 x i8] }
%struct.anon.172 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt7915_dfs_pulse = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.173 = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32 }
%struct.mt7915_dfs_pattern = type <{ i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32 }>
%struct.anon.174 = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, [57 x i8] }
%struct.mt7915_mcu_eeprom = type { i8, i8, i16 }
%struct.mt7915_mcu_eeprom_info = type { i32, i32, [16 x i8] }
%struct.anon.175 = type { i8, i8, i8, i8 }
%struct.mt7915_mcu_mib = type { i32, i32, i64 }
%struct.anon.176 = type { i8, i8, i8, [5 x i8] }
%struct.anon.177 = type { %struct.mt7915_mcu_thermal_ctrl, i32, i32, i16, [2 x i8] }
%struct.mt7915_sku_val = type { i8, i8, i8, [161 x i8] }
%struct.mt76_power_limits = type { [4 x i8], [8 x i8], [4 x [10 x i8]], [7 x [12 x i8]] }
%struct.anon.181 = type { i8, i8, i8, i8 }
%struct.anon.182 = type { i8, i8, [2 x i8], i8, [3 x i8], [8 x i8] }
%struct.mt7915_sku = type { i8, i8, i8, i8 }
%struct.anon.183 = type { i8, i8, i8, i8 }
%struct.anon.184 = type { i8, %union.anon.185 }
%union.anon.185 = type { %struct.anon.188 }
%struct.anon.188 = type { i8, i8, [8 x i8], [5 x i8] }
%struct.anon.189 = type { i8, i8, i8, i8, i8, i8, [2 x i8], i32 }
%struct.anon.190 = type { i8, i8, i16 }
%struct.mt7915_mcu_phy_rx_info = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.bss_info_color = type { i16, i16, i8, i8, [2 x i8] }
%struct.anon.191 = type <{ i8, i8, i8, i8, i16, i8, i8, i64, i16, i8, i8, i8, [23 x i8] }>
%struct.element = type { i8, i8, [0 x i8] }
%struct.anon.245 = type { i32, i32 }
%struct.mt7915_fw_region = type { i32, i32, i32, [4 x i8], i32, i32, i8, [15 x i8] }

@mt7915_mcu_add_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bcn size limit exceed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7915_mcu_add_beacon\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/mcu.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7915_mcu_add_beacon._entry_ptr = internal global ptr @mt7915_mcu_add_beacon._entry, section ".printk_index", align 4
@mt7915_mcu_init.mt7915_mcu_ops = internal constant { %struct.mt76_mcu_ops, [56 x i8] } { %struct.mt76_mcu_ops { i32 64, i32 0, ptr null, ptr @mt7915_mcu_send_message, ptr @mt7915_mcu_parse_response, ptr null, ptr null, ptr null, ptr null, ptr @mt7915_mcu_restart }, [56 x i8] zeroinitializer }, align 32
@mt7915_mcu_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 3159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to exit mcu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7915_mcu_exit\00", [16 x i8] zeroinitializer }, align 32
@mt7915_mcu_exit._entry_ptr = internal global ptr @mt7915_mcu_exit._entry, section ".printk_index", align 4
@mt7915_sku_group_len = external dso_local local_unnamed_addr constant [15 x i8], align 1
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WM\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WA\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mt7915_mcu_rx_log_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 510, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %.*s\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7915_mcu_rx_log_message\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7915_mcu_rx_log_message._entry_ptr = internal global ptr @mt7915_mcu_rx_log_message._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@__const.mt7915_mcu_sta_bfer_tlv.matrix = private unnamed_addr constant [4 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\01\00\00", [4 x i8] c"\02\04\04\00", [4 x i8] c"\03\05\06\00"], align 1
@mt7915_mcu_beacon_check_caps.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt7915_mcu_parse_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Message %08x (seq %d) timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7915_mcu_parse_response\00", [38 x i8] zeroinitializer }, align 32
@mt7915_mcu_parse_response._entry_ptr = internal global ptr @mt7915_mcu_parse_response._entry, section ".printk_index", align 4
@mt7915_driver_own._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 2701, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Timeout for driver own\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7915_driver_own\00", [46 x i8] zeroinitializer }, align 32
@mt7915_driver_own._entry_ptr = internal global ptr @mt7915_driver_own._entry, section ".printk_index", align 4
@mt7915_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2951, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout for initializing firmware\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7915_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@mt7915_load_firmware._entry_ptr = internal global ptr @mt7915_load_firmware._entry, section ".printk_index", align 4
@mt7915_load_firmware.__UNIQUE_ID_ddebug718 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 2, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7915e\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Firmware init done\0A\00", [44 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 2743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get patch semaphore\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7915_load_patch\00", [46 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr = internal global ptr @mt7915_load_patch._entry, section ".printk_index", align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mediatek/mt7915_rom_patch.bin\00", [34 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.2, i32 2752, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr.30 = internal global ptr @mt7915_load_patch._entry.28, section ".printk_index", align 4
@mt7915_load_patch._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 2760, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HW/SW Version: 0x%x, Build Time: %.16s\0A\00", [56 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr.33 = internal global ptr @mt7915_load_patch._entry.31, section ".printk_index", align 4
@mt7915_load_patch._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.2, i32 2782, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Download request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr.36 = internal global ptr @mt7915_load_patch._entry.34, section ".printk_index", align 4
@mt7915_load_patch._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.2, i32 2789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to send patch\0A\00", [42 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr.39 = internal global ptr @mt7915_load_patch._entry.37, section ".printk_index", align 4
@mt7915_load_patch._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.26, ptr @.str.2, i32 2796, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to start patch\0A\00", [41 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr.42 = internal global ptr @mt7915_load_patch._entry.40, section ".printk_index", align 4
@mt7915_load_patch._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.26, ptr @.str.2, i32 2805, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to release patch semaphore\0A\00", [61 x i8] zeroinitializer }, align 32
@mt7915_load_patch._entry_ptr.45 = internal global ptr @mt7915_load_patch._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek/mt7915_wm.bin\00", [41 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.47, ptr @.str.2, i32 2885, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7915_load_ram\00", [16 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry_ptr = internal global ptr @mt7915_load_ram._entry, section ".printk_index", align 4
@mt7915_load_ram._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 2894, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"WM Firmware Version: %.10s, Build Time: %.15s\0A\00", [49 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry_ptr.50 = internal global ptr @mt7915_load_ram._entry.48, section ".printk_index", align 4
@mt7915_load_ram._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 2898, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to start WM firmware\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry_ptr.53 = internal global ptr @mt7915_load_ram._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek/mt7915_wa.bin\00", [41 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.47, ptr @.str.2, i32 2909, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry_ptr.56 = internal global ptr @mt7915_load_ram._entry.55, section ".printk_index", align 4
@mt7915_load_ram._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.2, i32 2918, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"WA Firmware Version: %.10s, Build Time: %.15s\0A\00", [49 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry_ptr.59 = internal global ptr @mt7915_load_ram._entry.57, section ".printk_index", align 4
@mt7915_load_ram._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.2, i32 2922, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to start WA firmware\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7915_load_ram._entry_ptr.62 = internal global ptr @mt7915_load_ram._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%.10s-%.15s\00", [20 x i8] zeroinitializer }, align 32
@mt7915_mcu_send_ram_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.64, ptr @.str.2, i32 2851, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt7915_mcu_send_ram_firmware\00", [35 x i8] zeroinitializer }, align 32
@mt7915_mcu_send_ram_firmware._entry_ptr = internal global ptr @mt7915_mcu_send_ram_firmware._entry, section ".printk_index", align 4
@mt7915_mcu_send_ram_firmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 2858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to send firmware.\0A\00", [38 x i8] zeroinitializer }, align 32
@mt7915_mcu_send_ram_firmware._entry_ptr.67 = internal global ptr @mt7915_mcu_send_ram_firmware._entry.65, section ".printk_index", align 4
@mt7915_mcu_chan_bw.width_to_bw = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\01\02\06\03\05\04", [24 x i8] zeroinitializer }, align 32
@mt76_tx_power_nss_delta.nss_delta = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\06\09\0C", [28 x i8] zeroinitializer }, align 32
@switch.table.mt7915_mcu_add_bss_info = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 262148, i32 65537, i32 65538, i32 65538, i32 65538, i32 65538, i32 65538], [36 x i8] zeroinitializer }, align 32
@switch.table.mt7915_mcu_add_rate_ctrl = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 255, i16 511, i16 1023], [26 x i8] zeroinitializer }, align 32
@switch.table.mt7915_mcu_set_sta_he_mcs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 255, i32 1023, i32 4095], [20 x i8] zeroinitializer }, align 32
@switch.table.mt7915_mcu_set_sta_he_mcs.68 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 19, i64 34, i64 35, i64 117]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 8, i64 19, i64 34, i64 58, i64 79, i64 117]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.71 = internal global [11 x i64] [i64 9, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1339905]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 5, i64 7, i64 8, i64 11]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 11501]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 20, i64 25]
@__sancov_gen_cov_switch_values.80 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.83 = internal global [26 x i64] [i64 24, i64 16, i64 5180, i64 5200, i64 5220, i64 5240, i64 5260, i64 5280, i64 5300, i64 5320, i64 5500, i64 5520, i64 5540, i64 5560, i64 5580, i64 5600, i64 5620, i64 5640, i64 5660, i64 5680, i64 5700, i64 5745, i64 5765, i64 5785, i64 5805, i64 5825]
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2621, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"mt7915_mcu_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 3109, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 3159, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 499, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 502, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 505, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 509, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 695, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 723, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 510, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 326, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2701, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2951, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2957, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2743, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2747, i32 30 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2752, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2759, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2782, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2789, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2796, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2805, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2880, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2885, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2893, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2898, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2904, i32 30 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2909, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2917, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2922, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2928, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2851, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2858, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [12 x i8] c"width_to_bw\00", align 1
@___asan_gen_.283 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 120, i32 18 }
@___asan_gen_.285 = private unnamed_addr constant [10 x i8] c"nss_delta\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/../mt76.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1069, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant [37 x i8] c"switch.table.mt7915_mcu_add_bss_info\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [38 x i8] c"switch.table.mt7915_mcu_add_rate_ctrl\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [39 x i8] c"switch.table.mt7915_mcu_set_sta_he_mcs\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [42 x i8] c"switch.table.mt7915_mcu_set_sta_he_mcs.68\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @mt7915_driver_own._entry, ptr @mt7915_driver_own._entry_ptr, ptr @mt7915_load_firmware._entry, ptr @mt7915_load_firmware._entry_ptr, ptr @mt7915_load_patch._entry, ptr @mt7915_load_patch._entry.28, ptr @mt7915_load_patch._entry.31, ptr @mt7915_load_patch._entry.34, ptr @mt7915_load_patch._entry.37, ptr @mt7915_load_patch._entry.40, ptr @mt7915_load_patch._entry.43, ptr @mt7915_load_patch._entry_ptr, ptr @mt7915_load_patch._entry_ptr.30, ptr @mt7915_load_patch._entry_ptr.33, ptr @mt7915_load_patch._entry_ptr.36, ptr @mt7915_load_patch._entry_ptr.39, ptr @mt7915_load_patch._entry_ptr.42, ptr @mt7915_load_patch._entry_ptr.45, ptr @mt7915_load_ram._entry, ptr @mt7915_load_ram._entry.48, ptr @mt7915_load_ram._entry.51, ptr @mt7915_load_ram._entry.55, ptr @mt7915_load_ram._entry.57, ptr @mt7915_load_ram._entry.60, ptr @mt7915_load_ram._entry_ptr, ptr @mt7915_load_ram._entry_ptr.50, ptr @mt7915_load_ram._entry_ptr.53, ptr @mt7915_load_ram._entry_ptr.56, ptr @mt7915_load_ram._entry_ptr.59, ptr @mt7915_load_ram._entry_ptr.62, ptr @mt7915_mcu_add_beacon._entry, ptr @mt7915_mcu_add_beacon._entry_ptr, ptr @mt7915_mcu_exit._entry, ptr @mt7915_mcu_exit._entry_ptr, ptr @mt7915_mcu_parse_response._entry, ptr @mt7915_mcu_parse_response._entry_ptr, ptr @mt7915_mcu_rx_log_message._entry, ptr @mt7915_mcu_rx_log_message._entry_ptr, ptr @mt7915_mcu_send_ram_firmware._entry, ptr @mt7915_mcu_send_ram_firmware._entry.65, ptr @mt7915_mcu_send_ram_firmware._entry_ptr, ptr @mt7915_mcu_send_ram_firmware._entry_ptr.67, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7915_mcu_init.mt7915_mcu_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @mt7915_mcu_chan_bw.width_to_bw, ptr @mt76_tx_power_nss_delta.nss_delta, ptr @switch.table.mt7915_mcu_add_bss_info, ptr @switch.table.mt7915_mcu_add_rate_ctrl, ptr @switch.table.mt7915_mcu_set_sta_he_mcs, ptr @switch.table.mt7915_mcu_set_sta_he_mcs.68], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_add_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_init.mt7915_mcu_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_rx_log_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_parse_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_driver_own._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_patch._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_ram._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_ram._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_ram._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_ram._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_load_ram._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_send_ram_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_send_ram_firmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mcu_chan_bw.width_to_bw to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_tx_power_nss_delta.nss_delta to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7915_mcu_add_bss_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7915_mcu_add_rate_ctrl to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7915_mcu_set_sta_he_mcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7915_mcu_set_sta_he_mcs.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_wa_cmd(ptr noundef %dev, i32 noundef %cmd, i32 noundef %a1, i32 noundef %a2, i32 noundef %a3) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.148, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #10
  %0 = getelementptr inbounds [3 x i32], ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %req, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %a1)
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %req, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %a2)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %a3)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef %cmd, ptr noundef nonnull %req, i32 noundef 12, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mcu_rx_event(ptr noundef %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ext_eid = getelementptr inbounds %struct.mt7915_mcu_rxd, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ext_eid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_eid, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %lor.lhs.false21 [
    i8 34, label %entry.if.then_crit_edge
    i8 19, label %entry.if.then_crit_edge30
    i8 35, label %entry.if.then_crit_edge31
    i8 5, label %entry.if.then_crit_edge32
    i8 117, label %entry.if.then_crit_edge33
  ]

entry.if.then_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false21:                                  ; preds = %entry
  %seq = getelementptr inbounds %struct.mt7915_mcu_rxd, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %seq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false21.if.then_crit_edge, label %if.else

lor.lhs.false21.if.then_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false21.if.then_crit_edge, %entry.if.then_crit_edge, %entry.if.then_crit_edge30, %entry.if.then_crit_edge31, %entry.if.then_crit_edge32, %entry.if.then_crit_edge33
  %eid.i = getelementptr inbounds %struct.mt7915_mcu_rxd, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %eid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -19, i8 %8)
  %cond.i = icmp eq i8 %8, -19
  br i1 %cond.i, label %sw.bb.i, label %if.then.mt7915_mcu_rx_unsolicited_event.exit_crit_edge

if.then.mt7915_mcu_rx_unsolicited_event.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_rx_unsolicited_event.exit

sw.bb.i:                                          ; preds = %if.then
  %9 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %3, label %sw.bb.i.mt7915_mcu_rx_unsolicited_event.exit_crit_edge [
    i8 34, label %sw.bb.i.i
    i8 58, label %sw.bb1.i.i
    i8 79, label %sw.bb2.i.i
    i8 19, label %sw.bb3.i.i
    i8 117, label %sw.bb4.i.i
  ]

sw.bb.i.mt7915_mcu_rx_unsolicited_event.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_rx_unsolicited_event.exit

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %ctrl.i.i.i = getelementptr inbounds %struct.mt7915_mcu_thermal_notify, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.not.i.i.i = icmp eq i8 %11, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.i.mt7915_mcu_rx_unsolicited_event.exit_crit_edge

sw.bb.i.i.mt7915_mcu_rx_unsolicited_event.exit_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_rx_unsolicited_event.exit

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %band_idx.i.i.i = getelementptr inbounds %struct.mt7915_mcu_thermal_notify, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %band_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %band_idx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phy2.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %phy2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy2.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %15, null
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, ptr %dev, ptr %15
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %land.lhs.true.i.i.i, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mphy.0.i.i.i = phi ptr [ %dev, %if.end.i.i.i.if.end8.i.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %priv.i.i.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i.i.i, align 8
  %duty_cycle.i.i.i = getelementptr inbounds %struct.mt7915_mcu_thermal_notify, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %duty_cycle.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %duty_cycle.i.i.i, align 1
  %throttle_state.i.i.i = getelementptr inbounds %struct.mt7915_phy, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %throttle_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %throttle_state.i.i.i, align 8
  br label %mt7915_mcu_rx_unsolicited_event.exit

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  %band_idx.i15.i.i = getelementptr inbounds %struct.mt7915_mcu_rdd_report, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %band_idx.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %band_idx.i15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i16.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i16.i.i, label %sw.bb1.i.i.mt7915_mcu_rx_radar_detected.exit.i.i_crit_edge, label %land.lhs.true.i19.i.i

sw.bb1.i.i.mt7915_mcu_rx_radar_detected.exit.i.i_crit_edge: ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_rx_radar_detected.exit.i.i

land.lhs.true.i19.i.i:                            ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phy2.i17.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %phy2.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy2.i17.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %24, null
  %spec.select.i18.i.i = select i1 %tobool1.not.i.i.i, ptr %dev, ptr %24
  br label %mt7915_mcu_rx_radar_detected.exit.i.i

mt7915_mcu_rx_radar_detected.exit.i.i:            ; preds = %land.lhs.true.i19.i.i, %sw.bb1.i.i.mt7915_mcu_rx_radar_detected.exit.i.i_crit_edge
  %mphy.0.i20.i.i = phi ptr [ %dev, %sw.bb1.i.i.mt7915_mcu_rx_radar_detected.exit.i.i_crit_edge ], [ %spec.select.i18.i.i, %land.lhs.true.i19.i.i ]
  %25 = ptrtoint ptr %mphy.0.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mphy.0.i20.i.i, align 8
  tail call void @ieee80211_radar_detected(ptr noundef %26) #10
  %hw_pattern.i.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 16
  %27 = ptrtoint ptr %hw_pattern.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_pattern.i.i.i, align 32
  %inc.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i, ptr %hw_pattern.i.i.i, align 32
  br label %mt7915_mcu_rx_unsolicited_event.exit

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  %band_idx.i23.i.i = getelementptr inbounds %struct.mt7915_mcu_csa_notify, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %band_idx.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %band_idx.i23.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i24.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i24.i.i, label %sw.bb2.i.i.mt7915_mcu_rx_csa_notify.exit.i.i_crit_edge, label %land.lhs.true.i28.i.i

sw.bb2.i.i.mt7915_mcu_rx_csa_notify.exit.i.i_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_rx_csa_notify.exit.i.i

land.lhs.true.i28.i.i:                            ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phy2.i25.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %31 = ptrtoint ptr %phy2.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy2.i25.i.i, align 8
  %tobool1.not.i26.i.i = icmp eq ptr %32, null
  %spec.select.i27.i.i = select i1 %tobool1.not.i26.i.i, ptr %dev, ptr %32
  br label %mt7915_mcu_rx_csa_notify.exit.i.i

mt7915_mcu_rx_csa_notify.exit.i.i:                ; preds = %land.lhs.true.i28.i.i, %sw.bb2.i.i.mt7915_mcu_rx_csa_notify.exit.i.i_crit_edge
  %mphy.0.i29.i.i = phi ptr [ %dev, %sw.bb2.i.i.mt7915_mcu_rx_csa_notify.exit.i.i_crit_edge ], [ %spec.select.i27.i.i, %land.lhs.true.i28.i.i ]
  %33 = ptrtoint ptr %mphy.0.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mphy.0.i29.i.i, align 8
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %34, i32 noundef 1, ptr noundef nonnull @mt7915_mcu_csa_finish, ptr noundef %34) #10
  br label %mt7915_mcu_rx_unsolicited_event.exit

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %s2d_index.i.i.i = getelementptr inbounds %struct.mt7915_mcu_rxd, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %s2d_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s2d_index.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %switch.selectcmp.i.i.i = icmp eq i8 %36, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @.str.8, ptr @.str.9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %switch.selectcmp6.i.i.i = icmp eq i8 %36, 0
  %switch.select7.i.i.i = select i1 %switch.selectcmp6.i.i.i, ptr @.str.7, ptr %switch.select.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.mt7915_mcu_rxd, ptr %1, i32 1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 128
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev3.i.i.i = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i.i = add i32 %42, -36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %switch.select7.i.i.i, i32 noundef %sub.i.i.i, ptr noundef %arrayidx.i.i.i) #13
  br label %mt7915_mcu_rx_unsolicited_event.exit

sw.bb4.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %43 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw.i.i, align 4
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %44, i32 noundef 1, ptr noundef nonnull @mt7915_mcu_cca_finish, ptr noundef %dev) #10
  br label %mt7915_mcu_rx_unsolicited_event.exit

mt7915_mcu_rx_unsolicited_event.exit:             ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %mt7915_mcu_rx_csa_notify.exit.i.i, %mt7915_mcu_rx_radar_detected.exit.i.i, %if.end8.i.i.i, %sw.bb.i.i.mt7915_mcu_rx_unsolicited_event.exit_crit_edge, %sw.bb.i.mt7915_mcu_rx_unsolicited_event.exit_crit_edge, %if.then.mt7915_mcu_rx_unsolicited_event.exit_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mt76_mcu_rx_event(ptr noundef %dev, ptr noundef %skb) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %mt7915_mcu_rx_unsolicited_event.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mcu_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_bss_info(ptr noundef readonly %phy, ptr noundef %vif, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %iter_data.i.i = alloca %struct.mt7915_he_obss_narrow_bw_ru_data, align 1
  %req.i102 = alloca %struct.anon.195, align 1
  %req.i = alloca %struct.anon.195, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %0 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp = icmp ugt i8 %1, 31
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %dev2.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2.i, align 4
  %conv.i = zext i8 %1 to i32
  %sub.i = add nsw i32 %conv.i, -32
  %omac_mask.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 8
  %4 = ptrtoint ptr %omac_mask.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %omac_mask.i, align 8
  %shr.i = lshr i64 %5, 32
  %shl.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl.i, -1
  %6 = trunc i64 %shr.i to i32
  %conv4.i = and i32 %6, %neg.i
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %req.i) #10
  %7 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 5
  %10 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 6
  %11 = getelementptr inbounds i8, ptr %req.i, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 20)
  %13 = or i32 %conv4.i, %enable
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp ne i32 %13, 0
  %conv9.i = zext i1 %14 to i8
  %15 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9.i, ptr %req.i, align 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %7, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %8, align 1
  %phy10.i = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.i = icmp ne ptr %phy10.i, %phy
  %conv12.i = zext i1 %cmp.i to i8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12.i, ptr %9, align 1
  %sub.i.tr = trunc i32 %sub.i to i8
  %conv15.i = shl i8 %sub.i.tr, 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv15.i, ptr %10, align 1
  br i1 %tobool.not, label %if.then.mt7915_mcu_muar_config.exit_crit_edge, label %if.then21.i

if.then.mt7915_mcu_muar_config.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_muar_config.exit

if.then21.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %20 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 8, i32 4
  %21 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 8
  %addr5.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %22 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr5.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %21, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i, align 2
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %20, align 2
  br label %mt7915_mcu_muar_config.exit

mt7915_mcu_muar_config.exit:                      ; preds = %if.then21.i, %if.then.mt7915_mcu_muar_config.exit_crit_edge
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %3, i32 noundef 18669, ptr noundef nonnull %req.i, i32 noundef 21, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %req.i) #10
  %28 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2.i, align 4
  %30 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %omac_idx, align 1
  %conv.i106 = zext i8 %31 to i32
  %sub.i107 = add nsw i32 %conv.i106, -32
  %32 = ptrtoint ptr %omac_mask.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %omac_mask.i, align 8
  %shr.i109 = lshr i64 %33, 32
  %shl.i110 = shl nuw i32 1, %sub.i107
  %neg.i111 = xor i32 %shl.i110, -1
  %34 = trunc i64 %shr.i109 to i32
  %conv4.i112 = and i32 %34, %neg.i111
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %req.i102) #10
  %35 = getelementptr inbounds %struct.anon.195, ptr %req.i102, i32 0, i32 3
  %36 = getelementptr inbounds %struct.anon.195, ptr %req.i102, i32 0, i32 4
  %37 = getelementptr inbounds %struct.anon.195, ptr %req.i102, i32 0, i32 5
  %38 = getelementptr inbounds %struct.anon.195, ptr %req.i102, i32 0, i32 6
  %39 = getelementptr inbounds i8, ptr %req.i102, i32 1
  %40 = call ptr @memset(ptr %39, i32 0, i32 20)
  %41 = or i32 %conv4.i112, %enable
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp ne i32 %41, 0
  %conv9.i116 = zext i1 %42 to i8
  %43 = ptrtoint ptr %req.i102 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv9.i116, ptr %req.i102, align 1
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %35, align 1
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %36, align 1
  %phy10.i117 = getelementptr inbounds %struct.mt7915_dev, ptr %29, i32 0, i32 4
  %cmp.i118 = icmp ne ptr %phy10.i117, %phy
  %conv12.i119 = zext i1 %cmp.i118 to i8
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv12.i119, ptr %37, align 1
  %sub.i107.tr = trunc i32 %sub.i107 to i8
  %47 = shl i8 %sub.i107.tr, 1
  %conv15.i121 = or i8 %47, 1
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv15.i121, ptr %38, align 1
  br i1 %tobool.not, label %mt7915_mcu_muar_config.exit.mt7915_mcu_muar_config.exit125_crit_edge, label %if.then21.i123

mt7915_mcu_muar_config.exit.mt7915_mcu_muar_config.exit125_crit_edge: ; preds = %mt7915_mcu_muar_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_muar_config.exit125

if.then21.i123:                                   ; preds = %mt7915_mcu_muar_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bss_conf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %49 = ptrtoint ptr %bss_conf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bss_conf.i, align 8
  %51 = getelementptr inbounds %struct.anon.195, ptr %req.i102, i32 0, i32 8, i32 4
  %52 = getelementptr inbounds %struct.anon.195, ptr %req.i102, i32 0, i32 8
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %52, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %50, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i122 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i122, align 2
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %51, align 2
  br label %mt7915_mcu_muar_config.exit125

mt7915_mcu_muar_config.exit125:                   ; preds = %if.then21.i123, %mt7915_mcu_muar_config.exit.mt7915_mcu_muar_config.exit125_crit_edge
  %call.i.i124 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %29, i32 noundef 18669, ptr noundef nonnull %req.i102, i32 noundef 21, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %req.i102) #10
  br label %if.end

if.end:                                           ; preds = %mt7915_mcu_muar_config.exit125, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %61 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %drv_priv, align 8
  %call.i = call ptr @mt76_mcu_msg_alloc(ptr noundef %60, ptr noundef null, i32 noundef 176) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %if.end.if.then6_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %if.end
  %call.i.i126 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %63 = ptrtoint ptr %call.i.i126 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %call.i.i126, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i126, i32 1
  %64 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i126, i32 2
  %65 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i126, i32 4
  %66 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i126, i32 5
  %67 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 14, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i126, i32 6
  %68 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i126, i32 7
  %69 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i127 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %mt7915_mcu_alloc_sta_req.exit.if.then6_crit_edge, label %if.end8

mt7915_mcu_alloc_sta_req.exit.if.then6_crit_edge: ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %retval.0.i204 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then6_crit_edge ]
  %70 = ptrtoint ptr %retval.0.i204 to i32
  br label %cleanup

if.end8:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool9 = icmp ne i32 %enable, 0
  br i1 %tobool9, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #10
  %73 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 0, ptr %call.i.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 2
  %74 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 4096, ptr %tlv.sroa.5.0..sroa_idx.i.i.i, align 1
  %tlv_num.i.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %tlv_num.i.i.i, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76) #10
  %add.i.i.i = add i16 %77, 1
  %78 = call i16 @llvm.bswap.i16(i16 %add.i.i.i) #10
  %79 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %tlv_num.i.i.i, align 1
  %80 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vif, align 8
  %switch.tableidx = add i32 %81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 7
  br i1 %82, label %switch.hole_check, label %if.then10.do.end.i_crit_edge

if.then10.do.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.then10.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 767, i32 noundef 9, ptr noundef null) #10
  br label %mt7915_mcu_bss_omac_tlv.exit

switch.hole_check:                                ; preds = %if.then10
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 103, %switch.maskindex
  %83 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %switch.lobit.not = icmp eq i8 %83, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mt7915_mcu_add_bss_info, i32 0, i32 %switch.tableidx
  %84 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %84)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mt7915_mcu_bss_omac_tlv.exit

mt7915_mcu_bss_omac_tlv.exit:                     ; preds = %switch.lookup, %do.end.i
  %type.0.i = phi i32 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %85 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %86)
  %cmp.i130 = icmp ugt i8 %86, 16
  %spec.select.i131 = select i1 %cmp.i130, i8 0, i8 %86
  %87 = call i32 @llvm.bswap.i32(i32 %type.0.i) #10
  %conn_type.i = getelementptr inbounds %struct.bss_info_omac, ptr %call.i.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %conn_type.i, align 1
  %89 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %omac_idx, align 1
  %omac_idx25.i = getelementptr inbounds %struct.bss_info_omac, ptr %call.i.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %omac_idx25.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %omac_idx25.i, align 1
  %band_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %92 = ptrtoint ptr %band_idx.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %band_idx.i, align 2
  %band_idx27.i = getelementptr inbounds %struct.bss_info_omac, ptr %call.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %band_idx27.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %band_idx27.i, align 1
  %hw_bss_idx.i = getelementptr inbounds %struct.bss_info_omac, ptr %call.i.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %hw_bss_idx.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %spec.select.i131, ptr %hw_bss_idx.i, align 1
  br label %if.end11

if.end11:                                         ; preds = %mt7915_mcu_bss_omac_tlv.exit, %if.end8.if.end11_crit_edge
  %frombool.i = zext i1 %tobool9 to i8
  %sta.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta.i, i32 0, i32 6
  %96 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %idx.i, align 2
  %data.i.i133 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %98 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i134 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #10
  %100 = ptrtoint ptr %call.i.i.i134 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 256, ptr %call.i.i.i134, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i135 = getelementptr inbounds i8, ptr %call.i.i.i134, i32 2
  %101 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i135 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 7168, ptr %tlv.sroa.5.0..sroa_idx.i.i.i135, align 1
  %tlv_num.i.i.i136 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %tlv_num.i.i.i136 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %tlv_num.i.i.i136, align 1
  %104 = call i16 @llvm.bswap.i16(i16 %103) #10
  %add.i.i.i137 = add i16 %104, 1
  %105 = call i16 @llvm.bswap.i16(i16 %add.i.i.i137) #10
  %106 = ptrtoint ptr %tlv_num.i.i.i136 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %tlv_num.i.i.i136, align 1
  %107 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vif, align 8
  %extract.t4.i = trunc i16 %97 to i8
  %extract12.i = lshr i16 %97, 8
  %extract.t13.i = trunc i16 %extract12.i to i8
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %108, label %do.end.i142 [
    i32 7, label %if.end11.sw.epilog.i_crit_edge
    i32 3, label %if.end11.sw.epilog.i_crit_edge221
    i32 6, label %if.end11.sw.epilog.i_crit_edge222
    i32 2, label %sw.bb2.i138
    i32 1, label %sw.bb13.i
  ]

if.end11.sw.epilog.i_crit_edge222:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end11.sw.epilog.i_crit_edge221:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end11.sw.epilog.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i138:                                      ; preds = %if.end11
  br i1 %tobool9, label %if.then.i, label %sw.bb2.i138.sw.epilog.i_crit_edge

sw.bb2.i138.sw.epilog.i_crit_edge:                ; preds = %sw.bb2.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb2.i138
  %110 = call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %113, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !143
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i139 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i139, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %bss_conf.i140 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %114 = ptrtoint ptr %bss_conf.i140 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bss_conf.i140, align 8
  %call4.i = call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %115) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i141

if.then6.i:                                       ; preds = %rcu_read_lock.exit.i
  %call.i20.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20.i, label %if.then6.i.cleanup.thread.i_crit_edge, label %land.lhs.true.i23.i

if.then6.i.cleanup.thread.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

land.lhs.true.i23.i:                              ; preds = %if.then6.i
  %call1.i21.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.cleanup.thread.i_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.cleanup.thread.i_crit_edge:   ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.cleanup.thread.i_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.cleanup.thread.i_crit_edge:  ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.cleanup.thread.i_crit_edge, %land.lhs.true.i23.i.cleanup.thread.i_crit_edge, %if.then6.i.cleanup.thread.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %116 = call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i.i27.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %preempt_count.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i28.i, align 4
  %sub.i.i.i.i = add i32 %119, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i28.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %mt7915_mcu_bss_basic_tlv.exit

if.end.i141:                                      ; preds = %rcu_read_lock.exit.i
  %idx10.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call4.i, i32 1, i32 6, i32 2
  %120 = ptrtoint ptr %idx10.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %idx10.i, align 2
  %call.i29.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i29.i, label %if.end.i141.cleanup.i_crit_edge, label %land.lhs.true.i32.i

if.end.i141.cleanup.i_crit_edge:                  ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true.i32.i:                              ; preds = %if.end.i141
  %call1.i30.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call1.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i32.i.cleanup.i_crit_edge, label %land.lhs.true2.i34.i

land.lhs.true.i32.i.cleanup.i_crit_edge:          ; preds = %land.lhs.true.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true2.i34.i:                             ; preds = %land.lhs.true.i32.i
  %.b4.i33.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33.i, label %land.lhs.true2.i34.i.cleanup.i_crit_edge, label %if.then.i35.i

land.lhs.true2.i34.i.cleanup.i_crit_edge:         ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then.i35.i:                                    ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i35.i, %land.lhs.true2.i34.i.cleanup.i_crit_edge, %land.lhs.true.i32.i.cleanup.i_crit_edge, %if.end.i141.cleanup.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %122 = call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i.i36.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i36.i to ptr
  %preempt_count.i.i.i.i37.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i37.i, align 4
  %sub.i.i.i38.i = add i32 %125, -1
  store volatile i32 %sub.i.i.i38.i, ptr %preempt_count.i.i.i.i37.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %extract.t14.i = trunc i16 %121 to i8
  %extract16.i = lshr i16 %121, 8
  %extract.t17.i = trunc i16 %extract16.i to i8
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end.i142:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 720, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i142, %sw.bb13.i, %cleanup.i, %sw.bb2.i138.sw.epilog.i_crit_edge, %if.end11.sw.epilog.i_crit_edge, %if.end11.sw.epilog.i_crit_edge221, %if.end11.sw.epilog.i_crit_edge222
  %wlan_idx.1.off0.i = phi i8 [ %extract.t4.i, %do.end.i142 ], [ %extract.t4.i, %sw.bb13.i ], [ %extract.t14.i, %cleanup.i ], [ %extract.t4.i, %sw.bb2.i138.sw.epilog.i_crit_edge ], [ %extract.t4.i, %if.end11.sw.epilog.i_crit_edge ], [ %extract.t4.i, %if.end11.sw.epilog.i_crit_edge221 ], [ %extract.t4.i, %if.end11.sw.epilog.i_crit_edge222 ]
  %wlan_idx.1.off8.i = phi i8 [ %extract.t13.i, %do.end.i142 ], [ %extract.t13.i, %sw.bb13.i ], [ %extract.t17.i, %cleanup.i ], [ %extract.t13.i, %sw.bb2.i138.sw.epilog.i_crit_edge ], [ %extract.t13.i, %if.end11.sw.epilog.i_crit_edge ], [ %extract.t13.i, %if.end11.sw.epilog.i_crit_edge221 ], [ %extract.t13.i, %if.end11.sw.epilog.i_crit_edge222 ]
  %type.0.i143 = phi i32 [ 256, %do.end.i142 ], [ 1024, %sw.bb13.i ], [ 256, %cleanup.i ], [ 256, %sw.bb2.i138.sw.epilog.i_crit_edge ], [ 256, %if.end11.sw.epilog.i_crit_edge ], [ 256, %if.end11.sw.epilog.i_crit_edge221 ], [ 256, %if.end11.sw.epilog.i_crit_edge222 ]
  %network_type.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 2
  %126 = ptrtoint ptr %network_type.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %type.0.i143, ptr %network_type.i, align 1
  %bmc_wcid_lo.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 9
  %127 = ptrtoint ptr %bmc_wcid_lo.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %wlan_idx.1.off0.i, ptr %bmc_wcid_lo.i, align 1
  %conv67.i = and i8 %wlan_idx.1.off8.i, 3
  %bmc_wcid_hi.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 14
  %128 = ptrtoint ptr %bmc_wcid_hi.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv67.i, ptr %bmc_wcid_hi.i, align 1
  %wmm_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %129 = ptrtoint ptr %wmm_idx.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %wmm_idx.i, align 1
  %wmm_idx68.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 7
  %131 = ptrtoint ptr %wmm_idx68.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %wmm_idx68.i, align 1
  %active.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 3
  %132 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool.i, ptr %active.i, align 1
  %133 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %134)
  %cmp.not.i = icmp eq i32 %134, 6
  %bssid82.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 6
  br i1 %cmp.not.i, label %if.else.i, label %if.then73.i

if.then73.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %bss_conf76.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %135 = ptrtoint ptr %bss_conf76.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bss_conf76.i, align 8
  %137 = call ptr @memcpy(ptr %bssid82.i, ptr %136, i32 6)
  %beacon_int.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %138 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %beacon_int.i, align 2
  %140 = call i16 @llvm.bswap.i16(i16 %139) #10
  %bcn_interval.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 5
  %141 = ptrtoint ptr %bcn_interval.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %140, ptr %bcn_interval.i, align 1
  %dtim_period.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %142 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dtim_period.i, align 8
  %dtim_period80.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 8
  %144 = ptrtoint ptr %dtim_period80.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %dtim_period80.i, align 1
  %call81.i = call fastcc zeroext i8 @mt7915_get_phy_mode(ptr noundef %vif, ptr noundef null) #10
  %phy_mode.i = getelementptr inbounds %struct.bss_info_basic, ptr %call.i.i.i134, i32 0, i32 11
  %145 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %call81.i, ptr %phy_mode.i, align 1
  br label %mt7915_mcu_bss_basic_tlv.exit

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %phy, align 8
  %macaddr.i = getelementptr inbounds %struct.mt76_phy, ptr %147, i32 0, i32 13
  %148 = call ptr @memcpy(ptr %bssid82.i, ptr %macaddr.i, i32 6)
  br label %mt7915_mcu_bss_basic_tlv.exit

mt7915_mcu_bss_basic_tlv.exit:                    ; preds = %if.else.i, %if.then73.i, %cleanup.thread.i
  %149 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %150)
  %cmp14 = icmp ne i32 %150, 6
  %151 = and i1 %tobool9, %cmp14
  br i1 %151, label %if.then19, label %mt7915_mcu_bss_basic_tlv.exit.out_crit_edge

mt7915_mcu_bss_basic_tlv.exit.out_crit_edge:      ; preds = %mt7915_mcu_bss_basic_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then19:                                        ; preds = %mt7915_mcu_bss_basic_tlv.exit
  %152 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %phy, align 8
  %chandef1.i = getelementptr inbounds %struct.mt76_phy, ptr %153, i32 0, i32 5
  %center_freq1.i = getelementptr inbounds %struct.mt76_phy, ptr %153, i32 0, i32 5, i32 2
  %154 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %center_freq1.i, align 4
  %156 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i145 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %158 = ptrtoint ptr %call.i.i.i145 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 512, ptr %call.i.i.i145, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i146 = getelementptr inbounds i8, ptr %call.i.i.i145, i32 2
  %159 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i146 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 3072, ptr %tlv.sroa.5.0..sroa_idx.i.i.i146, align 1
  %tlv_num.i.i.i147 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %157, i32 0, i32 1
  %160 = ptrtoint ptr %tlv_num.i.i.i147 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %tlv_num.i.i.i147, align 1
  %162 = call i16 @llvm.bswap.i16(i16 %161) #10
  %add.i.i.i148 = add i16 %162, 1
  %163 = call i16 @llvm.bswap.i16(i16 %add.i.i.i148) #10
  %164 = ptrtoint ptr %tlv_num.i.i.i147 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 %163, ptr %tlv_num.i.i.i147, align 1
  %165 = ptrtoint ptr %chandef1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %chandef1.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %hw_value.i, align 2
  %conv.i149 = trunc i16 %168 to i8
  %pri_ch.i = getelementptr inbounds %struct.bss_info_rf_ch, ptr %call.i.i.i145, i32 0, i32 2
  %169 = ptrtoint ptr %pri_ch.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv.i149, ptr %pri_ch.i, align 1
  %mul.i.i = mul i32 %155, 1000
  %call.i.i150 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #10
  %conv3.i = trunc i32 %call.i.i150 to i8
  %center_ch0.i = getelementptr inbounds %struct.bss_info_rf_ch, ptr %call.i.i.i145, i32 0, i32 3
  %170 = ptrtoint ptr %center_ch0.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv3.i, ptr %center_ch0.i, align 1
  %width.i.i = getelementptr inbounds %struct.mt76_phy, ptr %153, i32 0, i32 5, i32 1
  %171 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %172)
  %cmp.i.i = icmp ugt i32 %172, 7
  br i1 %cmp.i.i, label %if.then19.mt7915_mcu_chan_bw.exit.i_crit_edge, label %if.end.i.i

if.then19.mt7915_mcu_chan_bw.exit.i_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_chan_bw.exit.i

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [8 x i8], ptr @mt7915_mcu_chan_bw.width_to_bw, i32 0, i32 %172
  %173 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i.i, align 1
  br label %mt7915_mcu_chan_bw.exit.i

mt7915_mcu_chan_bw.exit.i:                        ; preds = %if.end.i.i, %if.then19.mt7915_mcu_chan_bw.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %174, %if.end.i.i ], [ 0, %if.then19.mt7915_mcu_chan_bw.exit.i_crit_edge ]
  %bw.i = getelementptr inbounds %struct.bss_info_rf_ch, ptr %call.i.i.i145, i32 0, i32 5
  %175 = ptrtoint ptr %bw.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %retval.0.i.i, ptr %bw.i, align 1
  %176 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %cmp.i151 = icmp eq i32 %177, 4
  br i1 %cmp.i151, label %if.then.i152, label %mt7915_mcu_chan_bw.exit.i.if.end.i154_crit_edge

mt7915_mcu_chan_bw.exit.i.if.end.i154_crit_edge:  ; preds = %mt7915_mcu_chan_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i154

if.then.i152:                                     ; preds = %mt7915_mcu_chan_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq2.i = getelementptr inbounds %struct.mt76_phy, ptr %153, i32 0, i32 5, i32 3
  %178 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %center_freq2.i, align 4
  %mul.i45.i = mul i32 %179, 1000
  %call.i46.i = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i45.i) #10
  %conv7.i = trunc i32 %call.i46.i to i8
  %center_ch1.i = getelementptr inbounds %struct.bss_info_rf_ch, ptr %call.i.i.i145, i32 0, i32 4
  %180 = ptrtoint ptr %center_ch1.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv7.i, ptr %center_ch1.i, align 1
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.then.i152, %mt7915_mcu_chan_bw.exit.i.if.end.i154_crit_edge
  %he_support.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 5
  %181 = ptrtoint ptr %he_support.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %he_support.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i153 = icmp eq i8 %182, 0
  br i1 %tobool.not.i153, label %if.end.i154.mt7915_mcu_bss_rfch_tlv.exit_crit_edge, label %land.lhs.true.i

if.end.i154.mt7915_mcu_bss_rfch_tlv.exit_crit_edge: ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_bss_rfch_tlv.exit

land.lhs.true.i:                                  ; preds = %if.end.i154
  %183 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp9.i = icmp eq i32 %184, 2
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true.i.mt7915_mcu_bss_rfch_tlv.exit_crit_edge

land.lhs.true.i.mt7915_mcu_bss_rfch_tlv.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_bss_rfch_tlv.exit

if.then11.i:                                      ; preds = %land.lhs.true.i
  %185 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev, align 4
  %phy14.i = getelementptr inbounds %struct.mt7915_dev, ptr %186, i32 0, i32 4
  %cmp15.not.i = icmp eq ptr %phy14.i, %phy
  br i1 %cmp15.not.i, label %if.then11.i.if.end23.i_crit_edge, label %land.lhs.true19.i

if.then11.i.if.end23.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

land.lhs.true19.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %phy2.i, align 8
  %tobool20.not.i = icmp eq ptr %188, null
  %spec.select.i155 = select i1 %tobool20.not.i, ptr %186, ptr %188
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true19.i, %if.then11.i.if.end23.i_crit_edge
  %mphy.0.i = phi ptr [ %186, %if.then11.i.if.end23.i_crit_edge ], [ %spec.select.i155, %land.lhs.true19.i ]
  %189 = ptrtoint ptr %mphy.0.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mphy.0.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %iter_data.i.i) #10
  %191 = ptrtoint ptr %iter_data.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 1, ptr %iter_data.i.i, align 1
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 32
  %192 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %chandef.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %195, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i156 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i156, label %if.end23.i.mt7915_check_he_obss_narrow_bw_ru.exit.i_crit_edge, label %if.end.i47.i

if.end23.i.mt7915_check_he_obss_narrow_bw_ru.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_check_he_obss_narrow_bw_ru.exit.i

if.end.i47.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %190, i32 0, i32 1
  %196 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wiphy.i.i, align 8
  call void @cfg80211_bss_iter(ptr noundef %197, ptr noundef %chandef.i.i, ptr noundef nonnull @mt7915_check_he_obss_narrow_bw_ru_iter, ptr noundef nonnull %iter_data.i.i) #10
  %198 = ptrtoint ptr %iter_data.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %iter_data.i.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool3.not.i.i = icmp eq i8 %199, 0
  br label %mt7915_check_he_obss_narrow_bw_ru.exit.i

mt7915_check_he_obss_narrow_bw_ru.exit.i:         ; preds = %if.end.i47.i, %if.end23.i.mt7915_check_he_obss_narrow_bw_ru.exit.i_crit_edge
  %retval.0.i48.i = phi i1 [ %tobool3.not.i.i, %if.end.i47.i ], [ false, %if.end23.i.mt7915_check_he_obss_narrow_bw_ru.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %iter_data.i.i) #10
  %conv25.i = zext i1 %retval.0.i48.i to i8
  %he_ru26_block.i = getelementptr inbounds %struct.bss_info_rf_ch, ptr %call.i.i.i145, i32 0, i32 6
  %200 = ptrtoint ptr %he_ru26_block.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv25.i, ptr %he_ru26_block.i, align 1
  br label %mt7915_mcu_bss_rfch_tlv.exit

mt7915_mcu_bss_rfch_tlv.exit:                     ; preds = %mt7915_check_he_obss_narrow_bw_ru.exit.i, %land.lhs.true.i.mt7915_mcu_bss_rfch_tlv.exit_crit_edge, %if.end.i154.mt7915_mcu_bss_rfch_tlv.exit_crit_edge
  %.sink.i = phi i8 [ 0, %mt7915_check_he_obss_narrow_bw_ru.exit.i ], [ 1, %land.lhs.true.i.mt7915_mcu_bss_rfch_tlv.exit_crit_edge ], [ 1, %if.end.i154.mt7915_mcu_bss_rfch_tlv.exit_crit_edge ]
  %he_all_disable26.i = getelementptr inbounds %struct.bss_info_rf_ch, ptr %call.i.i.i145, i32 0, i32 7
  %201 = ptrtoint ptr %he_all_disable26.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %.sink.i, ptr %he_all_disable26.i, align 1
  %202 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %phy, align 8
  %chandef1.i157 = getelementptr inbounds %struct.mt76_phy, ptr %203, i32 0, i32 5
  %204 = ptrtoint ptr %chandef1.i157 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %chandef1.i157, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 4
  %208 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i159 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #10
  %210 = ptrtoint ptr %call.i.i.i159 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 2)
  store i16 2048, ptr %call.i.i.i159, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i160 = getelementptr inbounds i8, ptr %call.i.i.i159, i32 2
  %211 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i160 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 4096, ptr %tlv.sroa.5.0..sroa_idx.i.i.i160, align 1
  %tlv_num.i.i.i161 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %209, i32 0, i32 1
  %212 = ptrtoint ptr %tlv_num.i.i.i161 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %213 = load i16, ptr %tlv_num.i.i.i161, align 1
  %214 = call i16 @llvm.bswap.i16(i16 %213) #10
  %add.i.i.i162 = add i16 %214, 1
  %215 = call i16 @llvm.bswap.i16(i16 %add.i.i.i162) #10
  %216 = ptrtoint ptr %tlv_num.i.i.i161 to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 %215, ptr %tlv_num.i.i.i161, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp.i163 = icmp eq i32 %207, 0
  br i1 %cmp.i163, label %if.then.i164, label %if.else.i165

if.then.i164:                                     ; preds = %mt7915_mcu_bss_rfch_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %short_preamble.i = getelementptr inbounds %struct.bss_info_bmc_rate, ptr %call.i.i.i159, i32 0, i32 4
  %217 = ptrtoint ptr %short_preamble.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %short_preamble.i, align 1
  br label %cond.false.i

if.else.i165:                                     ; preds = %mt7915_mcu_bss_rfch_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bc_trans.i = getelementptr inbounds %struct.bss_info_bmc_rate, ptr %call.i.i.i159, i32 0, i32 2
  %218 = ptrtoint ptr %bc_trans.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 2)
  store i16 32, ptr %bc_trans.i, align 1
  %mc_trans.i = getelementptr inbounds %struct.bss_info_bmc_rate, ptr %call.i.i.i159, i32 0, i32 3
  %219 = ptrtoint ptr %mc_trans.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 -32736, ptr %mc_trans.i, align 1
  br label %cond.false.i

cond.false.i:                                     ; preds = %if.else.i165, %if.then.i164
  %220 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %phy, align 8
  %chainmask.i = getelementptr inbounds %struct.mt76_phy, ptr %221, i32 0, i32 16
  %222 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %chainmask.i, align 2
  %conv75.i = zext i16 %223 to i32
  %call.i.i167 = call i32 @__sw_hweight8(i32 noundef %conv75.i) #10
  %224 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i169 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 44) #10
  %226 = ptrtoint ptr %call.i.i.i169 to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 2560, ptr %call.i.i.i169, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i170 = getelementptr inbounds i8, ptr %call.i.i.i169, i32 2
  %227 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i170 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 11264, ptr %tlv.sroa.5.0..sroa_idx.i.i.i170, align 1
  %tlv_num.i.i.i171 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %225, i32 0, i32 1
  %228 = ptrtoint ptr %tlv_num.i.i.i171 to i32
  call void @__asan_loadN_noabort(i32 %228, i32 2)
  %229 = load i16, ptr %tlv_num.i.i.i171, align 1
  %230 = call i16 @llvm.bswap.i16(i16 %229) #10
  %add.i.i.i172 = add i16 %230, 1
  %231 = call i16 @llvm.bswap.i16(i16 %add.i.i.i172) #10
  %232 = ptrtoint ptr %tlv_num.i.i.i171 to i32
  call void @__asan_storeN_noabort(i32 %232, i32 2)
  store i16 %231, ptr %tlv_num.i.i.i171, align 1
  %233 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %234)
  %cmp.i173 = icmp eq i32 %234, 3
  %conv78.i = zext i1 %cmp.i173 to i8
  %op_mode.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 2
  %235 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv78.i, ptr %op_mode.i, align 1
  %236 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %237)
  %cmp80.i = icmp eq i32 %237, 1
  %conv82.i = zext i1 %cmp80.i to i8
  %adhoc_en.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 3
  %238 = ptrtoint ptr %adhoc_en.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv82.i, ptr %adhoc_en.i, align 1
  %short_preamble.i174 = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 4
  %239 = ptrtoint ptr %short_preamble.i174 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %short_preamble.i174, align 1
  %conv83.i = trunc i32 %call.i.i167 to i8
  %tx_streams.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 5
  %240 = ptrtoint ptr %tx_streams.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv83.i, ptr %tx_streams.i, align 1
  %rx_streams.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 6
  %241 = ptrtoint ptr %rx_streams.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv83.i, ptr %rx_streams.i, align 1
  %algo.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 7
  %242 = ptrtoint ptr %algo.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 4, ptr %algo.i, align 1
  %train_up_rule.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 18
  %243 = ptrtoint ptr %train_up_rule.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 2, ptr %train_up_rule.i, align 1
  %train_up_high_thres.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 20
  %244 = ptrtoint ptr %train_up_high_thres.i to i32
  call void @__asan_storeN_noabort(i32 %244, i32 2)
  store i16 110, ptr %train_up_high_thres.i, align 1
  %train_up_rule_rssi.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 21
  %245 = ptrtoint ptr %train_up_rule_rssi.i to i32
  call void @__asan_storeN_noabort(i32 %245, i32 2)
  store i16 -70, ptr %train_up_rule_rssi.i, align 1
  %low_traffic_thres.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 22
  %246 = ptrtoint ptr %low_traffic_thres.i to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 2, ptr %low_traffic_thres.i, align 1
  %phy_cap.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 24
  %247 = ptrtoint ptr %phy_cap.i to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 -552665088, ptr %phy_cap.i, align 1
  %interval.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 25
  %248 = ptrtoint ptr %interval.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 -201261056, ptr %interval.i, align 1
  %fast_interval.i = getelementptr inbounds %struct.bss_info_ra, ptr %call.i.i.i169, i32 0, i32 26
  %249 = ptrtoint ptr %fast_interval.i to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 1677721600, ptr %fast_interval.i, align 1
  %250 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i176 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #10
  %252 = ptrtoint ptr %call.i.i.i176 to i32
  call void @__asan_storeN_noabort(i32 %252, i32 2)
  store i16 2816, ptr %call.i.i.i176, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i177 = getelementptr inbounds i8, ptr %call.i.i.i176, i32 2
  %253 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i177 to i32
  call void @__asan_storeN_noabort(i32 %253, i32 2)
  store i16 4096, ptr %tlv.sroa.5.0..sroa_idx.i.i.i177, align 1
  %tlv_num.i.i.i178 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %251, i32 0, i32 1
  %254 = ptrtoint ptr %tlv_num.i.i.i178 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 2)
  %255 = load i16, ptr %tlv_num.i.i.i178, align 1
  %256 = call i16 @llvm.bswap.i16(i16 %255) #10
  %add.i.i.i179 = add i16 %256, 1
  %257 = call i16 @llvm.bswap.i16(i16 %add.i.i.i179) #10
  %258 = ptrtoint ptr %tlv_num.i.i.i178 to i32
  call void @__asan_storeN_noabort(i32 %258, i32 2)
  store i16 %257, ptr %tlv_num.i.i.i178, align 1
  %cmp_bitmap_0.i = getelementptr inbounds %struct.bss_info_hw_amsdu, ptr %call.i.i.i176, i32 0, i32 2
  %259 = ptrtoint ptr %cmp_bitmap_0.i to i32
  call void @__asan_storeN_noabort(i32 %259, i32 4)
  store i32 -65536, ptr %cmp_bitmap_0.i, align 1
  %cmp_bitmap_1.i = getelementptr inbounds %struct.bss_info_hw_amsdu, ptr %call.i.i.i176, i32 0, i32 3
  %260 = ptrtoint ptr %cmp_bitmap_1.i to i32
  call void @__asan_storeN_noabort(i32 %260, i32 4)
  store i32 -32769, ptr %cmp_bitmap_1.i, align 1
  %trig_thres.i = getelementptr inbounds %struct.bss_info_hw_amsdu, ptr %call.i.i.i176, i32 0, i32 4
  %261 = ptrtoint ptr %trig_thres.i to i32
  call void @__asan_storeN_noabort(i32 %261, i32 2)
  store i16 512, ptr %trig_thres.i, align 1
  %enable.i = getelementptr inbounds %struct.bss_info_hw_amsdu, ptr %call.i.i.i176, i32 0, i32 5
  %262 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 1, ptr %enable.i, align 1
  %263 = ptrtoint ptr %he_support.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %he_support.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool20.not = icmp eq i8 %264, 0
  br i1 %tobool20.not, label %cond.false.i.if.end22_crit_edge, label %if.then21

cond.false.i.if.end22_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %cond.false.i
  %265 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %phy, align 8
  %chandef.i.i180 = getelementptr inbounds %struct.mt76_phy, ptr %266, i32 0, i32 5
  %267 = ptrtoint ptr %chandef.i.i180 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %chandef.i.i180, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %268, align 4
  %271 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %266, align 8
  %wiphy.i.i181 = getelementptr inbounds %struct.ieee80211_hw, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %wiphy.i.i181 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %wiphy.i.i181, align 8
  %arrayidx.i.i182 = getelementptr %struct.wiphy, ptr %274, i32 0, i32 53, i32 %270
  %275 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx.i.i182, align 4
  %277 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %vif, align 8
  %conv.i.i = trunc i32 %278 to i8
  %conv.i.i.i.i = and i32 %278, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv.i.i)
  %cmp.i.i.i.i = icmp ugt i8 %conv.i.i, 11
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %for.cond.preheader.i.i.i.i, !prof !146

for.cond.preheader.i.i.i.i:                       ; preds = %if.then21
  %n_iftype_data.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %276, i32 0, i32 9
  %279 = ptrtoint ptr %n_iftype_data.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %n_iftype_data.i.i.i.i, align 4
  %conv23.i.i.i.i = zext i16 %280 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %280)
  %cmp2438.not.i.i.i.i = icmp eq i16 %280, 0
  br i1 %cmp2438.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.if.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

for.cond.preheader.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.cond.preheader.i.i.i.i
  %iftype_data.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %276, i32 0, i32 10
  %281 = ptrtoint ptr %iftype_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %iftype_data.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  br label %for.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 510, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.039.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %conv23.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.if.end.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.039.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %282, i32 %i.039.i.i.i.i
  %283 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %arrayidx.i.i.i.i, align 4
  %conv26.i.i.i.i = zext i16 %284 to i32
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv26.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %for.cond.i.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i:       ; preds = %for.body.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i
  %he_cap.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %282, i32 %i.039.i.i.i.i, i32 1
  %285 = ptrtoint ptr %he_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %he_cap.i.i.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool1.not.i.i.i = icmp eq i8 %286, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.mt7915_mcu_bss_he_tlv.exit_crit_edge

land.lhs.true.i.i.i.mt7915_mcu_bss_he_tlv.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_bss_he_tlv.exit

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.i.i.if.end.i.i.i_crit_edge, %for.cond.i.i.i.i.if.end.i.i.i_crit_edge, %do.end.i.i.i.i, %for.cond.preheader.i.i.i.i.if.end.i.i.i_crit_edge
  br label %mt7915_mcu_bss_he_tlv.exit

mt7915_mcu_bss_he_tlv.exit:                       ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.mt7915_mcu_bss_he_tlv.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end.i.i.i ], [ %he_cap.i.i.i, %land.lhs.true.i.i.i.mt7915_mcu_bss_he_tlv.exit_crit_edge ]
  %287 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i184 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #10
  %289 = ptrtoint ptr %call.i.i.i184 to i32
  call void @__asan_storeN_noabort(i32 %289, i32 2)
  store i16 3328, ptr %call.i.i.i184, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i185 = getelementptr inbounds i8, ptr %call.i.i.i184, i32 2
  %290 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i185 to i32
  call void @__asan_storeN_noabort(i32 %290, i32 2)
  store i16 5120, ptr %tlv.sroa.5.0..sroa_idx.i.i.i185, align 1
  %tlv_num.i.i.i186 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %288, i32 0, i32 1
  %291 = ptrtoint ptr %tlv_num.i.i.i186 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 2)
  %292 = load i16, ptr %tlv_num.i.i.i186, align 1
  %293 = call i16 @llvm.bswap.i16(i16 %292) #10
  %add.i.i.i187 = add i16 %293, 1
  %294 = call i16 @llvm.bswap.i16(i16 %add.i.i.i187) #10
  %295 = ptrtoint ptr %tlv_num.i.i.i186 to i32
  call void @__asan_storeN_noabort(i32 %295, i32 2)
  store i16 %294, ptr %tlv_num.i.i.i186, align 1
  %htc_trig_based_pkt_ext.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 1
  %296 = ptrtoint ptr %htc_trig_based_pkt_ext.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %htc_trig_based_pkt_ext.i, align 4
  %he_pe_duration.i = getelementptr inbounds %struct.bss_info_he, ptr %call.i.i.i184, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool.not.i188 = icmp eq i8 %297, 0
  %spec.select.i189 = select i1 %tobool.not.i188, i8 4, i8 %297
  %298 = ptrtoint ptr %he_pe_duration.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %spec.select.i189, ptr %he_pe_duration.i, align 1
  %frame_time_rts_th.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 4
  %299 = ptrtoint ptr %frame_time_rts_th.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %frame_time_rts_th.i, align 8
  %301 = call i16 @llvm.bswap.i16(i16 %300) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %300)
  %tobool6.not.i = icmp eq i16 %300, 0
  %storemerge28.i = select i1 %tobool6.not.i, i16 -253, i16 %301
  %he_rts_thres.i = getelementptr inbounds %struct.bss_info_he, ptr %call.i.i.i184, i32 0, i32 4
  %302 = ptrtoint ptr %he_rts_thres.i to i32
  call void @__asan_storeN_noabort(i32 %302, i32 2)
  store i16 %storemerge28.i, ptr %he_rts_thres.i, align 1
  %tx_mcs_80.i = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i, i32 0, i32 2, i32 1
  %303 = ptrtoint ptr %tx_mcs_80.i to i32
  call void @__asan_loadN_noabort(i32 %303, i32 2)
  %304 = load i16, ptr %tx_mcs_80.i, align 1
  %max_nss_mcs.i = getelementptr inbounds %struct.bss_info_he, ptr %call.i.i.i184, i32 0, i32 5
  %305 = ptrtoint ptr %max_nss_mcs.i to i32
  call void @__asan_storeN_noabort(i32 %305, i32 2)
  store i16 %304, ptr %max_nss_mcs.i, align 1
  %tx_mcs_160.i = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i, i32 0, i32 2, i32 3
  %306 = ptrtoint ptr %tx_mcs_160.i to i32
  call void @__asan_loadN_noabort(i32 %306, i32 2)
  %307 = load i16, ptr %tx_mcs_160.i, align 1
  %arrayidx12.i = getelementptr %struct.bss_info_he, ptr %call.i.i.i184, i32 0, i32 5, i32 1
  %308 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %308, i32 2)
  store i16 %307, ptr %arrayidx12.i, align 1
  %tx_mcs_80p80.i = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i, i32 0, i32 2, i32 5
  %309 = ptrtoint ptr %tx_mcs_80p80.i to i32
  call void @__asan_loadN_noabort(i32 %309, i32 2)
  %310 = load i16, ptr %tx_mcs_80p80.i, align 1
  %arrayidx15.i = getelementptr %struct.bss_info_he, ptr %call.i.i.i184, i32 0, i32 5, i32 2
  %311 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_storeN_noabort(i32 %311, i32 2)
  store i16 %310, ptr %arrayidx15.i, align 1
  br label %if.end22

if.end22:                                         ; preds = %mt7915_mcu_bss_he_tlv.exit, %cond.false.i.if.end22_crit_edge
  %312 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %omac_idx, align 1
  %314 = and i8 %313, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %314)
  %315 = icmp eq i8 %314, 16
  br i1 %315, label %mt7915_mcu_bss_ext_tlv.exit, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

mt7915_mcu_bss_ext_tlv.exit:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i192 = zext i8 %313 to i32
  %316 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %data.i.i133, align 4
  %call.i.i.i194 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #10
  %318 = ptrtoint ptr %call.i.i.i194 to i32
  call void @__asan_storeN_noabort(i32 %318, i32 2)
  store i16 1792, ptr %call.i.i.i194, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i195 = getelementptr inbounds i8, ptr %call.i.i.i194, i32 2
  %319 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i195 to i32
  call void @__asan_storeN_noabort(i32 %319, i32 2)
  store i16 4096, ptr %tlv.sroa.5.0..sroa_idx.i.i.i195, align 1
  %tlv_num.i.i.i196 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %317, i32 0, i32 1
  %320 = ptrtoint ptr %tlv_num.i.i.i196 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 2)
  %321 = load i16, ptr %tlv_num.i.i.i196, align 1
  %322 = call i16 @llvm.bswap.i16(i16 %321) #10
  %add.i.i.i197 = add i16 %322, 1
  %323 = call i16 @llvm.bswap.i16(i16 %add.i.i.i197) #10
  %324 = ptrtoint ptr %tlv_num.i.i.i196 to i32
  call void @__asan_storeN_noabort(i32 %324, i32 2)
  store i16 %323, ptr %tlv_num.i.i.i196, align 1
  %325 = mul nuw nsw i32 %conv.i192, 4116
  %mul.i198 = add nsw i32 %325, -65856
  %326 = call i32 @llvm.bswap.i32(i32 %mul.i198) #10
  %mbss_tsf_offset.i = getelementptr inbounds %struct.bss_info_ext_bss, ptr %call.i.i.i194, i32 0, i32 2
  %327 = ptrtoint ptr %mbss_tsf_offset.i to i32
  call void @__asan_storeN_noabort(i32 %327, i32 4)
  store i32 %326, ptr %mbss_tsf_offset.i, align 1
  br label %out

out:                                              ; preds = %mt7915_mcu_bss_ext_tlv.exit, %if.end22.out_crit_edge, %mt7915_mcu_bss_basic_tlv.exit.out_crit_edge
  %328 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev, align 4
  %call.i201 = call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %329, ptr noundef nonnull %call.i, i32 noundef 9965, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6
  %retval.0 = phi i32 [ %70, %if.then6 ], [ %call.i201, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_key(ptr noundef %dev, ptr nocapture noundef readonly %vif, ptr noundef %msta, ptr nocapture noundef readonly %key, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %tobool.not.i = icmp eq ptr %msta, null
  br i1 %tobool.not.i, label %entry.cond.end50.i_crit_edge, label %do.end12.i

entry.cond.end50.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i

do.end12.i:                                       ; preds = %entry
  %idx13.i = getelementptr inbounds %struct.mt76_wcid, ptr %msta, i32 0, i32 6
  %2 = ptrtoint ptr %idx13.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx13.i, align 2
  %conv.i = trunc i16 %3 to i8
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %msta, i32 0, i32 9
  %4 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool18.not.i, label %do.end12.i.do.end42.i_crit_edge, label %cond.true19.i

do.end12.i.do.end42.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i

cond.true19.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %5 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %omac_idx.i, align 1
  br label %do.end42.i

do.end42.i:                                       ; preds = %cond.true19.i, %do.end12.i.do.end42.i_crit_edge
  %hdr.sroa.14.0.i = phi i8 [ %6, %cond.true19.i ], [ 14, %do.end12.i.do.end42.i_crit_edge ]
  %and47.i = lshr i16 %3, 8
  %7 = trunc i16 %and47.i to i8
  %phi.cast.i = and i8 %7, 3
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %do.end42.i, %entry.cond.end50.i_crit_edge
  %hdr.sroa.14.1.i = phi i8 [ %hdr.sroa.14.0.i, %do.end42.i ], [ 14, %entry.cond.end50.i_crit_edge ]
  %hdr.sroa.5.0.i = phi i8 [ %conv.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %cond51.i = phi i8 [ %phi.cast.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 88) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %cond.end50.i.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

cond.end50.i.if.then_crit_edge:                   ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %cond.end50.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %9 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %hdr.sroa.5.0.i, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %10 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %11 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %12 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %hdr.sroa.14.1.i, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %13 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond51.i, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %14 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %cond.end50.i.if.then_crit_edge
  %retval.0.i49 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i49 to i32
  br label %cleanup

if.end:                                           ; preds = %mt7915_mcu_alloc_sta_req.exit
  %bip1.i = getelementptr inbounds %struct.mt7915_sta, ptr %msta, i32 0, i32 9
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 80) #10
  %18 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 4352, ptr %call.i.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 2
  %19 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 20480, ptr %tlv.sroa.5.0..sroa_idx.i.i.i, align 1
  %tlv_num.i.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %tlv_num.i.i.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %add.i.i.i = add i16 %22, 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i) #10
  %24 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %tlv_num.i.i.i, align 1
  %conv.i44 = trunc i32 %cmd to i8
  %add.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %add.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i44, ptr %add.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp.i45 = icmp eq i32 %cmd, 0
  br i1 %cmp.i45, label %if.then.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i:                                        ; preds = %if.end
  %cipher3.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %26 = ptrtoint ptr %cipher3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher3.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %27, label %if.then.i.cleanup_crit_edge [
    i32 1027073, label %if.then.i.if.else.thread.i_crit_edge
    i32 1027077, label %sw.bb1.i.i
    i32 1027074, label %if.then40.i
    i32 1027078, label %if.then14.i
    i32 1027076, label %if.then56.i
    i32 1027082, label %sw.bb5.i.i
    i32 1027080, label %sw.bb6.i.i
    i32 1027081, label %sw.bb7.i.i
    i32 1339905, label %sw.bb8.i.i
  ]

if.then.i.if.else.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread.i

sw.bb5.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread.i

sw.bb6.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread.i

sw.bb7.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread.i

sw.bb8.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread.i

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %key10.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5
  %cipher_len.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %cipher_len.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 36, ptr %cipher_len.i, align 1
  %30 = ptrtoint ptr %key10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %key10.i, align 1
  %31 = ptrtoint ptr %bip1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bip1.i, align 1
  %key_id.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 2
  %33 = ptrtoint ptr %key_id.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %key_id.i, align 1
  %key_len.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 3
  %34 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %key_len.i, align 1
  %key15.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 4
  %key16.i = getelementptr inbounds %struct.mt7915_sta, ptr %msta, i32 0, i32 9, i32 1
  %35 = call ptr @memcpy(ptr %key15.i, ptr %key16.i, i32 16)
  %arrayidx19.i = getelementptr %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %arrayidx19.i, align 1
  %cipher_len21.i = getelementptr %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 1
  %37 = ptrtoint ptr %cipher_len21.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 36, ptr %cipher_len21.i, align 1
  %key_len22.i = getelementptr %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 3
  %38 = ptrtoint ptr %key_len22.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %key_len22.i, align 1
  %key23.i = getelementptr %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 4
  %key25.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %39 = call ptr @memcpy(ptr %key23.i, ptr %key25.i, i32 16)
  br label %if.end5

if.else.thread.i:                                 ; preds = %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %if.then.i.if.else.thread.i_crit_edge
  %retval.0.i.ph.ph.ph.i = phi i8 [ 1, %if.then.i.if.else.thread.i_crit_edge ], [ 2, %sw.bb1.i.i ], [ 6, %sw.bb5.i.i ], [ 7, %sw.bb6.i.i ], [ 8, %sw.bb7.i.i ], [ 9, %sw.bb8.i.i ]
  %key10131142.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5
  %cipher_len132143.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 1
  %40 = ptrtoint ptr %cipher_len132143.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 36, ptr %cipher_len132143.i, align 1
  %41 = ptrtoint ptr %key10131142.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %retval.0.i.ph.ph.ph.i, ptr %key10131142.i, align 1
  %keyidx28144.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %42 = ptrtoint ptr %keyidx28144.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %keyidx28144.i, align 1
  %key_id29145.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 2
  %44 = ptrtoint ptr %key_id29145.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %key_id29145.i, align 1
  %keylen146.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %45 = ptrtoint ptr %keylen146.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %keylen146.i, align 2
  %key_len30147.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 3
  %47 = ptrtoint ptr %key_len30147.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %key_len30147.i, align 1
  %key31148.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 4
  %key33149.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %48 = load i8, ptr %keylen146.i, align 2
  %conv36150.i = zext i8 %48 to i32
  %49 = call ptr @memcpy(ptr %key31148.i, ptr %key33149.i, i32 %conv36150.i)
  br label %if.end5

if.then40.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %key10131154.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5
  %cipher_len132155.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %cipher_len132155.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 36, ptr %cipher_len132155.i, align 1
  %51 = ptrtoint ptr %key10131154.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 4, ptr %key10131154.i, align 1
  %keyidx28156.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %52 = ptrtoint ptr %keyidx28156.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %keyidx28156.i, align 1
  %key_id29157.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 2
  %54 = ptrtoint ptr %key_id29157.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %key_id29157.i, align 1
  %keylen158.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %55 = ptrtoint ptr %keylen158.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %keylen158.i, align 2
  %key_len30159.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 3
  %57 = ptrtoint ptr %key_len30159.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %key_len30159.i, align 1
  %key31160.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 4
  %key33161.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %58 = load i8, ptr %keylen158.i, align 2
  %conv36162.i = zext i8 %58 to i32
  %59 = call ptr @memcpy(ptr %key31160.i, ptr %key33161.i, i32 %conv36162.i)
  %add.ptr.i = getelementptr %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 4, i32 16
  %add.ptr45.i = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %60 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %add.ptr45.i, align 1
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %add.ptr.i, align 1
  %add.ptr48.i = getelementptr %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 4, i32 24
  %add.ptr51.i = getelementptr i8, ptr %key33161.i, i32 16
  %63 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %add.ptr51.i, align 1
  %65 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %add.ptr48.i, align 1
  br label %if.end5

if.then56.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %key10131.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5
  %cipher_len132.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 1
  %66 = ptrtoint ptr %cipher_len132.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 36, ptr %cipher_len132.i, align 1
  %67 = ptrtoint ptr %key10131.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 5, ptr %key10131.i, align 1
  %keyidx28.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %68 = ptrtoint ptr %keyidx28.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %keyidx28.i, align 1
  %key_id29.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 2
  %70 = ptrtoint ptr %key_id29.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %key_id29.i, align 1
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %71 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %keylen.i, align 2
  %key_len30.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 3
  %73 = ptrtoint ptr %key_len30.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %key_len30.i, align 1
  %key31.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 4
  %key33.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %74 = load i8, ptr %keylen.i, align 2
  %conv36.i = zext i8 %74 to i32
  %75 = call ptr @memcpy(ptr %key31.i, ptr %key33.i, i32 %conv36.i)
  %key57.i = getelementptr inbounds %struct.mt7915_sta, ptr %msta, i32 0, i32 9, i32 1
  %76 = load i8, ptr %keylen.i, align 2
  %conv62.i = zext i8 %76 to i32
  %77 = call ptr @memcpy(ptr %key57.i, ptr %key33.i, i32 %conv62.i)
  %78 = load i8, ptr %keyidx28.i, align 1
  %79 = ptrtoint ptr %bip1.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %bip1.i, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then56.i, %if.then40.i, %if.else.thread.i, %if.then14.i, %if.end.if.end5_crit_edge
  %.sink.i = phi i8 [ 2, %if.then14.i ], [ 1, %if.else.thread.i ], [ 1, %if.then56.i ], [ 1, %if.then40.i ], [ 0, %if.end.if.end5_crit_edge ]
  %len.2.i = phi i16 [ 20480, %if.then14.i ], [ 11264, %if.else.thread.i ], [ 11264, %if.then56.i ], [ 11264, %if.then40.i ], [ 2048, %if.end.if.end5_crit_edge ]
  %n_cipher66.i = getelementptr inbounds %struct.sta_rec_sec, ptr %call.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %n_cipher66.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %.sink.i, ptr %n_cipher66.i, align 1
  %81 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %len.2.i, ptr %tlv.sroa.5.0..sroa_idx.i.i.i, align 1
  %call.i46 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call.i46, %if.end5 ], [ -95, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_tx_ba(ptr noundef %dev, ptr nocapture noundef readonly %params, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt7915_mcu_sta_ba(ptr noundef %dev, ptr noundef %params, i1 noundef zeroext %enable, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_mcu_sta_ba(ptr noundef %dev, ptr nocapture noundef readonly %params, i1 noundef zeroext %enable, i1 noundef zeroext %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sta = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 4
  %brmerge.demorgan = and i1 %enable, %tx
  br i1 %brmerge.demorgan, label %land.lhs.true3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %amsdu = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 5
  %4 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %amsdu, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %amsdu5 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 6, i32 2, i32 2
  %6 = ptrtoint ptr %amsdu5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %amsdu5, align 2
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %amsdu5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %drv_priv, null
  br i1 %tobool.not.i, label %if.end.cond.end50.i_crit_edge, label %do.end12.i

if.end.cond.end50.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i

do.end12.i:                                       ; preds = %if.end
  %idx13.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 6, i32 2
  %9 = ptrtoint ptr %idx13.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idx13.i, align 2
  %conv.i = trunc i16 %10 to i8
  %sta.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 6, i32 2, i32 2
  %11 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool18.not.i, label %do.end12.i.do.end42.i_crit_edge, label %cond.true19.i

do.end12.i.do.end42.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i

cond.true19.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %omac_idx.i, align 1
  br label %do.end42.i

do.end42.i:                                       ; preds = %cond.true19.i, %do.end12.i.do.end42.i_crit_edge
  %hdr.sroa.14.0.i = phi i8 [ %13, %cond.true19.i ], [ 14, %do.end12.i.do.end42.i_crit_edge ]
  %and47.i = lshr i16 %10, 8
  %14 = trunc i16 %and47.i to i8
  %phi.cast.i = and i8 %14, 3
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %do.end42.i, %if.end.cond.end50.i_crit_edge
  %hdr.sroa.14.1.i = phi i8 [ %hdr.sroa.14.0.i, %do.end42.i ], [ 14, %if.end.cond.end50.i_crit_edge ]
  %hdr.sroa.5.0.i = phi i8 [ %conv.i, %do.end42.i ], [ 0, %if.end.cond.end50.i_crit_edge ]
  %cond51.i = phi i8 [ %phi.cast.i, %do.end42.i ], [ 0, %if.end.cond.end50.i_crit_edge ]
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 442) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %cond.end50.i.if.then7_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

cond.end50.i.if.then7_crit_edge:                  ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %cond.end50.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %8, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %16 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %hdr.sroa.5.0.i, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %17 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %18 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %19 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %hdr.sroa.14.1.i, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %20 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond51.i, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %21 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then7_crit_edge, label %if.end40.i

mt7915_mcu_alloc_sta_req.exit.if.then7_crit_edge: ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then7_crit_edge, %cond.end50.i.if.then7_crit_edge
  %retval.0.i182 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then7_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i.if.then7_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i182 to i32
  br label %cleanup

if.end40.i:                                       ; preds = %mt7915_mcu_alloc_sta_req.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %call.i.i116 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %call.i.i116 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 3328, ptr %call.i.i116, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i116, i32 2
  %26 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 1024, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %tlv_num.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %tlv_num.i.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %add.i.i = add i16 %29, 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %31 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %tlv_num.i.i, align 1
  %idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 6, i32 2
  %32 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idx.i, align 2
  %conv13.i = trunc i16 %33 to i8
  %34 = lshr i16 %33, 8
  %35 = trunc i16 %34 to i8
  %conv36.i = and i8 %35, 3
  %tobool41.not.i = icmp eq ptr %call.i.i116, null
  br i1 %tobool41.not.i, label %if.end40.i.mt7915_mcu_alloc_wtbl_req.exit_crit_edge, label %if.then42.i

if.end40.i.mt7915_mcu_alloc_wtbl_req.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_alloc_wtbl_req.exit

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #10
  %add.i.i120 = add i16 %38, 8
  %39 = tail call i16 @llvm.bswap.i16(i16 %add.i.i120) #10
  %40 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  br label %mt7915_mcu_alloc_wtbl_req.exit

mt7915_mcu_alloc_wtbl_req.exit:                   ; preds = %if.then42.i, %if.end40.i.mt7915_mcu_alloc_wtbl_req.exit_crit_edge
  %call.i.i121 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %41 = ptrtoint ptr %call.i.i121 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv13.i, ptr %call.i.i121, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i122 = getelementptr inbounds i8, ptr %call.i.i121, i32 1
  %42 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i122 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %hdr.sroa.5.0.call.i.sroa_idx.i122, align 1
  %hdr.sroa.7.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i121, i32 2
  %43 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 0, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.9.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i121, i32 4
  %44 = ptrtoint ptr %hdr.sroa.9.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv36.i, ptr %hdr.sroa.9.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i123 = getelementptr inbounds i8, ptr %call.i.i121, i32 5
  %45 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i123 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %hdr.sroa.11.0.call.i.sroa_idx.i123, align 1
  %hdr.sroa.13.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i121, i32 6
  %46 = ptrtoint ptr %hdr.sroa.13.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %hdr.sroa.13.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i124 = getelementptr inbounds i8, ptr %call.i.i121, i32 7
  %47 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i124 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %hdr.sroa.14.0.call.i.sroa_idx.i124, align 1
  %cmp.i126 = icmp ugt ptr %call.i.i121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then13, label %if.end15

if.then13:                                        ; preds = %mt7915_mcu_alloc_wtbl_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %call.i.i121 to i32
  br label %cleanup

if.end15:                                         ; preds = %mt7915_mcu_alloc_wtbl_req.exit
  %frombool.i = zext i1 %enable to i8
  %call.i.i127 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #10
  %49 = ptrtoint ptr %call.i.i127 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 2048, ptr %call.i.i127, align 1
  %tlv.sroa.5.0..sroa_idx.i.i128 = getelementptr inbounds i8, ptr %call.i.i127, i32 2
  %50 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i128 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 7168, ptr %tlv.sroa.5.0..sroa_idx.i.i128, align 1
  %51 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #10
  %add.i.i130 = add i16 %53, 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %add.i.i130) #10
  %55 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  br i1 %tobool41.not.i, label %if.end15.mt7915_mcu_add_nested_tlv.exit.i_crit_edge, label %if.then.i.i

if.end15.mt7915_mcu_add_nested_tlv.exit.i_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_nested_tlv.exit.i

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  %conv10.i.i = add i16 %58, 28
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i) #10
  %60 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  br label %mt7915_mcu_add_nested_tlv.exit.i

mt7915_mcu_add_nested_tlv.exit.i:                 ; preds = %if.then.i.i, %if.end15.mt7915_mcu_add_nested_tlv.exit.i_crit_edge
  %tid.i = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %61 = ptrtoint ptr %tid.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tid.i, align 4
  %conv.i131 = trunc i16 %62 to i8
  %tid2.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 2
  %63 = ptrtoint ptr %tid2.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i131, ptr %tid2.i, align 1
  br i1 %tx, label %if.then.i132, label %if.else.i

if.then.i132:                                     ; preds = %mt7915_mcu_add_nested_tlv.exit.i
  %ba_type.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 3
  %64 = ptrtoint ptr %ba_type.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %ba_type.i, align 1
  br i1 %enable, label %cond.true.i, label %if.then.i132.cond.end.i_crit_edge

if.then.i132.cond.end.i_crit_edge:                ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #12
  %ssn.i = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %65 = ptrtoint ptr %ssn.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ssn.i, align 2
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i132.cond.end.i_crit_edge
  %cond.i = phi i16 [ %67, %cond.true.i ], [ 0, %if.then.i132.cond.end.i_crit_edge ]
  %sn.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 5
  %68 = ptrtoint ptr %sn.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %cond.i, ptr %sn.i, align 1
  %ba_en.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 6
  %69 = ptrtoint ptr %ba_en.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool.i, ptr %ba_en.i, align 1
  br label %if.end.i134

if.else.i:                                        ; preds = %mt7915_mcu_add_nested_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %peer_addr.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 9
  %70 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sta, align 4
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %71, i32 0, i32 1
  %72 = call ptr @memcpy(ptr %peer_addr.i, ptr %addr.i, i32 6)
  %ba_type10.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 3
  %73 = ptrtoint ptr %ba_type10.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %ba_type10.i, align 1
  %74 = ptrtoint ptr %tid.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %tid.i, align 4
  %conv12.i = trunc i16 %75 to i8
  %rst_ba_tid.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 10
  %76 = ptrtoint ptr %rst_ba_tid.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv12.i, ptr %rst_ba_tid.i, align 1
  %rst_ba_sel.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 11
  %77 = ptrtoint ptr %rst_ba_sel.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %rst_ba_sel.i, align 1
  %rst_ba_sb.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 12
  %78 = ptrtoint ptr %rst_ba_sb.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %rst_ba_sb.i, align 1
  br label %if.end.i134

if.end.i134:                                      ; preds = %if.else.i, %cond.end.i
  br i1 %enable, label %if.then14.i, label %if.end.i134.mt7915_mcu_wtbl_ba_tlv.exit_crit_edge

if.end.i134.mt7915_mcu_wtbl_ba_tlv.exit_crit_edge: ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_wtbl_ba_tlv.exit

if.then14.i:                                      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  %buf_size.i = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %79 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %buf_size.i, align 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #10
  %ba_winsize.i = getelementptr inbounds %struct.wtbl_ba, ptr %call.i.i127, i32 0, i32 8
  %82 = ptrtoint ptr %ba_winsize.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %ba_winsize.i, align 1
  br label %mt7915_mcu_wtbl_ba_tlv.exit

mt7915_mcu_wtbl_ba_tlv.exit:                      ; preds = %if.then14.i, %if.end.i134.mt7915_mcu_wtbl_ba_tlv.exit_crit_edge
  %call.i135 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool47.not = icmp eq i32 %call.i135, 0
  br i1 %tobool47.not, label %if.end49, label %mt7915_mcu_wtbl_ba_tlv.exit.cleanup_crit_edge

mt7915_mcu_wtbl_ba_tlv.exit.cleanup_crit_edge:    ; preds = %mt7915_mcu_wtbl_ba_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %mt7915_mcu_wtbl_ba_tlv.exit
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %3, align 8
  br i1 %tobool.not.i, label %if.end49.cond.end50.i154_crit_edge, label %do.end12.i142

if.end49.cond.end50.i154_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i154

do.end12.i142:                                    ; preds = %if.end49
  %85 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %idx.i, align 2
  %conv.i138 = trunc i16 %86 to i8
  %sta.i139 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 6, i32 2, i32 2
  %87 = ptrtoint ptr %sta.i139 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i140 = load i8, ptr %sta.i139, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i140)
  %tobool18.not.i141 = icmp sgt i8 %bf.load.i140, -1
  br i1 %tobool18.not.i141, label %do.end12.i142.do.end42.i148_crit_edge, label %cond.true19.i144

do.end12.i142.do.end42.i148_crit_edge:            ; preds = %do.end12.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i148

cond.true19.i144:                                 ; preds = %do.end12.i142
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i143 = getelementptr inbounds %struct.mt76_vif, ptr %3, i32 0, i32 1
  %88 = ptrtoint ptr %omac_idx.i143 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %omac_idx.i143, align 1
  br label %do.end42.i148

do.end42.i148:                                    ; preds = %cond.true19.i144, %do.end12.i142.do.end42.i148_crit_edge
  %hdr.sroa.14.0.i145 = phi i8 [ %89, %cond.true19.i144 ], [ 14, %do.end12.i142.do.end42.i148_crit_edge ]
  %and47.i146 = lshr i16 %86, 8
  %90 = trunc i16 %and47.i146 to i8
  %phi.cast.i147 = and i8 %90, 3
  br label %cond.end50.i154

cond.end50.i154:                                  ; preds = %do.end42.i148, %if.end49.cond.end50.i154_crit_edge
  %hdr.sroa.14.1.i149 = phi i8 [ %hdr.sroa.14.0.i145, %do.end42.i148 ], [ 14, %if.end49.cond.end50.i154_crit_edge ]
  %hdr.sroa.5.0.i150 = phi i8 [ %conv.i138, %do.end42.i148 ], [ 0, %if.end49.cond.end50.i154_crit_edge ]
  %cond51.i151 = phi i8 [ %phi.cast.i147, %do.end42.i148 ], [ 0, %if.end49.cond.end50.i154_crit_edge ]
  %call.i152 = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 442) #10
  %tobool53.not.i153 = icmp eq ptr %call.i152, null
  br i1 %tobool53.not.i153, label %cond.end50.i154.if.then52_crit_edge, label %mt7915_mcu_alloc_sta_req.exit164

cond.end50.i154.if.then52_crit_edge:              ; preds = %cond.end50.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

mt7915_mcu_alloc_sta_req.exit164:                 ; preds = %cond.end50.i154
  %call.i.i155 = tail call ptr @skb_put(ptr noundef nonnull %call.i152, i32 noundef 8) #10
  %91 = ptrtoint ptr %call.i.i155 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %84, ptr %call.i.i155, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i156 = getelementptr inbounds i8, ptr %call.i.i155, i32 1
  %92 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i156 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %hdr.sroa.5.0.i150, ptr %hdr.sroa.5.0.call.i.sroa_idx.i156, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i157 = getelementptr inbounds i8, ptr %call.i.i155, i32 2
  %93 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i157 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i157, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i158 = getelementptr inbounds i8, ptr %call.i.i155, i32 4
  %94 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i158 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i158, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i159 = getelementptr inbounds i8, ptr %call.i.i155, i32 5
  %95 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i159 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %hdr.sroa.14.1.i149, ptr %hdr.sroa.14.0.call.i.sroa_idx.i159, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i160 = getelementptr inbounds i8, ptr %call.i.i155, i32 6
  %96 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i160 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %cond51.i151, ptr %hdr.sroa.18.0.call.i.sroa_idx.i160, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i161 = getelementptr inbounds i8, ptr %call.i.i155, i32 7
  %97 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i161 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i161, align 1
  %cmp.i165 = icmp ugt ptr %call.i152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %mt7915_mcu_alloc_sta_req.exit164.if.then52_crit_edge, label %if.end54

mt7915_mcu_alloc_sta_req.exit164.if.then52_crit_edge: ; preds = %mt7915_mcu_alloc_sta_req.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %mt7915_mcu_alloc_sta_req.exit164.if.then52_crit_edge, %cond.end50.i154.if.then52_crit_edge
  %retval.0.i163185 = phi ptr [ %call.i152, %mt7915_mcu_alloc_sta_req.exit164.if.then52_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i154.if.then52_crit_edge ]
  %98 = ptrtoint ptr %retval.0.i163185 to i32
  br label %cleanup

if.end54:                                         ; preds = %mt7915_mcu_alloc_sta_req.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i152, i32 0, i32 19
  %99 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i152, i32 noundef 12) #10
  %101 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 1536, ptr %call.i.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 2
  %102 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 3072, ptr %tlv.sroa.5.0..sroa_idx.i.i.i, align 1
  %tlv_num.i.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %tlv_num.i.i.i, align 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #10
  %add.i.i.i = add i16 %105, 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i) #10
  %107 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %106, ptr %tlv_num.i.i.i, align 1
  %conv.i166 = select i1 %tx, i8 1, i8 2
  %ba_type.i167 = getelementptr inbounds %struct.sta_rec_ba, ptr %call.i.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %ba_type.i167 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv.i166, ptr %ba_type.i167, align 1
  %buf_size.i168 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %109 = ptrtoint ptr %buf_size.i168 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %buf_size.i168, align 4
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #10
  %winsize.i = getelementptr inbounds %struct.sta_rec_ba, ptr %call.i.i.i, i32 0, i32 7
  %112 = ptrtoint ptr %winsize.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %winsize.i, align 1
  %ssn.i169 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %113 = ptrtoint ptr %ssn.i169 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ssn.i169, align 2
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #10
  %ssn2.i = getelementptr inbounds %struct.sta_rec_ba, ptr %call.i.i.i, i32 0, i32 6
  %116 = ptrtoint ptr %ssn2.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %115, ptr %ssn2.i, align 1
  %conv4.i = zext i1 %enable to i32
  %117 = ptrtoint ptr %tid.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %tid.i, align 4
  %conv5.i = zext i16 %118 to i32
  %shl.i = shl nuw i32 %conv4.i, %conv5.i
  %conv6.i = trunc i32 %shl.i to i8
  %ba_en.i171 = getelementptr inbounds %struct.sta_rec_ba, ptr %call.i.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %ba_en.i171 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv6.i, ptr %ba_en.i171, align 1
  %amsdu.i = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 5
  %120 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %amsdu.i, align 2, !range !145
  %amsdu9.i = getelementptr inbounds %struct.sta_rec_ba, ptr %call.i.i.i, i32 0, i32 4
  %122 = ptrtoint ptr %amsdu9.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %amsdu9.i, align 1
  %123 = load i16, ptr %tid.i, align 4
  %conv11.i = trunc i16 %123 to i8
  %tid12.i = getelementptr inbounds %struct.sta_rec_ba, ptr %call.i.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %tid12.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv11.i, ptr %tid12.i, align 1
  %call.i172 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i152, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then52, %mt7915_mcu_wtbl_ba_tlv.exit.cleanup_crit_edge, %if.then13, %if.then7
  %retval.0 = phi i32 [ %22, %if.then7 ], [ %48, %if.then13 ], [ %98, %if.then52 ], [ %call.i172, %if.end54 ], [ %call.i135, %mt7915_mcu_wtbl_ba_tlv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_rx_ba(ptr noundef %dev, ptr nocapture noundef readonly %params, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt7915_mcu_sta_ba(ptr noundef %dev, ptr noundef %params, i1 noundef zeroext %enable, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_sta_update_hdr_trans(ptr noundef %dev, ptr nocapture noundef readonly %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 148) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %mt7915_mcu_alloc_wtbl_req.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt7915_mcu_alloc_wtbl_req.exit:                   ; preds = %entry
  %idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %0 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx.i, align 2
  %conv13.i = trunc i16 %1 to i8
  %2 = lshr i16 %1, 8
  %3 = trunc i16 %2 to i8
  %conv36.i = and i8 %3, 3
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 8) #10
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13.i, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %5 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.7.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %6 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 0, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.9.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %7 = ptrtoint ptr %hdr.sroa.9.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv36.i, ptr %hdr.sroa.9.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %8 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.13.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %9 = ptrtoint ptr %hdr.sroa.13.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %hdr.sroa.13.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %10 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %mt7915_mcu_alloc_wtbl_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end5:                                          ; preds = %mt7915_mcu_alloc_wtbl_req.exit
  %call.i.i42 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 8) #10
  %12 = ptrtoint ptr %call.i.i42 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 1536, ptr %call.i.i42, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i42, i32 2
  %13 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %14 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %add.i.i = add i16 %16, 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %18 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %no_rx_trans.i = getelementptr inbounds %struct.wtbl_hdr_trans, ptr %call.i.i42, i32 0, i32 4
  %19 = ptrtoint ptr %no_rx_trans.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %no_rx_trans.i, align 1
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i43 = icmp eq i32 %21, 2
  %from_ds.i = getelementptr inbounds %struct.wtbl_hdr_trans, ptr %call.i.i42, i32 0, i32 3
  %to_ds.i = getelementptr inbounds %struct.wtbl_hdr_trans, ptr %call.i.i42, i32 0, i32 2
  %from_ds.sink.i = select i1 %cmp.i43, ptr %to_ds.i, ptr %from_ds.i
  %22 = ptrtoint ptr %from_ds.sink.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %from_ds.sink.i, align 1
  %tobool.not.i44 = icmp eq ptr %sta, null
  br i1 %tobool.not.i44, label %if.end5.mt7915_mcu_wtbl_hdr_trans_tlv.exit_crit_edge, label %if.end2.i

if.end5.mt7915_mcu_wtbl_hdr_trans_tlv.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_wtbl_hdr_trans_tlv.exit

if.end2.i:                                        ; preds = %if.end5
  %flags.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 3
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = ptrtoint ptr %no_rx_trans.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %no_rx_trans.i, align 1
  %30 = load volatile i32, ptr %flags.i, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool9.not.i = icmp eq i32 %31, 0
  br i1 %tobool9.not.i, label %if.end2.i.mt7915_mcu_wtbl_hdr_trans_tlv.exit_crit_edge, label %if.then10.i

if.end2.i.mt7915_mcu_wtbl_hdr_trans_tlv.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_wtbl_hdr_trans_tlv.exit

if.then10.i:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %to_ds.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %to_ds.i, align 1
  %33 = ptrtoint ptr %from_ds.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %from_ds.i, align 1
  br label %mt7915_mcu_wtbl_hdr_trans_tlv.exit

mt7915_mcu_wtbl_hdr_trans_tlv.exit:               ; preds = %if.then10.i, %if.end2.i.mt7915_mcu_wtbl_hdr_trans_tlv.exit_crit_edge, %if.end5.mt7915_mcu_wtbl_hdr_trans_tlv.exit_crit_edge
  %call.i45 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 13037, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %mt7915_mcu_wtbl_hdr_trans_tlv.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then3 ], [ %call.i45, %mt7915_mcu_wtbl_hdr_trans_tlv.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_mcu_msg_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef %dev, ptr nocapture noundef readonly %vif, ptr noundef readonly %sta, ptr noundef readonly %data, i32 noundef %field) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %tobool.not.i = icmp eq ptr %drv_priv1, null
  br i1 %tobool.not.i, label %entry.cond.end50.i_crit_edge, label %do.end12.i

entry.cond.end50.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i

do.end12.i:                                       ; preds = %entry
  %idx13.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %2 = ptrtoint ptr %idx13.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx13.i, align 2
  %conv.i = trunc i16 %3 to i8
  %sta.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %4 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool18.not.i, label %do.end12.i.do.end42.i_crit_edge, label %cond.true19.i

do.end12.i.do.end42.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i

cond.true19.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %5 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %omac_idx.i, align 1
  br label %do.end42.i

do.end42.i:                                       ; preds = %cond.true19.i, %do.end12.i.do.end42.i_crit_edge
  %hdr.sroa.14.0.i = phi i8 [ %6, %cond.true19.i ], [ 14, %do.end12.i.do.end42.i_crit_edge ]
  %and47.i = lshr i16 %3, 8
  %7 = trunc i16 %and47.i to i8
  %phi.cast.i = and i8 %7, 3
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %do.end42.i, %entry.cond.end50.i_crit_edge
  %hdr.sroa.14.1.i = phi i8 [ %hdr.sroa.14.0.i, %do.end42.i ], [ 14, %entry.cond.end50.i_crit_edge ]
  %hdr.sroa.5.0.i = phi i8 [ %conv.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %cond51.i = phi i8 [ %phi.cast.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 33) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %cond.end50.i.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

cond.end50.i.if.then_crit_edge:                   ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %cond.end50.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %9 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %hdr.sroa.5.0.i, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %10 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %11 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %12 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %hdr.sroa.14.1.i, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %13 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond51.i, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %14 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %cond.end50.i.if.then_crit_edge
  %retval.0.i60 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i60 to i32
  br label %cleanup

if.end:                                           ; preds = %mt7915_mcu_alloc_sta_req.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %call.i.i56 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 25) #10
  %18 = ptrtoint ptr %call.i.i56 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 768, ptr %call.i.i56, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i56, i32 2
  %19 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 6400, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %tlv_num.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %tlv_num.i.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %add.i.i = add i16 %22, 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %24 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %tlv_num.i.i, align 1
  %25 = zext i32 %field to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %field, label %if.end.sw.epilog_crit_edge [
    i32 5, label %sw.bb9
    i32 3, label %if.end.sw.bb_crit_edge
    i32 8, label %if.end.sw.bb_crit_edge61
    i32 11, label %if.end.sw.bb_crit_edge62
    i32 7, label %if.end.sw.bb_crit_edge63
  ]

if.end.sw.bb_crit_edge63:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge62:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge61:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge61, %if.end.sw.bb_crit_edge62, %if.end.sw.bb_crit_edge63
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then6

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %phy7 = getelementptr inbounds %struct.sta_rec_ra_fixed, ptr %call.i.i56, i32 0, i32 7
  %26 = call ptr @memcpy(ptr %phy7, ptr %data, i32 9)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %27 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch.selectcmp.i = icmp eq i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %switch.selectcmp3.i = icmp eq i32 %28, 3
  %29 = select i1 %switch.selectcmp.i, i8 0, i8 3
  %conv = select i1 %switch.selectcmp3.i, i8 1, i8 %29
  %mmps_mode = getelementptr inbounds %struct.sta_rec_ra_fixed, ptr %call.i.i56, i32 0, i32 11
  %30 = ptrtoint ptr %mmps_mode to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %mmps_mode, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.then6, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %31 = tail call i32 @llvm.bswap.i32(i32 %field)
  %field11 = getelementptr inbounds %struct.sta_rec_ra_fixed, ptr %call.i.i56, i32 0, i32 2
  %32 = ptrtoint ptr %field11 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %field11, align 1
  %call.i57 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call.i57, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_smps(ptr noundef %dev, ptr nocapture noundef readonly %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %tobool.not.i = icmp eq ptr %drv_priv1, null
  br i1 %tobool.not.i, label %entry.cond.end50.i_crit_edge, label %do.end12.i

entry.cond.end50.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i

do.end12.i:                                       ; preds = %entry
  %idx13.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %2 = ptrtoint ptr %idx13.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx13.i, align 2
  %conv.i = trunc i16 %3 to i8
  %sta.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %4 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool18.not.i, label %do.end12.i.do.end42.i_crit_edge, label %cond.true19.i

do.end12.i.do.end42.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i

cond.true19.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %5 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %omac_idx.i, align 1
  br label %do.end42.i

do.end42.i:                                       ; preds = %cond.true19.i, %do.end12.i.do.end42.i_crit_edge
  %hdr.sroa.14.0.i = phi i8 [ %6, %cond.true19.i ], [ 14, %do.end12.i.do.end42.i_crit_edge ]
  %and47.i = lshr i16 %3, 8
  %7 = trunc i16 %and47.i to i8
  %phi.cast.i = and i8 %7, 3
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %do.end42.i, %entry.cond.end50.i_crit_edge
  %hdr.sroa.14.1.i = phi i8 [ %hdr.sroa.14.0.i, %do.end42.i ], [ 14, %entry.cond.end50.i_crit_edge ]
  %hdr.sroa.5.0.i = phi i8 [ %conv.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %cond51.i = phi i8 [ %phi.cast.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 442) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %cond.end50.i.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

cond.end50.i.if.then_crit_edge:                   ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %cond.end50.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %9 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %hdr.sroa.5.0.i, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %10 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %11 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %12 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %hdr.sroa.14.1.i, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %13 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond51.i, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %14 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end40.i

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %cond.end50.i.if.then_crit_edge
  %retval.0.i82 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i82 to i32
  br label %cleanup

if.end40.i:                                       ; preds = %mt7915_mcu_alloc_sta_req.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %call.i.i59 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %call.i.i59 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 3328, ptr %call.i.i59, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i59, i32 2
  %19 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1024, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %tlv_num.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %tlv_num.i.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %add.i.i = add i16 %22, 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %24 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %tlv_num.i.i, align 1
  %idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %25 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idx.i, align 2
  %conv13.i = trunc i16 %26 to i8
  %27 = lshr i16 %26, 8
  %28 = trunc i16 %27 to i8
  %conv36.i = and i8 %28, 3
  %tobool41.not.i = icmp eq ptr %call.i.i59, null
  br i1 %tobool41.not.i, label %if.end40.i.mt7915_mcu_alloc_wtbl_req.exit_crit_edge, label %if.then42.i

if.end40.i.mt7915_mcu_alloc_wtbl_req.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_alloc_wtbl_req.exit

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #10
  %add.i.i63 = add i16 %31, 8
  %32 = tail call i16 @llvm.bswap.i16(i16 %add.i.i63) #10
  %33 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  br label %mt7915_mcu_alloc_wtbl_req.exit

mt7915_mcu_alloc_wtbl_req.exit:                   ; preds = %if.then42.i, %if.end40.i.mt7915_mcu_alloc_wtbl_req.exit_crit_edge
  %call.i.i64 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %34 = ptrtoint ptr %call.i.i64 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv13.i, ptr %call.i.i64, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i65 = getelementptr inbounds i8, ptr %call.i.i64, i32 1
  %35 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i65 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %hdr.sroa.5.0.call.i.sroa_idx.i65, align 1
  %hdr.sroa.7.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i64, i32 2
  %36 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 0, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.9.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i64, i32 4
  %37 = ptrtoint ptr %hdr.sroa.9.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv36.i, ptr %hdr.sroa.9.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i66 = getelementptr inbounds i8, ptr %call.i.i64, i32 5
  %38 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i66 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %hdr.sroa.11.0.call.i.sroa_idx.i66, align 1
  %hdr.sroa.13.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i64, i32 6
  %39 = ptrtoint ptr %hdr.sroa.13.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %hdr.sroa.13.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i67 = getelementptr inbounds i8, ptr %call.i.i64, i32 7
  %40 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i67 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %hdr.sroa.14.0.call.i.sroa_idx.i67, align 1
  %cmp.i69 = icmp ugt ptr %call.i.i64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then8, label %if.end10

if.then8:                                         ; preds = %mt7915_mcu_alloc_wtbl_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %call.i.i64 to i32
  br label %cleanup

if.end10:                                         ; preds = %mt7915_mcu_alloc_wtbl_req.exit
  %call.i.i70 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %42 = ptrtoint ptr %call.i.i70 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 3328, ptr %call.i.i70, align 1
  %tlv.sroa.5.0..sroa_idx.i.i71 = getelementptr inbounds i8, ptr %call.i.i70, i32 2
  %43 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i71 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i71, align 1
  %44 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #10
  %add.i.i73 = add i16 %46, 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %add.i.i73) #10
  %48 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %hdr.sroa.7.0.call.i.sroa_idx.i, align 1
  br i1 %tobool41.not.i, label %if.end10.mt7915_mcu_wtbl_smps_tlv.exit_crit_edge, label %if.then.i.i

if.end10.mt7915_mcu_wtbl_smps_tlv.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_wtbl_smps_tlv.exit

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  %conv10.i.i = add i16 %51, 8
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i) #10
  %53 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  br label %mt7915_mcu_wtbl_smps_tlv.exit

mt7915_mcu_wtbl_smps_tlv.exit:                    ; preds = %if.then.i.i, %if.end10.mt7915_mcu_wtbl_smps_tlv.exit_crit_edge
  %smps_mode.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %54 = ptrtoint ptr %smps_mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %smps_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp.i74 = icmp eq i32 %55, 3
  %conv1.i = zext i1 %cmp.i74 to i8
  %smps2.i = getelementptr inbounds %struct.wtbl_smps, ptr %call.i.i70, i32 0, i32 2
  %56 = ptrtoint ptr %smps2.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv1.i, ptr %smps2.i, align 1
  %call.i75 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not = icmp eq i32 %call.i75, 0
  br i1 %tobool.not, label %if.end41, label %mt7915_mcu_wtbl_smps_tlv.exit.cleanup_crit_edge

mt7915_mcu_wtbl_smps_tlv.exit.cleanup_crit_edge:  ; preds = %mt7915_mcu_wtbl_smps_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %mt7915_mcu_wtbl_smps_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef %dev, ptr noundef %vif, ptr noundef %sta, ptr noundef null, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %mt7915_mcu_wtbl_smps_tlv.exit.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %41, %if.then8 ], [ %call42, %if.end41 ], [ %call.i75, %mt7915_mcu_wtbl_smps_tlv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_rate_ctrl(ptr noundef %dev, ptr nocapture noundef readonly %vif, ptr noundef %sta, i1 noundef zeroext %changed) local_unnamed_addr #0 align 64 {
entry:
  %phy3.i = alloca %struct.sta_phy, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %tobool.not.i = icmp eq ptr %drv_priv1, null
  br i1 %tobool.not.i, label %entry.cond.end50.i_crit_edge, label %do.end12.i

entry.cond.end50.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i

do.end12.i:                                       ; preds = %entry
  %idx13.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %2 = ptrtoint ptr %idx13.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx13.i, align 2
  %conv.i = trunc i16 %3 to i8
  %sta.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %4 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool18.not.i, label %do.end12.i.do.end42.i_crit_edge, label %cond.true19.i

do.end12.i.do.end42.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i

cond.true19.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %5 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %omac_idx.i, align 1
  br label %do.end42.i

do.end42.i:                                       ; preds = %cond.true19.i, %do.end12.i.do.end42.i_crit_edge
  %hdr.sroa.14.0.i = phi i8 [ %6, %cond.true19.i ], [ 14, %do.end12.i.do.end42.i_crit_edge ]
  %and47.i = lshr i16 %3, 8
  %7 = trunc i16 %and47.i to i8
  %phi.cast.i = and i8 %7, 3
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %do.end42.i, %entry.cond.end50.i_crit_edge
  %hdr.sroa.14.1.i = phi i8 [ %hdr.sroa.14.0.i, %do.end42.i ], [ 14, %entry.cond.end50.i_crit_edge ]
  %hdr.sroa.5.0.i = phi i8 [ %conv.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %cond51.i = phi i8 [ %phi.cast.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 442) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %cond.end50.i.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

cond.end50.i.if.then_crit_edge:                   ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %cond.end50.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %9 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %hdr.sroa.5.0.i, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %10 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %11 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %12 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %hdr.sroa.14.1.i, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %13 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond51.i, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %14 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %cond.end50.i.if.then_crit_edge
  %retval.0.i80 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i80 to i32
  br label %cleanup

if.end:                                           ; preds = %mt7915_mcu_alloc_sta_req.exit
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %16 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %he_cap, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp ne i8 %17, 0
  %18 = and i1 %tobool.not, %changed
  br i1 %18, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mt7915_mcu_sta_he_tlv(ptr noundef nonnull %call.i, ptr noundef %sta, ptr noundef %vif)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %phy.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1
  %19 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %chandef1.i = getelementptr inbounds %struct.mt76_phy, ptr %22, i32 0, i32 5
  %bitrate_mask.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 21
  %23 = ptrtoint ptr %chandef1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chandef1.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %wme.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %29 = ptrtoint ptr %wme.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wme.i, align 4, !range !145
  %31 = zext i8 %30 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 53) #10
  %34 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 256, ptr %call.i.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 2
  %35 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 13568, ptr %tlv.sroa.5.0..sroa_idx.i.i.i, align 1
  %tlv_num.i.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %tlv_num.i.i.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #10
  %add.i.i.i = add i16 %38, 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i) #10
  %40 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %tlv_num.i.i.i, align 1
  %valid.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %valid.i, align 1
  %auto_rate.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %auto_rate.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %auto_rate.i, align 1
  %call3.i = tail call fastcc zeroext i8 @mt7915_get_phy_mode(ptr noundef %vif, ptr noundef %sta) #10
  %phy_mode.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %call3.i, ptr %phy_mode.i, align 1
  %44 = ptrtoint ptr %chandef1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chandef1.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hw_value.i, align 2
  %conv.i59 = trunc i16 %47 to i8
  %channel.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i59, ptr %channel.i, align 1
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %49 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bandwidth.i, align 4
  %conv5.i = trunc i32 %50 to i8
  %bw.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %bw.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv5.i, ptr %bw.i, align 1
  %52 = load i32, ptr %bandwidth.i, align 4
  %conv7.i = trunc i32 %52 to i8
  %bw9.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 26, i32 4
  %53 = ptrtoint ptr %bw9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv7.i, ptr %bw9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i = icmp eq i32 %28, 0
  br i1 %tobool10.not.i, label %if.end7.if.end315.i_crit_edge, label %if.then.i

if.end7.if.end315.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end315.i

if.then.i:                                        ; preds = %if.end7
  %arrayidx11.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %26
  %54 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx11.i, align 4
  %and.i = and i32 %55, %28
  %call.i.i60 = tail call i32 @__sw_hweight32(i32 noundef %and.i) #10
  %conv296.i = trunc i32 %call.i.i60 to i8
  %rate_len.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 15
  %56 = ptrtoint ptr %rate_len.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv296.i, ptr %rate_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i61 = icmp eq i32 %26, 0
  %supp_mode.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 16
  br i1 %cmp.i61, label %if.then298.i, label %if.else.i

if.then298.i:                                     ; preds = %if.then.i
  %57 = ptrtoint ptr %supp_mode.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %supp_mode.i, align 1
  %58 = trunc i32 %and.i to i8
  %conv300.i = and i8 %58, 15
  %supp_cck_rate.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 17
  %59 = ptrtoint ptr %supp_cck_rate.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv300.i, ptr %supp_cck_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv296.i)
  %cmp303.i = icmp ugt i8 %conv296.i, 4
  br i1 %cmp303.i, label %if.then305.i, label %if.then298.i.if.end315.i_crit_edge

if.then298.i.if.end315.i_crit_edge:               ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end315.i

if.then305.i:                                     ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %supp_mode.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %supp_mode.i, align 1
  %shr309.i = lshr i32 %and.i, 4
  br label %if.end315.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %supp_mode.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %supp_mode.i, align 1
  br label %if.end315.sink.split.i

if.end315.sink.split.i:                           ; preds = %if.else.i, %if.then305.i
  %and.sink.i = phi i32 [ %and.i, %if.else.i ], [ %shr309.i, %if.then305.i ]
  %conv312.i = trunc i32 %and.sink.i to i8
  %supp_ofdm_rate313.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 18
  %62 = ptrtoint ptr %supp_ofdm_rate313.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv312.i, ptr %supp_ofdm_rate313.i, align 1
  br label %if.end315.i

if.end315.i:                                      ; preds = %if.end315.sink.split.i, %if.then298.i.if.end315.i_crit_edge, %if.end7.if.end315.i_crit_edge
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ht_supported.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool316.not.i = icmp eq i8 %64, 0
  br i1 %tobool316.not.i, label %if.end315.i.if.end383.i_crit_edge, label %if.then317.i

if.end315.i.if.end383.i_crit_edge:                ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end383.i

if.then317.i:                                     ; preds = %if.end315.i
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %supp_mode318.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 16
  %65 = ptrtoint ptr %supp_mode318.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %supp_mode318.i, align 1
  %67 = or i8 %66, 4
  store i8 %67, ptr %supp_mode318.i, align 1
  %ampdu_factor.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %68 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ampdu_factor.i, align 1
  %af.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 13
  %70 = ptrtoint ptr %af.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %af.i, align 1
  %71 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ht_cap.i, align 4
  %73 = trunc i16 %72 to i8
  %74 = lshr i8 %73, 4
  %75 = and i8 %74, 1
  %ht_gf.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %ht_gf.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %ht_gf.i, align 1
  %77 = load i16, ptr %ht_cap.i, align 4
  %78 = and i16 %77, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool338.not.i = icmp eq i16 %78, 0
  %spec.select.v.i = select i1 %tobool338.not.i, i32 67108864, i32 67108880
  %spec.select.i = or i32 %spec.select.v.i, %31
  %79 = lshr i16 %77, 1
  %80 = and i16 %79, 32
  %81 = zext i16 %80 to i32
  %82 = or i32 %spec.select.i, %81
  %83 = and i16 %79, 64
  %84 = zext i16 %83 to i32
  %85 = or i32 %82, %84
  %86 = and i16 %77, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool362.not.i = icmp eq i16 %86, 0
  %or364.i = or i32 %85, 128
  %cap.3.i = select i1 %tobool362.not.i, i32 %85, i32 %or364.i
  %cap366.i = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %87 = ptrtoint ptr %cap366.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i62 = load i8, ptr %cap366.i, align 1
  %88 = and i16 %77, 1
  %89 = zext i16 %88 to i32
  %90 = shl nuw nsw i32 %89, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i62)
  %bf.cast.not10.i = icmp slt i8 %bf.load.i62, 0
  %91 = select i1 %bf.cast.not10.i, i32 %90, i32 0
  %cap.4.i = or i32 %cap.3.i, %91
  %ht_mcs.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 10
  %ht_mcs379.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %26, i32 1
  %rx_nss.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %92 = ptrtoint ptr %rx_nss.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %rx_nss.i.i, align 1
  %94 = tail call i8 @llvm.umin.i8(i8 %93, i8 4) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp418.not.i.i = icmp eq i8 %94, 0
  br i1 %cmp418.not.i.i, label %if.then317.i.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, label %for.body.i.i

if.then317.i.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge: ; preds = %if.then317.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_set_sta_ht_mcs.exit.i

for.body.i.i:                                     ; preds = %if.then317.i
  %mcs.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %95 = ptrtoint ptr %mcs.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mcs.i.i, align 1
  %97 = ptrtoint ptr %ht_mcs379.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ht_mcs379.i, align 1
  %and17.i.i = and i8 %98, %96
  %99 = ptrtoint ptr %ht_mcs.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %and17.i.i, ptr %ht_mcs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %exitcond.not.i.i = icmp eq i8 %94, 1
  br i1 %exitcond.not.i.i, label %for.body.i.i.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, label %for.body.i.i.1

for.body.i.i.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_set_sta_ht_mcs.exit.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i.1, align 1
  %arrayidx7.i.i.1 = getelementptr i8, ptr %ht_mcs379.i, i32 1
  %102 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx7.i.i.1, align 1
  %and17.i.i.1 = and i8 %103, %101
  %arrayidx10.i.i.1 = getelementptr %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 10, i32 1
  %104 = ptrtoint ptr %arrayidx10.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %and17.i.i.1, ptr %arrayidx10.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %exitcond.not.i.i.1 = icmp eq i8 %94, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_set_sta_ht_mcs.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 2
  %105 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i.2, align 1
  %arrayidx7.i.i.2 = getelementptr i8, ptr %ht_mcs379.i, i32 2
  %107 = ptrtoint ptr %arrayidx7.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx7.i.i.2, align 1
  %and17.i.i.2 = and i8 %108, %106
  %arrayidx10.i.i.2 = getelementptr %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 10, i32 2
  %109 = ptrtoint ptr %arrayidx10.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %and17.i.i.2, ptr %arrayidx10.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %exitcond.not.i.i.2 = icmp eq i8 %94, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_set_sta_ht_mcs.exit.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 3
  %110 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i.i.3, align 1
  %arrayidx7.i.i.3 = getelementptr i8, ptr %ht_mcs379.i, i32 3
  %112 = ptrtoint ptr %arrayidx7.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx7.i.i.3, align 1
  %and17.i.i.3 = and i8 %113, %111
  %arrayidx10.i.i.3 = getelementptr %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 10, i32 3
  %114 = ptrtoint ptr %arrayidx10.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %and17.i.i.3, ptr %arrayidx10.i.i.3, align 1
  br label %mt7915_mcu_set_sta_ht_mcs.exit.i

mt7915_mcu_set_sta_ht_mcs.exit.i:                 ; preds = %for.body.i.i.3, %for.body.i.i.2.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, %for.body.i.i.1.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, %for.body.i.i.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge, %if.then317.i.mt7915_mcu_set_sta_ht_mcs.exit.i_crit_edge
  %115 = ptrtoint ptr %ht_mcs.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %ht_mcs.i, align 1
  %supp_ht_mcs.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 19
  %117 = ptrtoint ptr %supp_ht_mcs.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %supp_ht_mcs.i, align 1
  br label %if.end383.i

if.end383.i:                                      ; preds = %mt7915_mcu_set_sta_ht_mcs.exit.i, %if.end315.i.if.end383.i_crit_edge
  %cap.5.i = phi i32 [ %cap.4.i, %mt7915_mcu_set_sta_ht_mcs.exit.i ], [ %31, %if.end315.i.if.end383.i_crit_edge ]
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %118 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %vht_cap.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool384.not.i = icmp eq i8 %119, 0
  br i1 %tobool384.not.i, label %if.end383.i.if.end468.i_crit_edge, label %if.then385.i

if.end383.i.if.end468.i_crit_edge:                ; preds = %if.end383.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end468.i

if.then385.i:                                     ; preds = %if.end383.i
  %supp_mode387.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 16
  %120 = ptrtoint ptr %supp_mode387.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %supp_mode387.i, align 1
  %122 = or i8 %121, 8
  store i8 %122, ptr %supp_mode387.i, align 1
  %cap404.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %123 = ptrtoint ptr %cap404.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cap404.i, align 4
  %and405.i = lshr i32 %124, 23
  %conv407.i = and i32 %and405.i, 7
  %af408.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 13
  %125 = ptrtoint ptr %af408.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %af408.i, align 1
  %conv410.i = zext i8 %126 to i32
  %127 = tail call i32 @llvm.umax.i32(i32 %conv407.i, i32 %conv410.i) #10
  %conv420.i = trunc i32 %127 to i8
  %128 = ptrtoint ptr %af408.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv420.i, ptr %af408.i, align 1
  %129 = ptrtoint ptr %cap404.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cap404.i, align 4
  %and425.i = and i32 %130, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and425.i)
  %tobool426.not.i = icmp eq i32 %and425.i, 0
  %cap.6.v.i = select i1 %tobool426.not.i, i32 134217728, i32 134283264
  %and432.i = shl i32 %130, 11
  %131 = and i32 %and432.i, 131072
  %132 = and i32 %and432.i, 262144
  %133 = and i32 %and432.i, 524288
  %cap451.i = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %134 = ptrtoint ptr %cap451.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load452.i = load i8, ptr %cap451.i, align 1
  %and459.i = shl i32 %130, 19
  %135 = and i32 %and459.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load452.i)
  %bf.cast454.not11.i = icmp slt i8 %bf.load452.i, 0
  %136 = select i1 %bf.cast454.not11.i, i32 %135, i32 0
  %cap.6.i = or i32 %131, %cap.5.i
  %137 = or i32 %cap.6.i, %132
  %138 = or i32 %137, %133
  %139 = or i32 %138, %cap.6.v.i
  %cap.10.i = or i32 %139, %136
  %supp_vht_mcs.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 20
  %vht_mcs.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %26, i32 2
  %rx_nss.i5.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %140 = ptrtoint ptr %rx_nss.i5.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rx_nss.i5.i, align 1
  %142 = tail call i8 @llvm.umin.i8(i8 %141, i8 4) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp529.not.i.i = icmp eq i8 %142, 0
  br i1 %cmp529.not.i.i, label %if.then385.i.if.end468.i_crit_edge, label %for.body.preheader.i.i

if.then385.i.if.end468.i_crit_edge:               ; preds = %if.then385.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end468.i

for.body.preheader.i.i:                           ; preds = %if.then385.i
  %vht_mcs1.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %143 = ptrtoint ptr %vht_mcs1.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vht_mcs1.i.i, align 4
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #10
  %146 = and i16 %145, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %146)
  %.not = icmp eq i16 %146, 3
  br i1 %.not, label %for.body.preheader.i.i.sw.epilog.i.i_crit_edge, label %switch.lookup

for.body.preheader.i.i.sw.epilog.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = zext i16 %146 to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.mt7915_mcu_add_rate_ctrl, i32 0, i32 %and.i.i
  %147 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %147)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %for.body.preheader.i.i.sw.epilog.i.i_crit_edge
  %mcs.0.i.i = phi i16 [ %switch.load, %switch.lookup ], [ 0, %for.body.preheader.i.i.sw.epilog.i.i_crit_edge ]
  %148 = ptrtoint ptr %vht_mcs.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %vht_mcs.i, align 2
  %and12.i.i = and i16 %149, %mcs.0.i.i
  %150 = tail call i16 @llvm.bswap.i16(i16 %and12.i.i) #10
  %151 = ptrtoint ptr %supp_vht_mcs.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %supp_vht_mcs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %142)
  %exitcond.not.i9.i = icmp eq i8 %142, 1
  br i1 %exitcond.not.i9.i, label %sw.epilog.i.i.if.end468.i_crit_edge, label %for.body.i6.i.1

sw.epilog.i.i.if.end468.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end468.i

for.body.i6.i.1:                                  ; preds = %sw.epilog.i.i
  %152 = lshr i16 %145, 2
  %153 = and i16 %152, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %153)
  %.not.1 = icmp eq i16 %153, 3
  br i1 %.not.1, label %for.body.i6.i.1.sw.epilog.i.i.1_crit_edge, label %switch.lookup.1

for.body.i6.i.1.sw.epilog.i.i.1_crit_edge:        ; preds = %for.body.i6.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.1

switch.lookup.1:                                  ; preds = %for.body.i6.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.1 = zext i16 %153 to i32
  %switch.gep.1 = getelementptr inbounds [3 x i16], ptr @switch.table.mt7915_mcu_add_rate_ctrl, i32 0, i32 %and.i.i.1
  %154 = ptrtoint ptr %switch.gep.1 to i32
  call void @__asan_load2_noabort(i32 %154)
  %switch.load.1 = load i16, ptr %switch.gep.1, align 2
  br label %sw.epilog.i.i.1

sw.epilog.i.i.1:                                  ; preds = %switch.lookup.1, %for.body.i6.i.1.sw.epilog.i.i.1_crit_edge
  %mcs.0.i.i.1 = phi i16 [ %switch.load.1, %switch.lookup.1 ], [ 0, %for.body.i6.i.1.sw.epilog.i.i.1_crit_edge ]
  %arrayidx.i7.i.1 = getelementptr i16, ptr %vht_mcs.i, i32 1
  %155 = ptrtoint ptr %arrayidx.i7.i.1 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx.i7.i.1, align 2
  %and12.i.i.1 = and i16 %156, %mcs.0.i.i.1
  %157 = tail call i16 @llvm.bswap.i16(i16 %and12.i.i.1) #10
  %arrayidx14.i.i.1 = getelementptr %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 20, i32 1
  %158 = ptrtoint ptr %arrayidx14.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %arrayidx14.i.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %142)
  %exitcond.not.i9.i.1 = icmp eq i8 %142, 2
  br i1 %exitcond.not.i9.i.1, label %sw.epilog.i.i.1.if.end468.i_crit_edge, label %for.body.i6.i.2

sw.epilog.i.i.1.if.end468.i_crit_edge:            ; preds = %sw.epilog.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end468.i

for.body.i6.i.2:                                  ; preds = %sw.epilog.i.i.1
  %159 = lshr i16 %145, 4
  %160 = and i16 %159, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %160)
  %.not.2 = icmp eq i16 %160, 3
  br i1 %.not.2, label %for.body.i6.i.2.sw.epilog.i.i.2_crit_edge, label %switch.lookup.2

for.body.i6.i.2.sw.epilog.i.i.2_crit_edge:        ; preds = %for.body.i6.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.2

switch.lookup.2:                                  ; preds = %for.body.i6.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.2 = zext i16 %160 to i32
  %switch.gep.2 = getelementptr inbounds [3 x i16], ptr @switch.table.mt7915_mcu_add_rate_ctrl, i32 0, i32 %and.i.i.2
  %161 = ptrtoint ptr %switch.gep.2 to i32
  call void @__asan_load2_noabort(i32 %161)
  %switch.load.2 = load i16, ptr %switch.gep.2, align 2
  br label %sw.epilog.i.i.2

sw.epilog.i.i.2:                                  ; preds = %switch.lookup.2, %for.body.i6.i.2.sw.epilog.i.i.2_crit_edge
  %mcs.0.i.i.2 = phi i16 [ %switch.load.2, %switch.lookup.2 ], [ 0, %for.body.i6.i.2.sw.epilog.i.i.2_crit_edge ]
  %arrayidx.i7.i.2 = getelementptr i16, ptr %vht_mcs.i, i32 2
  %162 = ptrtoint ptr %arrayidx.i7.i.2 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx.i7.i.2, align 2
  %and12.i.i.2 = and i16 %163, %mcs.0.i.i.2
  %164 = tail call i16 @llvm.bswap.i16(i16 %and12.i.i.2) #10
  %arrayidx14.i.i.2 = getelementptr %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 20, i32 2
  %165 = ptrtoint ptr %arrayidx14.i.i.2 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %arrayidx14.i.i.2, align 2
  %166 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %167)
  %cmp17.i.i.2 = icmp eq i32 %167, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %142)
  %exitcond.not.i9.i.2 = icmp eq i8 %142, 3
  %or.cond = select i1 %cmp17.i.i.2, i1 true, i1 %exitcond.not.i9.i.2
  br i1 %or.cond, label %sw.epilog.i.i.2.if.end468.i_crit_edge, label %for.body.i6.i.3

sw.epilog.i.i.2.if.end468.i_crit_edge:            ; preds = %sw.epilog.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end468.i

for.body.i6.i.3:                                  ; preds = %sw.epilog.i.i.2
  %168 = lshr i16 %145, 6
  %169 = and i16 %168, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %169)
  %.not.3 = icmp eq i16 %169, 3
  br i1 %.not.3, label %for.body.i6.i.3.sw.epilog.i.i.3_crit_edge, label %switch.lookup.3

for.body.i6.i.3.sw.epilog.i.i.3_crit_edge:        ; preds = %for.body.i6.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.3

switch.lookup.3:                                  ; preds = %for.body.i6.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.3 = zext i16 %169 to i32
  %switch.gep.3 = getelementptr inbounds [3 x i16], ptr @switch.table.mt7915_mcu_add_rate_ctrl, i32 0, i32 %and.i.i.3
  %170 = ptrtoint ptr %switch.gep.3 to i32
  call void @__asan_load2_noabort(i32 %170)
  %switch.load.3 = load i16, ptr %switch.gep.3, align 2
  br label %sw.epilog.i.i.3

sw.epilog.i.i.3:                                  ; preds = %switch.lookup.3, %for.body.i6.i.3.sw.epilog.i.i.3_crit_edge
  %mcs.0.i.i.3 = phi i16 [ %switch.load.3, %switch.lookup.3 ], [ 0, %for.body.i6.i.3.sw.epilog.i.i.3_crit_edge ]
  %arrayidx.i7.i.3 = getelementptr i16, ptr %vht_mcs.i, i32 3
  %171 = ptrtoint ptr %arrayidx.i7.i.3 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx.i7.i.3, align 2
  %and12.i.i.3 = and i16 %172, %mcs.0.i.i.3
  %173 = tail call i16 @llvm.bswap.i16(i16 %and12.i.i.3) #10
  %arrayidx14.i.i.3 = getelementptr %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 20, i32 3
  %174 = ptrtoint ptr %arrayidx14.i.i.3 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %arrayidx14.i.i.3, align 2
  br label %if.end468.i

if.end468.i:                                      ; preds = %sw.epilog.i.i.3, %sw.epilog.i.i.2.if.end468.i_crit_edge, %sw.epilog.i.i.1.if.end468.i_crit_edge, %sw.epilog.i.i.if.end468.i_crit_edge, %if.then385.i.if.end468.i_crit_edge, %if.end383.i.if.end468.i_crit_edge
  %cap.11.i = phi i32 [ %cap.5.i, %if.end383.i.if.end468.i_crit_edge ], [ %cap.10.i, %if.then385.i.if.end468.i_crit_edge ], [ %cap.10.i, %sw.epilog.i.i.3 ], [ %cap.10.i, %sw.epilog.i.i.2.if.end468.i_crit_edge ], [ %cap.10.i, %sw.epilog.i.i.1.if.end468.i_crit_edge ], [ %cap.10.i, %sw.epilog.i.i.if.end468.i_crit_edge ]
  %175 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %he_cap, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool469.not.i = icmp eq i8 %176, 0
  br i1 %tobool469.not.i, label %if.end468.i.mt7915_mcu_sta_rate_ctrl_tlv.exit_crit_edge, label %if.then470.i

if.end468.i.mt7915_mcu_sta_rate_ctrl_tlv.exit_crit_edge: ; preds = %if.end468.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_rate_ctrl_tlv.exit

if.then470.i:                                     ; preds = %if.end468.i
  call void @__sanitizer_cov_trace_pc() #12
  %supp_mode471.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 16
  %177 = ptrtoint ptr %supp_mode471.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %supp_mode471.i, align 1
  %179 = or i8 %178, 16
  store i8 %179, ptr %supp_mode471.i, align 1
  %or475.i = or i32 %cap.11.i, 268435456
  br label %mt7915_mcu_sta_rate_ctrl_tlv.exit

mt7915_mcu_sta_rate_ctrl_tlv.exit:                ; preds = %if.then470.i, %if.end468.i.mt7915_mcu_sta_rate_ctrl_tlv.exit_crit_edge
  %cap.12.i = phi i32 [ %or475.i, %if.then470.i ], [ %cap.11.i, %if.end468.i.mt7915_mcu_sta_rate_ctrl_tlv.exit_crit_edge ]
  %180 = tail call i32 @llvm.bswap.i32(i32 %cap.12.i) #10
  %sta_cap.i = getelementptr inbounds %struct.sta_rec_ra, ptr %call.i.i.i, i32 0, i32 25
  %181 = ptrtoint ptr %sta_cap.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %sta_cap.i, align 1
  %call.i63 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool37.not = icmp eq i32 %call.i63, 0
  br i1 %tobool37.not, label %if.end39, label %mt7915_mcu_sta_rate_ctrl_tlv.exit.cleanup_crit_edge

mt7915_mcu_sta_rate_ctrl_tlv.exit.cleanup_crit_edge: ; preds = %mt7915_mcu_sta_rate_ctrl_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %mt7915_mcu_sta_rate_ctrl_tlv.exit
  %182 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %phy.i, align 8
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 8
  %chandef1.i65 = getelementptr inbounds %struct.mt76_phy, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %chandef1.i65 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %chandef1.i65, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %phy3.i) #10
  %190 = call ptr @memset(ptr %phy3.i, i32 0, i32 9)
  %191 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %he_cap, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i68 = icmp eq i8 %192, 0
  br i1 %tobool.not.i68, label %if.else.i75, label %do.body.i

do.body.i:                                        ; preds = %if.end39
  %he_gi.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 5
  %193 = ptrtoint ptr %he_gi.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %he_gi.i, align 4
  %195 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bandwidth.i, align 4
  %sgi.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 3
  %he_ltf.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 6
  %197 = ptrtoint ptr %he_ltf.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %he_ltf.i, align 4
  %he_ltf18.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 8
  %199 = ptrtoint ptr %sgi.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %sgi.promoted.i = load i8, ptr %sgi.i, align 1
  %200 = ptrtoint ptr %he_ltf18.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %he_ltf18.promoted.i = load i8, ptr %he_ltf18.i, align 1
  br label %for.body.i

for.cond22.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv12.i, ptr %sgi.i, align 1
  %202 = ptrtoint ptr %he_ltf18.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv21.i, ptr %he_ltf18.i, align 1
  %arrayidx29.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 0
  %203 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx29.i, align 2
  %conv252.i = zext i16 %204 to i32
  %call.i.i71 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i) #10
  %arrayidx29.i.1 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 1
  %205 = ptrtoint ptr %arrayidx29.i.1 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx29.i.1, align 2
  %conv252.i.1 = zext i16 %206 to i32
  %call.i.i71.1 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.1) #10
  %add253.i.1 = add i32 %call.i.i71.1, %call.i.i71
  %arrayidx29.i.2 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 2
  %207 = ptrtoint ptr %arrayidx29.i.2 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx29.i.2, align 2
  %conv252.i.2 = zext i16 %208 to i32
  %call.i.i71.2 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.2) #10
  %add253.i.2 = add i32 %call.i.i71.2, %add253.i.1
  %arrayidx29.i.3 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 3
  %209 = ptrtoint ptr %arrayidx29.i.3 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx29.i.3, align 2
  %conv252.i.3 = zext i16 %210 to i32
  %call.i.i71.3 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.3) #10
  %add253.i.3 = add i32 %call.i.i71.3, %add253.i.2
  %arrayidx29.i.4 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 4
  %211 = ptrtoint ptr %arrayidx29.i.4 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx29.i.4, align 2
  %conv252.i.4 = zext i16 %212 to i32
  %call.i.i71.4 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.4) #10
  %add253.i.4 = add i32 %call.i.i71.4, %add253.i.3
  %arrayidx29.i.5 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 5
  %213 = ptrtoint ptr %arrayidx29.i.5 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx29.i.5, align 2
  %conv252.i.5 = zext i16 %214 to i32
  %call.i.i71.5 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.5) #10
  %add253.i.5 = add i32 %call.i.i71.5, %add253.i.4
  %arrayidx29.i.6 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 6
  %215 = ptrtoint ptr %arrayidx29.i.6 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %arrayidx29.i.6, align 2
  %conv252.i.6 = zext i16 %216 to i32
  %call.i.i71.6 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.6) #10
  %add253.i.6 = add i32 %call.i.i71.6, %add253.i.5
  %arrayidx29.i.7 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3, i32 7
  %217 = ptrtoint ptr %arrayidx29.i.7 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx29.i.7, align 2
  %conv252.i.7 = zext i16 %218 to i32
  %call.i.i71.7 = tail call i32 @__sw_hweight16(i32 noundef %conv252.i.7) #10
  %add253.i.7 = add i32 %call.i.i71.7, %add253.i.6
  %he_mcs259.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 3
  %219 = ptrtoint ptr %he_mcs259.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %he_mcs259.i, align 2
  %221 = tail call i16 @llvm.cttz.i16(i16 %220, i1 true) #10, !range !147
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %220)
  %iszero.i = icmp eq i16 %220, 0
  %222 = trunc i16 %221 to i8
  %conv262.i = select i1 %iszero.i, i8 -1, i8 %222
  br label %if.end1265.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i
  %conv211754.i = phi i8 [ %he_ltf18.promoted.i, %do.body.i ], [ %conv21.i, %for.body.i.for.body.i_crit_edge ]
  %conv121753.i = phi i8 [ %sgi.promoted.i, %do.body.i ], [ %conv12.i, %for.body.i.for.body.i_crit_edge ]
  %conv61752.i = phi i32 [ 0, %do.body.i ], [ %conv6.i, %for.body.i.for.body.i_crit_edge ]
  %i.01751.i = phi i8 [ 0, %do.body.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 %conv61752.i, 1
  %shl10.i = shl i32 %194, %shl.i
  %223 = trunc i32 %shl10.i to i8
  %conv12.i = or i8 %conv121753.i, %223
  %shl17.i = shl i32 %198, %shl.i
  %224 = trunc i32 %shl17.i to i8
  %conv21.i = or i8 %conv211754.i, %224
  %inc.i = add i8 %i.01751.i, 1
  %conv6.i = zext i8 %inc.i to i32
  %cmp.not.i = icmp ult i32 %196, %conv6.i
  br i1 %cmp.not.i, label %for.cond22.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else.i75:                                      ; preds = %if.end39
  %225 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %vht_cap.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool263.not.i = icmp eq i8 %226, 0
  br i1 %tobool263.not.i, label %if.else562.i, label %do.body265.i

do.body265.i:                                     ; preds = %if.else.i75
  %gi270.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 4
  %227 = ptrtoint ptr %gi270.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %gi270.i, align 4
  %conv272.i = and i32 %228, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv272.i)
  %cmp273.i = icmp eq i32 %conv272.i, 1
  %229 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %bandwidth.i, align 4
  %conv282.i = zext i1 %cmp273.i to i32
  %sgi286.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 3
  %he_ltf292.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 6
  %231 = ptrtoint ptr %he_ltf292.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %he_ltf292.i, align 4
  %he_ltf296.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 8
  %233 = ptrtoint ptr %sgi286.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %sgi286.promoted.i = load i8, ptr %sgi286.i, align 1
  %234 = ptrtoint ptr %he_ltf296.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %he_ltf296.promoted.i = load i8, ptr %he_ltf296.i, align 1
  br label %for.body281.i

for.cond303.preheader.i:                          ; preds = %for.body281.i
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %sgi286.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv289.i, ptr %sgi286.i, align 1
  %236 = ptrtoint ptr %he_ltf296.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv299.i, ptr %he_ltf296.i, align 1
  %arrayidx311.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 0
  %237 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx311.i, align 2
  %conv542.i = zext i16 %238 to i32
  %call.i1748.i = tail call i32 @__sw_hweight16(i32 noundef %conv542.i) #10
  %arrayidx311.i.1 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 1
  %239 = ptrtoint ptr %arrayidx311.i.1 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %arrayidx311.i.1, align 2
  %conv542.i.1 = zext i16 %240 to i32
  %call.i1748.i.1 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.1) #10
  %add546.i.1 = add i32 %call.i1748.i.1, %call.i1748.i
  %arrayidx311.i.2 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 2
  %241 = ptrtoint ptr %arrayidx311.i.2 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %arrayidx311.i.2, align 2
  %conv542.i.2 = zext i16 %242 to i32
  %call.i1748.i.2 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.2) #10
  %add546.i.2 = add i32 %call.i1748.i.2, %add546.i.1
  %arrayidx311.i.3 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 3
  %243 = ptrtoint ptr %arrayidx311.i.3 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx311.i.3, align 2
  %conv542.i.3 = zext i16 %244 to i32
  %call.i1748.i.3 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.3) #10
  %add546.i.3 = add i32 %call.i1748.i.3, %add546.i.2
  %arrayidx311.i.4 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 4
  %245 = ptrtoint ptr %arrayidx311.i.4 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %arrayidx311.i.4, align 2
  %conv542.i.4 = zext i16 %246 to i32
  %call.i1748.i.4 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.4) #10
  %add546.i.4 = add i32 %call.i1748.i.4, %add546.i.3
  %arrayidx311.i.5 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 5
  %247 = ptrtoint ptr %arrayidx311.i.5 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %arrayidx311.i.5, align 2
  %conv542.i.5 = zext i16 %248 to i32
  %call.i1748.i.5 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.5) #10
  %add546.i.5 = add i32 %call.i1748.i.5, %add546.i.4
  %arrayidx311.i.6 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 6
  %249 = ptrtoint ptr %arrayidx311.i.6 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %arrayidx311.i.6, align 2
  %conv542.i.6 = zext i16 %250 to i32
  %call.i1748.i.6 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.6) #10
  %add546.i.6 = add i32 %call.i1748.i.6, %add546.i.5
  %arrayidx311.i.7 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2, i32 7
  %251 = ptrtoint ptr %arrayidx311.i.7 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %arrayidx311.i.7, align 2
  %conv542.i.7 = zext i16 %252 to i32
  %call.i1748.i.7 = tail call i32 @__sw_hweight16(i32 noundef %conv542.i.7) #10
  %add546.i.7 = add i32 %call.i1748.i.7, %add546.i.6
  %vht_mcs552.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 2
  %253 = ptrtoint ptr %vht_mcs552.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %vht_mcs552.i, align 2
  %255 = tail call i16 @llvm.cttz.i16(i16 %254, i1 true) #10, !range !147
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %254)
  %iszero555.i = icmp eq i16 %254, 0
  %256 = trunc i16 %255 to i8
  %conv558.i = select i1 %iszero555.i, i8 -1, i8 %256
  br label %if.end1265.i

for.body281.i:                                    ; preds = %for.body281.i.for.body281.i_crit_edge, %do.body265.i
  %conv2991760.i = phi i8 [ %he_ltf296.promoted.i, %do.body265.i ], [ %conv299.i, %for.body281.i.for.body281.i_crit_edge ]
  %conv2891759.i = phi i8 [ %sgi286.promoted.i, %do.body265.i ], [ %conv289.i, %for.body281.i.for.body281.i_crit_edge ]
  %conv2771758.i = phi i32 [ 0, %do.body265.i ], [ %conv277.i, %for.body281.i.for.body281.i_crit_edge ]
  %i266.01757.i = phi i8 [ 0, %do.body265.i ], [ %inc301.i, %for.body281.i.for.body281.i_crit_edge ]
  %shl285.i = shl nuw i32 %conv282.i, %conv2771758.i
  %257 = trunc i32 %shl285.i to i8
  %conv289.i = or i8 %conv2891759.i, %257
  %shl295.i = shl i32 %232, %conv2771758.i
  %258 = trunc i32 %shl295.i to i8
  %conv299.i = or i8 %conv2991760.i, %258
  %inc301.i = add i8 %i266.01757.i, 1
  %conv277.i = zext i8 %inc301.i to i32
  %cmp279.not.i = icmp ult i32 %230, %conv277.i
  br i1 %cmp279.not.i, label %for.cond303.preheader.i, label %for.body281.i.for.body281.i_crit_edge

for.body281.i.for.body281.i_crit_edge:            ; preds = %for.body281.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body281.i

if.else562.i:                                     ; preds = %if.else.i75
  %259 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %ht_supported.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool563.not.i = icmp eq i8 %260, 0
  br i1 %tobool563.not.i, label %if.else862.i, label %do.body565.i

do.body565.i:                                     ; preds = %if.else562.i
  %gi570.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 4
  %261 = ptrtoint ptr %gi570.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %gi570.i, align 4
  %conv572.i = and i32 %262, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv572.i)
  %cmp573.i = icmp eq i32 %conv572.i, 1
  %263 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %bandwidth.i, align 4
  %conv582.i = zext i1 %cmp573.i to i32
  %sgi586.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 3
  %he_ltf592.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 6
  %265 = ptrtoint ptr %he_ltf592.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %he_ltf592.i, align 4
  %he_ltf596.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 8
  %267 = ptrtoint ptr %sgi586.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %sgi586.promoted.i = load i8, ptr %sgi586.i, align 1
  %268 = ptrtoint ptr %he_ltf596.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %he_ltf596.promoted.i = load i8, ptr %he_ltf596.i, align 1
  br label %for.body581.i

for.cond603.preheader.i:                          ; preds = %for.body581.i
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %sgi586.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %conv589.i, ptr %sgi586.i, align 1
  %270 = ptrtoint ptr %he_ltf596.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv599.i, ptr %he_ltf596.i, align 1
  %arrayidx611.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 0
  %271 = ptrtoint ptr %arrayidx611.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx611.i, align 1
  %conv842.i = zext i8 %272 to i32
  %call.i1749.i = tail call i32 @__sw_hweight16(i32 noundef %conv842.i) #10
  %arrayidx611.i.1 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 1
  %273 = ptrtoint ptr %arrayidx611.i.1 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx611.i.1, align 1
  %conv842.i.1 = zext i8 %274 to i32
  %call.i1749.i.1 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.1) #10
  %add846.i.1 = add i32 %call.i1749.i.1, %call.i1749.i
  %arrayidx611.i.2 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 2
  %275 = ptrtoint ptr %arrayidx611.i.2 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx611.i.2, align 1
  %conv842.i.2 = zext i8 %276 to i32
  %call.i1749.i.2 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.2) #10
  %add846.i.2 = add i32 %call.i1749.i.2, %add846.i.1
  %arrayidx611.i.3 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 3
  %277 = ptrtoint ptr %arrayidx611.i.3 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx611.i.3, align 1
  %conv842.i.3 = zext i8 %278 to i32
  %call.i1749.i.3 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.3) #10
  %add846.i.3 = add i32 %call.i1749.i.3, %add846.i.2
  %arrayidx611.i.4 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 4
  %279 = ptrtoint ptr %arrayidx611.i.4 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx611.i.4, align 1
  %conv842.i.4 = zext i8 %280 to i32
  %call.i1749.i.4 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.4) #10
  %add846.i.4 = add i32 %call.i1749.i.4, %add846.i.3
  %arrayidx611.i.5 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 5
  %281 = ptrtoint ptr %arrayidx611.i.5 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx611.i.5, align 1
  %conv842.i.5 = zext i8 %282 to i32
  %call.i1749.i.5 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.5) #10
  %add846.i.5 = add i32 %call.i1749.i.5, %add846.i.4
  %arrayidx611.i.6 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 6
  %283 = ptrtoint ptr %arrayidx611.i.6 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx611.i.6, align 1
  %conv842.i.6 = zext i8 %284 to i32
  %call.i1749.i.6 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.6) #10
  %add846.i.6 = add i32 %call.i1749.i.6, %add846.i.5
  %arrayidx611.i.7 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 7
  %285 = ptrtoint ptr %arrayidx611.i.7 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx611.i.7, align 1
  %conv842.i.7 = zext i8 %286 to i32
  %call.i1749.i.7 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.7) #10
  %add846.i.7 = add i32 %call.i1749.i.7, %add846.i.6
  %arrayidx611.i.8 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 8
  %287 = ptrtoint ptr %arrayidx611.i.8 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx611.i.8, align 1
  %conv842.i.8 = zext i8 %288 to i32
  %call.i1749.i.8 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.8) #10
  %add846.i.8 = add i32 %call.i1749.i.8, %add846.i.7
  %arrayidx611.i.9 = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1, i32 9
  %289 = ptrtoint ptr %arrayidx611.i.9 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx611.i.9, align 1
  %conv842.i.9 = zext i8 %290 to i32
  %call.i1749.i.9 = tail call i32 @__sw_hweight16(i32 noundef %conv842.i.9) #10
  %add846.i.9 = add i32 %call.i1749.i.9, %add846.i.8
  %ht_mcs852.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 1
  %291 = ptrtoint ptr %ht_mcs852.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %ht_mcs852.i, align 4
  %293 = tail call i8 @llvm.cttz.i8(i8 %292, i1 true) #10, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %iszero855.i = icmp eq i8 %292, 0
  %conv858.i = select i1 %iszero855.i, i8 -1, i8 %293
  br label %if.end1265.i

for.body581.i:                                    ; preds = %for.body581.i.for.body581.i_crit_edge, %do.body565.i
  %conv5991766.i = phi i8 [ %he_ltf596.promoted.i, %do.body565.i ], [ %conv599.i, %for.body581.i.for.body581.i_crit_edge ]
  %conv5891765.i = phi i8 [ %sgi586.promoted.i, %do.body565.i ], [ %conv589.i, %for.body581.i.for.body581.i_crit_edge ]
  %conv5771764.i = phi i32 [ 0, %do.body565.i ], [ %conv577.i, %for.body581.i.for.body581.i_crit_edge ]
  %i566.01763.i = phi i8 [ 0, %do.body565.i ], [ %inc601.i, %for.body581.i.for.body581.i_crit_edge ]
  %shl585.i = shl nuw i32 %conv582.i, %conv5771764.i
  %294 = trunc i32 %shl585.i to i8
  %conv589.i = or i8 %conv5891765.i, %294
  %shl595.i = shl i32 %266, %conv5771764.i
  %295 = trunc i32 %shl595.i to i8
  %conv599.i = or i8 %conv5991766.i, %295
  %inc601.i = add i8 %i566.01763.i, 1
  %conv577.i = zext i8 %inc601.i to i32
  %cmp579.not.i = icmp ult i32 %264, %conv577.i
  br i1 %cmp579.not.i, label %for.cond603.preheader.i, label %for.body581.i.for.body581.i_crit_edge

for.body581.i.for.body581.i_crit_edge:            ; preds = %for.body581.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body581.i

if.else862.i:                                     ; preds = %if.else562.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx864.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189
  %296 = ptrtoint ptr %arrayidx864.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx864.i, align 4
  %call.i1750.i = tail call i32 @__sw_hweight32(i32 noundef %297) #10
  %298 = ptrtoint ptr %arrayidx864.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx864.i, align 4
  %300 = tail call i32 @llvm.cttz.i32(i32 %299, i1 true) #10, !range !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %iszero1259.i = icmp eq i32 %299, 0
  %301 = trunc i32 %300 to i8
  %conv1262.i = select i1 %iszero1259.i, i8 -1, i8 %301
  br label %if.end1265.i

if.end1265.i:                                     ; preds = %if.else862.i, %for.cond603.preheader.i, %for.cond303.preheader.i, %for.cond22.preheader.i
  %conv558.sink.i = phi i8 [ %conv558.i, %for.cond303.preheader.i ], [ %conv1262.i, %if.else862.i ], [ %conv858.i, %for.cond603.preheader.i ], [ %conv262.i, %for.cond22.preheader.i ]
  %nrates.3.i = phi i32 [ %add546.i.7, %for.cond303.preheader.i ], [ %call.i1750.i, %if.else862.i ], [ %add846.i.9, %for.cond603.preheader.i ], [ %add253.i.7, %for.cond22.preheader.i ]
  %mcs559.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 6
  %302 = ptrtoint ptr %mcs559.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %conv558.sink.i, ptr %mcs559.i, align 1
  %gi1268.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 4
  %303 = ptrtoint ptr %gi1268.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %gi1268.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp1269.i = icmp eq i32 %304, 0
  br i1 %cmp1269.i, label %land.lhs.true.i, label %if.end1265.i.if.end1286.i_crit_edge

if.end1265.i.if.end1286.i_crit_edge:              ; preds = %if.end1265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1286.i

land.lhs.true.i:                                  ; preds = %if.end1265.i
  %he_gi1273.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 5
  %305 = ptrtoint ptr %he_gi1273.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %he_gi1273.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %306)
  %cmp1274.i = icmp eq i32 %306, 255
  br i1 %cmp1274.i, label %land.lhs.true1276.i, label %land.lhs.true.i.if.end1286.i_crit_edge

land.lhs.true.i.if.end1286.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1286.i

land.lhs.true1276.i:                              ; preds = %land.lhs.true.i
  %he_ltf1279.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 6
  %307 = ptrtoint ptr %he_ltf1279.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %he_ltf1279.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %308)
  %cmp1280.i = icmp ne i32 %308, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nrates.3.i)
  %cmp1283.not.i = icmp eq i32 %nrates.3.i, 1
  %or.cond.i = select i1 %cmp1280.i, i1 true, i1 %cmp1283.not.i
  br i1 %or.cond.i, label %land.lhs.true1276.i.if.end1286.i_crit_edge, label %land.lhs.true1276.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge

land.lhs.true1276.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge: ; preds = %land.lhs.true1276.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_rate_ctrl_fixed.exit

land.lhs.true1276.i.if.end1286.i_crit_edge:       ; preds = %land.lhs.true1276.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1286.i

if.end1286.i:                                     ; preds = %land.lhs.true1276.i.if.end1286.i_crit_edge, %land.lhs.true.i.if.end1286.i_crit_edge, %if.end1265.i.if.end1286.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nrates.3.i)
  %cmp1287.i = icmp eq i32 %nrates.3.i, 1
  br i1 %cmp1287.i, label %if.then1289.i, label %if.end1286.i.if.end1294.i_crit_edge

if.end1286.i.if.end1294.i_crit_edge:              ; preds = %if.end1286.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1294.i

if.then1289.i:                                    ; preds = %if.end1286.i
  %call1290.i = call i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef %dev, ptr noundef %vif, ptr noundef %sta, ptr noundef nonnull %phy3.i, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1290.i)
  %tobool1291.not.i = icmp eq i32 %call1290.i, 0
  br i1 %tobool1291.not.i, label %if.then1289.i.if.end1294.i_crit_edge, label %if.then1289.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge

if.then1289.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge: ; preds = %if.then1289.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_rate_ctrl_fixed.exit

if.then1289.i.if.end1294.i_crit_edge:             ; preds = %if.then1289.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1294.i

if.end1294.i:                                     ; preds = %if.then1289.i.if.end1294.i_crit_edge, %if.end1286.i.if.end1294.i_crit_edge
  %309 = ptrtoint ptr %gi1268.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %gi1268.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %cmp1298.not.i = icmp eq i32 %310, 0
  br i1 %cmp1298.not.i, label %lor.lhs.false.i, label %if.end1294.i.if.then1305.i_crit_edge

if.end1294.i.if.then1305.i_crit_edge:             ; preds = %if.end1294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1305.i

lor.lhs.false.i:                                  ; preds = %if.end1294.i
  %he_gi1302.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 5
  %311 = ptrtoint ptr %he_gi1302.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %he_gi1302.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %312)
  %cmp1303.not.i = icmp eq i32 %312, 255
  br i1 %cmp1303.not.i, label %lor.lhs.false.i.if.end1381.i_crit_edge, label %lor.lhs.false.i.if.then1305.i_crit_edge

lor.lhs.false.i.if.then1305.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1305.i

lor.lhs.false.i.if.end1381.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1381.i

if.then1305.i:                                    ; preds = %lor.lhs.false.i.if.then1305.i_crit_edge, %if.end1294.i.if.then1305.i_crit_edge
  %idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %313 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %idx.i, align 2
  %call1308.i = call i32 @mt7915_mac_wtbl_lmac_addr(ptr noundef %dev, i16 noundef zeroext %314, i8 noundef zeroext 7) #10
  %315 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %he_cap, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool1311.not.i = icmp eq i8 %316, 0
  br i1 %tobool1311.not.i, label %do.end1368.i, label %if.then1312.i

if.then1312.i:                                    ; preds = %if.then1305.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %317 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %rmw.i, align 4
  %sgi1320.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 3
  %321 = ptrtoint ptr %sgi1320.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %sgi1320.i, align 1
  %conv1338.i = zext i8 %322 to i32
  %shl1339.i = shl nuw i32 %conv1338.i, 24
  %call1341.i = call i32 %320(ptr noundef %dev, i32 noundef %call1308.i, i32 noundef -16777216, i32 noundef %shl1339.i) #10
  br label %if.end1375.i

do.end1368.i:                                     ; preds = %if.then1305.i
  call void @__sanitizer_cov_trace_pc() #12
  %sgi1352.i = getelementptr inbounds %struct.sta_phy, ptr %phy3.i, i32 0, i32 3
  %323 = ptrtoint ptr %sgi1352.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %sgi1352.i, align 1
  %bus1343.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %325 = ptrtoint ptr %bus1343.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %bus1343.i, align 4
  %rmw1344.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %326, i32 0, i32 2
  %327 = ptrtoint ptr %rmw1344.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %rmw1344.i, align 4
  %conv1371.i = zext i8 %324 to i32
  %shl1372.i = shl nuw nsw i32 %conv1371.i, 12
  %and1373.i = and i32 %shl1372.i, 61440
  %call1374.i = call i32 %328(ptr noundef %dev, i32 noundef %call1308.i, i32 noundef 61440, i32 noundef %and1373.i) #10
  br label %if.end1375.i

if.end1375.i:                                     ; preds = %do.end1368.i, %if.then1312.i
  %call1376.i = call i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef %dev, ptr noundef %vif, ptr noundef %sta, ptr noundef nonnull %phy3.i, i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1376.i)
  %tobool1377.not.i = icmp eq i32 %call1376.i, 0
  br i1 %tobool1377.not.i, label %if.end1375.i.if.end1381.i_crit_edge, label %if.end1375.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge

if.end1375.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge: ; preds = %if.end1375.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_rate_ctrl_fixed.exit

if.end1375.i.if.end1381.i_crit_edge:              ; preds = %if.end1375.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1381.i

if.end1381.i:                                     ; preds = %if.end1375.i.if.end1381.i_crit_edge, %lor.lhs.false.i.if.end1381.i_crit_edge
  %he_ltf1384.i = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask.i, i32 0, i32 %189, i32 6
  %329 = ptrtoint ptr %he_ltf1384.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %he_ltf1384.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %330)
  %cmp1385.not.i = icmp eq i32 %330, 255
  br i1 %cmp1385.not.i, label %if.end1381.i.if.end1392.i_crit_edge, label %if.then1387.i

if.end1381.i.if.end1392.i_crit_edge:              ; preds = %if.end1381.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1392.i

if.then1387.i:                                    ; preds = %if.end1381.i
  %call1388.i = call i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef %dev, ptr noundef %vif, ptr noundef %sta, ptr noundef nonnull %phy3.i, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1388.i)
  %tobool1389.not.i = icmp eq i32 %call1388.i, 0
  br i1 %tobool1389.not.i, label %if.then1387.i.if.end1392.i_crit_edge, label %if.then1387.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge

if.then1387.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge: ; preds = %if.then1387.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_rate_ctrl_fixed.exit

if.then1387.i.if.end1392.i_crit_edge:             ; preds = %if.then1387.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1392.i

if.end1392.i:                                     ; preds = %if.then1387.i.if.end1392.i_crit_edge, %if.end1381.i.if.end1392.i_crit_edge
  br label %mt7915_mcu_add_rate_ctrl_fixed.exit

mt7915_mcu_add_rate_ctrl_fixed.exit:              ; preds = %if.end1392.i, %if.then1387.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge, %if.end1375.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge, %if.then1289.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge, %land.lhs.true1276.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end1392.i ], [ %call1376.i, %if.end1375.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge ], [ 0, %land.lhs.true1276.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge ], [ %call1290.i, %if.then1289.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge ], [ %call1388.i, %if.then1387.i.mt7915_mcu_add_rate_ctrl_fixed.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %phy3.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mt7915_mcu_add_rate_ctrl_fixed.exit, %mt7915_mcu_sta_rate_ctrl_tlv.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %retval.1.i, %mt7915_mcu_add_rate_ctrl_fixed.exit ], [ %call.i63, %mt7915_mcu_sta_rate_ctrl_tlv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_mcu_sta_he_tlv(ptr noundef %skb, ptr nocapture noundef readonly %sta, ptr nocapture noundef readonly %vif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %vif3 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %vif3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif3, align 4
  %phy = getelementptr inbounds %struct.mt7915_vif, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %bitrate_mask = getelementptr inbounds %struct.mt7915_vif, ptr %1, i32 0, i32 5
  %he_mcs = getelementptr [6 x %struct.anon.139], ptr %bitrate_mask, i32 0, i32 %9, i32 3
  %10 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %he_cap, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %he_cap_elem = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 28) #10
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 3584, ptr %call.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %15 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 7168, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %tlv_num.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %tlv_num.i.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  %add.i.i = add i16 %18, 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %20 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %tlv_num.i.i, align 1
  %21 = ptrtoint ptr %he_cap_elem to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %he_cap_elem, align 1
  %23 = and i8 %22, 1
  %arrayidx13 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx13, align 1
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 4
  %28 = or i8 %27, %23
  %arrayidx21 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx21, align 1
  %31 = shl i8 %30, 2
  %32 = and i8 %31, 8
  %33 = or i8 %28, %32
  %arrayidx29 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx29, align 1
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 16
  %38 = or i8 %33, %37
  %39 = lshr i8 %35, 1
  %40 = and i8 %39, 2
  %41 = or i8 %38, %40
  %42 = zext i8 %41 to i32
  %phy_cap_info = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1
  %43 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %phy_cap_info, align 1
  %45 = and i8 %44, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool47.not = icmp eq i8 %45, 0
  %or49 = or i32 %42, 262144
  %cap.5 = select i1 %tobool47.not, i32 %42, i32 %or49
  %cap51 = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv1, i32 0, i32 1
  %46 = ptrtoint ptr %cap51 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %cap51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.if.end60_crit_edge, label %land.lhs.true

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx54 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx54, align 1
  %49 = shl i8 %48, 1
  %50 = and i8 %49, 64
  %51 = zext i8 %50 to i32
  %52 = or i32 %cap.5, %51
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true, %if.end.if.end60_crit_edge
  %cap.6 = phi i32 [ %cap.5, %if.end.if.end60_crit_edge ], [ %52, %land.lhs.true ]
  %arrayidx62 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx62, align 1
  %55 = and i8 %54, 64
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 7
  %58 = or i32 %57, %cap.6
  %arrayidx70 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx70, align 1
  %61 = and i8 %60, 2
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %58, %63
  %65 = and i8 %60, 4
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 7
  %68 = or i32 %64, %67
  %69 = and i8 %60, 8
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 7
  %72 = or i32 %68, %71
  %arrayidx94 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 6
  %73 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx94, align 1
  %75 = shl i8 %74, 3
  %76 = and i8 %75, -128
  %77 = zext i8 %76 to i32
  %78 = or i32 %72, %77
  %79 = and i8 %74, 32
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 3
  %82 = or i32 %78, %81
  %arrayidx110 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 7
  %83 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx110, align 1
  %85 = and i8 %84, 4
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 12
  %88 = or i32 %82, %87
  %89 = and i8 %84, 64
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 5
  %92 = or i32 %88, %91
  %or131 = or i32 %92, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool129.not307 = icmp slt i8 %84, 0
  %cap.15 = select i1 %tobool129.not307, i32 %or131, i32 %92
  %arrayidx134 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 8
  %93 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx134, align 1
  %95 = and i8 %94, 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = and i8 %94, 16
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 11
  %arrayidx150 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 9
  %101 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx150, align 1
  %reass.add316 = and i8 %102, 12
  %reass.add = zext i8 %reass.add316 to i32
  %reass.mul = shl nuw nsw i32 %reass.add, 17
  %103 = or i32 %100, %97
  %104 = or i32 %103, %reass.mul
  %105 = or i32 %104, %cap.15
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %he_cap165 = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %he_cap165 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %he_cap165, align 1
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %108 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cond = icmp eq i32 %109, 3
  br i1 %cond, label %sw.bb, label %if.end60.sw.default_crit_edge

if.end60.sw.default_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %if.end60
  %110 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %phy_cap_info, align 1
  %112 = and i8 %111, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool170.not = icmp eq i8 %112, 0
  br i1 %tobool170.not, label %sw.bb.if.end173_crit_edge, label %if.then171

sw.bb.if.end173_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

if.then171:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx172 = getelementptr %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 15, i32 2
  tail call fastcc void @mt7915_mcu_set_sta_he_mcs(ptr noundef %sta, ptr noundef %arrayidx172, ptr noundef %he_mcs)
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %sw.bb.if.end173_crit_edge
  %arrayidx175 = getelementptr %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 15, i32 1
  tail call fastcc void @mt7915_mcu_set_sta_he_mcs(ptr noundef %sta, ptr noundef %arrayidx175, ptr noundef %he_mcs)
  br label %sw.default

sw.default:                                       ; preds = %if.end173, %if.end60.sw.default_crit_edge
  %max_nss_mcs176 = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 15
  tail call fastcc void @mt7915_mcu_set_sta_he_mcs(ptr noundef %sta, ptr noundef %max_nss_mcs176, ptr noundef %he_mcs)
  %arrayidx179 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx179, align 1
  %and6.i = lshr i8 %114, 2
  %div7.i308 = and i8 %and6.i, 3
  %t_frame_dur = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %t_frame_dur to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %div7.i308, ptr %t_frame_dur, align 1
  %116 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx21, align 1
  %and6.i291 = lshr i8 %117, 3
  %div7.i292309 = and i8 %and6.i291, 3
  %max_ampdu_exp = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %max_ampdu_exp to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %div7.i292309, ptr %max_ampdu_exp, align 1
  %119 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %phy_cap_info, align 1
  %div7.i294310 = lshr i8 %120, 1
  %bw_set = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 5
  %121 = ptrtoint ptr %bw_set to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %div7.i294310, ptr %bw_set, align 1
  %122 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx62, align 1
  %and6.i295 = lshr i8 %123, 4
  %div7.i296311 = and i8 %and6.i295, 1
  %device_class = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 6
  %124 = ptrtoint ptr %device_class to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %div7.i296311, ptr %device_class, align 1
  %125 = load i8, ptr %arrayidx62, align 1
  %and6.i297 = and i8 %125, 15
  %punc_pream_rx = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 12
  %126 = ptrtoint ptr %punc_pream_rx to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %and6.i297, ptr %punc_pream_rx, align 1
  %arrayidx194 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %127 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx194, align 1
  %and6.i298 = and i8 %128, 3
  %dcm_tx_mode = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 7
  %129 = ptrtoint ptr %dcm_tx_mode to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %and6.i298, ptr %dcm_tx_mode, align 1
  %130 = load i8, ptr %arrayidx194, align 1
  %and6.i299 = lshr i8 %130, 2
  %div7.i300312 = and i8 %and6.i299, 1
  %dcm_tx_max_nss = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 8
  %131 = ptrtoint ptr %dcm_tx_max_nss to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %div7.i300312, ptr %dcm_tx_max_nss, align 1
  %132 = load i8, ptr %arrayidx194, align 1
  %and6.i301 = lshr i8 %132, 3
  %div7.i302313 = and i8 %and6.i301, 3
  %dcm_rx_mode = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 9
  %133 = ptrtoint ptr %dcm_rx_mode to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %div7.i302313, ptr %dcm_rx_mode, align 1
  %134 = load i8, ptr %arrayidx194, align 1
  %and6.i303 = lshr i8 %134, 5
  %div7.i304314 = and i8 %and6.i303, 1
  %dcm_rx_max_nss = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 10
  %135 = ptrtoint ptr %dcm_rx_max_nss to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %div7.i304314, ptr %dcm_rx_max_nss, align 1
  %136 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx134, align 1
  %div7.i306315 = lshr i8 %137, 6
  store i8 %div7.i306315, ptr %dcm_rx_max_nss, align 1
  %pkt_ext = getelementptr inbounds %struct.sta_rec_he, ptr %call.i.i, i32 0, i32 13
  %138 = ptrtoint ptr %pkt_ext to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %pkt_ext, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_sta(ptr noundef %dev, ptr noundef readonly %vif, ptr noundef %sta, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.202, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %tobool.not = icmp eq ptr %sta, null
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta3 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %cond = select i1 %tobool.not, ptr %sta3, ptr %drv_priv1
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %tobool.not.i = icmp eq ptr %cond, null
  br i1 %tobool.not.i, label %entry.cond.end50.i_crit_edge, label %do.end12.i

entry.cond.end50.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end50.i

do.end12.i:                                       ; preds = %entry
  %idx13.i = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 6
  %2 = ptrtoint ptr %idx13.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx13.i, align 2
  %conv.i = trunc i16 %3 to i8
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 9
  %4 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool18.not.i, label %do.end12.i.do.end42.i_crit_edge, label %cond.true19.i

do.end12.i.do.end42.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42.i

cond.true19.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %5 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %omac_idx.i, align 1
  br label %do.end42.i

do.end42.i:                                       ; preds = %cond.true19.i, %do.end12.i.do.end42.i_crit_edge
  %hdr.sroa.14.0.i = phi i8 [ %6, %cond.true19.i ], [ 14, %do.end12.i.do.end42.i_crit_edge ]
  %and47.i = lshr i16 %3, 8
  %7 = trunc i16 %and47.i to i8
  %phi.cast.i = and i8 %7, 3
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %do.end42.i, %entry.cond.end50.i_crit_edge
  %hdr.sroa.14.1.i = phi i8 [ %hdr.sroa.14.0.i, %do.end42.i ], [ 14, %entry.cond.end50.i_crit_edge ]
  %hdr.sroa.5.0.i = phi i8 [ %conv.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %cond51.i = phi i8 [ %phi.cast.i, %do.end42.i ], [ 0, %entry.cond.end50.i_crit_edge ]
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 442) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %cond.end50.i.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

cond.end50.i.if.then_crit_edge:                   ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %cond.end50.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %9 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %hdr.sroa.5.0.i, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %10 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %11 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %12 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %hdr.sroa.14.1.i, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %13 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond51.i, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %14 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %cond.end50.i.if.then_crit_edge
  %retval.0.i248 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end50.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i248 to i32
  br label %cleanup

if.end:                                           ; preds = %mt7915_mcu_alloc_sta_req.exit
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #10
  %18 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 0, ptr %call.i.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 2
  %19 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 5120, ptr %tlv.sroa.5.0..sroa_idx.i.i.i, align 1
  %tlv_num.i.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %tlv_num.i.i.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %add.i.i.i = add i16 %22, 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i) #10
  %24 = ptrtoint ptr %tlv_num.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %tlv_num.i.i.i, align 1
  %extra_info.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 7
  %spec.store.select.i = select i1 %enable, i16 768, i16 256
  %25 = ptrtoint ptr %extra_info.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %spec.store.select.i, ptr %extra_info.i, align 1
  %spec.select.i = select i1 %enable, i8 2, i8 0
  %26 = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select.i, ptr %26, align 1
  br i1 %tobool.not, label %mt7915_mcu_sta_basic_tlv.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end
  %28 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vif, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %29, label %do.end.i [
    i32 7, label %if.end6.i.sw.bb.i_crit_edge
    i32 3, label %if.end6.i.sw.bb.i_crit_edge268
    i32 2, label %sw.bb8.i
    i32 1, label %sw.bb10.i
  ]

if.end6.i.sw.bb.i_crit_edge268:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end6.i.sw.bb.i_crit_edge, %if.end6.i.sw.bb.i_crit_edge268
  %conn_type7.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %conn_type7.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 16777472, ptr %conn_type7.i, align 1
  br label %mt7915_mcu_sta_basic_tlv.exit.thread

sw.bb8.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %conn_type9.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %conn_type9.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 33554688, ptr %conn_type9.i, align 1
  br label %mt7915_mcu_sta_basic_tlv.exit.thread

sw.bb10.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %conn_type11.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %conn_type11.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 67109888, ptr %conn_type11.i, align 1
  br label %mt7915_mcu_sta_basic_tlv.exit.thread

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1330, i32 noundef 9, ptr noundef null) #10
  br label %mt7915_mcu_sta_basic_tlv.exit.thread

mt7915_mcu_sta_basic_tlv.exit:                    ; preds = %if.end
  %conn_type.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 536871168, ptr %conn_type.i, align 1
  %peer_addr.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 6
  %35 = call ptr @memset(ptr %peer_addr.i, i32 255, i32 6)
  br i1 %enable, label %mt7915_mcu_sta_basic_tlv.exit.if.end40.i.i_crit_edge, label %mt7915_mcu_sta_basic_tlv.exit.out_crit_edge

mt7915_mcu_sta_basic_tlv.exit.out_crit_edge:      ; preds = %mt7915_mcu_sta_basic_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

mt7915_mcu_sta_basic_tlv.exit.if.end40.i.i_crit_edge: ; preds = %mt7915_mcu_sta_basic_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

mt7915_mcu_sta_basic_tlv.exit.thread:             ; preds = %do.end.i, %sw.bb10.i, %sw.bb8.i, %sw.bb.i
  %peer_addr29.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 6
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %peer_addr29.i, ptr %addr.i, i32 6)
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %37 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %aid.i, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #10
  %aid32.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %aid32.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %aid32.i, align 1
  %wme.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %41 = ptrtoint ptr %wme.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %wme.i, align 4, !range !145
  %qos.i = getelementptr inbounds %struct.sta_rec_basic, ptr %call.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %qos.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %qos.i, align 1
  br i1 %enable, label %land.lhs.true, label %mt7915_mcu_sta_basic_tlv.exit.thread.out_crit_edge

mt7915_mcu_sta_basic_tlv.exit.thread.out_crit_edge: ; preds = %mt7915_mcu_sta_basic_tlv.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %mt7915_mcu_sta_basic_tlv.exit.thread
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ht_supported, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool11.not = icmp eq i8 %45, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end40.i.i_crit_edge, label %if.then12

land.lhs.true.if.end40.i.i_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

if.then12:                                        ; preds = %land.lhs.true
  %band_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %46 = ptrtoint ptr %band_idx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %band_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i108 = icmp eq i8 %47, 0
  br i1 %tobool.not.i108, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then12
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %48 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %cond.true.i.cond.false78.i_crit_edge, label %if.end.i.i

cond.true.i.cond.false78.i_crit_edge:             ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false78.i

if.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv.i.i, align 8
  br label %cond.false78.i

cond.false.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %phy1.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4
  br label %cond.false78.i

cond.false78.i:                                   ; preds = %cond.false.i, %if.end.i.i, %cond.true.i.cond.false78.i_crit_edge
  %cond.i = phi ptr [ %phy1.i, %cond.false.i ], [ %51, %if.end.i.i ], [ null, %cond.true.i.cond.false78.i_crit_edge ]
  %52 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cond.i, align 8
  %chainmask.i = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %chainmask.i, align 2
  %conv81.i = zext i16 %55 to i32
  %call.i.i109 = tail call i32 @__sw_hweight8(i32 noundef %conv81.i) #10
  %sub.i = add i32 %call.i.i109, -1
  %56 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cond.i, align 8
  %chainmask.i.i = getelementptr inbounds %struct.mt76_phy, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %chainmask.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %chainmask.i.i, align 2
  %conv75.i.i = zext i16 %59 to i32
  %call.i.i.i110 = tail call i32 @__sw_hweight8(i32 noundef %conv75.i.i) #10
  %60 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vif, align 8
  %62 = and i32 %61, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %switch.i.i = icmp ne i32 %62, 2
  %sub.i.i = add i32 %call.i.i.i110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp82.i.i = icmp slt i32 %sub.i.i, 2
  %or.cond.i = select i1 %switch.i.i, i1 true, i1 %cmp82.i.i
  br i1 %or.cond.i, label %cond.false78.i.land.lhs.true.i_crit_edge, label %if.end85.i.i

cond.false78.i.land.lhs.true.i_crit_edge:         ; preds = %cond.false78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.end85.i.i:                                     ; preds = %cond.false78.i
  %he_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %63 = ptrtoint ptr %he_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %he_cap.i.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool86.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool86.not.i.i, label %if.end108.i.i, label %if.then87.i.i

if.then87.i.i:                                    ; preds = %if.end85.i.i
  %cap.i.i = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %65 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i = load i8, ptr %cap.i.i, align 1
  %66 = and i8 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %bf.cast99.not.i.i = icmp eq i8 %66, 0
  br i1 %bf.cast99.not.i.i, label %if.then87.i.i.land.lhs.true.i_crit_edge, label %land.rhs101.i.i

if.then87.i.i.land.lhs.true.i_crit_edge:          ; preds = %if.then87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.rhs101.i.i:                                  ; preds = %if.then87.i.i
  %arrayidx103.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 4
  %67 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx103.i.i, align 1
  %and6.i167.i.i = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and6.i167.i.i)
  %tobool106.i.not.i = icmp eq i8 %and6.i167.i.i, 0
  br i1 %tobool106.i.not.i, label %land.rhs101.i.i.land.lhs.true.i_crit_edge, label %land.rhs101.i.i.if.end.i115_crit_edge

land.rhs101.i.i.if.end.i115_crit_edge:            ; preds = %land.rhs101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

land.rhs101.i.i.land.lhs.true.i_crit_edge:        ; preds = %land.rhs101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.end108.i.i:                                    ; preds = %if.end85.i.i
  %vht_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %69 = ptrtoint ptr %vht_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vht_cap.i.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool109.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool109.not.i.i, label %if.end108.i.i.land.lhs.true.i_crit_edge, label %mt7915_is_ebf_supported.exit.i

if.end108.i.i.land.lhs.true.i_crit_edge:          ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

mt7915_is_ebf_supported.exit.i:                   ; preds = %if.end108.i.i
  %cap113.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %cap113.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cap113.i.i, align 4
  %cap116.i.i = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %73 = ptrtoint ptr %cap116.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load117.i.i = load i8, ptr %cap116.i.i, align 1
  %74 = and i8 %bf.load117.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %bf.cast131.not.i.i = icmp ne i8 %74, 0
  %and134.i.i = and i32 %72, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i.i)
  %tobool135.i.i = icmp ne i32 %and134.i.i, 0
  %75 = select i1 %bf.cast131.not.i.i, i1 %tobool135.i.i, i1 false
  br i1 %75, label %mt7915_is_ebf_supported.exit.i.if.end.i115_crit_edge, label %mt7915_is_ebf_supported.exit.i.land.lhs.true.i_crit_edge

mt7915_is_ebf_supported.exit.i.land.lhs.true.i_crit_edge: ; preds = %mt7915_is_ebf_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

mt7915_is_ebf_supported.exit.i.if.end.i115_crit_edge: ; preds = %mt7915_is_ebf_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

land.lhs.true.i:                                  ; preds = %mt7915_is_ebf_supported.exit.i.land.lhs.true.i_crit_edge, %if.end108.i.i.land.lhs.true.i_crit_edge, %land.rhs101.i.i.land.lhs.true.i_crit_edge, %if.then87.i.i.land.lhs.true.i_crit_edge, %cond.false78.i.land.lhs.true.i_crit_edge
  %ibf.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 20
  %76 = ptrtoint ptr %ibf.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ibf.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool87.not.i = icmp eq i8 %77, 0
  br i1 %tobool87.not.i, label %land.lhs.true.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge, label %land.lhs.true.i.if.end.i115_crit_edge

land.lhs.true.i.if.end.i115_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

land.lhs.true.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_bfer_tlv.exit

if.end.i115:                                      ; preds = %land.lhs.true.i.if.end.i115_crit_edge, %mt7915_is_ebf_supported.exit.i.if.end.i115_crit_edge, %land.rhs101.i.i.if.end.i115_crit_edge
  %retval.2.i286.i = phi i1 [ false, %land.lhs.true.i.if.end.i115_crit_edge ], [ true, %mt7915_is_ebf_supported.exit.i.if.end.i115_crit_edge ], [ true, %land.rhs101.i.i.if.end.i115_crit_edge ]
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %call.i.i227.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 48) #10
  %80 = ptrtoint ptr %call.i.i227.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 1024, ptr %call.i.i227.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i112 = getelementptr inbounds i8, ptr %call.i.i227.i, i32 2
  %81 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i112 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 12288, ptr %tlv.sroa.5.0..sroa_idx.i.i.i112, align 1
  %tlv_num.i.i.i113 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %tlv_num.i.i.i113 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %tlv_num.i.i.i113, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #10
  %add.i.i.i114 = add i16 %84, 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i114) #10
  %86 = ptrtoint ptr %tlv_num.i.i.i113 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %tlv_num.i.i.i113, align 1
  %he_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %87 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %he_cap.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool89.not.i = icmp ne i8 %88, 0
  %89 = and i1 %retval.2.i286.i, %tobool89.not.i
  br i1 %89, label %if.then94.i, label %if.else.i

if.then94.i:                                      ; preds = %if.end.i115
  %90 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cond.i, align 8
  %chandef.i.i.i = getelementptr inbounds %struct.mt76_phy, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %chandef.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chandef.i.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %91, align 8
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wiphy.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %99, i32 0, i32 53, i32 %95
  %100 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i.i, align 4
  %102 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vif, align 8
  %conv.i.i.i = trunc i32 %103 to i8
  %conv.i.i.i.i.i = and i32 %103, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i8 %conv.i.i.i, 11
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %for.cond.preheader.i.i.i.i.i, !prof !146

for.cond.preheader.i.i.i.i.i:                     ; preds = %if.then94.i
  %n_iftype_data.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %101, i32 0, i32 9
  %104 = ptrtoint ptr %n_iftype_data.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %n_iftype_data.i.i.i.i.i, align 4
  %conv23.i.i.i.i.i = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp2438.not.i.i.i.i.i = icmp eq i16 %105, 0
  br i1 %cmp2438.not.i.i.i.i.i, label %for.cond.preheader.i.i.i.i.i.if.end.i.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i.i

for.cond.preheader.i.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %for.cond.preheader.i.i.i.i.i
  %iftype_data.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %101, i32 0, i32 10
  %106 = ptrtoint ptr %iftype_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iftype_data.i.i.i.i.i, align 4
  %shl.i.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i.i
  br label %for.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 510, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw nsw i32 %i.039.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %conv23.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %for.cond.i.i.i.i.i.if.end.i.i.i.i_crit_edge, label %for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.cond.i.i.i.i.i.if.end.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.039.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %inc.i.i.i.i.i, %for.cond.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %107, i32 %i.039.i.i.i.i.i
  %108 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx.i.i.i.i.i, align 4
  %conv26.i.i.i.i.i = zext i16 %109 to i32
  %and.i.i.i.i.i = and i32 %shl.i.i.i.i.i, %conv26.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool28.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i.i, label %for.cond.i.i.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i.i:     ; preds = %for.body.i.i.i.i.i
  %tobool.not.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i.i
  %he_cap.i.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %107, i32 %i.039.i.i.i.i.i, i32 1
  %110 = ptrtoint ptr %he_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %he_cap.i.i.i.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool1.not.i.i.i.i = icmp eq i8 %111, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.mt7915_get_he_phy_cap.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.mt7915_get_he_phy_cap.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_get_he_phy_cap.exit.i.i

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.i.i.i.if.end.i.i.i.i_crit_edge, %for.cond.i.i.i.i.i.if.end.i.i.i.i_crit_edge, %do.end.i.i.i.i.i, %for.cond.preheader.i.i.i.i.i.if.end.i.i.i.i_crit_edge
  br label %mt7915_get_he_phy_cap.exit.i.i

mt7915_get_he_phy_cap.exit.i.i:                   ; preds = %if.end.i.i.i.i, %land.lhs.true.i.i.i.i.mt7915_get_he_phy_cap.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ null, %if.end.i.i.i.i ], [ %he_cap.i.i.i.i, %land.lhs.true.i.i.i.i.mt7915_get_he_phy_cap.exit.i.i_crit_edge ]
  %he_mcs_nss_supp.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2
  %112 = ptrtoint ptr %he_mcs_nss_supp.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %he_mcs_nss_supp.i.i, align 1
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #10
  %conv2.i.i.i = zext i16 %114 to i32
  %shr.mask.i.i.i = and i32 %conv2.i.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.mask.i.i.i)
  %cmp6.not.i.i.i = icmp eq i32 %shr.mask.i.i.i, 49152
  br i1 %cmp6.not.i.i.i, label %for.inc.i.i.i, label %mt7915_get_he_phy_cap.exit.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

mt7915_get_he_phy_cap.exit.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %mt7915_get_he_phy_cap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.i.i.i:                                    ; preds = %mt7915_get_he_phy_cap.exit.i.i
  %115 = and i32 %conv2.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %115)
  %cmp6.not.1.i.i.i = icmp eq i32 %115, 12288
  br i1 %cmp6.not.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

for.inc.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %116 = and i32 %conv2.i.i.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %116)
  %cmp6.not.2.i.i.i = icmp eq i32 %116, 3072
  br i1 %cmp6.not.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

for.inc.1.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %117 = and i32 %conv2.i.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %117)
  %cmp6.not.3.i.i.i = icmp eq i32 %117, 768
  br i1 %cmp6.not.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

for.inc.2.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %118 = and i32 %conv2.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %118)
  %cmp6.not.4.i.i.i = icmp eq i32 %118, 192
  br i1 %cmp6.not.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

for.inc.3.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %119 = and i32 %conv2.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %119)
  %cmp6.not.5.i.i.i = icmp eq i32 %119, 48
  br i1 %cmp6.not.5.i.i.i, label %for.inc.5.i.i.i, label %for.inc.4.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

for.inc.4.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %120 = and i32 %conv2.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %120)
  %cmp6.not.6.i.i.i = icmp eq i32 %120, 12
  br i1 %cmp6.not.6.i.i.i, label %for.inc.6.i.i.i, label %for.inc.5.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge

for.inc.5.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge: ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.7.i.i.i = and i32 %conv2.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv4.7.i.i.i)
  %cmp6.not.7.i.i.i = icmp eq i32 %conv4.7.i.i.i, 3
  %spec.select.i.i.i = sext i1 %cmp6.not.7.i.i.i to i8
  br label %mt7915_mcu_get_sta_nss.exit.i.i

mt7915_mcu_get_sta_nss.exit.i.i:                  ; preds = %for.inc.6.i.i.i, %for.inc.5.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge, %for.inc.4.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge, %for.inc.3.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge, %for.inc.2.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge, %for.inc.1.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge, %for.inc.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge, %mt7915_get_he_phy_cap.exit.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge
  %nss.0.lcssa.i.i.i = phi i8 [ 7, %mt7915_get_he_phy_cap.exit.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ 6, %for.inc.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ 5, %for.inc.1.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ 4, %for.inc.2.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ 3, %for.inc.3.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ 2, %for.inc.4.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ 1, %for.inc.5.i.i.i.mt7915_mcu_get_sta_nss.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.6.i.i.i ]
  %tx_mode.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 9
  %121 = ptrtoint ptr %tx_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 8, ptr %tx_mode.i.i, align 1
  %sounding_phy.i.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 5
  %122 = ptrtoint ptr %sounding_phy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %sounding_phy.i.i.i, align 1
  %ndp_rate.i.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 7
  %123 = ptrtoint ptr %ndp_rate.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %ndp_rate.i.i.i, align 1
  %ndpa_rate.i.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 6
  %124 = ptrtoint ptr %ndpa_rate.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 73, ptr %ndpa_rate.i.i.i, align 1
  %rept_poll_rate.i.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 8
  %125 = ptrtoint ptr %rept_poll_rate.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 73, ptr %rept_poll_rate.i.i.i, align 1
  %phy_cap_info.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 6
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i.i, align 1
  %trigger_su.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 27
  %128 = lshr i8 %127, 2
  %.lobit.i228.i = and i8 %128, 1
  %129 = ptrtoint ptr %trigger_su.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %.lobit.i228.i, ptr %trigger_su.i.i, align 1
  %130 = load i8, ptr %arrayidx.i.i, align 1
  %trigger_mu.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 28
  %131 = lshr i8 %130, 3
  %.lobit187.i.i = and i8 %131, 1
  %132 = ptrtoint ptr %trigger_mu.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %.lobit187.i.i, ptr %trigger_mu.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i.i, i32 0, i32 1, i32 1, i32 5
  %133 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx10.i.i, align 1
  %and6.i136.i.i = and i8 %134, 7
  %arrayidx13.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 4
  %135 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx13.i.i, align 1
  %and6.i137.i.i = lshr i8 %136, 2
  %div7.i138188.i.i = and i8 %and6.i137.i.i, 7
  %137 = tail call i8 @llvm.umin.i8(i8 %and6.i136.i.i, i8 %div7.i138188.i.i) #10
  %nrow.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 11
  %138 = ptrtoint ptr %nrow.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %nrow.i.i, align 1
  %139 = tail call i8 @llvm.umin.i8(i8 %nss.0.lcssa.i.i.i, i8 %137) #10
  %ncol.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 10
  %140 = ptrtoint ptr %ncol.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %ncol.i.i, align 1
  %ibf_ncol.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 21
  %141 = ptrtoint ptr %ibf_ncol.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %139, ptr %ibf_ncol.i.i, align 1
  %bandwidth.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %142 = ptrtoint ptr %bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bandwidth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %143)
  %cmp34.not.i.i = icmp eq i32 %143, 3
  br i1 %cmp34.not.i.i, label %if.end.i229.i, label %mt7915_mcu_get_sta_nss.exit.i.i.if.end104.i_crit_edge

mt7915_mcu_get_sta_nss.exit.i.i.if.end104.i_crit_edge: ; preds = %mt7915_mcu_get_sta_nss.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.end.i229.i:                                    ; preds = %mt7915_mcu_get_sta_nss.exit.i.i
  %144 = ptrtoint ptr %phy_cap_info.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %phy_cap_info.i.i, align 1
  %146 = and i8 %145, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool39.not.i.i = icmp eq i8 %146, 0
  br i1 %tobool39.not.i.i, label %if.end.i229.i.if.end43.i.i_crit_edge, label %if.then40.i.i

if.end.i229.i.if.end43.i.i_crit_edge:             ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i.i

if.then40.i.i:                                    ; preds = %if.end.i229.i
  %rx_mcs_160.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 2
  %147 = ptrtoint ptr %rx_mcs_160.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %rx_mcs_160.i.i, align 1
  %149 = tail call i16 @llvm.bswap.i16(i16 %148) #10
  %conv2.i143.i.i = zext i16 %149 to i32
  %shr.mask.i144.i.i = and i32 %conv2.i143.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.mask.i144.i.i)
  %cmp6.not.i145.i.i = icmp eq i32 %shr.mask.i144.i.i, 49152
  br i1 %cmp6.not.i145.i.i, label %for.inc.i147.i.i, label %if.then40.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

if.then40.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.i147.i.i:                                 ; preds = %if.then40.i.i
  %150 = and i32 %conv2.i143.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %150)
  %cmp6.not.1.i146.i.i = icmp eq i32 %150, 12288
  br i1 %cmp6.not.1.i146.i.i, label %for.inc.1.i149.i.i, label %for.inc.i147.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

for.inc.i147.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %for.inc.i147.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.1.i149.i.i:                               ; preds = %for.inc.i147.i.i
  %151 = and i32 %conv2.i143.i.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %151)
  %cmp6.not.2.i148.i.i = icmp eq i32 %151, 3072
  br i1 %cmp6.not.2.i148.i.i, label %for.inc.2.i151.i.i, label %for.inc.1.i149.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

for.inc.1.i149.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %for.inc.1.i149.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.2.i151.i.i:                               ; preds = %for.inc.1.i149.i.i
  %152 = and i32 %conv2.i143.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %152)
  %cmp6.not.3.i150.i.i = icmp eq i32 %152, 768
  br i1 %cmp6.not.3.i150.i.i, label %for.inc.3.i153.i.i, label %for.inc.2.i151.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

for.inc.2.i151.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %for.inc.2.i151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.3.i153.i.i:                               ; preds = %for.inc.2.i151.i.i
  %153 = and i32 %conv2.i143.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %153)
  %cmp6.not.4.i152.i.i = icmp eq i32 %153, 192
  br i1 %cmp6.not.4.i152.i.i, label %for.inc.4.i155.i.i, label %for.inc.3.i153.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

for.inc.3.i153.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %for.inc.3.i153.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.4.i155.i.i:                               ; preds = %for.inc.3.i153.i.i
  %154 = and i32 %conv2.i143.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %154)
  %cmp6.not.5.i154.i.i = icmp eq i32 %154, 48
  br i1 %cmp6.not.5.i154.i.i, label %for.inc.5.i157.i.i, label %for.inc.4.i155.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

for.inc.4.i155.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %for.inc.4.i155.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.5.i157.i.i:                               ; preds = %for.inc.4.i155.i.i
  %155 = and i32 %conv2.i143.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %155)
  %cmp6.not.6.i156.i.i = icmp eq i32 %155, 12
  br i1 %cmp6.not.6.i156.i.i, label %for.inc.6.i161.i.i, label %for.inc.5.i157.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge

for.inc.5.i157.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge: ; preds = %for.inc.5.i157.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

for.inc.6.i161.i.i:                               ; preds = %for.inc.5.i157.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.7.i158.i.i = and i32 %conv2.i143.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv4.7.i158.i.i)
  %cmp6.not.7.i159.i.i = icmp eq i32 %conv4.7.i158.i.i, 3
  %spec.select.i160.i.i = sext i1 %cmp6.not.7.i159.i.i to i8
  br label %mt7915_mcu_get_sta_nss.exit163.i.i

mt7915_mcu_get_sta_nss.exit163.i.i:               ; preds = %for.inc.6.i161.i.i, %for.inc.5.i157.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge, %for.inc.4.i155.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge, %for.inc.3.i153.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge, %for.inc.2.i151.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge, %for.inc.1.i149.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge, %for.inc.i147.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge, %if.then40.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge
  %nss.0.lcssa.i162.i.i = phi i8 [ 7, %if.then40.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ 6, %for.inc.i147.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ 5, %for.inc.1.i149.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ 4, %for.inc.2.i151.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ 3, %for.inc.3.i153.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ 2, %for.inc.4.i155.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ 1, %for.inc.5.i157.i.i.mt7915_mcu_get_sta_nss.exit163.i.i_crit_edge ], [ %spec.select.i160.i.i, %for.inc.6.i161.i.i ]
  %ncol_bw160.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 24
  %156 = ptrtoint ptr %ncol_bw160.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %nss.0.lcssa.i162.i.i, ptr %ncol_bw160.i.i, align 1
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %mt7915_mcu_get_sta_nss.exit163.i.i, %if.end.i229.i.if.end43.i.i_crit_edge
  %157 = ptrtoint ptr %phy_cap_info.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %phy_cap_info.i.i, align 1
  %159 = and i8 %158, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool48.not.i.i = icmp eq i8 %159, 0
  br i1 %tobool48.not.i.i, label %if.end43.i.i.if.end71.i.i_crit_edge, label %if.then49.i.i

if.end43.i.i.if.end71.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i.i

if.then49.i.i:                                    ; preds = %if.end43.i.i
  %rx_mcs_80p80.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 4
  %160 = ptrtoint ptr %rx_mcs_80p80.i.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %rx_mcs_80p80.i.i, align 1
  %162 = tail call i16 @llvm.bswap.i16(i16 %161) #10
  %conv2.i164.i.i = zext i16 %162 to i32
  %shr.mask.i165.i.i = and i32 %conv2.i164.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.mask.i165.i.i)
  %cmp6.not.i166.i.i = icmp eq i32 %shr.mask.i165.i.i, 49152
  br i1 %cmp6.not.i166.i.i, label %for.inc.i168.i.i, label %if.then49.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

if.then49.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.i168.i.i:                                 ; preds = %if.then49.i.i
  %163 = and i32 %conv2.i164.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %163)
  %cmp6.not.1.i167.i.i = icmp eq i32 %163, 12288
  br i1 %cmp6.not.1.i167.i.i, label %for.inc.1.i170.i.i, label %for.inc.i168.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

for.inc.i168.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %for.inc.i168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.1.i170.i.i:                               ; preds = %for.inc.i168.i.i
  %164 = and i32 %conv2.i164.i.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %164)
  %cmp6.not.2.i169.i.i = icmp eq i32 %164, 3072
  br i1 %cmp6.not.2.i169.i.i, label %for.inc.2.i172.i.i, label %for.inc.1.i170.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

for.inc.1.i170.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %for.inc.1.i170.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.2.i172.i.i:                               ; preds = %for.inc.1.i170.i.i
  %165 = and i32 %conv2.i164.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %165)
  %cmp6.not.3.i171.i.i = icmp eq i32 %165, 768
  br i1 %cmp6.not.3.i171.i.i, label %for.inc.3.i174.i.i, label %for.inc.2.i172.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

for.inc.2.i172.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %for.inc.2.i172.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.3.i174.i.i:                               ; preds = %for.inc.2.i172.i.i
  %166 = and i32 %conv2.i164.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %166)
  %cmp6.not.4.i173.i.i = icmp eq i32 %166, 192
  br i1 %cmp6.not.4.i173.i.i, label %for.inc.4.i176.i.i, label %for.inc.3.i174.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

for.inc.3.i174.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %for.inc.3.i174.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.4.i176.i.i:                               ; preds = %for.inc.3.i174.i.i
  %167 = and i32 %conv2.i164.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %167)
  %cmp6.not.5.i175.i.i = icmp eq i32 %167, 48
  br i1 %cmp6.not.5.i175.i.i, label %for.inc.5.i178.i.i, label %for.inc.4.i176.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

for.inc.4.i176.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %for.inc.4.i176.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.5.i178.i.i:                               ; preds = %for.inc.4.i176.i.i
  %168 = and i32 %conv2.i164.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %168)
  %cmp6.not.6.i177.i.i = icmp eq i32 %168, 12
  br i1 %cmp6.not.6.i177.i.i, label %for.inc.6.i182.i.i, label %for.inc.5.i178.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge

for.inc.5.i178.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge: ; preds = %for.inc.5.i178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

for.inc.6.i182.i.i:                               ; preds = %for.inc.5.i178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.7.i179.i.i = and i32 %conv2.i164.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv4.7.i179.i.i)
  %cmp6.not.7.i180.i.i = icmp eq i32 %conv4.7.i179.i.i, 3
  %spec.select.i181.i.i = sext i1 %cmp6.not.7.i180.i.i to i8
  br label %mt7915_mcu_get_sta_nss.exit184.i.i

mt7915_mcu_get_sta_nss.exit184.i.i:               ; preds = %for.inc.6.i182.i.i, %for.inc.5.i178.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge, %for.inc.4.i176.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge, %for.inc.3.i174.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge, %for.inc.2.i172.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge, %for.inc.1.i170.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge, %for.inc.i168.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge, %if.then49.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge
  %nss.0.lcssa.i183.i.i = phi i8 [ 7, %if.then49.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ 6, %for.inc.i168.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ 5, %for.inc.1.i170.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ 4, %for.inc.2.i172.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ 3, %for.inc.3.i174.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ 2, %for.inc.4.i176.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ 1, %for.inc.5.i178.i.i.mt7915_mcu_get_sta_nss.exit184.i.i_crit_edge ], [ %spec.select.i181.i.i, %for.inc.6.i182.i.i ]
  %ncol_bw16052.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 24
  %169 = ptrtoint ptr %ncol_bw16052.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ncol_bw16052.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool53.not.i.i = icmp eq i8 %170, 0
  %171 = tail call i8 @llvm.umin.i8(i8 %170, i8 %nss.0.lcssa.i183.i.i) #10
  %.sink.i.i = select i1 %tobool53.not.i.i, i8 %nss.0.lcssa.i183.i.i, i8 %171
  %172 = ptrtoint ptr %ncol_bw16052.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %.sink.i.i, ptr %ncol_bw16052.i.i, align 1
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %mt7915_mcu_get_sta_nss.exit184.i.i, %if.end43.i.i.if.end71.i.i_crit_edge
  %173 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx10.i.i, align 1
  %and6.i139.i.i = lshr i8 %174, 3
  %div7.i140189.i.i = and i8 %and6.i139.i.i, 7
  %175 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx13.i.i, align 1
  %div7.i142190.i.i = lshr i8 %176, 5
  %177 = tail call i8 @llvm.umin.i8(i8 %div7.i140189.i.i, i8 %div7.i142190.i.i) #10
  %nrow_bw160.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 23
  %178 = ptrtoint ptr %nrow_bw160.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %nrow_bw160.i.i, align 1
  br label %if.end104.i

if.else.i:                                        ; preds = %if.end.i115
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %179 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %vht_cap.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool95.not.i = icmp eq i8 %180, 0
  br i1 %tobool95.not.i, label %if.else98.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.else.i
  %181 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cond.i, align 8
  %vht_mcs.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %183 = ptrtoint ptr %vht_mcs.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vht_mcs.i.i, align 4
  %185 = tail call i16 @llvm.bswap.i16(i16 %184) #10
  %conv2.i.i230.i = zext i16 %185 to i32
  %shr.mask.i.i231.i = and i32 %conv2.i.i230.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.mask.i.i231.i)
  %cmp6.not.i.i232.i = icmp eq i32 %shr.mask.i.i231.i, 49152
  br i1 %cmp6.not.i.i232.i, label %for.inc.i.i234.i, label %if.then96.i.cond.false.i256.i_crit_edge

if.then96.i.cond.false.i256.i_crit_edge:          ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.i.i234.i:                                 ; preds = %if.then96.i
  %186 = and i32 %conv2.i.i230.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %186)
  %cmp6.not.1.i.i233.i = icmp eq i32 %186, 12288
  br i1 %cmp6.not.1.i.i233.i, label %for.inc.1.i.i236.i, label %for.inc.i.i234.i.cond.false.i256.i_crit_edge

for.inc.i.i234.i.cond.false.i256.i_crit_edge:     ; preds = %for.inc.i.i234.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.1.i.i236.i:                               ; preds = %for.inc.i.i234.i
  %187 = and i32 %conv2.i.i230.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %187)
  %cmp6.not.2.i.i235.i = icmp eq i32 %187, 3072
  br i1 %cmp6.not.2.i.i235.i, label %for.inc.2.i.i238.i, label %for.inc.1.i.i236.i.cond.false.i256.i_crit_edge

for.inc.1.i.i236.i.cond.false.i256.i_crit_edge:   ; preds = %for.inc.1.i.i236.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.2.i.i238.i:                               ; preds = %for.inc.1.i.i236.i
  %188 = and i32 %conv2.i.i230.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %188)
  %cmp6.not.3.i.i237.i = icmp eq i32 %188, 768
  br i1 %cmp6.not.3.i.i237.i, label %for.inc.3.i.i240.i, label %for.inc.2.i.i238.i.cond.false.i256.i_crit_edge

for.inc.2.i.i238.i.cond.false.i256.i_crit_edge:   ; preds = %for.inc.2.i.i238.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.3.i.i240.i:                               ; preds = %for.inc.2.i.i238.i
  %189 = and i32 %conv2.i.i230.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %189)
  %cmp6.not.4.i.i239.i = icmp eq i32 %189, 192
  br i1 %cmp6.not.4.i.i239.i, label %for.inc.4.i.i242.i, label %for.inc.3.i.i240.i.cond.false.i256.i_crit_edge

for.inc.3.i.i240.i.cond.false.i256.i_crit_edge:   ; preds = %for.inc.3.i.i240.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.4.i.i242.i:                               ; preds = %for.inc.3.i.i240.i
  %190 = and i32 %conv2.i.i230.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %190)
  %cmp6.not.5.i.i241.i = icmp eq i32 %190, 48
  br i1 %cmp6.not.5.i.i241.i, label %for.inc.5.i.i244.i, label %for.inc.4.i.i242.i.cond.false.i256.i_crit_edge

for.inc.4.i.i242.i.cond.false.i256.i_crit_edge:   ; preds = %for.inc.4.i.i242.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.5.i.i244.i:                               ; preds = %for.inc.4.i.i242.i
  %191 = and i32 %conv2.i.i230.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %191)
  %cmp6.not.6.i.i243.i = icmp eq i32 %191, 12
  br i1 %cmp6.not.6.i.i243.i, label %for.inc.6.i.i248.i, label %for.inc.5.i.i244.i.cond.false.i256.i_crit_edge

for.inc.5.i.i244.i.cond.false.i256.i_crit_edge:   ; preds = %for.inc.5.i.i244.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i256.i

for.inc.6.i.i248.i:                               ; preds = %for.inc.5.i.i244.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.7.i.i245.i = and i32 %conv2.i.i230.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv4.7.i.i245.i)
  %cmp6.not.7.i.i246.i = icmp eq i32 %conv4.7.i.i245.i, 3
  %spec.select.i.i247.i = sext i1 %cmp6.not.7.i.i246.i to i8
  br label %cond.false.i256.i

cond.false.i256.i:                                ; preds = %for.inc.6.i.i248.i, %for.inc.5.i.i244.i.cond.false.i256.i_crit_edge, %for.inc.4.i.i242.i.cond.false.i256.i_crit_edge, %for.inc.3.i.i240.i.cond.false.i256.i_crit_edge, %for.inc.2.i.i238.i.cond.false.i256.i_crit_edge, %for.inc.1.i.i236.i.cond.false.i256.i_crit_edge, %for.inc.i.i234.i.cond.false.i256.i_crit_edge, %if.then96.i.cond.false.i256.i_crit_edge
  %nss.0.lcssa.i.i249.i = phi i8 [ 7, %if.then96.i.cond.false.i256.i_crit_edge ], [ 6, %for.inc.i.i234.i.cond.false.i256.i_crit_edge ], [ 5, %for.inc.1.i.i236.i.cond.false.i256.i_crit_edge ], [ 4, %for.inc.2.i.i238.i.cond.false.i256.i_crit_edge ], [ 3, %for.inc.3.i.i240.i.cond.false.i256.i_crit_edge ], [ 2, %for.inc.4.i.i242.i.cond.false.i256.i_crit_edge ], [ 1, %for.inc.5.i.i244.i.cond.false.i256.i_crit_edge ], [ %spec.select.i.i247.i, %for.inc.6.i.i248.i ]
  %chainmask.i250.i = getelementptr inbounds %struct.mt76_phy, ptr %182, i32 0, i32 16
  %192 = ptrtoint ptr %chainmask.i250.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %chainmask.i250.i, align 2
  %conv77.i.i = zext i16 %193 to i32
  %call.i.i255.i = tail call i32 @__sw_hweight8(i32 noundef %conv77.i.i) #10
  %194 = trunc i32 %call.i.i255.i to i8
  %conv79.i.i = add i8 %194, -1
  %tx_mode.i258.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 9
  %195 = ptrtoint ptr %tx_mode.i258.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 4, ptr %tx_mode.i258.i, align 1
  br i1 %retval.2.i286.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %cond.false.i256.i
  %sounding_phy.i.i260.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 5
  %196 = ptrtoint ptr %sounding_phy.i.i260.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %sounding_phy.i.i260.i, align 1
  %ndp_rate.i.i261.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 7
  %197 = ptrtoint ptr %ndp_rate.i.i261.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %ndp_rate.i.i261.i, align 1
  %ndpa_rate.i.i262.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 6
  %198 = ptrtoint ptr %ndpa_rate.i.i262.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 73, ptr %ndpa_rate.i.i262.i, align 1
  %rept_poll_rate.i.i263.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 8
  %199 = ptrtoint ptr %rept_poll_rate.i.i263.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 73, ptr %rept_poll_rate.i.i263.i, align 1
  %cap.i264.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %200 = ptrtoint ptr %cap.i264.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cap.i264.i, align 4
  %and93.i.i = lshr i32 %201, 13
  %conv94.i.i = and i32 %and93.i.i, 7
  %cap111.i.i = getelementptr inbounds %struct.mt76_phy, ptr %182, i32 0, i32 11, i32 0, i32 6, i32 1
  %202 = ptrtoint ptr %cap111.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cap111.i.i, align 4
  %and112.i.i = lshr i32 %203, 16
  %conv114.i.i = and i32 %and112.i.i, 7
  %204 = tail call i32 @llvm.umin.i32(i32 %conv114.i.i, i32 %conv94.i.i) #10
  %conv128.i.i = zext i8 %conv79.i.i to i32
  %205 = tail call i32 @llvm.umin.i32(i32 %204, i32 %conv128.i.i) #10
  %conv137.i.i = trunc i32 %205 to i8
  %nrow.i265.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 11
  %206 = ptrtoint ptr %nrow.i265.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv137.i.i, ptr %nrow.i265.i, align 1
  %conv140.i.i = zext i8 %nss.0.lcssa.i.i249.i to i32
  %207 = tail call i32 @llvm.umin.i32(i32 %205, i32 %conv140.i.i) #10
  %conv150.i.i = trunc i32 %207 to i8
  %ncol.i266.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 10
  %208 = ptrtoint ptr %ncol.i266.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv150.i.i, ptr %ncol.i266.i, align 1
  %ibf_ncol.i267.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 21
  %209 = ptrtoint ptr %ibf_ncol.i267.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv150.i.i, ptr %ibf_ncol.i267.i, align 1
  %bandwidth.i268.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %210 = ptrtoint ptr %bandwidth.i268.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %bandwidth.i268.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %211)
  %cmp152.i.i = icmp eq i32 %211, 3
  br i1 %cmp152.i.i, label %if.then.i.i.if.end177.sink.split.i.i_crit_edge, label %if.then.i.i.land.lhs.true133.critedge.i_crit_edge

if.then.i.i.land.lhs.true133.critedge.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true133.critedge.i

if.then.i.i.if.end177.sink.split.i.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.sink.split.i.i

if.else.i.i:                                      ; preds = %cond.false.i256.i
  %nrow156.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 11
  %212 = ptrtoint ptr %nrow156.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv79.i.i, ptr %nrow156.i.i, align 1
  %213 = tail call i8 @llvm.umin.i8(i8 %nss.0.lcssa.i.i249.i, i8 %conv79.i.i) #10
  %ncol170.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 10
  %214 = ptrtoint ptr %ncol170.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %ncol170.i.i, align 1
  %ibf_ncol171.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 21
  %215 = ptrtoint ptr %ibf_ncol171.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %nss.0.lcssa.i.i249.i, ptr %ibf_ncol171.i.i, align 1
  %bandwidth172.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %216 = ptrtoint ptr %bandwidth172.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %bandwidth172.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %217)
  %cmp173.i.i = icmp eq i32 %217, 3
  br i1 %cmp173.i.i, label %if.then175.i.i, label %if.else.i.i.land.lhs.true122.i_crit_edge

if.else.i.i.land.lhs.true122.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true122.i

if.then175.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ibf_nrow.i.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 22
  br label %if.end177.sink.split.i.i

if.end177.sink.split.i.i:                         ; preds = %if.then175.i.i, %if.then.i.i.if.end177.sink.split.i.i_crit_edge
  %nrow.sink.i.i = phi ptr [ %ibf_nrow.i.i, %if.then175.i.i ], [ %nrow.i265.i, %if.then.i.i.if.end177.sink.split.i.i_crit_edge ]
  %218 = ptrtoint ptr %nrow.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %nrow.sink.i.i, align 1
  br label %if.end104.i

if.else98.i:                                      ; preds = %if.else.i
  %219 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ht_supported, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool99.not.i = icmp eq i8 %220, 0
  br i1 %tobool99.not.i, label %if.else98.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge, label %if.then100.i

if.else98.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge: ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_bfer_tlv.exit

if.then100.i:                                     ; preds = %if.else98.i
  %tx_mode.i269.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 9
  %221 = ptrtoint ptr %tx_mode.i269.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 2, ptr %tx_mode.i269.i, align 1
  %tx_params.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 2
  %222 = ptrtoint ptr %tx_params.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %tx_params.i.i, align 1
  %224 = and i8 %223, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %224)
  %.not.i.i = icmp eq i8 %224, 3
  br i1 %.not.i.i, label %do.end17.i.i, label %if.else.i271.i

do.end17.i.i:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #12
  %and20.i.i = lshr i8 %223, 2
  %225 = and i8 %and20.i.i, 3
  br label %cond.false.i278.i

if.else.i271.i:                                   ; preds = %if.then100.i
  %arrayidx.i270.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 3
  %226 = ptrtoint ptr %arrayidx.i270.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.i270.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool22.not.i.i = icmp eq i8 %227, 0
  br i1 %tobool22.not.i.i, label %if.else24.i.i, label %if.else.i271.i.cond.false.i278.i_crit_edge

if.else.i271.i.cond.false.i278.i_crit_edge:       ; preds = %if.else.i271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i278.i

if.else24.i.i:                                    ; preds = %if.else.i271.i
  %arrayidx26.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 2
  %228 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx26.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool27.not.i.i = icmp eq i8 %229, 0
  br i1 %tobool27.not.i.i, label %if.else29.i.i, label %if.else24.i.i.cond.false.i278.i_crit_edge

if.else24.i.i.cond.false.i278.i_crit_edge:        ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i278.i

if.else29.i.i:                                    ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx31.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %230 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx31.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool32.not.i.i = icmp ne i8 %231, 0
  %spec.select.i.i = zext i1 %tobool32.not.i.i to i8
  br label %cond.false.i278.i

cond.false.i278.i:                                ; preds = %if.else29.i.i, %if.else24.i.i.cond.false.i278.i_crit_edge, %if.else.i271.i.cond.false.i278.i_crit_edge, %do.end17.i.i
  %n.0.i.i = phi i8 [ %225, %do.end17.i.i ], [ 3, %if.else.i271.i.cond.false.i278.i_crit_edge ], [ 2, %if.else24.i.i.cond.false.i278.i_crit_edge ], [ %spec.select.i.i, %if.else29.i.i ]
  %232 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cond.i, align 8
  %chainmask.i272.i = getelementptr inbounds %struct.mt76_phy, ptr %233, i32 0, i32 16
  %234 = ptrtoint ptr %chainmask.i272.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %chainmask.i272.i, align 2
  %conv114.i276.i = zext i16 %235 to i32
  %call.i.i277.i = tail call i32 @__sw_hweight8(i32 noundef %conv114.i276.i) #10
  %236 = trunc i32 %call.i.i277.i to i8
  %conv115.i.i = add i8 %236, -1
  %nrow.i280.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 11
  %237 = ptrtoint ptr %nrow.i280.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv115.i.i, ptr %nrow.i280.i, align 1
  %238 = tail call i8 @llvm.umin.i8(i8 %conv115.i.i, i8 %n.0.i.i) #10
  %ncol.i281.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 10
  %239 = ptrtoint ptr %ncol.i281.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %ncol.i281.i, align 1
  %ibf_ncol.i282.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 21
  %240 = ptrtoint ptr %ibf_ncol.i282.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %n.0.i.i, ptr %ibf_ncol.i282.i, align 1
  br label %if.end104.i

if.end104.i:                                      ; preds = %cond.false.i278.i, %if.end177.sink.split.i.i, %if.end71.i.i, %mt7915_mcu_get_sta_nss.exit.i.i.if.end104.i_crit_edge
  br i1 %retval.2.i286.i, label %if.end104.i.land.lhs.true133.critedge.i_crit_edge, label %if.end104.i.land.lhs.true122.i_crit_edge

if.end104.i.land.lhs.true122.i_crit_edge:         ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true122.i

if.end104.i.land.lhs.true133.critedge.i_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true133.critedge.i

land.lhs.true122.i:                               ; preds = %if.end104.i.land.lhs.true122.i_crit_edge, %if.else.i.i.land.lhs.true122.i_crit_edge
  %ibf111.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 20
  %241 = ptrtoint ptr %ibf111.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %ibf111.i, align 1, !range !145
  %243 = shl nuw nsw i8 %242, 1
  %bf_cap.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 4
  %244 = ptrtoint ptr %bf_cap.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %bf_cap.i, align 1
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %245 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %bandwidth.i, align 4
  %conv117.i = trunc i32 %246 to i8
  %bw.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 12
  %247 = ptrtoint ptr %bw.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv117.i, ptr %bw.i, align 1
  %248 = load i32, ptr %bandwidth.i, align 4
  %conv119.i = trunc i32 %248 to i8
  %ibf_dbw.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 20
  %249 = ptrtoint ptr %ibf_dbw.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv119.i, ptr %ibf_dbw.i, align 1
  %conv120.i = trunc i32 %sub.i to i8
  %ibf_nrow.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 22
  %250 = ptrtoint ptr %ibf_nrow.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv120.i, ptr %ibf_nrow.i, align 1
  %251 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %251)
  %cmp.i116 = icmp ult i32 %251, 2
  br i1 %cmp.i116, label %land.lhs.true125.i, label %if.else140.critedge223.i

land.lhs.true125.i:                               ; preds = %land.lhs.true122.i
  %ncol.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 10
  %252 = ptrtoint ptr %ncol.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %ncol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool126.not.i = icmp eq i8 %253, 0
  %ibf_timeout.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 19
  br i1 %tobool126.not.i, label %if.then127.i, label %if.else140.critedge.i

if.then127.i:                                     ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %ibf_timeout.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 72, ptr %ibf_timeout.i, align 1
  br label %if.else140.i

land.lhs.true133.critedge.i:                      ; preds = %if.end104.i.land.lhs.true133.critedge.i_crit_edge, %if.then.i.i.land.lhs.true133.critedge.i_crit_edge
  %bf_cap289.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 4
  %255 = ptrtoint ptr %bf_cap289.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %bf_cap289.i, align 1
  %bandwidth290.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %256 = ptrtoint ptr %bandwidth290.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %bandwidth290.i, align 4
  %conv117291.i = trunc i32 %257 to i8
  %bw292.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 12
  %258 = ptrtoint ptr %bw292.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv117291.i, ptr %bw292.i, align 1
  %259 = load i32, ptr %bandwidth290.i, align 4
  %conv119293.i = trunc i32 %259 to i8
  %ibf_dbw294.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 20
  %260 = ptrtoint ptr %ibf_dbw294.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv119293.i, ptr %ibf_dbw294.i, align 1
  %conv120295.i = trunc i32 %sub.i to i8
  %ibf_nrow296.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 22
  %261 = ptrtoint ptr %ibf_nrow296.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv120295.i, ptr %ibf_nrow296.i, align 1
  %ibf_timeout129.c225.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 19
  %262 = ptrtoint ptr %ibf_timeout129.c225.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 24, ptr %ibf_timeout129.c225.i, align 1
  %nrow.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 11
  %263 = ptrtoint ptr %nrow.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %nrow.i, align 1
  %conv134.i = zext i8 %264 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv134.i)
  %cmp135.not.i = icmp eq i32 %sub.i, %conv134.i
  br i1 %cmp135.not.i, label %land.lhs.true133.critedge.i.if.else140.i_crit_edge, label %land.lhs.true133.critedge.i.if.end148.i_crit_edge

land.lhs.true133.critedge.i.if.end148.i_crit_edge: ; preds = %land.lhs.true133.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148.i

land.lhs.true133.critedge.i.if.else140.i_crit_edge: ; preds = %land.lhs.true133.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else140.i

if.else140.critedge.i:                            ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #12
  %265 = ptrtoint ptr %ibf_timeout.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 24, ptr %ibf_timeout.i, align 1
  br label %if.else140.i

if.else140.critedge223.i:                         ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #12
  %ibf_timeout129.c224.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 19
  %266 = ptrtoint ptr %ibf_timeout129.c224.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 24, ptr %ibf_timeout129.c224.i, align 1
  br label %if.else140.i

if.else140.i:                                     ; preds = %if.else140.critedge223.i, %if.else140.critedge.i, %land.lhs.true133.critedge.i.if.else140.i_crit_edge, %if.then127.i
  %bandwidth298.i = phi ptr [ %bandwidth.i, %if.else140.critedge223.i ], [ %bandwidth.i, %if.else140.critedge.i ], [ %bandwidth.i, %if.then127.i ], [ %bandwidth290.i, %land.lhs.true133.critedge.i.if.else140.i_crit_edge ]
  %nrow141.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 11
  %267 = ptrtoint ptr %nrow141.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %nrow141.i, align 1
  %idxprom142.i = zext i8 %268 to i32
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else140.i, %land.lhs.true133.critedge.i.if.end148.i_crit_edge
  %idxprom142.sink.i = phi i32 [ %idxprom142.i, %if.else140.i ], [ %sub.i, %land.lhs.true133.critedge.i.if.end148.i_crit_edge ]
  %bandwidth297.i = phi ptr [ %bandwidth298.i, %if.else140.i ], [ %bandwidth290.i, %land.lhs.true133.critedge.i.if.end148.i_crit_edge ]
  %ncol144.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 10
  %269 = ptrtoint ptr %ncol144.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %ncol144.i, align 1
  %idxprom145.i = zext i8 %270 to i32
  %arrayidx146.i = getelementptr [4 x [4 x i8]], ptr @__const.mt7915_mcu_sta_bfer_tlv.matrix, i32 0, i32 %idxprom142.sink.i, i32 %idxprom145.i
  %271 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx146.i, align 1
  %mem_20m147.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 14
  %273 = ptrtoint ptr %mem_20m147.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %mem_20m147.i, align 1
  %274 = ptrtoint ptr %bandwidth297.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %bandwidth297.i, align 4
  %276 = zext i32 %275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %275, label %if.end148.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge [
    i32 3, label %if.end148.i.sw.bb.i117_crit_edge
    i32 2, label %if.end148.i.sw.bb.i117_crit_edge269
    i32 1, label %if.end148.i.cleanup.sink.split.i_crit_edge
  ]

if.end148.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end148.i.sw.bb.i117_crit_edge269:              ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i117

if.end148.i.sw.bb.i117_crit_edge:                 ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i117

if.end148.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge: ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_bfer_tlv.exit

sw.bb.i117:                                       ; preds = %if.end148.i.sw.bb.i117_crit_edge, %if.end148.i.sw.bb.i117_crit_edge269
  %mul.i = shl i8 %272, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb.i117, %if.end148.i.cleanup.sink.split.i_crit_edge
  %mul.sink.i = phi i8 [ %mul.i, %sw.bb.i117 ], [ %272, %if.end148.i.cleanup.sink.split.i_crit_edge ]
  %mem_total.i = getelementptr inbounds %struct.sta_rec_bf, ptr %call.i.i227.i, i32 0, i32 13
  %277 = ptrtoint ptr %mem_total.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %mul.sink.i, ptr %mem_total.i, align 1
  br label %mt7915_mcu_sta_bfer_tlv.exit

mt7915_mcu_sta_bfer_tlv.exit:                     ; preds = %cleanup.sink.split.i, %if.end148.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge, %if.else98.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge, %land.lhs.true.i.mt7915_mcu_sta_bfer_tlv.exit_crit_edge
  %278 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i119 = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 8) #10
  %280 = ptrtoint ptr %call.i.i.i119 to i32
  call void @__asan_storeN_noabort(i32 %280, i32 2)
  store i16 2304, ptr %call.i.i.i119, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i120 = getelementptr inbounds i8, ptr %call.i.i.i119, i32 2
  %281 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i120 to i32
  call void @__asan_storeN_noabort(i32 %281, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i.i120, align 1
  %tlv_num.i.i.i121 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %279, i32 0, i32 1
  %282 = ptrtoint ptr %tlv_num.i.i.i121 to i32
  call void @__asan_loadN_noabort(i32 %282, i32 2)
  %283 = load i16, ptr %tlv_num.i.i.i121, align 1
  %284 = tail call i16 @llvm.bswap.i16(i16 %283) #10
  %add.i.i.i122 = add i16 %284, 1
  %285 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i122) #10
  %286 = ptrtoint ptr %tlv_num.i.i.i121 to i32
  call void @__asan_storeN_noabort(i32 %286, i32 2)
  store i16 %285, ptr %tlv_num.i.i.i121, align 1
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %287 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %ht_cap.i, align 4
  %289 = tail call i16 @llvm.bswap.i16(i16 %288) #10
  %ht_cap1.i = getelementptr inbounds %struct.sta_rec_ht, ptr %call.i.i.i119, i32 0, i32 2
  %290 = ptrtoint ptr %ht_cap1.i to i32
  call void @__asan_storeN_noabort(i32 %290, i32 2)
  store i16 %289, ptr %ht_cap1.i, align 1
  %vht_cap.i123 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %291 = ptrtoint ptr %vht_cap.i123 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %vht_cap.i123, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool.not.i124 = icmp eq i8 %292, 0
  br i1 %tobool.not.i124, label %mt7915_mcu_sta_bfer_tlv.exit.mt7915_mcu_sta_vht_tlv.exit_crit_edge, label %if.end.i130

mt7915_mcu_sta_bfer_tlv.exit.mt7915_mcu_sta_vht_tlv.exit_crit_edge: ; preds = %mt7915_mcu_sta_bfer_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_vht_tlv.exit

if.end.i130:                                      ; preds = %mt7915_mcu_sta_bfer_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %293 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i126 = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 16) #10
  %295 = ptrtoint ptr %call.i.i.i126 to i32
  call void @__asan_storeN_noabort(i32 %295, i32 2)
  store i16 2560, ptr %call.i.i.i126, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i127 = getelementptr inbounds i8, ptr %call.i.i.i126, i32 2
  %296 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i127 to i32
  call void @__asan_storeN_noabort(i32 %296, i32 2)
  store i16 4096, ptr %tlv.sroa.5.0..sroa_idx.i.i.i127, align 1
  %tlv_num.i.i.i128 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %294, i32 0, i32 1
  %297 = ptrtoint ptr %tlv_num.i.i.i128 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 2)
  %298 = load i16, ptr %tlv_num.i.i.i128, align 1
  %299 = tail call i16 @llvm.bswap.i16(i16 %298) #10
  %add.i.i.i129 = add i16 %299, 1
  %300 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i129) #10
  %301 = ptrtoint ptr %tlv_num.i.i.i128 to i32
  call void @__asan_storeN_noabort(i32 %301, i32 2)
  store i16 %300, ptr %tlv_num.i.i.i128, align 1
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %302 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %cap.i, align 4
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #10
  %vht_cap2.i = getelementptr inbounds %struct.sta_rec_vht, ptr %call.i.i.i126, i32 0, i32 2
  %305 = ptrtoint ptr %vht_cap2.i to i32
  call void @__asan_storeN_noabort(i32 %305, i32 4)
  store i32 %304, ptr %vht_cap2.i, align 1
  %vht_mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %306 = ptrtoint ptr %vht_mcs.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %vht_mcs.i, align 4
  %vht_rx_mcs_map.i = getelementptr inbounds %struct.sta_rec_vht, ptr %call.i.i.i126, i32 0, i32 3
  %308 = ptrtoint ptr %vht_rx_mcs_map.i to i32
  call void @__asan_storeN_noabort(i32 %308, i32 2)
  store i16 %307, ptr %vht_rx_mcs_map.i, align 1
  %tx_mcs_map.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2, i32 2
  %309 = ptrtoint ptr %tx_mcs_map.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %tx_mcs_map.i, align 4
  %vht_tx_mcs_map.i = getelementptr inbounds %struct.sta_rec_vht, ptr %call.i.i.i126, i32 0, i32 4
  %311 = ptrtoint ptr %vht_tx_mcs_map.i to i32
  call void @__asan_storeN_noabort(i32 %311, i32 2)
  store i16 %310, ptr %vht_tx_mcs_map.i, align 1
  br label %mt7915_mcu_sta_vht_tlv.exit

mt7915_mcu_sta_vht_tlv.exit:                      ; preds = %if.end.i130, %mt7915_mcu_sta_bfer_tlv.exit.mt7915_mcu_sta_vht_tlv.exit_crit_edge
  %312 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %313)
  %cmp.not.i = icmp eq i32 %313, 3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %mt7915_mcu_sta_vht_tlv.exit.if.end40.i.i_crit_edge

mt7915_mcu_sta_vht_tlv.exit.if.end40.i.i_crit_edge: ; preds = %mt7915_mcu_sta_vht_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

lor.lhs.false.i:                                  ; preds = %mt7915_mcu_sta_vht_tlv.exit
  %314 = ptrtoint ptr %wme.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %wme.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool.not.i132 = icmp eq i8 %315, 0
  br i1 %tobool.not.i132, label %lor.lhs.false.i.if.end40.i.i_crit_edge, label %if.end.i138

lor.lhs.false.i.if.end40.i.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

if.end.i138:                                      ; preds = %lor.lhs.false.i
  %316 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i134 = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 12) #10
  %318 = ptrtoint ptr %call.i.i.i134 to i32
  call void @__asan_storeN_noabort(i32 %318, i32 2)
  store i16 2816, ptr %call.i.i.i134, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i135 = getelementptr inbounds i8, ptr %call.i.i.i134, i32 2
  %319 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i135 to i32
  call void @__asan_storeN_noabort(i32 %319, i32 2)
  store i16 3072, ptr %tlv.sroa.5.0..sroa_idx.i.i.i135, align 1
  %tlv_num.i.i.i136 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %317, i32 0, i32 1
  %320 = ptrtoint ptr %tlv_num.i.i.i136 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 2)
  %321 = load i16, ptr %tlv_num.i.i.i136, align 1
  %322 = tail call i16 @llvm.bswap.i16(i16 %321) #10
  %add.i.i.i137 = add i16 %322, 1
  %323 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i137) #10
  %324 = ptrtoint ptr %tlv_num.i.i.i136 to i32
  call void @__asan_storeN_noabort(i32 %324, i32 2)
  store i16 %323, ptr %tlv_num.i.i.i136, align 1
  %uapsd_queues.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 11
  %325 = ptrtoint ptr %uapsd_queues.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %uapsd_queues.i, align 1
  %327 = and i8 %326, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool1.not.i = icmp eq i8 %327, 0
  br i1 %tobool1.not.i, label %if.end.i138.if.end8.i_crit_edge, label %if.then2.i

if.end.i138.if.end8.i_crit_edge:                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  %dac_map.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 2
  %328 = ptrtoint ptr %dac_map.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %dac_map.i, align 1
  %330 = or i8 %329, 8
  store i8 %330, ptr %dac_map.i, align 1
  %tac_map.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 3
  %331 = ptrtoint ptr %tac_map.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %tac_map.i, align 1
  %333 = or i8 %332, 8
  store i8 %333, ptr %tac_map.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then2.i, %if.end.i138.if.end8.i_crit_edge
  %334 = ptrtoint ptr %uapsd_queues.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %uapsd_queues.i, align 1
  %336 = and i8 %335, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %336)
  %tobool12.not.i = icmp eq i8 %336, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end22.i_crit_edge, label %if.then13.i

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %dac_map14.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 2
  %337 = ptrtoint ptr %dac_map14.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %dac_map14.i, align 1
  %339 = or i8 %338, 4
  store i8 %339, ptr %dac_map14.i, align 1
  %tac_map18.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 3
  %340 = ptrtoint ptr %tac_map18.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %tac_map18.i, align 1
  %342 = or i8 %341, 4
  store i8 %342, ptr %tac_map18.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then13.i, %if.end8.i.if.end22.i_crit_edge
  %343 = ptrtoint ptr %uapsd_queues.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %uapsd_queues.i, align 1
  %345 = and i8 %344, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %tobool26.not.i = icmp eq i8 %345, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end36.i_crit_edge, label %if.then27.i

if.end22.i.if.end36.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %dac_map28.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 2
  %346 = ptrtoint ptr %dac_map28.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %dac_map28.i, align 1
  %348 = or i8 %347, 2
  store i8 %348, ptr %dac_map28.i, align 1
  %tac_map32.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 3
  %349 = ptrtoint ptr %tac_map32.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %tac_map32.i, align 1
  %351 = or i8 %350, 2
  store i8 %351, ptr %tac_map32.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end36.i_crit_edge
  %352 = ptrtoint ptr %uapsd_queues.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %uapsd_queues.i, align 1
  %354 = and i8 %353, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool40.not.i = icmp eq i8 %354, 0
  br i1 %tobool40.not.i, label %if.end36.i.if.end50.i_crit_edge, label %if.then41.i

if.end36.i.if.end50.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %dac_map42.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 2
  %355 = ptrtoint ptr %dac_map42.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %dac_map42.i, align 1
  %357 = or i8 %356, 1
  store i8 %357, ptr %dac_map42.i, align 1
  %tac_map46.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 3
  %358 = ptrtoint ptr %tac_map46.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %tac_map46.i, align 1
  %360 = or i8 %359, 1
  store i8 %360, ptr %tac_map46.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then41.i, %if.end36.i.if.end50.i_crit_edge
  %max_sp.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 12
  %361 = ptrtoint ptr %max_sp.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %max_sp.i, align 2
  %max_sp51.i = getelementptr inbounds %struct.sta_rec_uapsd, ptr %call.i.i.i134, i32 0, i32 4
  %363 = ptrtoint ptr %max_sp51.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %max_sp51.i, align 1
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end50.i, %lor.lhs.false.i.if.end40.i.i_crit_edge, %mt7915_mcu_sta_vht_tlv.exit.if.end40.i.i_crit_edge, %land.lhs.true.if.end40.i.i_crit_edge, %mt7915_mcu_sta_basic_tlv.exit.if.end40.i.i_crit_edge
  %364 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i142 = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 4) #10
  %366 = ptrtoint ptr %call.i.i.i142 to i32
  call void @__asan_storeN_noabort(i32 %366, i32 2)
  store i16 3328, ptr %call.i.i.i142, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i143 = getelementptr inbounds i8, ptr %call.i.i.i142, i32 2
  %367 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %367, i32 2)
  store i16 1024, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %tlv_num.i.i.i144 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %365, i32 0, i32 1
  %368 = ptrtoint ptr %tlv_num.i.i.i144 to i32
  call void @__asan_loadN_noabort(i32 %368, i32 2)
  %369 = load i16, ptr %tlv_num.i.i.i144, align 1
  %370 = tail call i16 @llvm.bswap.i16(i16 %369) #10
  %add.i.i.i145 = add i16 %370, 1
  %371 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i145) #10
  %372 = ptrtoint ptr %tlv_num.i.i.i144 to i32
  call void @__asan_storeN_noabort(i32 %372, i32 2)
  store i16 %371, ptr %tlv_num.i.i.i144, align 1
  %idx.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 6
  %373 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %idx.i.i, align 2
  %conv13.i.i = trunc i16 %374 to i8
  %375 = lshr i16 %374, 8
  %376 = trunc i16 %375 to i8
  %conv36.i.i = and i8 %376, 3
  %tobool41.not.i.i = icmp eq ptr %call.i.i.i142, null
  br i1 %tobool41.not.i.i, label %if.end40.i.i.mt7915_mcu_alloc_wtbl_req.exit.i_crit_edge, label %if.then42.i.i

if.end40.i.i.mt7915_mcu_alloc_wtbl_req.exit.i_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_alloc_wtbl_req.exit.i

if.then42.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %377 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 2
  %379 = tail call i16 @llvm.bswap.i16(i16 %378) #10
  %add.i.i28.i = add i16 %379, 8
  %380 = tail call i16 @llvm.bswap.i16(i16 %add.i.i28.i) #10
  %381 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %380, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 2
  br label %mt7915_mcu_alloc_wtbl_req.exit.i

mt7915_mcu_alloc_wtbl_req.exit.i:                 ; preds = %if.then42.i.i, %if.end40.i.i.mt7915_mcu_alloc_wtbl_req.exit.i_crit_edge
  %call.i.i29.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %382 = ptrtoint ptr %call.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %conv13.i.i, ptr %call.i.i29.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i29.i, i32 1
  %383 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 1, ptr %hdr.sroa.5.0.call.i.sroa_idx.i.i, align 1
  %hdr.sroa.7.0.call.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i29.i, i32 2
  %384 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %384, i32 2)
  store i16 0, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %hdr.sroa.9.0.call.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i29.i, i32 4
  %385 = ptrtoint ptr %hdr.sroa.9.0.call.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %conv36.i.i, ptr %hdr.sroa.9.0.call.i.sroa_idx.i.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i29.i, i32 5
  %386 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 0, ptr %hdr.sroa.11.0.call.i.sroa_idx.i.i, align 1
  %hdr.sroa.13.0.call.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i29.i, i32 6
  %387 = ptrtoint ptr %hdr.sroa.13.0.call.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 0, ptr %hdr.sroa.13.0.call.i.sroa_idx.i.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i29.i, i32 7
  %388 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 0, ptr %hdr.sroa.14.0.call.i.sroa_idx.i.i, align 1
  %cmp.i.i = icmp ugt ptr %call.i.i29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mt7915_mcu_sta_wtbl_tlv.exit, label %if.end.i149

if.end.i149:                                      ; preds = %mt7915_mcu_alloc_wtbl_req.exit.i
  %call.i.i30.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #10
  %389 = ptrtoint ptr %call.i.i30.i to i32
  call void @__asan_storeN_noabort(i32 %389, i32 2)
  store i16 0, ptr %call.i.i30.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i31.i = getelementptr inbounds i8, ptr %call.i.i30.i, i32 2
  %390 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i31.i to i32
  call void @__asan_storeN_noabort(i32 %390, i32 2)
  store i16 5120, ptr %tlv.sroa.5.0..sroa_idx.i.i31.i, align 1
  %391 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %391, i32 2)
  %392 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %393 = tail call i16 @llvm.bswap.i16(i16 %392) #10
  %add.i.i33.i = add i16 %393, 1
  %394 = tail call i16 @llvm.bswap.i16(i16 %add.i.i33.i) #10
  %395 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %395, i32 2)
  store i16 %394, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  br i1 %tobool41.not.i.i, label %if.end.i149.mt7915_mcu_add_nested_tlv.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i149.mt7915_mcu_add_nested_tlv.exit.i.i_crit_edge: ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_nested_tlv.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %396 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %396, i32 2)
  %397 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %398 = tail call i16 @llvm.bswap.i16(i16 %397) #10
  %conv10.i.i.i = add i16 %398, 20
  %399 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i.i) #10
  %400 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %400, i32 2)
  store i16 %399, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  br label %mt7915_mcu_add_nested_tlv.exit.i.i

mt7915_mcu_add_nested_tlv.exit.i.i:               ; preds = %if.then.i.i.i, %if.end.i149.mt7915_mcu_add_nested_tlv.exit.i.i_crit_edge
  br i1 %tobool.not, label %if.else.i.i150, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %mt7915_mcu_add_nested_tlv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %peer_addr.i.i = getelementptr inbounds %struct.wtbl_generic, ptr %call.i.i30.i, i32 0, i32 2
  %addr.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %401 = call ptr @memcpy(ptr %peer_addr.i.i, ptr %addr.i.i, i32 6)
  %aid.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %402 = ptrtoint ptr %aid.i.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %aid.i.i, align 2
  %404 = tail call i16 @llvm.bswap.i16(i16 %403) #10
  %partial_aid.i.i = getelementptr inbounds %struct.wtbl_generic, ptr %call.i.i30.i, i32 0, i32 9
  %405 = ptrtoint ptr %partial_aid.i.i to i32
  call void @__asan_storeN_noabort(i32 %405, i32 2)
  store i16 %404, ptr %partial_aid.i.i, align 1
  %omac_idx.i.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %406 = ptrtoint ptr %omac_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %omac_idx.i.i, align 1
  %muar_idx.i.i = getelementptr inbounds %struct.wtbl_generic, ptr %call.i.i30.i, i32 0, i32 3
  %408 = ptrtoint ptr %muar_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %407, ptr %muar_idx.i.i, align 1
  %wme.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %409 = ptrtoint ptr %wme.i.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %wme.i.i, align 4, !range !145
  %qos.i.i = getelementptr inbounds %struct.wtbl_generic, ptr %call.i.i30.i, i32 0, i32 6
  %411 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %410, ptr %qos.i.i, align 1
  br label %if.end12.i.i

if.else.i.i150:                                   ; preds = %mt7915_mcu_add_nested_tlv.exit.i.i
  %412 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %413)
  %cmp.i36.i = icmp eq i32 %413, 2
  %peer_addr6.i.i = getelementptr inbounds %struct.wtbl_generic, ptr %call.i.i30.i, i32 0, i32 2
  br i1 %cmp.i36.i, label %if.then5.i.i, label %if.else8.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  %bss_conf.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %414 = ptrtoint ptr %bss_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %bss_conf.i.i, align 8
  %416 = call ptr @memcpy(ptr %peer_addr6.i.i, ptr %415, i32 6)
  br label %if.end.i37.i

if.else8.i.i:                                     ; preds = %if.else.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  %417 = call ptr @memset(ptr %peer_addr6.i.i, i32 255, i32 6)
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %if.else8.i.i, %if.then5.i.i
  %muar_idx11.i.i = getelementptr inbounds %struct.wtbl_generic, ptr %call.i.i30.i, i32 0, i32 3
  %418 = ptrtoint ptr %muar_idx11.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 14, ptr %muar_idx11.i.i, align 1
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end.i37.i, %if.then.i35.i
  %call.i38.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %419 = ptrtoint ptr %call.i38.i.i to i32
  call void @__asan_storeN_noabort(i32 %419, i32 2)
  store i16 256, ptr %call.i38.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i39.i.i = getelementptr inbounds i8, ptr %call.i38.i.i, i32 2
  %420 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i39.i.i to i32
  call void @__asan_storeN_noabort(i32 %420, i32 2)
  store i16 3072, ptr %tlv.sroa.5.0..sroa_idx.i39.i.i, align 1
  %421 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %421, i32 2)
  %422 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %423 = tail call i16 @llvm.bswap.i16(i16 %422) #10
  %add.i41.i.i = add i16 %423, 1
  %424 = tail call i16 @llvm.bswap.i16(i16 %add.i41.i.i) #10
  %425 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %425, i32 2)
  store i16 %424, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  br i1 %tobool41.not.i.i, label %if.end12.i.i.mt7915_mcu_add_nested_tlv.exit46.i.i_crit_edge, label %if.then.i45.i.i

if.end12.i.i.mt7915_mcu_add_nested_tlv.exit46.i.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_nested_tlv.exit46.i.i

if.then.i45.i.i:                                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %426 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %426, i32 2)
  %427 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %428 = tail call i16 @llvm.bswap.i16(i16 %427) #10
  %conv10.i44.i.i = add i16 %428, 12
  %429 = tail call i16 @llvm.bswap.i16(i16 %conv10.i44.i.i) #10
  %430 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %430, i32 2)
  store i16 %429, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  br label %mt7915_mcu_add_nested_tlv.exit46.i.i

mt7915_mcu_add_nested_tlv.exit46.i.i:             ; preds = %if.then.i45.i.i, %if.end12.i.i.mt7915_mcu_add_nested_tlv.exit46.i.i_crit_edge
  br i1 %tobool.not, label %mt7915_mcu_add_nested_tlv.exit46.i.i.mt7915_mcu_wtbl_generic_tlv.exit.i_crit_edge, label %cond.true.i.i151

mt7915_mcu_add_nested_tlv.exit46.i.i.mt7915_mcu_wtbl_generic_tlv.exit.i_crit_edge: ; preds = %mt7915_mcu_add_nested_tlv.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_wtbl_generic_tlv.exit.i

cond.true.i.i151:                                 ; preds = %mt7915_mcu_add_nested_tlv.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %431 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %432)
  %cmp16.i.i = icmp ne i32 %432, 3
  %phi.cast.i.i = zext i1 %cmp16.i.i to i8
  br label %mt7915_mcu_wtbl_generic_tlv.exit.i

mt7915_mcu_wtbl_generic_tlv.exit.i:               ; preds = %cond.true.i.i151, %mt7915_mcu_add_nested_tlv.exit46.i.i.mt7915_mcu_wtbl_generic_tlv.exit.i_crit_edge
  %cond.i.i152 = phi i8 [ %phi.cast.i.i, %cond.true.i.i151 ], [ 1, %mt7915_mcu_add_nested_tlv.exit46.i.i.mt7915_mcu_wtbl_generic_tlv.exit.i_crit_edge ]
  %rca1.i.i = getelementptr inbounds %struct.wtbl_rx, ptr %call.i38.i.i, i32 0, i32 3
  %433 = ptrtoint ptr %rca1.i.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %cond.i.i152, ptr %rca1.i.i, align 1
  %rca2.i.i = getelementptr inbounds %struct.wtbl_rx, ptr %call.i38.i.i, i32 0, i32 4
  %434 = ptrtoint ptr %rca2.i.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 1, ptr %rca2.i.i, align 1
  %rv.i.i = getelementptr inbounds %struct.wtbl_rx, ptr %call.i38.i.i, i32 0, i32 5
  %435 = ptrtoint ptr %rv.i.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 1, ptr %rv.i.i, align 1
  %call.i.i38.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %436 = ptrtoint ptr %call.i.i38.i to i32
  call void @__asan_storeN_noabort(i32 %436, i32 2)
  store i16 1536, ptr %call.i.i38.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i39.i = getelementptr inbounds i8, ptr %call.i.i38.i, i32 2
  %437 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i39.i to i32
  call void @__asan_storeN_noabort(i32 %437, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i39.i, align 1
  %438 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %438, i32 2)
  %439 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %440 = tail call i16 @llvm.bswap.i16(i16 %439) #10
  %add.i.i41.i = add i16 %440, 1
  %441 = tail call i16 @llvm.bswap.i16(i16 %add.i.i41.i) #10
  %442 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %442, i32 2)
  store i16 %441, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  br i1 %tobool41.not.i.i, label %mt7915_mcu_wtbl_generic_tlv.exit.i.mt7915_mcu_add_nested_tlv.exit.i48.i_crit_edge, label %if.then.i.i45.i

mt7915_mcu_wtbl_generic_tlv.exit.i.mt7915_mcu_add_nested_tlv.exit.i48.i_crit_edge: ; preds = %mt7915_mcu_wtbl_generic_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_nested_tlv.exit.i48.i

if.then.i.i45.i:                                  ; preds = %mt7915_mcu_wtbl_generic_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %443 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %443, i32 2)
  %444 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %445 = tail call i16 @llvm.bswap.i16(i16 %444) #10
  %conv10.i.i44.i = add i16 %445, 8
  %446 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i44.i) #10
  %447 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %447, i32 2)
  store i16 %446, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  br label %mt7915_mcu_add_nested_tlv.exit.i48.i

mt7915_mcu_add_nested_tlv.exit.i48.i:             ; preds = %if.then.i.i45.i, %mt7915_mcu_wtbl_generic_tlv.exit.i.mt7915_mcu_add_nested_tlv.exit.i48.i_crit_edge
  %no_rx_trans.i.i = getelementptr inbounds %struct.wtbl_hdr_trans, ptr %call.i.i38.i, i32 0, i32 4
  %448 = ptrtoint ptr %no_rx_trans.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 1, ptr %no_rx_trans.i.i, align 1
  %449 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %450)
  %cmp.i46.i = icmp eq i32 %450, 2
  %from_ds.i.i = getelementptr inbounds %struct.wtbl_hdr_trans, ptr %call.i.i38.i, i32 0, i32 3
  %to_ds.i.i = getelementptr inbounds %struct.wtbl_hdr_trans, ptr %call.i.i38.i, i32 0, i32 2
  %from_ds.sink.i.i = select i1 %cmp.i46.i, ptr %to_ds.i.i, ptr %from_ds.i.i
  %451 = ptrtoint ptr %from_ds.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 1, ptr %from_ds.sink.i.i, align 1
  br i1 %tobool.not, label %mt7915_mcu_add_nested_tlv.exit.i48.i.if.end24_crit_edge, label %if.end2.i.i

mt7915_mcu_add_nested_tlv.exit.i48.i.if.end24_crit_edge: ; preds = %mt7915_mcu_add_nested_tlv.exit.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end2.i.i:                                      ; preds = %mt7915_mcu_add_nested_tlv.exit.i48.i
  %flags.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %452 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load volatile i32, ptr %flags.i.i, align 4
  %454 = trunc i32 %453 to i8
  %455 = lshr i8 %454, 3
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  %458 = ptrtoint ptr %no_rx_trans.i.i to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %457, ptr %no_rx_trans.i.i, align 1
  %459 = load volatile i32, ptr %flags.i.i, align 4
  %460 = and i32 %459, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool9.not.i.i = icmp eq i32 %460, 0
  br i1 %tobool9.not.i.i, label %if.end2.i.i.if.then8.i_crit_edge, label %if.then10.i.i

if.end2.i.i.if.then8.i_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then10.i.i:                                    ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %461 = ptrtoint ptr %to_ds.i.i to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 1, ptr %to_ds.i.i, align 1
  %462 = ptrtoint ptr %from_ds.i.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 1, ptr %from_ds.i.i, align 1
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then10.i.i, %if.end2.i.i.if.then8.i_crit_edge
  %ht_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %ht_supported.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %463 = ptrtoint ptr %ht_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %ht_supported.i.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %464)
  %tobool.not.i50.i = icmp eq i8 %464, 0
  br i1 %tobool.not.i50.i, label %if.then8.i.if.end.i61.i_crit_edge, label %if.then.i56.i

if.then8.i.if.end.i61.i_crit_edge:                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i61.i

if.then.i56.i:                                    ; preds = %if.then8.i
  %call.i.i51.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %465 = ptrtoint ptr %call.i.i51.i to i32
  call void @__asan_storeN_noabort(i32 %465, i32 2)
  store i16 512, ptr %call.i.i51.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i52.i = getelementptr inbounds i8, ptr %call.i.i51.i, i32 2
  %466 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i52.i to i32
  call void @__asan_storeN_noabort(i32 %466, i32 2)
  store i16 3072, ptr %tlv.sroa.5.0..sroa_idx.i.i52.i, align 1
  %467 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %467, i32 2)
  %468 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %469 = tail call i16 @llvm.bswap.i16(i16 %468) #10
  %add.i.i54.i = add i16 %469, 1
  %470 = tail call i16 @llvm.bswap.i16(i16 %add.i.i54.i) #10
  %471 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %471, i32 2)
  store i16 %470, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  br i1 %tobool41.not.i.i, label %if.then.i56.i.mt7915_mcu_add_nested_tlv.exit.i60.i_crit_edge, label %if.then.i.i59.i

if.then.i56.i.mt7915_mcu_add_nested_tlv.exit.i60.i_crit_edge: ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_nested_tlv.exit.i60.i

if.then.i.i59.i:                                  ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  %472 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %472, i32 2)
  %473 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %474 = tail call i16 @llvm.bswap.i16(i16 %473) #10
  %conv10.i.i58.i = add i16 %474, 12
  %475 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i58.i) #10
  %476 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %476, i32 2)
  store i16 %475, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  br label %mt7915_mcu_add_nested_tlv.exit.i60.i

mt7915_mcu_add_nested_tlv.exit.i60.i:             ; preds = %if.then.i.i59.i, %if.then.i56.i.mt7915_mcu_add_nested_tlv.exit.i60.i_crit_edge
  %cap.i.i153 = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %477 = ptrtoint ptr %cap.i.i153 to i32
  call void @__asan_load1_noabort(i32 %477)
  %bf.load.i.i154 = load i8, ptr %cap.i.i153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i154)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i154, -1
  br i1 %bf.cast.not.i.i, label %mt7915_mcu_add_nested_tlv.exit.i60.i.land.end.i.i_crit_edge, label %land.rhs.i.i

mt7915_mcu_add_nested_tlv.exit.i60.i.land.end.i.i_crit_edge: ; preds = %mt7915_mcu_add_nested_tlv.exit.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %mt7915_mcu_add_nested_tlv.exit.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  %478 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %ht_cap.i.i, align 4
  %480 = and i16 %479, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %480)
  %tobool3.i.i = icmp ne i16 %480, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %mt7915_mcu_add_nested_tlv.exit.i60.i.land.end.i.i_crit_edge
  %481 = phi i1 [ false, %mt7915_mcu_add_nested_tlv.exit.i60.i.land.end.i.i_crit_edge ], [ %tobool3.i.i, %land.rhs.i.i ]
  %conv4.i.i = zext i1 %481 to i8
  %ldpc.i.i = getelementptr inbounds %struct.wtbl_ht, ptr %call.i.i51.i, i32 0, i32 3
  %482 = ptrtoint ptr %ldpc.i.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %conv4.i.i, ptr %ldpc.i.i, align 1
  %ampdu_factor.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %483 = ptrtoint ptr %ampdu_factor.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %ampdu_factor.i.i, align 1
  %af.i.i = getelementptr inbounds %struct.wtbl_ht, ptr %call.i.i51.i, i32 0, i32 4
  %485 = ptrtoint ptr %af.i.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %484, ptr %af.i.i, align 1
  %ampdu_density.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %486 = ptrtoint ptr %ampdu_density.i.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %ampdu_density.i.i, align 4
  %mm.i.i = getelementptr inbounds %struct.wtbl_ht, ptr %call.i.i51.i, i32 0, i32 5
  %488 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %487, ptr %mm.i.i, align 1
  %ht7.i.i = getelementptr inbounds %struct.wtbl_ht, ptr %call.i.i51.i, i32 0, i32 2
  %489 = ptrtoint ptr %ht7.i.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 1, ptr %ht7.i.i, align 1
  br label %if.end.i61.i

if.end.i61.i:                                     ; preds = %land.end.i.i, %if.then8.i.if.end.i61.i_crit_edge
  %ht.0.i.i = phi ptr [ %call.i.i51.i, %land.end.i.i ], [ null, %if.then8.i.if.end.i61.i_crit_edge ]
  %vht_cap.i.i155 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %490 = ptrtoint ptr %vht_cap.i.i155 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %vht_cap.i.i155, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %491)
  %tobool8.not.i.i = icmp eq i8 %491, 0
  br i1 %tobool8.not.i.i, label %if.end.i61.i.if.end55.i.i_crit_edge, label %if.then9.i.i

if.end.i61.i.if.end55.i.i_crit_edge:              ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then9.i.i:                                     ; preds = %if.end.i61.i
  %call.i80.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %492 = ptrtoint ptr %call.i80.i.i to i32
  call void @__asan_storeN_noabort(i32 %492, i32 2)
  store i16 768, ptr %call.i80.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i81.i.i = getelementptr inbounds i8, ptr %call.i80.i.i, i32 2
  %493 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i81.i.i to i32
  call void @__asan_storeN_noabort(i32 %493, i32 2)
  store i16 3072, ptr %tlv.sroa.5.0..sroa_idx.i81.i.i, align 1
  %494 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %494, i32 2)
  %495 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %496 = tail call i16 @llvm.bswap.i16(i16 %495) #10
  %add.i83.i.i = add i16 %496, 1
  %497 = tail call i16 @llvm.bswap.i16(i16 %add.i83.i.i) #10
  %498 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %498, i32 2)
  store i16 %497, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  br i1 %tobool41.not.i.i, label %if.then9.i.i.mt7915_mcu_add_nested_tlv.exit88.i.i_crit_edge, label %if.then.i87.i.i

if.then9.i.i.mt7915_mcu_add_nested_tlv.exit88.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_add_nested_tlv.exit88.i.i

if.then.i87.i.i:                                  ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %499 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %499, i32 2)
  %500 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %501 = tail call i16 @llvm.bswap.i16(i16 %500) #10
  %conv10.i86.i.i = add i16 %501, 12
  %502 = tail call i16 @llvm.bswap.i16(i16 %conv10.i86.i.i) #10
  %503 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %503, i32 2)
  store i16 %502, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  br label %mt7915_mcu_add_nested_tlv.exit88.i.i

mt7915_mcu_add_nested_tlv.exit88.i.i:             ; preds = %if.then.i87.i.i, %if.then9.i.i.mt7915_mcu_add_nested_tlv.exit88.i.i_crit_edge
  %cap12.i.i = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %504 = ptrtoint ptr %cap12.i.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %bf.load13.i.i = load i8, ptr %cap12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13.i.i)
  %bf.cast15.not.i.i = icmp sgt i8 %bf.load13.i.i, -1
  br i1 %bf.cast15.not.i.i, label %mt7915_mcu_add_nested_tlv.exit88.i.i.land.end22.i.i_crit_edge, label %land.rhs17.i.i

mt7915_mcu_add_nested_tlv.exit88.i.i.land.end22.i.i_crit_edge: ; preds = %mt7915_mcu_add_nested_tlv.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end22.i.i

land.rhs17.i.i:                                   ; preds = %mt7915_mcu_add_nested_tlv.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cap19.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %505 = ptrtoint ptr %cap19.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %cap19.i.i, align 4
  %and20.i.i156 = and i32 %506, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i156)
  %tobool21.i.i = icmp ne i32 %and20.i.i156, 0
  br label %land.end22.i.i

land.end22.i.i:                                   ; preds = %land.rhs17.i.i, %mt7915_mcu_add_nested_tlv.exit88.i.i.land.end22.i.i_crit_edge
  %507 = phi i1 [ false, %mt7915_mcu_add_nested_tlv.exit88.i.i.land.end22.i.i_crit_edge ], [ %tobool21.i.i, %land.rhs17.i.i ]
  %conv24.i.i = zext i1 %507 to i8
  %ldpc25.i.i = getelementptr inbounds %struct.wtbl_vht, ptr %call.i80.i.i, i32 0, i32 2
  %508 = ptrtoint ptr %ldpc25.i.i to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %conv24.i.i, ptr %ldpc25.i.i, align 1
  %vht26.i.i = getelementptr inbounds %struct.wtbl_vht, ptr %call.i80.i.i, i32 0, i32 4
  %509 = ptrtoint ptr %vht26.i.i to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 1, ptr %vht26.i.i, align 1
  %tobool43.not.i.i = icmp eq ptr %ht.0.i.i, null
  br i1 %tobool43.not.i.i, label %land.end22.i.i.if.end55.i.i_crit_edge, label %if.then44.i.i

land.end22.i.i.if.end55.i.i_crit_edge:            ; preds = %land.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then44.i.i:                                    ; preds = %land.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cap40.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %510 = ptrtoint ptr %cap40.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %cap40.i.i, align 4
  %and41.i.i = lshr i32 %511, 23
  %conv42.i.i = and i32 %and41.i.i, 7
  %af45.i.i = getelementptr inbounds %struct.wtbl_ht, ptr %ht.0.i.i, i32 0, i32 4
  %512 = ptrtoint ptr %af45.i.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %af45.i.i, align 1
  %conv47.i.i = zext i8 %513 to i32
  %514 = tail call i32 @llvm.umax.i32(i32 %conv42.i.i, i32 %conv47.i.i) #10
  %conv52.i.i = trunc i32 %514 to i8
  %515 = ptrtoint ptr %af45.i.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %conv52.i.i, ptr %af45.i.i, align 1
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then44.i.i, %land.end22.i.i.if.end55.i.i_crit_edge, %if.end.i61.i.if.end55.i.i_crit_edge
  %call.i.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %516 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %516, i32 2)
  store i16 3328, ptr %call.i.i.i.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %call.i.i.i.i, i32 2
  %517 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %517, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i.i.i, align 1
  %518 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %518, i32 2)
  %519 = load i16, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  %520 = tail call i16 @llvm.bswap.i16(i16 %519) #10
  %add.i.i.i.i = add i16 %520, 1
  %521 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i.i) #10
  %522 = ptrtoint ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %522, i32 2)
  store i16 %521, ptr %hdr.sroa.7.0.call.i.sroa_idx.i.i, align 1
  br i1 %tobool41.not.i.i, label %if.end55.i.i.if.end17.thread255_crit_edge, label %if.then.i.i.i.i

if.end55.i.i.if.end17.thread255_crit_edge:        ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread255

if.then.i.i.i.i:                                  ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %523 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %523, i32 2)
  %524 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  %525 = tail call i16 @llvm.bswap.i16(i16 %524) #10
  %conv10.i.i.i.i = add i16 %525, 8
  %526 = tail call i16 @llvm.bswap.i16(i16 %conv10.i.i.i.i) #10
  %527 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %527, i32 2)
  store i16 %526, ptr %tlv.sroa.5.0..sroa_idx.i.i.i143, align 1
  br label %if.end17.thread255

if.end17.thread255:                               ; preds = %if.then.i.i.i.i, %if.end55.i.i.if.end17.thread255_crit_edge
  %smps_mode.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %528 = ptrtoint ptr %smps_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %smps_mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %529)
  %cmp.i.i.i = icmp eq i32 %529, 3
  %conv1.i.i.i = zext i1 %cmp.i.i.i to i8
  %smps2.i.i.i = getelementptr inbounds %struct.wtbl_smps, ptr %call.i.i.i.i, i32 0, i32 2
  %530 = ptrtoint ptr %smps2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %conv1.i.i.i, ptr %smps2.i.i.i, align 1
  %531 = ptrtoint ptr %ht_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %ht_supported.i.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %532)
  %tobool22.not = icmp eq i8 %532, 0
  br i1 %tobool22.not, label %if.end17.thread255.if.end24_crit_edge, label %if.then23

if.end17.thread255.if.end24_crit_edge:            ; preds = %if.end17.thread255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

mt7915_mcu_sta_wtbl_tlv.exit:                     ; preds = %mt7915_mcu_alloc_wtbl_req.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %533 = ptrtoint ptr %call.i.i29.i to i32
  br label %cleanup

if.then23:                                        ; preds = %if.end17.thread255
  %534 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %vif, align 8
  %536 = and i32 %535, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %536)
  %switch.i = icmp eq i32 %536, 2
  br i1 %switch.i, label %if.end.i159, label %if.then23.mt7915_mcu_sta_amsdu_tlv.exit_crit_edge

if.then23.mt7915_mcu_sta_amsdu_tlv.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_amsdu_tlv.exit

if.end.i159:                                      ; preds = %if.then23
  %max_amsdu_len.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 21
  %537 = ptrtoint ptr %max_amsdu_len.i to i32
  call void @__asan_load2_noabort(i32 %537)
  %538 = load i16, ptr %max_amsdu_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %538)
  %tobool.not.i158 = icmp eq i16 %538, 0
  br i1 %tobool.not.i158, label %if.end.i159.mt7915_mcu_sta_amsdu_tlv.exit_crit_edge, label %if.end4.i

if.end.i159.mt7915_mcu_sta_amsdu_tlv.exit_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_amsdu_tlv.exit

if.end4.i:                                        ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  %539 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i161 = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 8) #10
  %541 = ptrtoint ptr %call.i.i.i161 to i32
  call void @__asan_storeN_noabort(i32 %541, i32 2)
  store i16 3840, ptr %call.i.i.i161, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i162 = getelementptr inbounds i8, ptr %call.i.i.i161, i32 2
  %542 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i162 to i32
  call void @__asan_storeN_noabort(i32 %542, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i.i162, align 1
  %tlv_num.i.i.i163 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %540, i32 0, i32 1
  %543 = ptrtoint ptr %tlv_num.i.i.i163 to i32
  call void @__asan_loadN_noabort(i32 %543, i32 2)
  %544 = load i16, ptr %tlv_num.i.i.i163, align 1
  %545 = tail call i16 @llvm.bswap.i16(i16 %544) #10
  %add.i.i.i164 = add i16 %545, 1
  %546 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i164) #10
  %547 = ptrtoint ptr %tlv_num.i.i.i163 to i32
  call void @__asan_storeN_noabort(i32 %547, i32 2)
  store i16 %546, ptr %tlv_num.i.i.i163, align 1
  %max_amsdu_num.i = getelementptr inbounds %struct.sta_rec_amsdu, ptr %call.i.i.i161, i32 0, i32 2
  %548 = ptrtoint ptr %max_amsdu_num.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 8, ptr %max_amsdu_num.i, align 1
  %amsdu_en.i = getelementptr inbounds %struct.sta_rec_amsdu, ptr %call.i.i.i161, i32 0, i32 4
  %549 = ptrtoint ptr %amsdu_en.i to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 1, ptr %amsdu_en.i, align 1
  %550 = ptrtoint ptr %max_amsdu_len.i to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %max_amsdu_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7990, i16 %551)
  %cmp6.i = icmp ugt i16 %551, 7990
  %conv8.i = zext i1 %cmp6.i to i8
  %max_mpdu_size.i = getelementptr inbounds %struct.sta_rec_amsdu, ptr %call.i.i.i161, i32 0, i32 3
  %552 = ptrtoint ptr %max_mpdu_size.i to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 %conv8.i, ptr %max_mpdu_size.i, align 1
  %amsdu9.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %553 = ptrtoint ptr %amsdu9.i to i32
  call void @__asan_load1_noabort(i32 %553)
  %bf.load.i165 = load i8, ptr %amsdu9.i, align 2
  %bf.set.i = or i8 %bf.load.i165, 32
  store i8 %bf.set.i, ptr %amsdu9.i, align 2
  br label %mt7915_mcu_sta_amsdu_tlv.exit

mt7915_mcu_sta_amsdu_tlv.exit:                    ; preds = %if.end4.i, %if.end.i159.mt7915_mcu_sta_amsdu_tlv.exit_crit_edge, %if.then23.mt7915_mcu_sta_amsdu_tlv.exit_crit_edge
  tail call fastcc void @mt7915_mcu_sta_he_tlv(ptr noundef %call.i, ptr noundef nonnull %sta, ptr noundef %vif)
  %he_cap.i167 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %554 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %vif, align 8
  %556 = and i32 %555, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %556)
  %switch.i168 = icmp eq i32 %556, 2
  br i1 %switch.i168, label %if.end.i171, label %mt7915_mcu_sta_amsdu_tlv.exit.mt7915_mcu_sta_muru_tlv.exit_crit_edge

mt7915_mcu_sta_amsdu_tlv.exit.mt7915_mcu_sta_muru_tlv.exit_crit_edge: ; preds = %mt7915_mcu_sta_amsdu_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_muru_tlv.exit

if.end.i171:                                      ; preds = %mt7915_mcu_sta_amsdu_tlv.exit
  %557 = ptrtoint ptr %vht_cap.i.i155 to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %vht_cap.i.i155, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %558)
  %tobool.not.i170 = icmp eq i8 %558, 0
  br i1 %tobool.not.i170, label %if.end.i171.mt7915_mcu_sta_muru_tlv.exit_crit_edge, label %if.end4.i179

if.end.i171.mt7915_mcu_sta_muru_tlv.exit_crit_edge: ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_muru_tlv.exit

if.end4.i179:                                     ; preds = %if.end.i171
  %559 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i173 = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 36) #10
  %561 = ptrtoint ptr %call.i.i.i173 to i32
  call void @__asan_storeN_noabort(i32 %561, i32 2)
  store i16 4608, ptr %call.i.i.i173, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i174 = getelementptr inbounds i8, ptr %call.i.i.i173, i32 2
  %562 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i174 to i32
  call void @__asan_storeN_noabort(i32 %562, i32 2)
  store i16 9216, ptr %tlv.sroa.5.0..sroa_idx.i.i.i174, align 1
  %tlv_num.i.i.i175 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %560, i32 0, i32 1
  %563 = ptrtoint ptr %tlv_num.i.i.i175 to i32
  call void @__asan_loadN_noabort(i32 %563, i32 2)
  %564 = load i16, ptr %tlv_num.i.i.i175, align 1
  %565 = tail call i16 @llvm.bswap.i16(i16 %564) #10
  %add.i.i.i176 = add i16 %565, 1
  %566 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i176) #10
  %567 = ptrtoint ptr %tlv_num.i.i.i175 to i32
  call void @__asan_storeN_noabort(i32 %567, i32 2)
  store i16 %566, ptr %tlv_num.i.i.i175, align 1
  %cap.i177 = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %568 = ptrtoint ptr %cap.i177 to i32
  call void @__asan_load1_noabort(i32 %568)
  %bf.load.i178 = load i8, ptr %cap.i177, align 1
  %569 = and i8 %bf.load.i178, 25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %569)
  %570 = icmp ne i8 %569, 0
  %mimo_dl_en.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 2, i32 2
  %frombool.i = zext i1 %570 to i8
  %571 = ptrtoint ptr %mimo_dl_en.i to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %frombool.i, ptr %mimo_dl_en.i, align 1
  %cap15.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %572 = ptrtoint ptr %cap15.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %cap15.i, align 4
  %mimo_dl.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 5
  %and.i = lshr i32 %573, 20
  %574 = trunc i32 %and.i to i8
  %575 = and i8 %574, 1
  %576 = ptrtoint ptr %mimo_dl.i to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 %575, ptr %mimo_dl.i, align 1
  %577 = ptrtoint ptr %he_cap.i167 to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %he_cap.i167, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %578)
  %tobool20.not.i = icmp eq i8 %578, 0
  br i1 %tobool20.not.i, label %if.end4.i179.mt7915_mcu_sta_muru_tlv.exit_crit_edge, label %if.end22.i181

if.end4.i179.mt7915_mcu_sta_muru_tlv.exit_crit_edge: ; preds = %if.end4.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_sta_muru_tlv.exit

if.end22.i181:                                    ; preds = %if.end4.i179
  call void @__sanitizer_cov_trace_pc() #12
  %cfg.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 6
  %579 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx.i, align 1
  %partial_bw_dl_mimo.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 5, i32 1
  %581 = lshr i8 %580, 6
  %.lobit.i180 = and i8 %581, 1
  %582 = ptrtoint ptr %partial_bw_dl_mimo.i to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 %.lobit.i180, ptr %partial_bw_dl_mimo.i, align 1
  %mimo_ul_en.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 2, i32 3
  %583 = ptrtoint ptr %mimo_ul_en.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 1, ptr %mimo_ul_en.i, align 1
  %arrayidx29.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 2
  %584 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %arrayidx29.i, align 1
  %mimo_ul.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 6
  %586 = lshr i8 %585, 6
  %.lobit122.i = and i8 %586, 1
  %587 = ptrtoint ptr %mimo_ul.i to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %.lobit122.i, ptr %mimo_ul.i, align 1
  %588 = load i8, ptr %arrayidx29.i, align 1
  %partial_ul_mimo.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 6, i32 1
  %.lobit124.i = lshr i8 %588, 7
  %589 = ptrtoint ptr %partial_ul_mimo.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %.lobit124.i, ptr %partial_ul_mimo.i, align 1
  %590 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 1, ptr %cfg.i, align 1
  %arrayidx41.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 1
  %591 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %arrayidx41.i, align 1
  %and6.i107.i = and i8 %592, 15
  %ofdma_dl.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 3
  %593 = ptrtoint ptr %ofdma_dl.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %and6.i107.i, ptr %ofdma_dl.i, align 1
  %arrayidx44.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 8
  %594 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %arrayidx44.i, align 1
  %he_20m_in_40m_2g.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 3, i32 1
  %596 = lshr i8 %595, 1
  %.lobit126.i = and i8 %596, 1
  %597 = ptrtoint ptr %he_20m_in_40m_2g.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %.lobit126.i, ptr %he_20m_in_40m_2g.i, align 1
  %598 = load i8, ptr %arrayidx44.i, align 1
  %he_20m_in_160m.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 3, i32 2
  %599 = lshr i8 %598, 2
  %.lobit128.i = and i8 %599, 1
  %600 = ptrtoint ptr %he_20m_in_160m.i to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 %.lobit128.i, ptr %he_20m_in_160m.i, align 1
  %601 = load i8, ptr %arrayidx44.i, align 1
  %he_80m_in_160m.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 3, i32 3
  %602 = lshr i8 %601, 3
  %.lobit130.i = and i8 %602, 1
  %603 = ptrtoint ptr %he_80m_in_160m.i to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %.lobit130.i, ptr %he_80m_in_160m.i, align 1
  %arrayidx61.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 1
  %604 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %arrayidx61.i, align 1
  %and6.i114.i = lshr i8 %605, 2
  %div7.i115131.i = and i8 %and6.i114.i, 3
  %ofdma_ul.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 4
  %606 = ptrtoint ptr %ofdma_ul.i to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 %div7.i115131.i, ptr %ofdma_ul.i, align 1
  %arrayidx64.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 2
  %607 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %arrayidx64.i, align 1
  %and6.i116.i = lshr i8 %608, 6
  %div7.i117132.i = and i8 %and6.i116.i, 1
  %mu_cascading.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 4, i32 1
  %609 = ptrtoint ptr %mu_cascading.i to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %div7.i117132.i, ptr %mu_cascading.i, align 1
  %arrayidx68.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 3
  %610 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %arrayidx68.i, align 1
  %and6.i118.i = lshr i8 %611, 2
  %div7.i119133.i = and i8 %and6.i118.i, 1
  %uo_ra.i = getelementptr inbounds %struct.sta_rec_muru, ptr %call.i.i.i173, i32 0, i32 4, i32 2
  %612 = ptrtoint ptr %uo_ra.i to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %div7.i119133.i, ptr %uo_ra.i, align 1
  br label %mt7915_mcu_sta_muru_tlv.exit

mt7915_mcu_sta_muru_tlv.exit:                     ; preds = %if.end22.i181, %if.end4.i179.mt7915_mcu_sta_muru_tlv.exit_crit_edge, %if.end.i171.mt7915_mcu_sta_muru_tlv.exit_crit_edge, %mt7915_mcu_sta_amsdu_tlv.exit.mt7915_mcu_sta_muru_tlv.exit_crit_edge
  %band_idx.i183 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %613 = ptrtoint ptr %band_idx.i183 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %band_idx.i183, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %614)
  %tobool.not.i184 = icmp eq i8 %614, 0
  br i1 %tobool.not.i184, label %cond.false.i191, label %cond.true.i187

cond.true.i187:                                   ; preds = %mt7915_mcu_sta_muru_tlv.exit
  %phy2.i.i185 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %615 = ptrtoint ptr %phy2.i.i185 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %phy2.i.i185, align 8
  %tobool.not.i.i186 = icmp eq ptr %616, null
  br i1 %tobool.not.i.i186, label %cond.true.i187.cond.false78.i202_crit_edge, label %if.end.i.i189

cond.true.i187.cond.false78.i202_crit_edge:       ; preds = %cond.true.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false78.i202

if.end.i.i189:                                    ; preds = %cond.true.i187
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i.i188 = getelementptr inbounds %struct.mt76_phy, ptr %616, i32 0, i32 2
  %617 = ptrtoint ptr %priv.i.i188 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %priv.i.i188, align 8
  br label %cond.false78.i202

cond.false.i191:                                  ; preds = %mt7915_mcu_sta_muru_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %phy1.i190 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4
  br label %cond.false78.i202

cond.false78.i202:                                ; preds = %cond.false.i191, %if.end.i.i189, %cond.true.i187.cond.false78.i202_crit_edge
  %cond.i192 = phi ptr [ %phy1.i190, %cond.false.i191 ], [ %618, %if.end.i.i189 ], [ null, %cond.true.i187.cond.false78.i202_crit_edge ]
  %619 = ptrtoint ptr %cond.i192 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %cond.i192, align 8
  %chainmask.i193 = getelementptr inbounds %struct.mt76_phy, ptr %620, i32 0, i32 16
  %621 = ptrtoint ptr %chainmask.i193 to i32
  call void @__asan_load2_noabort(i32 %621)
  %622 = load i16, ptr %chainmask.i193, align 2
  %conv81.i200 = zext i16 %622 to i32
  %call.i.i201 = tail call i32 @__sw_hweight8(i32 noundef %conv81.i200) #10
  %623 = ptrtoint ptr %cond.i192 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %cond.i192, align 8
  %chainmask.i.i204 = getelementptr inbounds %struct.mt76_phy, ptr %624, i32 0, i32 16
  %625 = ptrtoint ptr %chainmask.i.i204 to i32
  call void @__asan_load2_noabort(i32 %625)
  %626 = load i16, ptr %chainmask.i.i204, align 2
  %conv75.i.i206 = zext i16 %626 to i32
  %call.i.i.i207 = tail call i32 @__sw_hweight8(i32 noundef %conv75.i.i206) #10
  %627 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %vif, align 8
  %629 = and i32 %628, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %629)
  %switch.i.i209 = icmp eq i32 %629, 2
  br i1 %switch.i.i209, label %if.end.i140.i, label %cond.false78.i202.if.end24_crit_edge

cond.false78.i202.if.end24_crit_edge:             ; preds = %cond.false78.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i140.i:                                    ; preds = %cond.false78.i202
  %630 = ptrtoint ptr %he_cap.i167 to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %he_cap.i167, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %631)
  %tobool86.not.i.i212 = icmp eq i8 %631, 0
  br i1 %tobool86.not.i.i212, label %if.end108.i.i221, label %if.then87.i.i216

if.then87.i.i216:                                 ; preds = %if.end.i140.i
  %cap.i.i213 = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %632 = ptrtoint ptr %cap.i.i213 to i32
  call void @__asan_load1_noabort(i32 %632)
  %bf.load.i.i214 = load i8, ptr %cap.i.i213, align 1
  %633 = and i8 %bf.load.i.i214, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %633)
  %bf.cast.not.i.i215 = icmp eq i8 %633, 0
  br i1 %bf.cast.not.i.i215, label %if.then87.i.i216.if.end24_crit_edge, label %land.rhs.i.i218

if.then87.i.i216.if.end24_crit_edge:              ; preds = %if.then87.i.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.rhs.i.i218:                                  ; preds = %if.then87.i.i216
  %arrayidx.i.i217 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %634 = ptrtoint ptr %arrayidx.i.i217 to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %arrayidx.i.i217, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %635)
  %tobool94.i.i = icmp slt i8 %635, 0
  br i1 %tobool94.i.i, label %land.rhs.i.i218.if.end.i231_crit_edge, label %land.rhs.i.i218.if.end24_crit_edge

land.rhs.i.i218.if.end24_crit_edge:               ; preds = %land.rhs.i.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.rhs.i.i218.if.end.i231_crit_edge:            ; preds = %land.rhs.i.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i231

if.end108.i.i221:                                 ; preds = %if.end.i140.i
  %636 = ptrtoint ptr %vht_cap.i.i155 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %vht_cap.i.i155, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %637)
  %tobool109.not.i.i220 = icmp eq i8 %637, 0
  br i1 %tobool109.not.i.i220, label %if.end108.i.i221.if.end24_crit_edge, label %mt7915_is_ebf_supported.exit.i225

if.end108.i.i221.if.end24_crit_edge:              ; preds = %if.end108.i.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

mt7915_is_ebf_supported.exit.i225:                ; preds = %if.end108.i.i221
  %cap113.i.i222 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %638 = ptrtoint ptr %cap113.i.i222 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %cap113.i.i222, align 4
  %cap116.i.i223 = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %640 = ptrtoint ptr %cap116.i.i223 to i32
  call void @__asan_load1_noabort(i32 %640)
  %bf.load117.i.i224 = load i8, ptr %cap116.i.i223, align 1
  %641 = and i8 %bf.load117.i.i224, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %641)
  %bf.cast120.not.i.i = icmp ne i8 %641, 0
  %and123.i.i = and i32 %639, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i.i)
  %tobool124.i.i = icmp ne i32 %and123.i.i, 0
  %642 = select i1 %bf.cast120.not.i.i, i1 %tobool124.i.i, i1 false
  br i1 %642, label %mt7915_is_ebf_supported.exit.i225.if.end.i231_crit_edge, label %mt7915_is_ebf_supported.exit.i225.if.end24_crit_edge

mt7915_is_ebf_supported.exit.i225.if.end24_crit_edge: ; preds = %mt7915_is_ebf_supported.exit.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

mt7915_is_ebf_supported.exit.i225.if.end.i231_crit_edge: ; preds = %mt7915_is_ebf_supported.exit.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i231

if.end.i231:                                      ; preds = %mt7915_is_ebf_supported.exit.i225.if.end.i231_crit_edge, %land.rhs.i.i218.if.end.i231_crit_edge
  %643 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %data.i.i, align 4
  %call.i.i141.i = tail call ptr @skb_put(ptr noundef %call.i, i32 noundef 8) #10
  %645 = ptrtoint ptr %call.i.i141.i to i32
  call void @__asan_storeN_noabort(i32 %645, i32 2)
  store i16 5120, ptr %call.i.i141.i, align 1
  %tlv.sroa.5.0..sroa_idx.i.i.i227 = getelementptr inbounds i8, ptr %call.i.i141.i, i32 2
  %646 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i.i227 to i32
  call void @__asan_storeN_noabort(i32 %646, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i.i227, align 1
  %tlv_num.i.i.i228 = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %644, i32 0, i32 1
  %647 = ptrtoint ptr %tlv_num.i.i.i228 to i32
  call void @__asan_loadN_noabort(i32 %647, i32 2)
  %648 = load i16, ptr %tlv_num.i.i.i228, align 1
  %649 = tail call i16 @llvm.bswap.i16(i16 %648) #10
  %add.i.i.i229 = add i16 %649, 1
  %650 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i229) #10
  %651 = ptrtoint ptr %tlv_num.i.i.i228 to i32
  call void @__asan_storeN_noabort(i32 %651, i32 2)
  store i16 %650, ptr %tlv_num.i.i.i228, align 1
  %652 = ptrtoint ptr %he_cap.i167 to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %he_cap.i167, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %653)
  %tobool87.not.i230 = icmp eq i8 %653, 0
  br i1 %tobool87.not.i230, label %if.else.i234, label %if.then88.i

if.then88.i:                                      ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i232 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 5
  %654 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %arrayidx.i232, align 1
  %and6.i.i = and i8 %655, 7
  br label %if.end109.i

if.else.i234:                                     ; preds = %if.end.i231
  %656 = ptrtoint ptr %vht_cap.i.i155 to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %vht_cap.i.i155, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %657)
  %tobool91.not.i = icmp eq i8 %657, 0
  br i1 %tobool91.not.i, label %if.else.i234.if.end109.i_crit_edge, label %if.then92.i

if.else.i234.if.end109.i_crit_edge:               ; preds = %if.else.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i

if.then92.i:                                      ; preds = %if.else.i234
  call void @__sanitizer_cov_trace_pc() #12
  %cap.i235 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %658 = ptrtoint ptr %cap.i235 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %cap.i235, align 4
  %and106.i = lshr i32 %659, 16
  %660 = trunc i32 %and106.i to i8
  %conv107.i = and i8 %660, 7
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then92.i, %if.else.i234.if.end109.i_crit_edge, %if.then88.i
  %nrow.0.i = phi i8 [ %and6.i.i, %if.then88.i ], [ %conv107.i, %if.then92.i ], [ 0, %if.else.i234.if.end109.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %nrow.0.i)
  %cmp.i236 = icmp eq i8 %nrow.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i201)
  %cmp112.i = icmp eq i32 %call.i.i201, 3
  %spec.select.i237 = select i1 %cmp.i236, i1 %cmp112.i, i1 false
  %fb_identity_matrix.i = getelementptr inbounds %struct.sta_rec_bfee, ptr %call.i.i141.i, i32 0, i32 2
  %frombool.i238 = zext i1 %spec.select.i237 to i8
  %661 = ptrtoint ptr %fb_identity_matrix.i to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 %frombool.i238, ptr %fb_identity_matrix.i, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end109.i, %mt7915_is_ebf_supported.exit.i225.if.end24_crit_edge, %if.end108.i.i221.if.end24_crit_edge, %land.rhs.i.i218.if.end24_crit_edge, %if.then87.i.i216.if.end24_crit_edge, %cond.false78.i202.if.end24_crit_edge, %if.end17.thread255.if.end24_crit_edge, %mt7915_mcu_add_nested_tlv.exit.i48.i.if.end24_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #10
  %662 = getelementptr inbounds %struct.anon.202, ptr %req.i, i32 0, i32 1
  %663 = getelementptr inbounds %struct.anon.202, ptr %req.i, i32 0, i32 3
  %664 = getelementptr inbounds %struct.anon.202, ptr %req.i, i32 0, i32 5
  %665 = getelementptr inbounds %struct.anon.202, ptr %req.i, i32 0, i32 6
  %666 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %666)
  store i32 16777216, ptr %req.i, align 4
  %667 = ptrtoint ptr %662 to i32
  call void @__asan_storeN_noabort(i32 %667, i32 8)
  store i64 0, ptr %662, align 4
  %668 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %drv_priv, align 8
  %670 = and i8 %669, 15
  %rem.i = zext i8 %670 to i32
  %671 = shl nuw nsw i32 %rem.i, 24
  %672 = ptrtoint ptr %664 to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 %671, ptr %664, align 4
  %673 = ptrtoint ptr %665 to i32
  call void @__asan_storeN_noabort(i32 %673, i32 8)
  store i64 0, ptr %665, align 4
  %674 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %674)
  %675 = load i16, ptr %idx.i.i, align 2
  %conv18.i = trunc i16 %675 to i8
  store i8 %conv18.i, ptr %662, align 4
  %676 = lshr i16 %675, 8
  %677 = trunc i16 %676 to i8
  %conv41.i = and i8 %677, 3
  %678 = ptrtoint ptr %663 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 %conv41.i, ptr %663, align 2
  %call.i.i244 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 14061, ptr noundef nonnull %req.i, i32 noundef 24, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i244)
  %tobool26.not = icmp eq i32 %call.i.i244, 0
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end24.out_crit_edge, %mt7915_mcu_sta_basic_tlv.exit.thread.out_crit_edge, %mt7915_mcu_sta_basic_tlv.exit.out_crit_edge
  %call.i245 = call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef %call.i, i32 noundef 9709, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end24.cleanup_crit_edge, %mt7915_mcu_sta_wtbl_tlv.exit, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call.i245, %out ], [ %533, %mt7915_mcu_sta_wtbl_tlv.exit ], [ %call.i.i244, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_dev_info(ptr noundef readonly %phy, ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.195, align 1
  %data = alloca %struct.anon.150, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #10
  %2 = getelementptr inbounds %struct.req_hdr, ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds %struct.req_hdr, ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds %struct.req_hdr, ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds %struct.req_hdr, ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds %struct.anon.150, ptr %data, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.anon.150, ptr %data, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.anon.150, ptr %data, i32 0, i32 1, i32 3
  %9 = getelementptr inbounds %struct.anon.150, ptr %data, i32 0, i32 1, i32 4
  %omac_idx2 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %10 = ptrtoint ptr %omac_idx2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %omac_idx2, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %data, align 1
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %13 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %band_idx, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %2, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 256, ptr %3, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %4, align 1
  %18 = call ptr @memset(ptr %5, i32 0, i32 5)
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 3072, ptr %6, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %7, align 1
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %14, ptr %8, align 1
  %22 = call ptr @memset(ptr %9, i32 0, i32 6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %11)
  %cmp = icmp ugt i8 %11, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv.i = zext i8 %11 to i32
  %sub.i = add nsw i32 %conv.i, -32
  %omac_mask.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 8
  %23 = ptrtoint ptr %omac_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %omac_mask.i, align 8
  %shr.i = lshr i64 %24, 32
  %shl.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl.i, -1
  %25 = trunc i64 %shr.i to i32
  %conv4.i = and i32 %25, %neg.i
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %req.i) #10
  %26 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 3
  %27 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 4
  %28 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 5
  %29 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 6
  %30 = getelementptr inbounds i8, ptr %req.i, i32 1
  %31 = call ptr @memset(ptr %30, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %tobool.not.i = icmp ne i32 %conv4.i, 0
  %spec.select.i = or i1 %tobool.not.i, %enable
  %conv9.i = zext i1 %spec.select.i to i8
  %32 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv9.i, ptr %req.i, align 1
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %26, align 1
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %27, align 1
  %phy10.i = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp.i = icmp ne ptr %phy10.i, %phy
  %conv12.i = zext i1 %cmp.i to i8
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12.i, ptr %28, align 1
  %sub.i.tr = trunc i32 %sub.i to i8
  %conv15.i = shl i8 %sub.i.tr, 1
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv15.i, ptr %29, align 1
  br i1 %enable, label %if.then21.i, label %if.then.mt7915_mcu_muar_config.exit_crit_edge

if.then.mt7915_mcu_muar_config.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_muar_config.exit

if.then21.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %37 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 8, i32 4
  %38 = getelementptr inbounds %struct.anon.195, ptr %req.i, i32 0, i32 8
  %addr5.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %39 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr5.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %38, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i, align 2
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %37, align 2
  br label %mt7915_mcu_muar_config.exit

mt7915_mcu_muar_config.exit:                      ; preds = %if.then21.i, %if.then.mt7915_mcu_muar_config.exit_crit_edge
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 18669, ptr noundef nonnull %req.i, i32 noundef 21, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %req.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %45 = call ptr @memcpy(ptr %9, ptr %addr, i32 6)
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 10989, ptr noundef nonnull %data, i32 noundef 20, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mt7915_mcu_muar_config.exit
  %retval.0 = phi i32 [ %call.i.i, %mt7915_mcu_muar_config.exit ], [ %call.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_beacon(ptr noundef %hw, ptr noundef %vif, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  %ext_eid.addr.i.i = alloca i8, align 1
  %offs = alloca %struct.ieee80211_mutable_offsets, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offs) #10
  %6 = getelementptr inbounds %struct.ieee80211_mutable_offsets, ptr %offs, i32 0, i32 2
  %7 = ptrtoint ptr %offs to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %offs, align 8
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %drv_priv, align 8
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %3, ptr noundef null, i32 noundef 620) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %entry.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %entry
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %11 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %12 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %13 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %14 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 14, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %15 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %16 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i117 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i117 to i32
  br label %cleanup

if.end:                                           ; preds = %mt7915_mcu_alloc_sta_req.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %call.i.i92 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %20 = ptrtoint ptr %call.i.i92 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 3840, ptr %call.i.i92, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i92, i32 2
  %21 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %tlv_num.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %tlv_num.i.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #10
  %add.i.i = add i16 %24, 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %26 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %tlv_num.i.i, align 1
  %conv = trunc i32 %en to i8
  %enable = getelementptr inbounds %struct.bss_info_bcn, ptr %call.i.i92, i32 0, i32 3
  %27 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp eq i32 %en, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @ieee80211_beacon_get_template(ptr noundef %hw, ptr noundef %vif, ptr noundef nonnull %offs) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 6
  %28 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %29)
  %cmp = icmp ugt i32 %29, 480
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 13
  %30 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev15, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str) #13
  call void @consume_skb(ptr noundef nonnull %call8) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %32 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %band_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool17.not = icmp eq i8 %33, 0
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %hw_queue = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %hw_queue, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %hw_queue, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  %cap.i = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %data.i93 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 19
  %35 = ptrtoint ptr %data.i93 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i93, align 4
  %37 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len12, align 4
  %variable.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %36, i32 0, i32 6, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %38)
  %cmp.i94 = icmp ult i32 %38, 37
  br i1 %cmp.i94, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.end22
  %.b264.i = load i1, ptr @mt7915_mcu_beacon_check_caps.__already_done, align 1
  br i1 %.b264.i, label %land.rhs.i.mt7915_mcu_beacon_check_caps.exit_crit_edge, label %if.then.i, !prof !150

land.rhs.i.mt7915_mcu_beacon_check_caps.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_beacon_check_caps.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mt7915_mcu_beacon_check_caps.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2532, i32 noundef 9, ptr noundef null) #10
  br label %mt7915_mcu_beacon_check_caps.exit

if.end40.i:                                       ; preds = %if.end22
  %sub.ptr.lhs.cast.i = ptrtoint ptr %variable.i to i32
  %39 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %cap.i, align 1
  %40 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len12, align 4
  %42 = ptrtoint ptr %data.i93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i93, align 4
  %sub.ptr.rhs.cast47.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub48.neg.i = sub i32 %sub.ptr.rhs.cast47.i, %sub.ptr.lhs.cast.i
  %sub.i = add i32 %sub.ptr.sub48.neg.i, %41
  %call.i.i.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 45, ptr noundef %variable.i, i32 noundef %sub.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool52.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool52.not.i, label %if.end40.i.if.end66.i_crit_edge, label %land.lhs.true.i

if.end40.i.if.end66.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

land.lhs.true.i:                                  ; preds = %if.end40.i
  %arrayidx.i = getelementptr i8, ptr %call.i.i.i, i32 1
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %45)
  %cmp53.i = icmp ugt i8 %45, 25
  br i1 %cmp53.i, label %if.then55.i, label %land.lhs.true.i.if.end66.i_crit_edge

land.lhs.true.i.if.end66.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then55.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 2
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %add.ptr.i, align 1
  %48 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %cap.i, align 1
  %sh.diff.i = lshr i16 %47, 1
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %49 = and i8 %tr.sh.diff.i, -128
  %bf.set.i = or i8 %49, %bf.load.i
  store i8 %bf.set.i, ptr %cap.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then55.i, %land.lhs.true.i.if.end66.i_crit_edge, %if.end40.i.if.end66.i_crit_edge
  %call.i.i274.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -65, ptr noundef %variable.i, i32 noundef %sub.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool71.not.i = icmp eq ptr %call.i.i274.i, null
  br i1 %tobool71.not.i, label %if.end66.i.if.end141.i_crit_edge, label %land.lhs.true72.i

if.end66.i.if.end141.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.i

land.lhs.true72.i:                                ; preds = %if.end66.i
  %arrayidx73.i = getelementptr i8, ptr %call.i.i274.i, i32 1
  %50 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %51)
  %cmp75.i = icmp ugt i8 %51, 11
  br i1 %cmp75.i, label %if.then77.i, label %land.lhs.true72.i.if.end141.i_crit_edge

land.lhs.true72.i.if.end141.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.i

if.then77.i:                                      ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 8
  %cap78.i = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 11, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %cap78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cap78.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %call.i.i274.i, i32 2
  %56 = ptrtoint ptr %add.ptr79.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %add.ptr79.i, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load86.i = load i8, ptr %cap.i, align 1
  %60 = trunc i32 %58 to i8
  %61 = shl i8 %60, 3
  %62 = and i8 %61, -128
  %and97.i = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %and100.i = lshr i32 %55, 5
  %63 = trunc i32 %and100.i to i8
  %64 = and i8 %63, 64
  %65 = select i1 %tobool98.not.i, i8 0, i8 %64
  %bf.load86.masked.i = and i8 %bf.load86.i, -121
  %bf.clear105.i = or i8 %62, %bf.load86.masked.i
  %bf.set106.i = or i8 %bf.clear105.i, %65
  %and108.i = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  %and111.i = lshr i32 %55, 7
  %66 = trunc i32 %and111.i to i8
  %67 = and i8 %66, 32
  %68 = select i1 %tobool109.not.i, i8 0, i8 %67
  %bf.set117.i = or i8 %bf.set106.i, %68
  %and119.i = and i32 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  %and122.i = lshr i32 %55, 15
  %69 = trunc i32 %and122.i to i8
  %70 = and i8 %69, 16
  %71 = select i1 %tobool120.not.i, i8 0, i8 %70
  %bf.set128.i = or i8 %bf.set117.i, %71
  %and130.i = and i32 %58, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  %and133.i = lshr i32 %55, 17
  %72 = trunc i32 %and133.i to i8
  %73 = and i8 %72, 8
  %74 = select i1 %tobool131.not.i, i8 0, i8 %73
  %bf.set139.i = or i8 %bf.set128.i, %74
  %75 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %bf.set139.i, ptr %cap.i, align 1
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then77.i, %land.lhs.true72.i.if.end141.i_crit_edge, %if.end66.i.if.end141.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ext_eid.addr.i.i) #10
  %76 = ptrtoint ptr %ext_eid.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 35, ptr %ext_eid.addr.i.i, align 1
  %call.i.i275.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %variable.i, i32 noundef %sub.i, ptr noundef nonnull %ext_eid.addr.i.i, i32 noundef 1, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_eid.addr.i.i) #10
  %tobool146.not.i = icmp eq ptr %call.i.i275.i, null
  br i1 %tobool146.not.i, label %if.end141.i.mt7915_mcu_beacon_check_caps.exit_crit_edge, label %land.lhs.true147.i

if.end141.i.mt7915_mcu_beacon_check_caps.exit_crit_edge: ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_beacon_check_caps.exit

land.lhs.true147.i:                               ; preds = %if.end141.i
  %arrayidx148.i = getelementptr i8, ptr %call.i.i275.i, i32 1
  %77 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx148.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %78)
  %cmp150.i = icmp ugt i8 %78, 17
  br i1 %cmp150.i, label %if.then152.i, label %land.lhs.true147.i.mt7915_mcu_beacon_check_caps.exit_crit_edge

land.lhs.true147.i.mt7915_mcu_beacon_check_caps.exit_crit_edge: ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_beacon_check_caps.exit

if.then152.i:                                     ; preds = %land.lhs.true147.i
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 8
  %chandef.i.i = getelementptr inbounds %struct.mt76_phy, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chandef.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %80, align 8
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wiphy.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %88, i32 0, i32 53, i32 %84
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i, align 4
  %91 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vif, align 8
  %conv.i.i = trunc i32 %92 to i8
  %conv.i.i.i.i = and i32 %92, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv.i.i)
  %cmp.i.i.i.i = icmp ugt i8 %conv.i.i, 11
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %for.cond.preheader.i.i.i.i, !prof !146

for.cond.preheader.i.i.i.i:                       ; preds = %if.then152.i
  %n_iftype_data.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %90, i32 0, i32 9
  %93 = ptrtoint ptr %n_iftype_data.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %n_iftype_data.i.i.i.i, align 4
  %conv23.i.i.i.i = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp2438.not.i.i.i.i = icmp eq i16 %94, 0
  br i1 %cmp2438.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.if.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

for.cond.preheader.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.cond.preheader.i.i.i.i
  %iftype_data.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %90, i32 0, i32 10
  %95 = ptrtoint ptr %iftype_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iftype_data.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  br label %for.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 510, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.039.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %conv23.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.if.end.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.039.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %96, i32 %i.039.i.i.i.i
  %97 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i.i.i.i, align 4
  %conv26.i.i.i.i = zext i16 %98 to i32
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv26.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %for.cond.i.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i:       ; preds = %for.body.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i
  %he_cap.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %96, i32 %i.039.i.i.i.i, i32 1
  %99 = ptrtoint ptr %he_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %he_cap.i.i.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool1.not.i.i.i = icmp eq i8 %100, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.mt7915_get_he_phy_cap.exit.i_crit_edge

land.lhs.true.i.i.i.mt7915_get_he_phy_cap.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_get_he_phy_cap.exit.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.i.i.if.end.i.i.i_crit_edge, %for.cond.i.i.i.i.if.end.i.i.i_crit_edge, %do.end.i.i.i.i, %for.cond.preheader.i.i.i.i.if.end.i.i.i_crit_edge
  br label %mt7915_get_he_phy_cap.exit.i

mt7915_get_he_phy_cap.exit.i:                     ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.mt7915_get_he_phy_cap.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end.i.i.i ], [ %he_cap.i.i.i, %land.lhs.true.i.i.i.mt7915_get_he_phy_cap.exit.i_crit_edge ]
  %arrayidx156.i = getelementptr i8, ptr %call.i.i275.i, i32 12
  %101 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx156.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %tobool159.not.i = icmp sgt i8 %102, -1
  br i1 %tobool159.not.i, label %mt7915_get_he_phy_cap.exit.i.land.end166.i_crit_edge, label %land.rhs160.i

mt7915_get_he_phy_cap.exit.i.land.end166.i_crit_edge: ; preds = %mt7915_get_he_phy_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end166.i

land.rhs160.i:                                    ; preds = %mt7915_get_he_phy_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx162.i = getelementptr %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i, i32 0, i32 1, i32 1, i32 3
  %103 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx162.i, align 1
  %105 = lshr i8 %104, 5
  %106 = and i8 %105, 4
  br label %land.end166.i

land.end166.i:                                    ; preds = %land.rhs160.i, %mt7915_get_he_phy_cap.exit.i.land.end166.i_crit_edge
  %107 = phi i8 [ 0, %mt7915_get_he_phy_cap.exit.i.land.end166.i_crit_edge ], [ %106, %land.rhs160.i ]
  %108 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load167.i = load i8, ptr %cap.i, align 1
  %bf.clear169.i = and i8 %bf.load167.i, -5
  %bf.set170.i = or i8 %bf.clear169.i, %107
  store i8 %bf.set170.i, ptr %cap.i, align 1
  %arrayidx173.i = getelementptr i8, ptr %call.i.i275.i, i32 13
  %109 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx173.i, align 1
  %and6.i268.i = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and6.i268.i)
  %tobool176.not.i = icmp eq i8 %and6.i268.i, 0
  br i1 %tobool176.not.i, label %land.end166.i.land.end183.i_crit_edge, label %land.rhs177.i

land.end166.i.land.end183.i_crit_edge:            ; preds = %land.end166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end183.i

land.rhs177.i:                                    ; preds = %land.end166.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx179.i = getelementptr %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i, i32 0, i32 1, i32 1, i32 4
  %111 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx179.i, align 1
  %and6.i269.i = shl i8 %112, 1
  %113 = and i8 %and6.i269.i, 2
  br label %land.end183.i

land.end183.i:                                    ; preds = %land.rhs177.i, %land.end166.i.land.end183.i_crit_edge
  %114 = phi i8 [ 0, %land.end166.i.land.end183.i_crit_edge ], [ %113, %land.rhs177.i ]
  %bf.clear186.i = and i8 %bf.set170.i, -3
  %bf.set187.i = or i8 %114, %bf.clear186.i
  %115 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %bf.set187.i, ptr %cap.i, align 1
  %116 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx173.i, align 1
  %118 = and i8 %117, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool193.not.i = icmp eq i8 %118, 0
  br i1 %tobool193.not.i, label %land.end183.i.land.end200.i_crit_edge, label %land.rhs194.i

land.end183.i.land.end200.i_crit_edge:            ; preds = %land.end183.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end200.i

land.rhs194.i:                                    ; preds = %land.end183.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx196.i = getelementptr %struct.ieee80211_sta_he_cap, ptr %retval.0.i.i.i, i32 0, i32 1, i32 1, i32 4
  %119 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx196.i, align 1
  %121 = and i8 %120, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool199.i = icmp ne i8 %121, 0
  br label %land.end200.i

land.end200.i:                                    ; preds = %land.rhs194.i, %land.end183.i.land.end200.i_crit_edge
  %122 = phi i1 [ false, %land.end183.i.land.end200.i_crit_edge ], [ %tobool199.i, %land.rhs194.i ]
  %123 = zext i1 %122 to i8
  %bf.clear202.i = and i8 %bf.set187.i, -2
  %bf.set203.i = or i8 %bf.clear202.i, %123
  %124 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %bf.set203.i, ptr %cap.i, align 1
  br label %mt7915_mcu_beacon_check_caps.exit

mt7915_mcu_beacon_check_caps.exit:                ; preds = %land.end200.i, %land.lhs.true147.i.mt7915_mcu_beacon_check_caps.exit_crit_edge, %if.end141.i.mt7915_mcu_beacon_check_caps.exit_crit_edge, %if.then.i, %land.rhs.i.mt7915_mcu_beacon_check_caps.exit_crit_edge
  %125 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool.not.i = icmp eq i16 %126, 0
  br i1 %tobool.not.i, label %mt7915_mcu_beacon_check_caps.exit.mt7915_mcu_beacon_cntdwn.exit_crit_edge, label %if.end.i99

mt7915_mcu_beacon_check_caps.exit.mt7915_mcu_beacon_cntdwn.exit_crit_edge: ; preds = %mt7915_mcu_beacon_check_caps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_beacon_cntdwn.exit

if.end.i99:                                       ; preds = %mt7915_mcu_beacon_check_caps.exit
  call void @__sanitizer_cov_trace_pc() #12
  %csa_active.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 4
  %127 = ptrtoint ptr %csa_active.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %csa_active.i, align 1, !range !145
  %129 = xor i8 %128, 1
  %sub_ntlv.i = getelementptr inbounds %struct.bss_info_bcn, ptr %call.i.i92, i32 0, i32 4
  %conv.i.i95 = zext i8 %129 to i16
  %130 = shl nuw nsw i16 %conv.i.i95, 8
  %call.i.i96 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %131 = ptrtoint ptr %call.i.i96 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %130, ptr %call.i.i96, align 1
  %tlv.sroa.5.0..sroa_idx.i.i97 = getelementptr inbounds i8, ptr %call.i.i96, i32 2
  %132 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i97 to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i97, align 1
  %133 = ptrtoint ptr %sub_ntlv.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %sub_ntlv.i, align 2
  %135 = call i16 @llvm.bswap.i16(i16 %134) #10
  %add.i.i.i = add i16 %135, 1
  %136 = call i16 @llvm.bswap.i16(i16 %add.i.i.i) #10
  %137 = ptrtoint ptr %sub_ntlv.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %sub_ntlv.i, align 2
  %138 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  %140 = call i16 @llvm.bswap.i16(i16 %139) #10
  %add.i7.i.i = add i16 %140, 8
  %141 = call i16 @llvm.bswap.i16(i16 %add.i7.i.i) #10
  %142 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  %143 = ptrtoint ptr %data.i93 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data.i93, align 4
  %145 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %6, align 4
  %idxprom.i = zext i16 %146 to i32
  %arrayidx4.i = getelementptr i8, ptr %144, i32 %idxprom.i
  %147 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx4.i, align 1
  %cnt.i = getelementptr inbounds %struct.bss_info_bcn_cntdwn, ptr %call.i.i96, i32 0, i32 2
  %149 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %cnt.i, align 4
  br label %mt7915_mcu_beacon_cntdwn.exit

mt7915_mcu_beacon_cntdwn.exit:                    ; preds = %if.end.i99, %mt7915_mcu_beacon_check_caps.exit.mt7915_mcu_beacon_cntdwn.exit_crit_edge
  %150 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len12, align 4
  %add.i = add i32 %151, 44
  %sub_ntlv.i101 = getelementptr inbounds %struct.bss_info_bcn, ptr %call.i.i92, i32 0, i32 4
  %conv2.i.i = trunc i32 %add.i to i16
  %152 = call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  %call.i.i102 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i) #10
  %153 = ptrtoint ptr %call.i.i102 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 768, ptr %call.i.i102, align 1
  %tlv.sroa.5.0..sroa_idx.i.i103 = getelementptr inbounds i8, ptr %call.i.i102, i32 2
  %154 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i103 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %152, ptr %tlv.sroa.5.0..sroa_idx.i.i103, align 1
  %155 = ptrtoint ptr %sub_ntlv.i101 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %sub_ntlv.i101, align 2
  %157 = call i16 @llvm.bswap.i16(i16 %156) #10
  %add.i.i.i104 = add i16 %157, 1
  %158 = call i16 @llvm.bswap.i16(i16 %add.i.i.i104) #10
  %159 = ptrtoint ptr %sub_ntlv.i101 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %sub_ntlv.i101, align 2
  %160 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  %162 = call i16 @llvm.bswap.i16(i16 %161) #10
  %add.i7.i.i105 = add i16 %162, %conv2.i.i
  %163 = call i16 @llvm.bswap.i16(i16 %add.i7.i.i105) #10
  %164 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 2
  %165 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len12, align 4
  %167 = trunc i32 %166 to i16
  %conv.i = add i16 %167, 32
  %168 = call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %pkt_len.i = getelementptr inbounds %struct.bss_info_bcn_cont, ptr %call.i.i102, i32 0, i32 5
  %169 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %pkt_len.i, align 2
  %170 = ptrtoint ptr %offs to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %offs, align 8
  %172 = call i16 @llvm.bswap.i16(i16 %171) #10
  %tim_ofs.i = getelementptr inbounds %struct.bss_info_bcn_cont, ptr %call.i.i102, i32 0, i32 2
  %173 = ptrtoint ptr %tim_ofs.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %tim_ofs.i, align 4
  %174 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %175)
  %tobool.not.i107 = icmp eq i16 %175, 0
  br i1 %tobool.not.i107, label %mt7915_mcu_beacon_cntdwn.exit.mt7915_mcu_beacon_cont.exit_crit_edge, label %if.then.i109

mt7915_mcu_beacon_cntdwn.exit.mt7915_mcu_beacon_cont.exit_crit_edge: ; preds = %mt7915_mcu_beacon_cntdwn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_beacon_cont.exit

if.then.i109:                                     ; preds = %mt7915_mcu_beacon_cntdwn.exit
  %csa_active.i108 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 4
  %176 = ptrtoint ptr %csa_active.i108 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %csa_active.i108, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool7.not.i = icmp eq i8 %177, 0
  br i1 %tobool7.not.i, label %if.then.i109.if.end.i111_crit_edge, label %if.then8.i

if.then.i109.if.end.i111_crit_edge:               ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i111

if.then8.i:                                       ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i110 = add i16 %175, -4
  %178 = call i16 @llvm.bswap.i16(i16 %sub.i110) #10
  %csa_ofs.i = getelementptr inbounds %struct.bss_info_bcn_cont, ptr %call.i.i102, i32 0, i32 3
  %179 = ptrtoint ptr %csa_ofs.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %csa_ofs.i, align 2
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.then8.i, %if.then.i109.if.end.i111_crit_edge
  %color_change_active.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 16
  %180 = ptrtoint ptr %color_change_active.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %color_change_active.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool11.not.i = icmp eq i8 %181, 0
  br i1 %tobool11.not.i, label %if.end.i111.mt7915_mcu_beacon_cont.exit_crit_edge, label %if.then12.i

if.end.i111.mt7915_mcu_beacon_cont.exit_crit_edge: ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_beacon_cont.exit

if.then12.i:                                      ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  %sub14.i = add i16 %175, -3
  %182 = call i16 @llvm.bswap.i16(i16 %sub14.i) #10
  %bcc_ofs.i = getelementptr inbounds %struct.bss_info_bcn_cont, ptr %call.i.i102, i32 0, i32 4
  %183 = ptrtoint ptr %bcc_ofs.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %bcc_ofs.i, align 4
  br label %mt7915_mcu_beacon_cont.exit

mt7915_mcu_beacon_cont.exit:                      ; preds = %if.then12.i, %if.end.i111.mt7915_mcu_beacon_cont.exit_crit_edge, %mt7915_mcu_beacon_cntdwn.exit.mt7915_mcu_beacon_cont.exit_crit_edge
  %global_wcid.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 36
  %add.ptr.i112 = getelementptr i8, ptr %call.i.i102, i32 12
  call void @mt7915_mac_write_txwi(ptr noundef %3, ptr noundef %add.ptr.i112, ptr noundef nonnull %call8, ptr noundef %global_wcid.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #10
  %add.ptr18.i = getelementptr i8, ptr %call.i.i102, i32 44
  %184 = ptrtoint ptr %data.i93 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %data.i93, align 4
  %186 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %len12, align 4
  %188 = call ptr @memcpy(ptr %add.ptr18.i, ptr %185, i32 %187)
  call void @consume_skb(ptr noundef nonnull %call8) #10
  br label %out

out:                                              ; preds = %mt7915_mcu_beacon_cont.exit, %if.end.out_crit_edge
  %dev23 = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 1
  %189 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev23, align 4
  %call.i114 = call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %190, ptr noundef nonnull %call.i, i32 noundef 9965, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ -22, %do.end ], [ %call.i114, %out ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offs) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_template(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_fw_log_2_host(ptr noundef %dev, i8 noundef zeroext %type, i8 noundef zeroext %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.anon.158, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %0 = getelementptr inbounds %struct.anon.158, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %ctrl, ptr %data, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  %. = select i1 %cmp, i32 529389, i32 5101
  %call.i66 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef %., ptr noundef nonnull %data, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %call.i66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef %dev, i32 noundef %module, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.anon.159, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #10
  %0 = getelementptr inbounds %struct.anon.159, ptr %data, i32 0, i32 3
  %1 = getelementptr inbounds %struct.anon.159, ptr %data, i32 0, i32 4
  %2 = getelementptr inbounds %struct.anon.159, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %level, ptr %0, align 4
  %5 = call ptr @memset(ptr %1, i32 0, i32 3)
  %6 = tail call i32 @llvm.bswap.i32(i32 %module)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %2, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 38381, ptr noundef nonnull %data, i32 noundef 12, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_muru_debug_set(ptr noundef %dev, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.anon.160, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7638104963725393921, ptr %data, align 8, !annotation !151
  %enable = getelementptr inbounds %struct.anon.160, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %enable, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 40941, ptr noundef nonnull %data, i32 noundef 8, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_muru_debug_get(ptr noundef readonly %phy, ptr nocapture noundef writeonly %ms) local_unnamed_addr #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  %req = alloca %struct.anon.163, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #10
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #10
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -7566047369687465985, ptr %req, align 8, !annotation !151
  %band_idx = getelementptr inbounds %struct.anon.163, ptr %req, i32 0, i32 1
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy2, %phy
  %conv3 = zext i1 %cmp to i8
  %4 = ptrtoint ptr %band_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %band_idx, align 4
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 40941, ptr noundef nonnull %req, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = call ptr @memcpy(ptr %ms, ptr %8, i32 120)
  call void @consume_skb(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_send_and_get_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_muru_ctrl(ptr noundef %dev, i32 noundef %cmd, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.164, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.164, ptr %req, i32 0, i32 1
  %1 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %req, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 40941, ptr noundef nonnull %req, i32 noundef 8, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %req.i81 = alloca %struct.anon.148, align 4
  %req.i79 = alloca %struct.anon.164, align 4
  %req.i = alloca %struct.anon.246, align 1
  %data.i77 = alloca %struct.anon.158, align 4
  %data.i = alloca %struct.anon.158, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt7915_mcu_init.mt7915_mcu_ops, ptr %mcu_ops, align 4
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr.i, align 4
  tail call void %4(ptr noundef %dev, i32 noundef 403046416, i32 noundef 2) #10
  %call.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 403046416, i32 noundef 1, i32 noundef 0, i32 noundef 500) #10
  br i1 %call.i, label %if.end, label %mt7915_driver_own.exit

mt7915_driver_own.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @mt7915_load_firmware(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data.i, align 4
  %call.i66.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 5101, ptr noundef nonnull %data.i, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %tobool6.not = icmp eq i32 %call.i66.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i77) #10
  %8 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data.i77, align 4
  %call.i66.i78 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 529389, ptr noundef nonnull %data.i77, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i78)
  %tobool10.not = icmp eq i32 %call.i66.i78, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #10
  %9 = getelementptr inbounds %struct.anon.246, ptr %req.i, i32 0, i32 1
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %req.i, align 1
  %11 = call ptr @memset(ptr %9, i32 0, i32 3)
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 557293, ptr noundef nonnull %req.i, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i79) #10
  %12 = getelementptr inbounds %struct.anon.164, ptr %req.i79, i32 0, i32 1
  %13 = ptrtoint ptr %req.i79 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 419430400, ptr %req.i79, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33554432, ptr %12, align 4
  %call.i.i80 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 40941, ptr noundef nonnull %req.i79, i32 noundef 8, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %tobool18.not = icmp eq i32 %call.i.i80, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call fastcc i32 @mt7915_mcu_init_rx_airtime(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i81) #10
  %15 = getelementptr inbounds [3 x i32], ptr %req.i81, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i32], ptr %req.i81, i32 0, i32 2
  %17 = ptrtoint ptr %req.i81 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 234881024, ptr %req.i81, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %15, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %16, align 4
  %call.i.i82 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 524740, ptr noundef nonnull %req.i81, i32 noundef 12, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i81) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mt7915_driver_own.exit
  %retval.0 = phi i32 [ %call.i.i82, %if.end24 ], [ -5, %mt7915_driver_own.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i66.i, %if.end4.cleanup_crit_edge ], [ %call.i66.i78, %if.end8.cleanup_crit_edge ], [ %call.i.i, %if.end12.cleanup_crit_edge ], [ %call.i.i80, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_mcu_send_message(ptr noundef %mdev, ptr noundef %skb, i32 noundef %cmd, ptr noundef writeonly %wait_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2000, ptr %timeout, align 4
  %msg_seq = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %msg_seq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_seq, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %msg_seq, align 4
  %3 = trunc i32 %inc to i8
  %conv = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inc4 = add i32 %2, 2
  %4 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc4, ptr %msg_seq, align 4
  %5 = trunc i32 %inc4 to i8
  %conv6 = and i8 %5, 15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %seq.0 = phi i8 [ %conv, %entry.if.end_crit_edge ], [ %conv6, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 238, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 238
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end22

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end22:                                         ; preds = %if.end
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 64) #10
  %state = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = lshr i32 %7, 2
  %.lobit = and i32 %8, 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %and50 = and i32 %10, 65535
  %or83 = or i32 %and50, 1090519040
  %11 = tail call i32 @llvm.bswap.i32(i32 %or83)
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call, align 4
  %arrayidx101 = getelementptr i32, ptr %call, i32 1
  %13 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 384, ptr %arrayidx101, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %16 = trunc i32 %15 to i16
  %conv103 = add i16 %16, -32
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv103)
  %len104 = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %len104 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %len104, align 4
  %pq_id = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %pq_id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 128, ptr %pq_id, align 2
  %pkt_type = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -96, ptr %pkt_type, align 1
  %seq105 = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %seq105 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %seq.0, ptr %seq105, align 1
  %conv123 = trunc i32 %cmd to i8
  %cid = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 3
  %22 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv123, ptr %cid, align 4
  %set_query = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %set_query to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %set_query, align 2
  %and140 = lshr i32 %cmd, 8
  %conv142 = trunc i32 %and140 to i8
  %ext_cid = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 8
  %24 = ptrtoint ptr %ext_cid to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv142, ptr %ext_cid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv142)
  %tobool144.not = icmp eq i8 %conv142, 0
  br i1 %tobool144.not, label %if.end22.if.end153_crit_edge, label %if.then145

if.end22.if.end153_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then145:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %ext_cid_ack = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 10
  %25 = ptrtoint ptr %ext_cid_ack to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ext_cid_ack, align 1
  %and146 = lshr i32 %cmd, 16
  %26 = trunc i32 %and146 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = ptrtoint ptr %set_query to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %set_query, align 2
  br label %if.end153

if.end153:                                        ; preds = %if.then145, %if.end22.if.end153_crit_edge
  %and154 = lshr i32 %cmd, 18
  %30 = trunc i32 %and154 to i8
  %31 = and i8 %30, 2
  %s2d_index = getelementptr inbounds %struct.mt7915_mcu_txd, ptr %call, i32 0, i32 9
  %32 = ptrtoint ptr %s2d_index to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %s2d_index, align 2
  br label %exit

exit:                                             ; preds = %if.end153, %if.end.exit_crit_edge
  %qid.1 = phi i32 [ 2, %if.end.exit_crit_edge ], [ %.lobit, %if.end153 ]
  %tobool160.not = icmp eq ptr %wait_seq, null
  br i1 %tobool160.not, label %exit.if.end163_crit_edge, label %if.then161

exit.if.end163_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then161:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv162 = zext i8 %seq.0 to i32
  %33 = ptrtoint ptr %wait_seq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv162, ptr %wait_seq, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %exit.if.end163_crit_edge
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 24
  %34 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb_raw = getelementptr inbounds %struct.mt76_queue_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %tx_queue_skb_raw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_queue_skb_raw, align 4
  %arrayidx164 = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 22, i32 %qid.1
  %38 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx164, align 4
  %call165 = tail call i32 %37(ptr noundef %mdev, ptr noundef %39, ptr noundef %skb, i32 noundef 0) #10
  ret i32 %call165
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_mcu_parse_response(ptr nocapture noundef readonly %mdev, i32 noundef %cmd, ptr noundef %skb, i32 noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %cmd, i32 noundef %seq) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %seq1 = getelementptr inbounds %struct.mt7915_mcu_rxd, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %seq1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %seq1, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %seq)
  %cmp.not = icmp eq i32 %conv, %seq
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %cmd, label %if.else62 [
    i32 16, label %if.then22
    i32 11501, label %if.then59
  ]

if.then22:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 32) #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv24 = zext i8 %10 to i32
  br label %cleanup

if.then59:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 40) #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  br label %cleanup

if.else62:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 36) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else62, %if.then59, %if.then22, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -11, %if.end.cleanup_crit_edge ], [ %conv24, %if.then22 ], [ %15, %if.then59 ], [ 0, %if.else62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_mcu_restart(ptr noundef %dev) #0 align 64 {
entry:
  %req = alloca %struct.anon.237, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %req, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_load_firmware(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.243, align 4
  %fw.i46 = alloca ptr, align 4
  %req.i110.i = alloca %struct.anon.242, align 4
  %req.i108.i = alloca %struct.anon.244, align 4
  %req.i.i = alloca %struct.anon.242, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #10
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #10
  %1 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16777216, ptr %req.i.i, align 4
  %call.i.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull %req.i.i, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #10
  %2 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call.i.i.i, label %mt7915_load_patch.exit.thread60 [
    i32 1, label %mt7915_load_patch.exit.thread
    i32 2, label %sw.epilog.i
  ]

mt7915_load_patch.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %if.end

mt7915_load_patch.exit.thread60:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i, align 8
  %call3.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.27, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.i.out.i_crit_edge

sw.epilog.i.out.i_crit_edge:                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %sw.epilog.i
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.end.i.out.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %lor.lhs.false.i.out.sink.split.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.out.sink.split.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %12)
  %cmp.i = icmp ult i32 %12, 96
  br i1 %cmp.i, label %lor.lhs.false6.i.out.sink.split.i_crit_edge, label %if.end12.i

lor.lhs.false6.i.out.sink.split.i_crit_edge:      ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

if.end12.i:                                       ; preds = %lor.lhs.false6.i
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i, align 8
  %hw_sw_ver.i = getelementptr inbounds %struct.mt7915_patch_hdr, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %hw_sw_ver.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %hw_sw_ver.i, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.32, i32 noundef %16, ptr noundef nonnull %10) #13
  %n_region.i = getelementptr inbounds %struct.mt7915_patch_hdr, ptr %10, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %n_region.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %n_region.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18115.not.i = icmp eq i32 %18, 0
  br i1 %cmp18115.not.i, label %if.end12.i.for.end.i_crit_edge, label %for.body.i.preheader

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.end12.i
  %19 = getelementptr inbounds %struct.anon.243, ptr %req.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon.243, ptr %req.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end35.i
  %inc.i = add nuw i32 %i.0116.i, 1
  %21 = ptrtoint ptr %n_region.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %n_region.i, align 1
  %cmp18.i = icmp ult i32 %inc.i, %22
  br i1 %cmp18.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0116.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %23 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw.i, align 4
  %data19.i = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %data19.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data19.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 96
  %mul.i = shl i32 %i.0116.i, 6
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %27 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr20.i, align 1
  %and.i = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp21.not.i = icmp eq i32 %and.i, 2
  br i1 %cmp21.not.i, label %if.end23.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end23.i:                                       ; preds = %for.body.i
  %29 = getelementptr inbounds %struct.mt7915_patch_sec, ptr %add.ptr20.i, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %29, align 1
  %len25.i = getelementptr inbounds %struct.anon.241, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %len25.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %len25.i, align 1
  %offs.i = getelementptr inbounds %struct.mt7915_patch_sec, ptr %add.ptr20.i, i32 0, i32 1
  %34 = ptrtoint ptr %offs.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %offs.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #10
  %36 = call i32 @llvm.bswap.i32(i32 %31) #10
  %37 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %req.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %33) #10
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %19, align 4
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 128, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %31)
  %cmp.i57 = icmp eq i32 %31, 2097152
  %..i = select i1 %cmp.i57, i32 5, i32 1
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef %..i, ptr noundef nonnull %req.i, i32 noundef 12, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool29.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool29.not.i, label %if.end35.i, label %if.end23.i.out.sink.split.i_crit_edge

if.end23.i.out.sink.split.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

if.end35.i:                                       ; preds = %if.end23.i
  %add.ptr27.i = getelementptr i8, ptr %26, i32 %35
  %call51.i = call i32 @__mt76_mcu_send_firmware(ptr noundef %dev, i32 noundef 238, ptr noundef %add.ptr27.i, i32 noundef %33, i32 noundef 4096) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %for.cond.i, label %if.end35.i.out.sink.split.i_crit_edge

if.end35.i.out.sink.split.i_crit_edge:            ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i108.i) #10
  %41 = ptrtoint ptr %req.i108.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %req.i108.i, align 4
  %call.i.i109.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 7, ptr noundef nonnull %req.i108.i, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i108.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109.i)
  %tobool63.not.i = icmp eq i32 %call.i.i109.i, 0
  br i1 %tobool63.not.i, label %for.end.i.out.i_crit_edge, label %for.end.i.out.sink.split.i_crit_edge

for.end.i.out.sink.split.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

out.sink.split.i:                                 ; preds = %for.end.i.out.sink.split.i_crit_edge, %if.end35.i.out.sink.split.i_crit_edge, %if.end23.i.out.sink.split.i_crit_edge, %lor.lhs.false6.i.out.sink.split.i_crit_edge, %lor.lhs.false.i.out.sink.split.i_crit_edge, %if.end.i.out.sink.split.i_crit_edge
  %.str.38.sink.i = phi ptr [ @.str.29, %if.end.i.out.sink.split.i_crit_edge ], [ @.str.29, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ @.str.29, %lor.lhs.false6.i.out.sink.split.i_crit_edge ], [ @.str.41, %for.end.i.out.sink.split.i_crit_edge ], [ @.str.38, %if.end35.i.out.sink.split.i_crit_edge ], [ @.str.35, %if.end23.i.out.sink.split.i_crit_edge ]
  %ret.1.ph.i = phi i32 [ -22, %if.end.i.out.sink.split.i_crit_edge ], [ -22, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ -22, %lor.lhs.false6.i.out.sink.split.i_crit_edge ], [ %call.i.i109.i, %for.end.i.out.sink.split.i_crit_edge ], [ %call51.i, %if.end35.i.out.sink.split.i_crit_edge ], [ %call.i.i, %if.end23.i.out.sink.split.i_crit_edge ]
  %42 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev2.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull %.str.38.sink.i) #13
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %for.end.i.out.i_crit_edge, %for.body.i.out.i_crit_edge, %sw.epilog.i.out.i_crit_edge
  %ret.1.i = phi i32 [ %call3.i, %sw.epilog.i.out.i_crit_edge ], [ 0, %for.end.i.out.i_crit_edge ], [ %ret.1.ph.i, %out.sink.split.i ], [ -22, %for.body.i.out.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i110.i) #10
  %44 = ptrtoint ptr %req.i110.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %req.i110.i, align 4
  %call.i.i111.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull %req.i110.i, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i110.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i111.i)
  %cond.i = icmp eq i32 %call.i.i111.i, 3
  br i1 %cond.i, label %mt7915_load_patch.exit, label %mt7915_load_patch.exit.thread63

mt7915_load_patch.exit.thread63:                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.44) #13
  %47 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  br label %cleanup

mt7915_load_patch.exit:                           ; preds = %out.i
  %49 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %50) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool.not, label %mt7915_load_patch.exit.if.end_crit_edge, label %mt7915_load_patch.exit.cleanup_crit_edge

mt7915_load_patch.exit.cleanup_crit_edge:         ; preds = %mt7915_load_patch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt7915_load_patch.exit.if.end_crit_edge:          ; preds = %mt7915_load_patch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %mt7915_load_patch.exit.if.end_crit_edge, %mt7915_load_patch.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i46) #10
  %51 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i46, align 4, !annotation !151
  %dev1.i47 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %52 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1.i47, align 8
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i46, ptr noundef nonnull @.str.46, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i48 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i48, label %if.end.i49, label %if.end.mt7915_load_ram.exit.thread_crit_edge

if.end.mt7915_load_ram.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread

if.end.i49:                                       ; preds = %if.end
  %54 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw.i46, align 4
  %tobool2.not.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i, label %if.end.i49.mt7915_load_ram.exit.thread69_crit_edge, label %lor.lhs.false.i51

if.end.i49.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

lor.lhs.false.i51:                                ; preds = %if.end.i49
  %data.i50 = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %data.i50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i50, align 4
  %tobool3.not.i = icmp eq ptr %57, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i51.mt7915_load_ram.exit.thread69_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i51.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i51
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %59)
  %cmp.i52 = icmp ult i32 %59, 36
  br i1 %cmp.i52, label %lor.lhs.false4.i.mt7915_load_ram.exit.thread69_crit_edge, label %if.end7.i

lor.lhs.false4.i.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

if.end7.i:                                        ; preds = %lor.lhs.false4.i
  %add.ptr.i54 = getelementptr i8, ptr %57, i32 %59
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i54, i32 -36
  %60 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i47, align 8
  %fw_ver.i = getelementptr inbounds %struct.mt7915_fw_trailer, ptr %add.ptr10.i, i32 0, i32 6
  %build_date.i = getelementptr inbounds %struct.mt7915_fw_trailer, ptr %add.ptr10.i, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.49, ptr noundef %fw_ver.i, ptr noundef %build_date.i) #13
  %62 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw.i46, align 4
  %data16.i = getelementptr inbounds %struct.firmware, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %data16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data16.i, align 4
  %call17.i = call fastcc i32 @mt7915_mcu_send_ram_firmware(ptr noundef %dev, ptr noundef %add.ptr10.i, ptr noundef %65, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end24.i, label %if.end7.i.mt7915_load_ram.exit.thread69_crit_edge

if.end7.i.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

if.end24.i:                                       ; preds = %if.end7.i
  %66 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fw.i46, align 4
  call void @release_firmware(ptr noundef %67) #10
  %68 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i47, align 8
  %call26.i = call i32 @request_firmware(ptr noundef nonnull %fw.i46, ptr noundef nonnull @.str.54, ptr noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.mt7915_load_ram.exit.thread_crit_edge

if.end24.i.mt7915_load_ram.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread

if.end29.i:                                       ; preds = %if.end24.i
  %70 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw.i46, align 4
  %tobool30.not.i = icmp eq ptr %71, null
  br i1 %tobool30.not.i, label %if.end29.i.mt7915_load_ram.exit.thread69_crit_edge, label %lor.lhs.false31.i

if.end29.i.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

lor.lhs.false31.i:                                ; preds = %if.end29.i
  %data32.i = getelementptr inbounds %struct.firmware, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %data32.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data32.i, align 4
  %tobool33.not.i = icmp eq ptr %73, null
  br i1 %tobool33.not.i, label %lor.lhs.false31.i.mt7915_load_ram.exit.thread69_crit_edge, label %lor.lhs.false34.i

lor.lhs.false31.i.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

lor.lhs.false34.i:                                ; preds = %lor.lhs.false31.i
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %75)
  %cmp36.i = icmp ult i32 %75, 36
  br i1 %cmp36.i, label %lor.lhs.false34.i.mt7915_load_ram.exit.thread69_crit_edge, label %if.end42.i

lor.lhs.false34.i.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

if.end42.i:                                       ; preds = %lor.lhs.false34.i
  %add.ptr45.i = getelementptr i8, ptr %73, i32 %75
  %add.ptr46.i = getelementptr i8, ptr %add.ptr45.i, i32 -36
  %76 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i47, align 8
  %fw_ver51.i = getelementptr inbounds %struct.mt7915_fw_trailer, ptr %add.ptr46.i, i32 0, i32 6
  %build_date53.i = getelementptr inbounds %struct.mt7915_fw_trailer, ptr %add.ptr46.i, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.58, ptr noundef %fw_ver51.i, ptr noundef %build_date53.i) #13
  %78 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fw.i46, align 4
  %data55.i = getelementptr inbounds %struct.firmware, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %data55.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data55.i, align 4
  %call56.i = call fastcc i32 @mt7915_mcu_send_ram_firmware(ptr noundef %dev, ptr noundef %add.ptr46.i, ptr noundef %81, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end4, label %if.end42.i.mt7915_load_ram.exit.thread69_crit_edge

if.end42.i.mt7915_load_ram.exit.thread69_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_load_ram.exit.thread69

mt7915_load_ram.exit.thread:                      ; preds = %if.end24.i.mt7915_load_ram.exit.thread_crit_edge, %if.end.mt7915_load_ram.exit.thread_crit_edge
  %retval.0.i56.ph = phi i32 [ %call26.i, %if.end24.i.mt7915_load_ram.exit.thread_crit_edge ], [ %call.i, %if.end.mt7915_load_ram.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i46) #10
  br label %cleanup

mt7915_load_ram.exit.thread69:                    ; preds = %if.end42.i.mt7915_load_ram.exit.thread69_crit_edge, %lor.lhs.false34.i.mt7915_load_ram.exit.thread69_crit_edge, %lor.lhs.false31.i.mt7915_load_ram.exit.thread69_crit_edge, %if.end29.i.mt7915_load_ram.exit.thread69_crit_edge, %if.end7.i.mt7915_load_ram.exit.thread69_crit_edge, %lor.lhs.false4.i.mt7915_load_ram.exit.thread69_crit_edge, %lor.lhs.false.i51.mt7915_load_ram.exit.thread69_crit_edge, %if.end.i49.mt7915_load_ram.exit.thread69_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %lor.lhs.false4.i.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.29, %lor.lhs.false.i51.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.29, %if.end.i49.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.52, %if.end7.i.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.29, %lor.lhs.false34.i.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.29, %lor.lhs.false31.i.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.29, %if.end29.i.mt7915_load_ram.exit.thread69_crit_edge ], [ @.str.61, %if.end42.i.mt7915_load_ram.exit.thread69_crit_edge ]
  %ret.0.i.ph = phi i32 [ -22, %lor.lhs.false4.i.mt7915_load_ram.exit.thread69_crit_edge ], [ -22, %lor.lhs.false.i51.mt7915_load_ram.exit.thread69_crit_edge ], [ -22, %if.end.i49.mt7915_load_ram.exit.thread69_crit_edge ], [ %call17.i, %if.end7.i.mt7915_load_ram.exit.thread69_crit_edge ], [ -22, %lor.lhs.false34.i.mt7915_load_ram.exit.thread69_crit_edge ], [ -22, %lor.lhs.false31.i.mt7915_load_ram.exit.thread69_crit_edge ], [ -22, %if.end29.i.mt7915_load_ram.exit.thread69_crit_edge ], [ %call56.i, %if.end42.i.mt7915_load_ram.exit.thread69_crit_edge ]
  %82 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i47, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull %.str.29.sink) #13
  %84 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw.i46, align 4
  call void @release_firmware(ptr noundef %85) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i46) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end42.i
  %hw.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %86 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wiphy.i, align 8
  %fw_version.i = getelementptr inbounds %struct.wiphy, ptr %89, i32 0, i32 38
  %call69.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef %fw_ver51.i, ptr noundef %build_date53.i) #10
  %90 = ptrtoint ptr %fw.i46 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fw.i46, align 4
  call void @release_firmware(ptr noundef %91) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i46) #10
  %call17 = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 403046640, i32 noundef 7, i32 noundef 7, i32 noundef 1000) #10
  br i1 %call17, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1.i47, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.21) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %94 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 8
  call void %97(ptr noundef %dev, ptr noundef %99, i1 noundef zeroext false) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7915_load_firmware.__UNIQUE_ID_ddebug718, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7915_load_firmware, %if.then30)) #10
          to label %cleanup [label %if.then30], !srcloc !152

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1.i47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7915_load_firmware.__UNIQUE_ID_ddebug718, ptr noundef %101, ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end23, %do.end21, %mt7915_load_ram.exit.thread69, %mt7915_load_ram.exit.thread, %mt7915_load_patch.exit.cleanup_crit_edge, %mt7915_load_patch.exit.thread63, %mt7915_load_patch.exit.thread60
  %retval.0 = phi i32 [ -5, %do.end21 ], [ %ret.1.i, %mt7915_load_patch.exit.cleanup_crit_edge ], [ 0, %if.then30 ], [ -11, %mt7915_load_patch.exit.thread60 ], [ -11, %mt7915_load_patch.exit.thread63 ], [ %retval.0.i56.ph, %mt7915_load_ram.exit.thread ], [ %ret.0.i.ph, %mt7915_load_ram.exit.thread69 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_mcu_init_rx_airtime(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.247, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 132)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %req, align 2
  %3 = getelementptr inbounds %struct.anon.247, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %3, align 2
  %5 = getelementptr inbounds %struct.anon.247, ptr %req, i32 0, i32 9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 2
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 19181, ptr noundef nonnull %req, i32 noundef 136, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %req, align 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %3, align 2
  %airtime_en = getelementptr inbounds %struct.anon.247, ptr %req, i32 0, i32 5
  %9 = ptrtoint ptr %airtime_en to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %airtime_en, align 2
  %call.i66 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 19181, ptr noundef nonnull %req, i32 noundef 136, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i66, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mcu_exit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcu_ops, align 4
  %mcu_restart = getelementptr inbounds %struct.mt76_mcu_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mcu_restart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu_restart, align 4
  %call = tail call i32 %3(ptr noundef %dev) #10
  %call9 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 403046640, i32 noundef 7, i32 noundef 1, i32 noundef 1000) #10
  br i1 %call9, label %if.end, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  tail call void %9(ptr noundef %dev, i32 noundef 403046416, i32 noundef 1) #10
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  tail call void @skb_queue_purge(ptr noundef %res_q) #10
  br label %return

return:                                           ; preds = %if.end, %do.end11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_mac(ptr noundef %dev, i32 noundef %band, i1 noundef zeroext %enable, i1 noundef zeroext %hdr_trans) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.248, align 8
  %req_trans = alloca %struct.anon.165, align 1
  %req_mac = alloca %struct.anon.166, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %frombool1 = zext i1 %hdr_trans to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_trans) #10
  %0 = getelementptr inbounds %struct.anon.165, ptr %req_trans, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.165, ptr %req_trans, i32 0, i32 2
  %2 = ptrtoint ptr %req_trans to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %req_trans, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool1, ptr %0, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_mac) #10
  %5 = getelementptr inbounds %struct.anon.166, ptr %req_mac, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon.166, ptr %req_mac, i32 0, i32 2
  %7 = ptrtoint ptr %req_mac to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %req_mac, align 1
  %conv7 = trunc i32 %band to i8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %6, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 18413, ptr noundef nonnull %req_trans, i32 noundef 8, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %hdr_trans, label %if.then39, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #10
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 72339069014740616, ptr %req.i, align 8
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 18413, ptr noundef nonnull %req.i, i32 noundef 8, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end.if.end41_crit_edge
  %call.i83 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 18157, ptr noundef nonnull %req_mac, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i83, %if.end41 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_mac) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_trans) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_scs(ptr noundef %dev, i8 noundef zeroext %band, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.167, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.167, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.167, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50331648, ptr %req, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %band, ptr %0, align 4
  %conv3 = select i1 %enable, i8 2, i8 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %1, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 33517, ptr noundef nonnull %req, i32 noundef 6, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_rts_thresh(ptr noundef readonly %phy, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.168, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #10
  %2 = getelementptr inbounds %struct.anon.168, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.168, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.168, ptr %req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon.168, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %req, align 1
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy2, %phy
  %conv3 = zext i1 %cmp to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 0, ptr %3, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %val)
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %4, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 33554432, ptr %5, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 16109, ptr noundef nonnull %req, i32 noundef 12, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_update_edca(ptr noundef %dev, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %param, align 1
  %conv = zext i8 %1 to i32
  %.neg.neg = shl nuw nsw i32 %conv, 3
  %sub1 = or i32 %.neg.neg, 4
  %call.i = tail call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 10221, ptr noundef %param, i32 noundef %sub1, i1 noundef zeroext true, ptr noundef null) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_tx(ptr noundef %dev, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.mt7915_mcu_tx, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 35)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %req, align 1
  %3 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  %5 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %queue_params = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1, i32 4
  %wmm_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %7 = ptrtoint ptr %wmm_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wmm_idx, align 1
  %conv = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %arrayidx1 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 0
  %set = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 15, ptr %set, align 1
  %conv2 = trunc i32 %mul to i8
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2, ptr %arrayidx1, align 2
  %aifs = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1, i32 10
  %11 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aifs, align 2
  %aifs3 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %aifs3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %aifs3, align 2
  %14 = ptrtoint ptr %queue_params to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %queue_params, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %txop4 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 0, i32 5
  %17 = ptrtoint ptr %txop4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %txop4, align 2
  %cw_min = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1, i32 6
  %18 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cw_min, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  %conv6 = zext i16 %19 to i32
  %20 = tail call i32 @llvm.ctlz.i32(i32 %conv6, i1 true) #10, !range !153
  %21 = trunc i32 %20 to i8
  %conv7 = sub nuw nsw i8 32, %21
  %conv7.sink = select i1 %tobool.not, i8 5, i8 %conv7
  %22 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv7.sink, ptr %22, align 1
  %cw_max = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1, i32 8
  %24 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cw_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool10.not = icmp eq i16 %25, 0
  %26 = tail call i16 @llvm.ctlz.i16(i16 %25, i1 true), !range !147
  %.neg = mul nsw i16 %26, -256
  %27 = add nsw i16 %.neg, 4096
  %.sink = select i1 %tobool10.not, i16 2560, i16 %27
  %28 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %.sink, ptr %28, align 2
  %arrayidx.1 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %queue_params, i32 0, i32 1
  %arrayidx1.1 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 1
  %set.1 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 1, i32 1
  %30 = ptrtoint ptr %set.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 15, ptr %set.1, align 1
  %31 = trunc i32 %mul to i8
  %conv2.1 = or i8 %31, 1
  %32 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv2.1, ptr %arrayidx1.1, align 2
  %aifs.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 34, i32 2
  %33 = ptrtoint ptr %aifs.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %aifs.1, align 2
  %aifs3.1 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 1, i32 2
  %35 = ptrtoint ptr %aifs3.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %aifs3.1, align 2
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.1, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %txop4.1 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 1, i32 5
  %39 = ptrtoint ptr %txop4.1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %txop4.1, align 2
  %cw_min.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 34, i32 1
  %40 = ptrtoint ptr %cw_min.1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cw_min.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.1 = icmp eq i16 %41, 0
  %conv6.1 = zext i16 %41 to i32
  %42 = tail call i32 @llvm.ctlz.i32(i32 %conv6.1, i1 true) #10, !range !153
  %43 = trunc i32 %42 to i8
  %conv7.1 = sub nuw nsw i8 32, %43
  %conv7.1.sink = select i1 %tobool.not.1, i8 5, i8 %conv7.1
  %44 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 1, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv7.1.sink, ptr %44, align 1
  %cw_max.1 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %queue_params, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cw_max.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool10.not.1 = icmp eq i16 %47, 0
  %48 = tail call i16 @llvm.ctlz.i16(i16 %47, i1 true), !range !147
  %.neg.1 = mul nsw i16 %48, -256
  %49 = add nsw i16 %.neg.1, 4096
  %.sink46 = select i1 %tobool10.not.1, i16 2560, i16 %49
  %50 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 1, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %.sink46, ptr %50, align 2
  %arrayidx.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 35
  %arrayidx1.2 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 2
  %set.2 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 2, i32 1
  %52 = ptrtoint ptr %set.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 15, ptr %set.2, align 1
  %53 = trunc i32 %mul to i8
  %conv2.2 = or i8 %53, 2
  %54 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv2.2, ptr %arrayidx1.2, align 2
  %aifs.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 38
  %55 = ptrtoint ptr %aifs.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %aifs.2, align 2
  %aifs3.2 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 2, i32 2
  %57 = ptrtoint ptr %aifs3.2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %aifs3.2, align 2
  %58 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.2, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %txop4.2 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 2, i32 5
  %61 = ptrtoint ptr %txop4.2 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %txop4.2, align 2
  %cw_min.2 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %queue_params, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %cw_min.2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cw_min.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.2 = icmp eq i16 %63, 0
  %conv6.2 = zext i16 %63 to i32
  %64 = tail call i32 @llvm.ctlz.i32(i32 %conv6.2, i1 true) #10, !range !153
  %65 = trunc i32 %64 to i8
  %conv7.2 = sub nuw nsw i8 32, %65
  %conv7.2.sink = select i1 %tobool.not.2, i8 5, i8 %conv7.2
  %66 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 2, i32 3
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv7.2.sink, ptr %66, align 1
  %cw_max.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 36
  %68 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %cw_max.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool10.not.2 = icmp eq i16 %69, 0
  %70 = tail call i16 @llvm.ctlz.i16(i16 %69, i1 true), !range !147
  %.neg.2 = mul nsw i16 %70, -256
  %71 = add nsw i16 %.neg.2, 4096
  %.sink47 = select i1 %tobool10.not.2, i16 2560, i16 %71
  %72 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 2, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %.sink47, ptr %72, align 2
  %arrayidx.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 7
  %arrayidx1.3 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 3
  %set.3 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 3, i32 1
  %74 = ptrtoint ptr %set.3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 15, ptr %set.3, align 1
  %75 = trunc i32 %mul to i8
  %conv2.3 = or i8 %75, 3
  %76 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv2.3, ptr %arrayidx1.3, align 2
  %aifs.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 13
  %77 = ptrtoint ptr %aifs.3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %aifs.3, align 2
  %aifs3.3 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 3, i32 2
  %79 = ptrtoint ptr %aifs3.3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %aifs3.3, align 2
  %80 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx.3, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %txop4.3 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 3, i32 5
  %83 = ptrtoint ptr %txop4.3 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %txop4.3, align 2
  %cw_min.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 9
  %84 = ptrtoint ptr %cw_min.3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cw_min.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool.not.3 = icmp eq i16 %85, 0
  %conv6.3 = zext i16 %85 to i32
  %86 = tail call i32 @llvm.ctlz.i32(i32 %conv6.3, i1 true) #10, !range !153
  %87 = trunc i32 %86 to i8
  %conv7.3 = sub nuw nsw i8 32, %87
  %conv7.3.sink = select i1 %tobool.not.3, i8 5, i8 %conv7.3
  %88 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 3, i32 3
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv7.3.sink, ptr %88, align 1
  %cw_max.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 11
  %90 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %cw_max.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool10.not.3 = icmp eq i16 %91, 0
  %92 = tail call i16 @llvm.ctlz.i16(i16 %91, i1 true), !range !147
  %.neg.3 = mul nsw i16 %92, -256
  %93 = add nsw i16 %.neg.3, 4096
  %.sink48 = select i1 %tobool10.not.3, i16 2560, i16 %93
  %94 = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req, i32 0, i32 4, i32 3, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %.sink48, ptr %94, align 2
  %96 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %req, align 1
  %conv.i = zext i8 %97 to i32
  %.neg.neg.i = shl nuw nsw i32 %conv.i, 3
  %sub1.i = or i32 %.neg.neg.i, 4
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 10221, ptr noundef nonnull %req, i32 noundef %sub1.i, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req) #10
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_pm(ptr noundef %dev, i32 noundef %band, i32 noundef %enter) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.169, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.169, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.169, ptr %req, i32 0, i32 8
  %2 = getelementptr inbounds i8, ptr %req, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 30)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %req, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enter)
  %tobool.not = icmp eq i32 %enter, 0
  %conv = select i1 %tobool.not, i8 2, i8 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %0, align 1
  %conv1 = trunc i32 %band to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %1, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 2029, ptr noundef nonnull %req, i32 noundef 32, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_rdd_cmd(ptr noundef %dev, i32 noundef %cmd, i8 noundef zeroext %index, i8 noundef zeroext %rx_sel, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.170, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.170, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.170, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.170, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.170, ptr %req, i32 0, i32 4
  %conv = trunc i32 %cmd to i8
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %req, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %index, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rx_sel, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %val, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %3, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 15085, ptr noundef nonnull %req, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_fcc5_lpn(ptr noundef %dev, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.171, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.171, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.171, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %req, align 4
  %conv = trunc i32 %val to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %1, align 2
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 40429, ptr noundef nonnull %req, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_pulse_th(ptr noundef %dev, ptr nocapture noundef readonly %pulse) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.172, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 5
  %5 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 6
  %6 = getelementptr inbounds %struct.anon.172, ptr %req, i32 0, i32 7
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50331648, ptr %req, align 4
  %8 = ptrtoint ptr %pulse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pulse, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %max_pwr2 = getelementptr inbounds %struct.mt7915_dfs_pulse, ptr %pulse, i32 0, i32 1
  %12 = ptrtoint ptr %max_pwr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_pwr2, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %min_pwr3 = getelementptr inbounds %struct.mt7915_dfs_pulse, ptr %pulse, i32 0, i32 2
  %16 = ptrtoint ptr %min_pwr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_pwr3, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %2, align 4
  %min_stgr_pri4 = getelementptr inbounds %struct.mt7915_dfs_pulse, ptr %pulse, i32 0, i32 3
  %20 = ptrtoint ptr %min_stgr_pri4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_stgr_pri4, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %3, align 4
  %max_stgr_pri5 = getelementptr inbounds %struct.mt7915_dfs_pulse, ptr %pulse, i32 0, i32 4
  %24 = ptrtoint ptr %max_stgr_pri5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_stgr_pri5, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %4, align 4
  %min_cr_pri6 = getelementptr inbounds %struct.mt7915_dfs_pulse, ptr %pulse, i32 0, i32 5
  %28 = ptrtoint ptr %min_cr_pri6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_cr_pri6, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %5, align 4
  %max_cr_pri7 = getelementptr inbounds %struct.mt7915_dfs_pulse, ptr %pulse, i32 0, i32 6
  %32 = ptrtoint ptr %max_cr_pri7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_cr_pri7, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %6, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 40429, ptr noundef nonnull %req, i32 noundef 32, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_radar_th(ptr noundef %dev, i32 noundef %index, ptr nocapture noundef readonly %pattern) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.173, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 4
  %4 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 5
  %5 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 6
  %6 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 7
  %7 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 8
  %8 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 9
  %9 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 10
  %10 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 11
  %11 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 12
  %12 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 13
  %13 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 14
  %14 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 15
  %15 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 16
  %16 = getelementptr inbounds %struct.anon.173, ptr %req, i32 0, i32 17
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 33554432, ptr %req, align 4
  %conv = trunc i32 %index to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %0, align 4
  %20 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pattern, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %1, align 2
  %stgr2 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 1
  %23 = ptrtoint ptr %stgr2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %stgr2, align 1
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %2, align 1
  %min_crpn3 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 2
  %26 = ptrtoint ptr %min_crpn3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %min_crpn3, align 1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %3, align 4
  %max_crpn4 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 3
  %29 = ptrtoint ptr %max_crpn4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_crpn4, align 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %4, align 1
  %min_crpr5 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 4
  %32 = ptrtoint ptr %min_crpr5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %min_crpr5, align 1
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %5, align 2
  %min_pw6 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 5
  %35 = ptrtoint ptr %min_pw6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %min_pw6, align 1
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %6, align 1
  %min_pri7 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 6
  %38 = ptrtoint ptr %min_pri7 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %min_pri7, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %7, align 4
  %max_pri8 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 7
  %42 = ptrtoint ptr %max_pri8 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %max_pri8, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %8, align 4
  %max_pw9 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 8
  %46 = ptrtoint ptr %max_pw9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_pw9, align 1
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %9, align 4
  %min_crbn10 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 9
  %49 = ptrtoint ptr %min_crbn10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %min_crbn10, align 1
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %10, align 1
  %max_crbn11 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 10
  %52 = ptrtoint ptr %max_crbn11 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %max_crbn11, align 1
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %11, align 2
  %min_stgpn12 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 11
  %55 = ptrtoint ptr %min_stgpn12 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %min_stgpn12, align 1
  %57 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %12, align 1
  %max_stgpn13 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 12
  %58 = ptrtoint ptr %max_stgpn13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %max_stgpn13, align 1
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %13, align 4
  %min_stgpr14 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 13
  %61 = ptrtoint ptr %min_stgpr14 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %min_stgpr14, align 1
  %63 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %14, align 1
  %64 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %15, align 2
  %min_stgpr_diff15 = getelementptr inbounds %struct.mt7915_dfs_pattern, ptr %pattern, i32 0, i32 15
  %65 = ptrtoint ptr %min_stgpr_diff15 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %min_stgpr_diff15, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %16, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 40429, ptr noundef nonnull %req, i32 noundef 32, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_chan_info(ptr noundef readonly %phy, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.174, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %chandef2 = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5
  %center_freq1 = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq1, align 4
  %phy3 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy3, %phy
  %frombool = zext i1 %cmp to i8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req) #10
  %6 = getelementptr inbounds i8, ptr %req, i32 5
  %7 = call ptr @memset(ptr %6, i32 0, i32 71)
  %8 = ptrtoint ptr %chandef2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef2, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %11 to i8
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %req, align 1
  %center_ch = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 1
  %mul.i = mul i32 %5, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #10
  %conv4 = trunc i32 %call.i to i8
  %13 = ptrtoint ptr %center_ch to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %center_ch, align 1
  %bw = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 2
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp.i = icmp ugt i32 %15, 7
  br i1 %cmp.i, label %entry.mt7915_mcu_chan_bw.exit_crit_edge, label %if.end.i

entry.mt7915_mcu_chan_bw.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_mcu_chan_bw.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [8 x i8], ptr @mt7915_mcu_chan_bw.width_to_bw, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  br label %mt7915_mcu_chan_bw.exit

mt7915_mcu_chan_bw.exit:                          ; preds = %if.end.i, %entry.mt7915_mcu_chan_bw.exit_crit_edge
  %retval.0.i = phi i8 [ %17, %if.end.i ], [ 0, %entry.mt7915_mcu_chan_bw.exit_crit_edge ]
  %18 = ptrtoint ptr %bw to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i, ptr %bw, align 1
  %tx_streams_num = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 8
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %antenna_mask, align 8
  %conv82 = zext i8 %22 to i32
  %call.i307 = tail call i32 @__sw_hweight8(i32 noundef %conv82) #10
  %conv84 = trunc i32 %call.i307 to i8
  %23 = ptrtoint ptr %tx_streams_num to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv84, ptr %tx_streams_num, align 1
  %rx_streams = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 4
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 8
  %antenna_mask86 = getelementptr inbounds %struct.mt76_phy, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %antenna_mask86 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %antenna_mask86, align 8
  %28 = ptrtoint ptr %rx_streams to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %rx_streams, align 1
  %band_idx = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 6
  %29 = ptrtoint ptr %band_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %band_idx, align 1
  %channel_band = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 9
  %30 = ptrtoint ptr %chandef2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chandef2, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %conv90 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %channel_band to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv90, ptr %channel_band, align 1
  %tx_antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %25, i32 0, i32 17, i32 12
  %35 = ptrtoint ptr %tx_antenna_mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_antenna_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool93.not = icmp eq i8 %36, 0
  br i1 %tobool93.not, label %mt7915_mcu_chan_bw.exit.if.end126_crit_edge, label %land.lhs.true

mt7915_mcu_chan_bw.exit.if.end126_crit_edge:      ; preds = %mt7915_mcu_chan_bw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

land.lhs.true:                                    ; preds = %mt7915_mcu_chan_bw.exit
  %test = getelementptr inbounds %struct.mt76_phy, ptr %25, i32 0, i32 17
  %37 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %test, align 8
  %.off = add i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %land.lhs.true.if.end126_crit_edge

land.lhs.true.if.end126_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then:                                          ; preds = %land.lhs.true
  %39 = tail call i8 @llvm.ctlz.i8(i8 %36, i1 true), !range !148
  %conv114 = sub nuw nsw i8 8, %39
  %40 = ptrtoint ptr %tx_streams_num to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv114, ptr %tx_streams_num, align 1
  %41 = ptrtoint ptr %rx_streams to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %36, ptr %rx_streams, align 1
  br i1 %cmp, label %if.then121, label %if.then.if.end126_crit_edge

if.then.if.end126_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then121:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %tx_streams_num to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %tx_streams_num, align 1
  %43 = lshr i8 %36, 2
  %44 = ptrtoint ptr %rx_streams to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %rx_streams, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.then.if.end126_crit_edge, %land.lhs.true.if.end126_crit_edge, %mt7915_mcu_chan_bw.exit.if.end126_crit_edge
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %25, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %and128 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else, label %if.end126.if.end144_crit_edge

if.end126.if.end144_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.else:                                          ; preds = %if.end126
  %flags132 = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 4
  %49 = ptrtoint ptr %flags132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags132, align 4
  %and133 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.else.if.else141_crit_edge, label %land.lhs.true135

if.else.if.else141_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else141

land.lhs.true135:                                 ; preds = %if.else
  %dfs_state = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 12
  %51 = ptrtoint ptr %dfs_state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dfs_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp137.not = icmp eq i32 %52, 2
  br i1 %cmp137.not, label %land.lhs.true135.if.else141_crit_edge, label %land.lhs.true135.if.end144_crit_edge

land.lhs.true135.if.end144_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

land.lhs.true135.if.else141_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else141

if.else141:                                       ; preds = %land.lhs.true135.if.else141_crit_edge, %if.else.if.else141_crit_edge
  br label %if.end144

if.end144:                                        ; preds = %if.else141, %land.lhs.true135.if.end144_crit_edge, %if.end126.if.end144_crit_edge
  %.sink = phi i8 [ 0, %if.else141 ], [ 9, %if.end126.if.end144_crit_edge ], [ 5, %land.lhs.true135.if.end144_crit_edge ]
  %switch_reason140 = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 5
  %53 = ptrtoint ptr %switch_reason140 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink, ptr %switch_reason140, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2285, i32 %cmd)
  %cmp173 = icmp eq i32 %cmd, 2285
  br i1 %cmp173, label %cond.false249, label %if.end144.if.end257_crit_edge

if.end144.if.end257_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

cond.false249:                                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %rx_streams to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rx_streams, align 1
  %conv251 = zext i8 %55 to i32
  %call.i308 = tail call i32 @__sw_hweight8(i32 noundef %conv251) #10
  %conv255 = trunc i32 %call.i308 to i8
  %56 = ptrtoint ptr %rx_streams to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv255, ptr %rx_streams, align 1
  br label %if.end257

if.end257:                                        ; preds = %cond.false249, %if.end144.if.end257_crit_edge
  %57 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp258 = icmp eq i32 %58, 4
  br i1 %cmp258, label %if.then260, label %if.end257.if.end263_crit_edge

if.end257.if.end263_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then260:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq2 = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5, i32 3
  %59 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %center_freq2, align 4
  %mul.i309 = mul i32 %60, 1000
  %call.i310 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i309) #10
  %conv262 = trunc i32 %call.i310 to i8
  %center_ch2 = getelementptr inbounds %struct.anon.174, ptr %req, i32 0, i32 7
  %61 = ptrtoint ptr %center_ch2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv262, ptr %center_ch2, align 1
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end257.if.end263_crit_edge
  %call.i311 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef %cmd, ptr noundef nonnull %req, i32 noundef 76, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req) #10
  ret i32 %call.i311
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_eeprom(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.mt7915_mcu_eeprom, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %req, align 4
  %flash_mode = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %flash_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flash_mode, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eeprom.i, align 16
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 1028) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %cleanup.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i:                                        ; preds = %if.then
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call.i.i, align 1
  %req.sroa.4.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %6 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 97, ptr %req.sroa.4.0.call.i.sroa_idx.i, align 1
  %req.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %7 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 4, ptr %req.sroa.5.0.call.i.sroa_idx.i, align 1
  %call.i121.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1024) #10
  %8 = call ptr @memcpy(ptr %call.i121.i, ptr %4, i32 1024)
  %call.i122.i = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 8685, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool92.not.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool92.not.i, label %for.inc.i, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %cleanup.i
  %call.i.1 = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 1028) #10
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %for.inc.i.cleanup_crit_edge, label %cleanup.i.1

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i.1:                                      ; preds = %for.inc.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 1024
  %call.i.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.1, i32 noundef 4) #10
  %9 = ptrtoint ptr %call.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call.i.i.1, align 1
  %req.sroa.4.0.call.i.sroa_idx.i.1 = getelementptr inbounds i8, ptr %call.i.i.1, i32 1
  %10 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 101, ptr %req.sroa.4.0.call.i.sroa_idx.i.1, align 1
  %req.sroa.5.0.call.i.sroa_idx.i.1 = getelementptr inbounds i8, ptr %call.i.i.1, i32 2
  %11 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i.1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 4, ptr %req.sroa.5.0.call.i.sroa_idx.i.1, align 1
  %call.i121.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.1, i32 noundef 1024) #10
  %12 = call ptr @memcpy(ptr %call.i121.i.1, ptr %add.ptr.i, i32 1024)
  %call.i122.i.1 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i.1, i32 noundef 8685, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i.1)
  %tobool92.not.i.1 = icmp eq i32 %call.i122.i.1, 0
  br i1 %tobool92.not.i.1, label %for.inc.i.1, label %cleanup.i.1.cleanup_crit_edge

cleanup.i.1.cleanup_crit_edge:                    ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.1:                                      ; preds = %cleanup.i.1
  %call.i.2 = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 1028) #10
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %for.inc.i.1.cleanup_crit_edge, label %cleanup.i.2

for.inc.i.1.cleanup_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i.2:                                      ; preds = %for.inc.i.1
  %add.ptr.i.1 = getelementptr i8, ptr %4, i32 2048
  %call.i.i.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.2, i32 noundef 4) #10
  %13 = ptrtoint ptr %call.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %call.i.i.2, align 1
  %req.sroa.4.0.call.i.sroa_idx.i.2 = getelementptr inbounds i8, ptr %call.i.i.2, i32 1
  %14 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 105, ptr %req.sroa.4.0.call.i.sroa_idx.i.2, align 1
  %req.sroa.5.0.call.i.sroa_idx.i.2 = getelementptr inbounds i8, ptr %call.i.i.2, i32 2
  %15 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i.2 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 4, ptr %req.sroa.5.0.call.i.sroa_idx.i.2, align 1
  %call.i121.i.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.2, i32 noundef 1024) #10
  %16 = call ptr @memcpy(ptr %call.i121.i.2, ptr %add.ptr.i.1, i32 1024)
  %call.i122.i.2 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i.2, i32 noundef 8685, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i.2)
  %tobool92.not.i.2 = icmp eq i32 %call.i122.i.2, 0
  br i1 %tobool92.not.i.2, label %for.inc.i.2, label %cleanup.i.2.cleanup_crit_edge

cleanup.i.2.cleanup_crit_edge:                    ; preds = %cleanup.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.2:                                      ; preds = %cleanup.i.2
  %call.i.3 = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 516) #10
  %tobool.not.i.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool.not.i.3, label %for.inc.i.2.cleanup_crit_edge, label %cleanup.i.3

for.inc.i.2.cleanup_crit_edge:                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.2 = getelementptr i8, ptr %4, i32 3072
  %call.i.i.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.3, i32 noundef 4) #10
  %17 = ptrtoint ptr %call.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %call.i.i.3, align 1
  %req.sroa.4.0.call.i.sroa_idx.i.3 = getelementptr inbounds i8, ptr %call.i.i.3, i32 1
  %18 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 109, ptr %req.sroa.4.0.call.i.sroa_idx.i.3, align 1
  %req.sroa.5.0.call.i.sroa_idx.i.3 = getelementptr inbounds i8, ptr %call.i.i.3, i32 2
  %19 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i.3 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 2, ptr %req.sroa.5.0.call.i.sroa_idx.i.3, align 1
  %call.i121.i.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.3, i32 noundef 512) #10
  %20 = call ptr @memcpy(ptr %call.i121.i.3, ptr %add.ptr.i.2, i32 512)
  %call.i122.i.3 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i.3, i32 noundef 8685, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i32 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 8685, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup.i.3, %for.inc.i.2.cleanup_crit_edge, %cleanup.i.2.cleanup_crit_edge, %for.inc.i.1.cleanup_crit_edge, %cleanup.i.1.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i32, %if.end ], [ %call.i122.i, %cleanup.i.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %for.inc.i.cleanup_crit_edge ], [ %call.i122.i.1, %cleanup.i.1.cleanup_crit_edge ], [ -12, %for.inc.i.1.cleanup_crit_edge ], [ %call.i122.i.2, %cleanup.i.2.cleanup_crit_edge ], [ -12, %for.inc.i.2.cleanup_crit_edge ], [ %call.i122.i.3, %cleanup.i.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_get_eeprom(ptr noundef %dev, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.mt7915_mcu_eeprom_info, align 4
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %and = and i32 %offset, -16
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #10
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !151
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 66029, ptr noundef nonnull %req, i32 noundef 24, i1 noundef zeroext true, ptr noundef nonnull %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %9 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eeprom, align 16
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %8, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %add.ptr = getelementptr i8, ptr %10, i32 %13
  %data32 = getelementptr inbounds %struct.mt7915_mcu_eeprom_info, ptr %8, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %data32, i32 16)
  call void @consume_skb(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_get_eeprom_free_block(ptr noundef %dev, ptr nocapture noundef writeonly %block_num) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.175, align 4
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #10
  %1 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !151
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 85997, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = ptrtoint ptr %block_num to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %block_num, align 1
  call void @consume_skb(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_apply_group_cal(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 16
  %arrayidx = getelementptr i8, ptr %1, i32 98
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %while.body.preheader

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

while.body.preheader:                             ; preds = %entry
  %cal1 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %cal1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cal1, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %idx.064 = phi i8 [ %inc, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %cal.063 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %6, %while.body.preheader ]
  %total.062 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ 50192, %while.body.preheader ]
  %7 = tail call i32 @llvm.umin.i32(i32 %total.062, i32 1024)
  %add.i = add nuw nsw i32 %7, 16
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef %add.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.cleanup38_crit_edge, label %mt7915_mcu_set_pre_cal.exit

while.body.cleanup38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

mt7915_mcu_set_pre_cal.exit:                      ; preds = %while.body
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #10
  %9 = call ptr @memset(ptr %call.i.i, i32 0, i32 7)
  %req.sroa.4.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %10 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %idx.064, ptr %req.sroa.4.0.call.i.sroa_idx.i, align 1
  %req.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 8
  %11 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %req.sroa.5.0.call.i.sroa_idx.i, align 1
  %req.sroa.515.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 12
  %12 = ptrtoint ptr %req.sroa.515.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %8, ptr %req.sroa.515.0.call.i.sroa_idx.i, align 1
  %call.i13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %7) #10
  %13 = call ptr @memcpy(ptr %call.i13.i, ptr %cal.063, i32 %7)
  %call.i14.i = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 44013, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool34.not = icmp eq i32 %call.i14.i, 0
  br i1 %tobool34.not, label %cleanup, label %mt7915_mcu_set_pre_cal.exit.cleanup38_crit_edge

mt7915_mcu_set_pre_cal.exit.cleanup38_crit_edge:  ; preds = %mt7915_mcu_set_pre_cal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

cleanup:                                          ; preds = %mt7915_mcu_set_pre_cal.exit
  %sub = sub i32 %total.062, %7
  %add.ptr = getelementptr i8, ptr %cal.063, i32 %7
  %inc = add nuw nsw i8 %idx.064, 1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %cleanup.cleanup38_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup.cleanup38_crit_edge, %mt7915_mcu_set_pre_cal.exit.cleanup38_crit_edge, %while.body.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup38_crit_edge ], [ -12, %while.body.cleanup38_crit_edge ], [ %call.i14.i, %mt7915_mcu_set_pre_cal.exit.cleanup38_crit_edge ], [ 0, %cleanup.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_apply_tx_dpd(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %cal3 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %cal3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cal3, align 4
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom, align 16
  %arrayidx = getelementptr i8, ptr %5, i32 98
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 8
  %center_freq1 = getelementptr inbounds %struct.mt76_phy, ptr %10, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq1, align 4
  %conv = trunc i32 %12 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4000, i16 %conv)
  %cmp.i = icmp ult i16 %conv, 4000
  br i1 %cmp.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2432, i16 %conv)
  %cmp3.i = icmp ult i16 %conv, 2432
  br i1 %cmp3.i, label %if.then.i.if.end8_crit_edge, label %if.end.i

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 2457, i16 %conv)
  %cmp7.i = icmp ult i16 %conv, 2457
  %..i = select i1 %cmp7.i, i32 25, i32 26
  br label %if.end8

if.end12.i:                                       ; preds = %if.end
  %width = getelementptr inbounds %struct.mt76_phy, ptr %10, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %conv5 = trunc i32 %14 to i8
  %15 = zext i8 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %conv5, label %if.then24.i [
    i8 4, label %if.end12.i.cleanup45_crit_edge
    i8 5, label %if.end12.i.cleanup45_crit_edge78
    i8 1, label %if.end12.i.mt7915_dpd_freq_idx.exit_crit_edge
  ]

if.end12.i.mt7915_dpd_freq_idx.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_dpd_freq_idx.exit

if.end12.i.cleanup45_crit_edge78:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.end12.i.cleanup45_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.then24.i:                                      ; preds = %if.end12.i
  %add26.i = add i16 %conv, 10
  %call.i = tail call fastcc i32 @mt7915_find_freq_idx(i16 noundef zeroext %add26.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp28.i = icmp sgt i32 %call.i, -1
  br i1 %cmp28.i, label %if.then24.i.if.end8_crit_edge, label %if.end31.i

if.then24.i.if.end8_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end31.i:                                       ; preds = %if.then24.i
  %sub.i = add i16 %conv, -10
  %call34.i = tail call fastcc i32 @mt7915_find_freq_idx(i16 noundef zeroext %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34.i)
  %cmp35.i = icmp sgt i32 %call34.i, -1
  br i1 %cmp35.i, label %if.end31.i.if.end8_crit_edge, label %if.end31.i.mt7915_dpd_freq_idx.exit_crit_edge

if.end31.i.mt7915_dpd_freq_idx.exit_crit_edge:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7915_dpd_freq_idx.exit

if.end31.i.if.end8_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

mt7915_dpd_freq_idx.exit:                         ; preds = %if.end31.i.mt7915_dpd_freq_idx.exit_crit_edge, %if.end12.i.mt7915_dpd_freq_idx.exit_crit_edge
  %call40.i = tail call fastcc i32 @mt7915_find_freq_idx(i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp = icmp slt i32 %call40.i, 0
  br i1 %cmp, label %mt7915_dpd_freq_idx.exit.cleanup45_crit_edge, label %mt7915_dpd_freq_idx.exit.if.end8_crit_edge

mt7915_dpd_freq_idx.exit.if.end8_crit_edge:       ; preds = %mt7915_dpd_freq_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

mt7915_dpd_freq_idx.exit.cleanup45_crit_edge:     ; preds = %mt7915_dpd_freq_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.end8:                                          ; preds = %mt7915_dpd_freq_idx.exit.if.end8_crit_edge, %if.end31.i.if.end8_crit_edge, %if.then24.i.if.end8_crit_edge, %if.end.i, %if.then.i.if.end8_crit_edge
  %retval.0.i68 = phi i32 [ %call40.i, %mt7915_dpd_freq_idx.exit.if.end8_crit_edge ], [ %call34.i, %if.end31.i.if.end8_crit_edge ], [ %call.i, %if.then24.i.if.end8_crit_edge ], [ %..i, %if.end.i ], [ 24, %if.then.i.if.end8_crit_edge ]
  %call.i63 = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %1, ptr noundef null, i32 noundef 1040) #10
  %tobool.not.i = icmp eq ptr %call.i63, null
  br i1 %tobool.not.i, label %if.end8.cleanup45_crit_edge, label %mt7915_mcu_set_pre_cal.exit

if.end8.cleanup45_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

mt7915_mcu_set_pre_cal.exit:                      ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %3, i32 50192
  %mul = shl nuw i32 %retval.0.i68, 1
  %conv12 = trunc i32 %mul to i8
  %mul10 = shl i32 %retval.0.i68, 11
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %mul10
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i63, i32 noundef 16) #10
  %16 = call ptr @memset(ptr %call.i.i, i32 0, i32 7)
  %req.sroa.4.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %17 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %req.sroa.4.0.call.i.sroa_idx.i, align 1
  %req.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 8
  %18 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %req.sroa.5.0.call.i.sroa_idx.i, align 1
  %req.sroa.515.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 12
  %19 = ptrtoint ptr %req.sroa.515.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 262144, ptr %req.sroa.515.0.call.i.sroa_idx.i, align 1
  %call.i13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i63, i32 noundef 1024) #10
  %20 = call ptr @memcpy(ptr %call.i13.i, ptr %add.ptr11, i32 1024)
  %call.i14.i = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %1, ptr noundef nonnull %call.i63, i32 noundef 44269, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool42.not = icmp eq i32 %call.i14.i, 0
  %inc = or i32 %mul, 1
  br i1 %tobool42.not, label %while.cond.1, label %mt7915_mcu_set_pre_cal.exit.cleanup45_crit_edge

mt7915_mcu_set_pre_cal.exit.cleanup45_crit_edge:  ; preds = %mt7915_mcu_set_pre_cal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

while.cond.1:                                     ; preds = %mt7915_mcu_set_pre_cal.exit
  %call.i63.1 = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %1, ptr noundef null, i32 noundef 1040) #10
  %tobool.not.i.1 = icmp eq ptr %call.i63.1, null
  br i1 %tobool.not.i.1, label %while.cond.1.cleanup45_crit_edge, label %mt7915_mcu_set_pre_cal.exit.1

while.cond.1.cleanup45_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

mt7915_mcu_set_pre_cal.exit.1:                    ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv12.1 = trunc i32 %inc to i8
  %mul10.1 = shl i32 %inc, 10
  %add.ptr11.1 = getelementptr i8, ptr %add.ptr11, i32 %mul10.1
  %call.i.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i63.1, i32 noundef 16) #10
  %21 = call ptr @memset(ptr %call.i.i.1, i32 0, i32 7)
  %req.sroa.4.0.call.i.sroa_idx.i.1 = getelementptr inbounds i8, ptr %call.i.i.1, i32 7
  %22 = ptrtoint ptr %req.sroa.4.0.call.i.sroa_idx.i.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12.1, ptr %req.sroa.4.0.call.i.sroa_idx.i.1, align 1
  %req.sroa.5.0.call.i.sroa_idx.i.1 = getelementptr inbounds i8, ptr %call.i.i.1, i32 8
  %23 = ptrtoint ptr %req.sroa.5.0.call.i.sroa_idx.i.1 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %req.sroa.5.0.call.i.sroa_idx.i.1, align 1
  %req.sroa.515.0.call.i.sroa_idx.i.1 = getelementptr inbounds i8, ptr %call.i.i.1, i32 12
  %24 = ptrtoint ptr %req.sroa.515.0.call.i.sroa_idx.i.1 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 262144, ptr %req.sroa.515.0.call.i.sroa_idx.i.1, align 1
  %call.i13.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i63.1, i32 noundef 1024) #10
  %25 = call ptr @memcpy(ptr %call.i13.i.1, ptr %add.ptr11.1, i32 1024)
  %call.i14.i.1 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %1, ptr noundef nonnull %call.i63.1, i32 noundef 44269, i1 noundef zeroext false, ptr noundef null) #10
  br label %cleanup45

cleanup45:                                        ; preds = %mt7915_mcu_set_pre_cal.exit.1, %while.cond.1.cleanup45_crit_edge, %mt7915_mcu_set_pre_cal.exit.cleanup45_crit_edge, %if.end8.cleanup45_crit_edge, %mt7915_dpd_freq_idx.exit.cleanup45_crit_edge, %if.end12.i.cleanup45_crit_edge, %if.end12.i.cleanup45_crit_edge78, %entry.cleanup45_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup45_crit_edge ], [ -22, %mt7915_dpd_freq_idx.exit.cleanup45_crit_edge ], [ -22, %if.end12.i.cleanup45_crit_edge ], [ -22, %if.end12.i.cleanup45_crit_edge78 ], [ %call.i14.i, %mt7915_mcu_set_pre_cal.exit.cleanup45_crit_edge ], [ -12, %if.end8.cleanup45_crit_edge ], [ -12, %while.cond.1.cleanup45_crit_edge ], [ %call.i14.i.1, %mt7915_mcu_set_pre_cal.exit.1 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_get_chan_mib_info(ptr noundef %phy, i1 noundef zeroext %chan_switch) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca [4 x %struct.mt7915_mcu_mib], align 4
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %chan_state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chan_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_state, align 4
  %dev2 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %6 = getelementptr inbounds i8, ptr %req, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #10
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !151
  %phy3 = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 4
  %cmp4.not = icmp eq ptr %phy3, %phy
  %9 = select i1 %cmp4.not, i32 0, i32 16777216
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %req, align 4
  %offs = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 234881024, ptr %offs, align 4
  %arrayidx.1 = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx.1, align 4
  %offs.1 = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %offs.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1358954496, ptr %offs.1, align 4
  %arrayidx.2 = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %arrayidx.2, align 4
  %offs.2 = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %offs.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1375731712, ptr %offs.2, align 4
  %arrayidx.3 = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %arrayidx.3, align 4
  %offs.3 = getelementptr inbounds [4 x %struct.mt7915_mcu_mib], ptr %req, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %offs.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1442840576, ptr %offs.3, align 4
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %5, i32 noundef 23277, ptr noundef nonnull %req, i32 noundef 64, i1 noundef zeroext true, ptr noundef nonnull %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  br i1 %chan_switch, label %if.end.out_crit_edge, label %if.end37

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data39 = getelementptr i8, ptr %21, i32 28
  %22 = ptrtoint ptr %data39 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %data39, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %cc_busy = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %cc_busy to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cc_busy, align 8
  %sub = sub i64 %24, %26
  %cc_busy40 = getelementptr inbounds %struct.mt76_channel_state, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %cc_busy40 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cc_busy40, align 8
  %add = add i64 %sub, %28
  store i64 %add, ptr %cc_busy40, align 8
  %data42 = getelementptr i8, ptr %21, i32 44
  %29 = ptrtoint ptr %data42 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %data42, align 1
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %cc_tx = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 4
  %32 = ptrtoint ptr %cc_tx to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cc_tx, align 8
  %sub43 = sub i64 %31, %33
  %cc_tx44 = getelementptr inbounds %struct.mt76_channel_state, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %cc_tx44 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cc_tx44, align 8
  %add45 = add i64 %sub43, %35
  store i64 %add45, ptr %cc_tx44, align 8
  %data47 = getelementptr i8, ptr %21, i32 60
  %36 = ptrtoint ptr %data47 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %data47, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %cc_bss_rx = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 3
  %39 = ptrtoint ptr %cc_bss_rx to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %cc_bss_rx, align 8
  %sub48 = sub i64 %38, %40
  %cc_bss_rx49 = getelementptr inbounds %struct.mt76_channel_state, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %cc_bss_rx49 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cc_bss_rx49, align 8
  %add50 = add i64 %sub48, %42
  store i64 %add50, ptr %cc_bss_rx49, align 8
  %43 = ptrtoint ptr %data47 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %data47, align 1
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %data54 = getelementptr i8, ptr %21, i32 76
  %46 = ptrtoint ptr %data54 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %data54, align 1
  %48 = call i64 @llvm.bswap.i64(i64 %47)
  %add55 = add i64 %48, %45
  %cc_rx = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 2
  %49 = ptrtoint ptr %cc_rx to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cc_rx, align 8
  %sub56 = sub i64 %add55, %50
  %cc_rx57 = getelementptr inbounds %struct.mt76_channel_state, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %cc_rx57 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %cc_rx57, align 8
  %add58 = add i64 %sub56, %52
  store i64 %add58, ptr %cc_rx57, align 8
  br label %out

out:                                              ; preds = %if.end37, %if.end.out_crit_edge
  %data60 = getelementptr i8, ptr %21, i32 28
  %53 = ptrtoint ptr %data60 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %data60, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %cc_busy61 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 1
  %56 = ptrtoint ptr %cc_busy61 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %cc_busy61, align 8
  %data63 = getelementptr i8, ptr %21, i32 44
  %57 = ptrtoint ptr %data63 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %data63, align 1
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %cc_tx64 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 4
  %60 = ptrtoint ptr %cc_tx64 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %cc_tx64, align 8
  %data66 = getelementptr i8, ptr %21, i32 60
  %61 = ptrtoint ptr %data66 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %data66, align 1
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %cc_bss_rx67 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 3
  %64 = ptrtoint ptr %cc_bss_rx67 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %cc_bss_rx67, align 8
  %65 = ptrtoint ptr %data66 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %data66, align 1
  %67 = call i64 @llvm.bswap.i64(i64 %66)
  %data71 = getelementptr i8, ptr %21, i32 76
  %68 = ptrtoint ptr %data71 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %data71, align 1
  %70 = call i64 @llvm.bswap.i64(i64 %69)
  %add72 = add i64 %70, %67
  %cc_rx73 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 17, i32 2
  %71 = ptrtoint ptr %cc_rx73 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %add72, ptr %cc_rx73, align 8
  call void @consume_skb(ptr noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_get_temperature(ptr noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.176, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #10
  %2 = getelementptr inbounds %struct.anon.176, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.176, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.176, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %req, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy2, %phy
  %conv3 = zext i1 %cmp to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %3, align 1
  %8 = call ptr @memset(ptr %4, i32 0, i32 5)
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 11501, ptr noundef nonnull %req, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_thermal_throttling(ptr noundef readonly %phy, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.177, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #10
  %2 = getelementptr inbounds %struct.mt7915_mcu_thermal_ctrl, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mt7915_mcu_thermal_ctrl, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mt7915_mcu_thermal_ctrl, ptr %req, i32 0, i32 2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.177, ptr %req, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon.177, ptr %req, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.177, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %req, align 1
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy2, %phy
  %conv3 = zext i1 %cmp to i8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not = icmp eq i8 %state, 0
  %10 = call ptr @memset(ptr %3, i32 0, i32 14)
  br i1 %tobool.not, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %req, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %state, ptr %4, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 9197, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %for.inc, label %for.body.preheader.cleanup89_crit_edge

for.body.preheader.cleanup89_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %req, align 1
  br label %out

for.inc:                                          ; preds = %for.body.preheader
  %14 = lshr i8 %state, 1
  %15 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %req, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %3, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %4, align 1
  %call.i.1 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 9197, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool43.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool43.not.1, label %for.inc.1, label %for.inc.cleanup89_crit_edge

for.inc.cleanup89_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

for.inc.1:                                        ; preds = %for.inc
  %18 = lshr i8 %state, 2
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %req, align 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %3, align 1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %4, align 1
  %call.i.2 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 9197, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool43.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool43.not.2, label %for.inc.2, label %for.inc.1.cleanup89_crit_edge

for.inc.1.cleanup89_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

for.inc.2:                                        ; preds = %for.inc.1
  %22 = lshr i8 %state, 3
  %23 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %req, align 1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %3, align 1
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %4, align 1
  %call.i.3 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 9197, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool43.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool43.not.3, label %for.inc.3, label %for.inc.2.cleanup89_crit_edge

for.inc.2.cleanup89_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %req, align 1
  %throttle_temp = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 6
  %27 = ptrtoint ptr %throttle_temp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %throttle_temp, align 4
  %sub = add i32 %28, -10
  %29 = call i32 @llvm.bswap.i32(i32 %sub)
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %6, align 1
  %arrayidx50 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx50, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %5, align 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 2560, ptr %7, align 1
  br label %out

out:                                              ; preds = %for.inc.3, %if.then
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %3, align 1
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %4, align 1
  %call.i102 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 9197, ptr noundef nonnull %req, i32 noundef 16, i1 noundef zeroext false, ptr noundef null) #10
  br label %cleanup89

cleanup89:                                        ; preds = %out, %for.inc.2.cleanup89_crit_edge, %for.inc.1.cleanup89_crit_edge, %for.inc.cleanup89_crit_edge, %for.body.preheader.cleanup89_crit_edge
  %retval.2 = phi i32 [ %call.i102, %out ], [ %call.i, %for.body.preheader.cleanup89_crit_edge ], [ %call.i.1, %for.inc.cleanup89_crit_edge ], [ %call.i.2, %for.inc.1.cleanup89_crit_edge ], [ %call.i.3, %for.inc.2.cleanup89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_txpower_sku(ptr noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.mt7915_sku_val, align 1
  %limits_array = alloca %struct.mt76_power_limits, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %req) #10
  %6 = getelementptr inbounds i8, ptr %req, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 163)
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %req, align 1
  %dbdc_idx = getelementptr inbounds %struct.mt7915_sku_val, ptr %req, i32 0, i32 2
  %phy3 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy3, %phy
  %conv4 = zext i1 %cmp to i8
  %9 = ptrtoint ptr %dbdc_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %dbdc_idx, align 1
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %limits_array) #10
  %10 = call ptr @memset(ptr %limits_array, i32 255, i32 136)
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %antenna_mask, align 8
  %conv71 = zext i8 %12 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv71) #10
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_level, align 4
  %mul = shl i32 %14, 1
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chandef, align 4
  %call72 = tail call i32 @mt76_get_sar_power(ptr noundef %3, ptr noundef %16, i32 noundef %mul) #10
  %conv.i = and i32 %call.i, 255
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [4 x i8], ptr @mt76_tx_power_nss_delta.nss_delta, i32 0, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef, align 4
  %21 = trunc i32 %call72 to i8
  %conv78 = sub i8 %21, %18
  %call79 = call signext i8 @mt76_get_rate_power_limits(ptr noundef %3, ptr noundef %20, ptr noundef nonnull %limits_array, i8 noundef signext %conv78) #10
  %conv80 = sext i8 %call79 to i32
  %txpower_cur = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %txpower_cur to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv80, ptr %txpower_cur, align 4
  %add.ptr = getelementptr inbounds i8, ptr %limits_array, i32 12
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %la.0196 = phi ptr [ %limits_array, %entry ], [ %add.ptr111, %for.end.for.body_crit_edge ]
  %idx.0195 = phi i32 [ 0, %entry ], [ %add113, %for.end.for.body_crit_edge ]
  %i.0193 = phi i32 [ 0, %entry ], [ %inc115, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x i8], ptr @mt7915_sku_group_len, i32 0, i32 %i.0193
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = add nsw i32 %i.0193, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %26 = icmp ult i32 %25, 6
  br i1 %26, label %if.then, label %for.body.if.end92_crit_edge

for.body.if.end92_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then:                                          ; preds = %for.body
  %27 = zext i32 %i.0193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %i.0193, label %if.then.if.end92_crit_edge [
    i32 2, label %if.then.if.then91_crit_edge
    i32 4, label %if.then.if.then91_crit_edge199
  ]

if.then.if.then91_crit_edge199:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then.if.then91_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then.if.end92_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then91:                                        ; preds = %if.then.if.then91_crit_edge, %if.then.if.then91_crit_edge199
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then.if.end92_crit_edge, %for.body.if.end92_crit_edge
  %la.1 = phi ptr [ %add.ptr, %if.then91 ], [ %la.0196, %if.then.if.end92_crit_edge ], [ %la.0196, %for.body.if.end92_crit_edge ]
  %mcs_num.0 = phi i8 [ 10, %if.then91 ], [ 10, %if.then.if.end92_crit_edge ], [ %24, %for.body.if.end92_crit_edge ]
  %28 = call i8 @llvm.umin.i8(i8 %mcs_num.0, i8 %24)
  %29 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp104191.not = icmp eq i8 %28, 0
  br i1 %cmp104191.not, label %if.end92.for.end_crit_edge, label %if.end92.for.body106_crit_edge

if.end92.for.body106_crit_edge:                   ; preds = %if.end92
  br label %for.body106

if.end92.for.end_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %if.end92.for.body106_crit_edge
  %j.0192 = phi i32 [ %inc, %for.body106.for.body106_crit_edge ], [ 0, %if.end92.for.body106_crit_edge ]
  %arrayidx107 = getelementptr i8, ptr %la.1, i32 %j.0192
  %30 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx107, align 1
  %add108 = add i32 %j.0192, %idx.0195
  %arrayidx109 = getelementptr %struct.mt7915_sku_val, ptr %req, i32 0, i32 3, i32 %add108
  %32 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx109, align 1
  %inc = add nuw nsw i32 %j.0192, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %for.body106.for.end_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106

for.body106.for.end_crit_edge:                    ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body106.for.end_crit_edge, %if.end92.for.end_crit_edge
  %conv95 = zext i8 %24 to i32
  %conv94 = zext i8 %mcs_num.0 to i32
  %add.ptr111 = getelementptr i8, ptr %la.1, i32 %conv94
  %add113 = add i32 %idx.0195, %conv95
  %inc115 = add nuw nsw i32 %i.0193, 1
  %exitcond198.not = icmp eq i32 %inc115, 15
  br i1 %exitcond198.not, label %for.end116, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end116:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i189 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 22765, ptr noundef nonnull %req, i32 noundef 164, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %limits_array) #10
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %req) #10
  ret i32 %call.i189
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_sar_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @mt76_get_rate_power_limits(ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_get_txpower_sku(ptr noundef readonly %phy, ptr nocapture noundef writeonly %txpower, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.181, align 1
  %res = alloca [161 x [2 x i8]], align 1
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %2 = getelementptr inbounds %struct.anon.181, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.181, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.181, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %req, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %2, align 1
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy2, %phy
  %conv3 = zext i1 %cmp to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 322, ptr nonnull %res) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #10
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !151
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 22765, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 4
  %14 = call ptr @memcpy(ptr %res, ptr %add.ptr, i32 322)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3248 = icmp sgt i32 %len, 0
  br i1 %cmp3248, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %idxprom = zext i8 %16 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx35 = getelementptr [161 x [2 x i8]], ptr %res, i32 0, i32 %i.049, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr i8, ptr %txpower, i32 %i.049
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx36, align 1
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @consume_skb(ptr noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #10
  call void @llvm.lifetime.end.p0(i64 322, ptr nonnull %res) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_test_param(ptr noundef %dev, i8 noundef zeroext %param, i1 noundef zeroext %test_mode, i8 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.182, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %test_mode to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.182, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.182, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.182, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.182, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %req, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %param, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 0, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %en, ptr %2, align 1
  %8 = call ptr @memset(ptr %3, i32 0, i32 11)
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 15853, ptr noundef nonnull %req, i32 noundef 16, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_sku_en(ptr noundef readonly %phy, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.mt7915_sku, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %2 = getelementptr inbounds %struct.mt7915_sku, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mt7915_sku, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mt7915_sku, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %req, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %2, align 1
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp = icmp ne ptr %phy2, %phy
  %conv4 = zext i1 %cmp to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 22765, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_ser(ptr noundef %dev, i8 noundef zeroext %action, i8 noundef zeroext %set, i8 noundef zeroext %band) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.183, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.183, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.183, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.183, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %action, ptr %req, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %set, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %band, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 33261, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_set_txbf(ptr noundef %dev, i8 noundef zeroext %action) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.184, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.184, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.184, ptr %req, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %action, ptr %req, align 1
  %3 = call ptr @memset(ptr %0, i32 0, i32 15)
  %4 = zext i8 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %action, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 20, label %sw.bb2
    i8 25, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %0, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %0, align 1
  %ibf = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %ibf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ibf, align 1, !range !145
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %1, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %1, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 7917, ptr noundef nonnull %req, i32 noundef 16, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_add_obss_spr(ptr noundef %dev, ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.189, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #10
  %0 = getelementptr inbounds %struct.anon.189, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.189, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.189, ptr %req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.189, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %req, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 1
  %band_idx1 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %6 = ptrtoint ptr %band_idx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %band_idx1, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %1, align 1
  %9 = select i1 %enable, i32 16777216, i32 0
  %10 = call ptr @memset(ptr %2, i32 0, i32 5)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %9, ptr %3, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 43245, ptr noundef nonnull %req, i32 noundef 12, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_get_rx_rate(ptr nocapture noundef readonly %phy, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %sta, ptr nocapture noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.190, align 1
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %dev3 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #10
  %4 = getelementptr inbounds %struct.anon.190, ptr %req, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.190, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %req, align 1
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %7 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %band_idx, align 2
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %4, align 1
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idx, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #10
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !151
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %1, i32 noundef 44525, ptr noundef nonnull %req, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %rate34 = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %rate34 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rate34, align 1
  %mcs = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 1
  %21 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %mcs, align 1
  %nsts = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 3
  %22 = ptrtoint ptr %nsts to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nsts, align 1
  %add = add i8 %23, 1
  %nss = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 3
  %24 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add, ptr %nss, align 2
  %mode = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 2
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %26, label %if.end.out_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end.sw.bb37_crit_edge
    i8 2, label %if.end.sw.bb51_crit_edge
    i8 3, label %if.end.sw.bb51_crit_edge146
    i8 4, label %sw.bb65
    i8 8, label %if.end.sw.bb81_crit_edge
    i8 9, label %if.end.sw.bb81_crit_edge147
    i8 10, label %if.end.sw.bb81_crit_edge148
    i8 11, label %if.end.sw.bb81_crit_edge149
  ]

if.end.sw.bb81_crit_edge149:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

if.end.sw.bb81_crit_edge148:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

if.end.sw.bb81_crit_edge147:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

if.end.sw.bb81_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

if.end.sw.bb51_crit_edge146:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

if.end.sw.bb51_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

if.end.sw.bb37_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb, %if.end.sw.bb37_crit_edge
  %cck.0.off0 = phi i1 [ false, %if.end.sw.bb37_crit_edge ], [ true, %sw.bb ]
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chandef, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 11
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 10
  %sband.0 = select i1 %cmp, ptr %sband_5g, ptr %sband_2g
  %conv45 = zext i8 %20 to i32
  %call47 = call i32 @mt76_get_rate(ptr noundef %1, ptr noundef %sband.0, i32 noundef %conv45, i1 noundef zeroext %cck.0.off0) #10
  %conv48 = trunc i32 %call47 to i8
  %32 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv48, ptr %mcs, align 1
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0, i32 0, i32 1
  %33 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bitrates, align 4
  %idxprom = and i32 %call47, 255
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %34, i32 %idxprom, i32 1
  %35 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bitrate, align 4
  %legacy = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 2
  %37 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %legacy, align 2
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge146
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %20)
  %cmp54 = icmp ugt i8 %20, 31
  br i1 %cmp54, label %sw.bb51.out_crit_edge, label %if.end57

sw.bb51.out_crit_edge:                            ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end57:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %rate, align 2
  %gi = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 4
  %39 = ptrtoint ptr %gi to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %gi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool58.not = icmp eq i8 %40, 0
  %spec.store.select = select i1 %tobool58.not, i8 1, i8 5
  %41 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.store.select, ptr %rate, align 2
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %20)
  %cmp68 = icmp ugt i8 %20, 9
  br i1 %cmp68, label %sw.bb65.out_crit_edge, label %if.end71

sw.bb65.out_crit_edge:                            ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end71:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %rate, align 2
  %gi73 = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 4
  %43 = ptrtoint ptr %gi73 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gi73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool74.not = icmp eq i8 %44, 0
  %spec.store.select145 = select i1 %tobool74.not, i8 2, i8 6
  %45 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.store.select145, ptr %rate, align 2
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end.sw.bb81_crit_edge, %if.end.sw.bb81_crit_edge147, %if.end.sw.bb81_crit_edge148, %if.end.sw.bb81_crit_edge149
  %gi82 = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 4
  %46 = ptrtoint ptr %gi82 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %gi82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp84 = icmp ugt i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %20)
  %cmp88 = icmp ugt i8 %20, 11
  %or.cond = select i1 %cmp84, i1 true, i1 %cmp88
  br i1 %or.cond, label %sw.bb81.out_crit_edge, label %if.end91

sw.bb81.out_crit_edge:                            ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end91:                                         ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #12
  %he_gi = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 5
  %48 = ptrtoint ptr %he_gi to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %he_gi, align 2
  %49 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %rate, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end91, %if.end71, %if.end57, %sw.bb37
  %bw = getelementptr inbounds %struct.mt7915_mcu_phy_rx_info, ptr %18, i32 0, i32 7
  %50 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bw, align 1
  %switch.tableidx = add i8 %51, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %52 = icmp ult i8 %switch.tableidx, 3
  %switch.offset = add i8 %51, 2
  %.sink = select i1 %52, i8 %switch.offset, i8 0
  %bw96 = getelementptr inbounds %struct.rate_info, ptr %rate, i32 0, i32 4
  %53 = ptrtoint ptr %bw96 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink, ptr %bw96, align 1
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb81.out_crit_edge, %sw.bb65.out_crit_edge, %sw.bb51.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb51.out_crit_edge ], [ -22, %sw.bb65.out_crit_edge ], [ -22, %sw.bb81.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ 0, %sw.epilog ]
  %54 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb, align 4
  call void @consume_skb(ptr noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_rate(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_update_bss_color(ptr noundef %dev, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %he_bss_color) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_priv, align 8
  %call.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef null, i32 noundef 16) #10
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %entry.if.then_crit_edge, label %mt7915_mcu_alloc_sta_req.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

mt7915_mcu_alloc_sta_req.exit:                    ; preds = %entry
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %call.i.i, align 1
  %hdr.sroa.5.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %3 = ptrtoint ptr %hdr.sroa.5.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %hdr.sroa.5.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.8.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %4 = ptrtoint ptr %hdr.sroa.8.0.call.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %hdr.sroa.8.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.11.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %5 = ptrtoint ptr %hdr.sroa.11.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %hdr.sroa.11.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.14.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %6 = ptrtoint ptr %hdr.sroa.14.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %hdr.sroa.14.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.18.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %7 = ptrtoint ptr %hdr.sroa.18.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %hdr.sroa.18.0.call.i.sroa_idx.i, align 1
  %hdr.sroa.20.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %8 = ptrtoint ptr %hdr.sroa.20.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hdr.sroa.20.0.call.i.sroa_idx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, label %if.end

mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge:  ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i48 = phi ptr [ %call.i, %mt7915_mcu_alloc_sta_req.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i48 to i32
  br label %cleanup

if.end:                                           ; preds = %mt7915_mcu_alloc_sta_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %call.i.i44 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %12 = ptrtoint ptr %call.i.i44 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 3072, ptr %call.i.i44, align 1
  %tlv.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i.i44, i32 2
  %13 = ptrtoint ptr %tlv.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 2048, ptr %tlv.sroa.5.0..sroa_idx.i.i, align 1
  %tlv_num.i.i = getelementptr inbounds %struct.sta_ntlv_hdr, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %tlv_num.i.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %add.i.i = add i16 %16, 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #10
  %18 = ptrtoint ptr %tlv_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %tlv_num.i.i, align 1
  %enabled = getelementptr inbounds %struct.cfg80211_he_bss_color, ptr %he_bss_color, i32 0, i32 1
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enabled, align 1, !range !145
  %21 = xor i8 %20, 1
  %disable = getelementptr inbounds %struct.bss_info_color, ptr %call.i.i44, i32 0, i32 2
  %22 = ptrtoint ptr %disable to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %disable, align 1
  %23 = ptrtoint ptr %he_bss_color to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %he_bss_color, align 1
  %color4 = getelementptr inbounds %struct.bss_info_color, ptr %call.i.i44, i32 0, i32 3
  %25 = ptrtoint ptr %color4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %color4, align 1
  %call.i45 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 9965, i1 noundef zeroext true, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call.i45, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mcu_twt_agrt_update(ptr noundef %dev, ptr nocapture noundef readonly %mvif, ptr nocapture noundef readonly %flow, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.191, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %req) #10
  %table_id = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 7
  %0 = ptrtoint ptr %table_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %table_id, align 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %req, align 1
  %cmd1 = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 1
  %conv = trunc i32 %cmd to i8
  %3 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %cmd1, align 1
  %own_mac_idx = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 2
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %mvif, i32 0, i32 1
  %4 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %omac_idx, align 1
  %6 = ptrtoint ptr %own_mac_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %own_mac_idx, align 1
  %flowid = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 3
  %id = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 8
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 2
  %9 = ptrtoint ptr %flowid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %flowid, align 1
  %peer_id = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 4
  %wcid = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 4
  %10 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wcid, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %peer_id to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %peer_id, align 1
  %duration = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 5
  %duration2 = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 3
  %14 = ptrtoint ptr %duration2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duration2, align 8
  %conv3 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %duration to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %duration, align 1
  %bss_idx = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 6
  %17 = ptrtoint ptr %mvif to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mvif, align 8
  %19 = ptrtoint ptr %bss_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bss_idx, align 1
  %start_tsf = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 7
  %tsf = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 2
  %20 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tsf, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %start_tsf to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %start_tsf, align 1
  %mantissa = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 8
  %mantissa5 = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 5
  %24 = ptrtoint ptr %mantissa5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mantissa5, align 2
  %26 = ptrtoint ptr %mantissa to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %mantissa, align 1
  %exponent = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 9
  %exp = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 6
  %27 = ptrtoint ptr %exp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %exp, align 8
  %29 = ptrtoint ptr %exponent to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %exponent, align 1
  %is_ap = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 10
  %30 = ptrtoint ptr %is_ap to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %is_ap, align 1
  %agrt_params = getelementptr inbounds %struct.anon.191, ptr %req, i32 0, i32 11
  %protection = getelementptr inbounds %struct.mt7915_twt_flow, ptr %flow, i32 0, i32 9
  %31 = call ptr @memset(ptr %agrt_params, i32 0, i32 24)
  %32 = ptrtoint ptr %protection to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %protection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %agrt_params to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %agrt_params, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %34 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool11.not = icmp eq i8 %34, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %agrt_params to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %agrt_params, align 1
  %37 = or i8 %36, 2
  store i8 %37, ptr %agrt_params, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %38 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool21.not = icmp eq i8 %38, 0
  br i1 %tobool21.not, label %if.end17.if.end27_crit_edge, label %if.then22

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %agrt_params to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %agrt_params, align 1
  %41 = or i8 %40, 1
  store i8 %41, ptr %agrt_params, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end17.if.end27_crit_edge
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 38125, ptr noundef nonnull %req, i32 noundef 44, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_mcu_cca_finish(ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %color_change_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 16
  %0 = ptrtoint ptr %color_change_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %color_change_active, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_color_change_finish(ptr noundef %vif) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_radar_detected(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_mcu_csa_finish(ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csa_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 4
  %0 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %csa_active, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_csa_finish(ptr noundef %vif) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_color_change_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mt7915_get_phy_mode(ptr nocapture noundef readonly %vif, ptr noundef readonly %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %vht_cap3 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %he_cap4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 %7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %ht_cap7 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 5
  %vht_cap8 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  %conv = trunc i32 %15 to i8
  %conv.i.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv)
  %cmp.i.i = icmp ugt i8 %conv, 11
  br i1 %cmp.i.i, label %do.end.i.i, label %for.cond.preheader.i.i, !prof !146

for.cond.preheader.i.i:                           ; preds = %if.else
  %n_iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %n_iftype_data.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %n_iftype_data.i.i, align 4
  %conv23.i.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp2438.not.i.i = icmp eq i16 %17, 0
  br i1 %cmp2438.not.i.i, label %for.cond.preheader.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end.i_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %iftype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iftype_data.i.i, align 4
  %shl.i.i = shl nuw i32 1, %conv.i.i
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 510, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv23.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %19, i32 %i.039.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i, align 4
  %conv26.i.i = zext i16 %21 to i32
  %and.i.i = and i32 %shl.i.i, %conv26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool28.not.i.i, label %for.cond.i.i, label %ieee80211_get_sband_iftype_data.exit.i

ieee80211_get_sband_iftype_data.exit.i:           ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %ieee80211_get_sband_iftype_data.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

ieee80211_get_sband_iftype_data.exit.i.if.end.i_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %ieee80211_get_sband_iftype_data.exit.i
  %he_cap.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %19, i32 %i.039.i.i, i32 1
  %22 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %he_cap.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge, %do.end.i.i, %for.cond.preheader.i.i.if.end.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.end.i, %land.lhs.true.i.if.end_crit_edge, %if.then
  %ht_cap.0 = phi ptr [ %ht_cap2, %if.then ], [ %ht_cap7, %land.lhs.true.i.if.end_crit_edge ], [ %ht_cap7, %if.end.i ]
  %vht_cap.0 = phi ptr [ %vht_cap3, %if.then ], [ %vht_cap8, %land.lhs.true.i.if.end_crit_edge ], [ %vht_cap8, %if.end.i ]
  %he_cap.0 = phi ptr [ %he_cap4, %if.then ], [ %he_cap.i, %land.lhs.true.i.if.end_crit_edge ], [ null, %if.end.i ]
  %24 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %7, label %if.end.if.end58_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then30
  ]

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then10:                                        ; preds = %if.end
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap.0, i32 0, i32 1
  %25 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ht_supported, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not = icmp eq i8 %26, 0
  %spec.select = select i1 %tobool13.not, i8 6, i8 14
  %tobool19.not = icmp eq ptr %he_cap.0, null
  br i1 %tobool19.not, label %if.then10.if.end58_crit_edge, label %land.lhs.true

if.then10.if.end58_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %he_cap.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %he_cap.0, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool20.not = icmp eq i8 %28, 0
  %29 = or i8 %spec.select, 64
  %spec.select79 = select i1 %tobool20.not, i8 %spec.select, i8 %29
  br label %if.end58

if.then30:                                        ; preds = %if.end
  %ht_supported34 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap.0, i32 0, i32 1
  %30 = ptrtoint ptr %ht_supported34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ht_supported34, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not = icmp eq i8 %31, 0
  %spec.select80 = select i1 %tobool35.not, i8 1, i8 17
  %32 = ptrtoint ptr %vht_cap.0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vht_cap.0, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  %34 = or i8 %spec.select80, 32
  %mode.2 = select i1 %tobool41.not, i8 %spec.select80, i8 %34
  %tobool47.not = icmp eq ptr %he_cap.0, null
  br i1 %tobool47.not, label %if.then30.if.end58_crit_edge, label %land.lhs.true48

if.then30.if.end58_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true48:                                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %he_cap.0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %he_cap.0, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool50.not = icmp eq i8 %36, 0
  %37 = or i8 %mode.2, -128
  %spec.select81 = select i1 %tobool50.not, i8 %mode.2, i8 %37
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true48, %if.then30.if.end58_crit_edge, %land.lhs.true, %if.then10.if.end58_crit_edge, %if.end.if.end58_crit_edge
  %mode.3 = phi i8 [ %spec.select, %if.then10.if.end58_crit_edge ], [ %mode.2, %if.then30.if.end58_crit_edge ], [ %spec.select79, %land.lhs.true ], [ 0, %if.end.if.end58_crit_edge ], [ %spec.select81, %land.lhs.true48 ]
  ret i8 %mode.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_bss_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_check_he_obss_narrow_bw_ru_iter(ptr nocapture noundef readnone %wiphy, ptr noundef %bss, ptr nocapture noundef writeonly %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !143
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @ieee80211_bss_get_elem(ptr noundef %bss, i8 noundef zeroext 127) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.then_crit_edge, label %lor.lhs.false

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %datalen = getelementptr inbounds %struct.element, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %datalen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %5)
  %cmp = icmp ult i8 %5, 11
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.element, ptr %call, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool5.not = icmp sgt i8 %7, -1
  br i1 %tobool5.not, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false2.if.end_crit_edge

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %8 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %_data, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2.if.end_crit_edge
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i8, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %9 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i.i15 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_mcu_set_sta_he_mcs(ptr nocapture noundef readonly %sta, ptr nocapture noundef writeonly %he_mcs, ptr nocapture noundef readonly %mask) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %phy = getelementptr inbounds %struct.mt7915_vif, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %rx_nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %6 = ptrtoint ptr %rx_nss to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_nss, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 4)
  %9 = zext i8 %8 to i32
  %width = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %11, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_mcs_80p80 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_mcs_160 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %he_mcs_nss_supp9 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %he_mcs_nss_supp9.sink = phi ptr [ %he_mcs_nss_supp9, %sw.default ], [ %rx_mcs_160, %sw.bb5 ], [ %rx_mcs_80p80, %sw.bb ]
  %13 = ptrtoint ptr %he_mcs_nss_supp9.sink to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %he_mcs_nss_supp9.sink, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1065.not = icmp eq i8 %8, 0
  br i1 %cmp1065.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %sw.epilog.for.body_crit_edge
  %mcs_map.169 = phi i16 [ %conv36, %for.body.backedge ], [ %15, %sw.epilog.for.body_crit_edge ]
  %nss.066 = phi i32 [ %nss.066.be, %for.body.backedge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %conv12 = zext i16 %mcs_map.169 to i32
  %mul = shl i32 %nss.066, 1
  %shr = lshr i32 %conv12, %mul
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %for.body.sw.epilog28_crit_edge, label %switch.lookup

for.body.sw.epilog28_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

switch.lookup:                                    ; preds = %for.body
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mt7915_mcu_set_sta_he_mcs, i32 0, i32 %and
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr i16, ptr %mask, i32 %nss.066
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %conv19 = zext i16 %18 to i32
  %and20 = and i32 %switch.load, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not.i = icmp eq i32 %and20, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %and20, i1 true) #10, !range !149
  %sub.i.op = xor i32 %19, 31
  %sub = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %20 = icmp ult i32 %sub, 12
  br i1 %20, label %switch.lookup71, label %switch.lookup.sw.epilog28_crit_edge

switch.lookup.sw.epilog28_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

switch.lookup71:                                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep72 = getelementptr inbounds [12 x i32], ptr @switch.table.mt7915_mcu_set_sta_he_mcs.68, i32 0, i32 %sub
  %21 = ptrtoint ptr %switch.gep72 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load73 = load i32, ptr %switch.gep72, align 4
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %switch.lookup71, %switch.lookup.sw.epilog28_crit_edge, %for.body.sw.epilog28_crit_edge
  %mcs.1 = phi i32 [ %switch.load73, %switch.lookup71 ], [ 3, %switch.lookup.sw.epilog28_crit_edge ], [ 3, %for.body.sw.epilog28_crit_edge ]
  %shl = shl i32 3, %mul
  %22 = trunc i32 %shl to i16
  %23 = xor i16 %22, -1
  %conv32 = and i16 %mcs_map.169, %23
  %shl34 = shl i32 %mcs.1, %mul
  %24 = trunc i32 %shl34 to i16
  %conv36 = or i16 %conv32, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nss.066)
  %cmp37 = icmp sgt i32 %nss.066, 1
  br i1 %cmp37, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %sw.epilog28
  %25 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp39 = icmp ne i32 %26, 3
  %inc = add nuw i32 %nss.066, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %9)
  %cmp10 = icmp slt i32 %inc, %9
  %or.cond = select i1 %cmp39, i1 %cmp10, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body.backedge_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.for.body.backedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

for.inc:                                          ; preds = %sw.epilog28
  %inc.old = add nsw i32 %nss.066, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.old, i32 %9)
  %cmp10.old = icmp slt i32 %inc.old, %9
  br i1 %cmp10.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true.for.body.backedge_crit_edge
  %nss.066.be = phi i32 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %land.lhs.true.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %mcs_map.2 = phi i16 [ %15, %sw.epilog.for.end_crit_edge ], [ %conv36, %land.lhs.true.for.end_crit_edge ], [ %conv36, %for.inc.for.end_crit_edge ]
  %27 = tail call i16 @llvm.bswap.i16(i16 %mcs_map.2)
  %28 = ptrtoint ptr %he_mcs to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %he_mcs, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mac_wtbl_lmac_addr(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt76_mcu_send_firmware(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_mcu_send_ram_firmware(ptr noundef %dev, ptr nocapture noundef readonly %hdr, ptr noundef %data, i1 noundef zeroext %is_wa) unnamed_addr #0 align 64 {
entry:
  %req.i77 = alloca %struct.anon.245, align 4
  %req.i = alloca %struct.anon.243, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_region = getelementptr inbounds %struct.mt7915_fw_trailer, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %n_region to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %n_region, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp86.not = icmp eq i8 %1, 0
  br i1 %cmp86.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i77) #10
  %2 = getelementptr inbounds %struct.anon.245, ptr %req.i77, i32 0, i32 1
  br label %25

for.body.lr.ph:                                   ; preds = %entry
  %conv85 = zext i8 %1 to i32
  %or32.i = select i1 %is_wa, i32 -2147483632, i32 -2147483648
  %3 = getelementptr inbounds %struct.anon.243, ptr %req.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.anon.243, ptr %req.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv90 = phi i32 [ %conv85, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %override.088 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %offset.087 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %sub = sub nsw i32 %conv90, %i.089
  %mul.neg = mul i32 %sub, -40
  %add.ptr = getelementptr i8, ptr %hdr, i32 %mul.neg
  %feature_set = getelementptr inbounds %struct.mt7915_fw_region, ptr %add.ptr, i32 0, i32 6
  %5 = ptrtoint ptr %feature_set to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %feature_set, align 1
  %conv.i = zext i8 %6 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 9
  %shr.i = and i32 %conv.i, 6
  %or33.i = or i32 %or32.i, %shr.i
  %or37.i = or i32 %or33.i, %cond.i
  %len4 = getelementptr inbounds %struct.mt7915_fw_region, ptr %add.ptr, i32 0, i32 5
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %len4, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %addr5 = getelementptr inbounds %struct.mt7915_fw_region, ptr %add.ptr, i32 0, i32 4
  %10 = ptrtoint ptr %addr5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %addr5, align 1
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool8.not, i32 %override.088, i32 %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #10
  %14 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %req.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %3, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %or37.i) #10
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %11)
  %cmp.i = icmp eq i32 %11, 8192
  %..i = select i1 %cmp.i, i32 5, i32 1
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef %..i, ptr noundef nonnull %req.i, i32 noundef 12, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %18 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.35) #13
  br label %cleanup50

if.end13:                                         ; preds = %for.body
  %add.ptr29 = getelementptr i8, ptr %data, i32 %offset.087
  %call30 = call i32 @__mt76_mcu_send_firmware(ptr noundef %dev, i32 noundef 238, ptr noundef %add.ptr29, i32 noundef %9, i32 noundef 4096) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc, label %do.end35

do.end35:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dev36 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %20 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev36, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.66) #13
  br label %cleanup50

for.inc:                                          ; preds = %if.end13
  %add = add i32 %9, %offset.087
  %inc = add nuw nsw i32 %i.089, 1
  %22 = ptrtoint ptr %n_region to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %n_region, align 1
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool42.not.not = icmp eq i32 %spec.select, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i77) #10
  %24 = getelementptr inbounds %struct.anon.245, ptr %req.i77, i32 0, i32 1
  br i1 %tobool42.not.not, label %for.end._crit_edge, label %for.end._crit_edge120

for.end._crit_edge120:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %27

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %25

25:                                               ; preds = %for.end._crit_edge, %for.end.thread
  %26 = phi ptr [ %2, %for.end.thread ], [ %24, %for.end._crit_edge ]
  br label %27

27:                                               ; preds = %25, %for.end._crit_edge120
  %28 = phi ptr [ %26, %25 ], [ %24, %for.end._crit_edge120 ]
  %override.0.lcssa98 = phi i32 [ 0, %25 ], [ %spec.select, %for.end._crit_edge120 ]
  %29 = phi i32 [ 0, %25 ], [ 16777216, %for.end._crit_edge120 ]
  %30 = or i32 %29, 67108864
  %31 = select i1 %is_wa, i32 %30, i32 %29
  %32 = ptrtoint ptr %req.i77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %req.i77, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %override.0.lcssa98) #10
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %28, align 4
  %call.i.i78 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %req.i77, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i77) #10
  br label %cleanup50

cleanup50:                                        ; preds = %27, %do.end35, %do.end
  %retval.2 = phi i32 [ %call.i.i78, %27 ], [ %call30, %do.end35 ], [ %call.i.i, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_find_freq_idx(i16 noundef zeroext %cur) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %cur to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %cur, label %for.inc.23 [
    i16 5180, label %entry.cleanup_crit_edge
    i16 5200, label %cleanup.fold.split
    i16 5220, label %cleanup.fold.split2
    i16 5240, label %cleanup.fold.split3
    i16 5260, label %cleanup.fold.split4
    i16 5280, label %cleanup.fold.split5
    i16 5300, label %cleanup.fold.split6
    i16 5320, label %cleanup.fold.split7
    i16 5500, label %cleanup.fold.split8
    i16 5520, label %cleanup.fold.split9
    i16 5540, label %cleanup.fold.split10
    i16 5560, label %cleanup.fold.split11
    i16 5580, label %cleanup.fold.split12
    i16 5600, label %cleanup.fold.split13
    i16 5620, label %cleanup.fold.split14
    i16 5640, label %cleanup.fold.split15
    i16 5660, label %cleanup.fold.split16
    i16 5680, label %cleanup.fold.split17
    i16 5700, label %cleanup.fold.split18
    i16 5745, label %cleanup.fold.split19
    i16 5765, label %cleanup.fold.split20
    i16 5785, label %cleanup.fold.split21
    i16 5805, label %cleanup.fold.split22
    i16 5825, label %cleanup.fold.split23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.23:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split2:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split3:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split4:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split5:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split6:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split7, %cleanup.fold.split6, %cleanup.fold.split5, %cleanup.fold.split4, %cleanup.fold.split3, %cleanup.fold.split2, %cleanup.fold.split, %for.inc.23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %for.inc.23 ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split2 ], [ 3, %cleanup.fold.split3 ], [ 4, %cleanup.fold.split4 ], [ 5, %cleanup.fold.split5 ], [ 6, %cleanup.fold.split6 ], [ 7, %cleanup.fold.split7 ], [ 8, %cleanup.fold.split8 ], [ 9, %cleanup.fold.split9 ], [ 10, %cleanup.fold.split10 ], [ 11, %cleanup.fold.split11 ], [ 12, %cleanup.fold.split12 ], [ 13, %cleanup.fold.split13 ], [ 14, %cleanup.fold.split14 ], [ 15, %cleanup.fold.split15 ], [ 16, %cleanup.fold.split16 ], [ 17, %cleanup.fold.split17 ], [ 18, %cleanup.fold.split18 ], [ 19, %cleanup.fold.split19 ], [ 20, %cleanup.fold.split20 ], [ 21, %cleanup.fold.split21 ], [ 22, %cleanup.fold.split22 ], [ 23, %cleanup.fold.split23 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !131}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2621, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7915_mcu_add_beacon._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7915_mcu_add_beacon._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mt7915_mcu_init.mt7915_mcu_ops, !9, !"mt7915_mcu_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 3109, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 3159, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mt7915_mcu_exit._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mt7915_mcu_exit._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"offs", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 3773, i32 41}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 499, i32 10}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 502, i32 10}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 505, i32 10}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 509, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mt7915_mcu_rx_log_message._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt7915_mcu_rx_log_message._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/cfg80211.h", i32 510, i32 6}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2532, i32 6}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 326, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mt7915_mcu_parse_response._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt7915_mcu_parse_response._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2701, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mt7915_driver_own._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mt7915_driver_own._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2951, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mt7915_load_firmware._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mt7915_load_firmware._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2957, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mt7915_load_firmware.__UNIQUE_ID_ddebug718, !56, !"__UNIQUE_ID_ddebug718", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2743, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mt7915_load_patch._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt7915_load_patch._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2747, i32 30}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2752, i32 3}
!68 = !{ptr @mt7915_load_patch._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mt7915_load_patch._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2759, i32 2}
!72 = !{ptr @mt7915_load_patch._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt7915_load_patch._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2782, i32 4}
!76 = !{ptr @mt7915_load_patch._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mt7915_load_patch._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2789, i32 4}
!80 = !{ptr @mt7915_load_patch._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mt7915_load_patch._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2796, i32 3}
!84 = !{ptr @mt7915_load_patch._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mt7915_load_patch._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2805, i32 3}
!88 = !{ptr @mt7915_load_patch._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mt7915_load_patch._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2880, i32 30}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2885, i32 3}
!94 = !{ptr @mt7915_load_ram._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mt7915_load_ram._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2893, i32 2}
!98 = !{ptr @mt7915_load_ram._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mt7915_load_ram._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2898, i32 3}
!102 = !{ptr @mt7915_load_ram._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mt7915_load_ram._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2904, i32 30}
!106 = !{ptr @mt7915_load_ram._entry.55, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2909, i32 3}
!108 = !{ptr @mt7915_load_ram._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2917, i32 2}
!111 = !{ptr @mt7915_load_ram._entry.57, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mt7915_load_ram._entry_ptr.59, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2922, i32 3}
!115 = !{ptr @mt7915_load_ram._entry.60, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mt7915_load_ram._entry_ptr.62, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2928, i32 4}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2851, i32 4}
!121 = !{ptr @mt7915_mcu_send_ram_firmware._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mt7915_mcu_send_ram_firmware._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 2858, i32 4}
!125 = !{ptr @mt7915_mcu_send_ram_firmware._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @mt7915_mcu_send_ram_firmware._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @mt7915_mcu_chan_bw.width_to_bw, !128, !"width_to_bw", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 120, i32 18}
!129 = distinct !{null, !130, !"freq_list", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mcu.c", i32 3698, i32 19}
!131 = !{ptr @mt76_tx_power_nss_delta.nss_delta, !132, !"nss_delta", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/../mt76.h", i32 1069, i32 18}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2150000959}
!144 = !{i64 2150001225}
!145 = !{i8 0, i8 2}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i16 0, i16 17}
!148 = !{i8 0, i8 9}
!149 = !{i32 0, i32 33}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{!"auto-init"}
!152 = !{i64 2148284814, i64 2148284819, i64 2148284832, i64 2148284876, i64 2148284910, i64 2148284931}
!153 = !{i32 16, i32 33}
