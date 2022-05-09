; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_radiotap_he = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_radiotap_he_mu = type { i16, i16, [4 x i8], [4 x i8] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mt7915_dfs_radar_spec = type { %struct.mt7915_dfs_pulse, [16 x %struct.mt7915_dfs_pattern] }
%struct.mt7915_dfs_pulse = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mt7915_dfs_pattern = type <{ i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32 }>
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.137, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.137 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.138] }
%struct.anon.138 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.156 }
%union.anon.156 = type { %struct.anon.162, [16 x i8] }
%struct.anon.162 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.169 = type { i8, %union.anon.170 }
%union.anon.170 = type <{ %struct.anon.175, [17 x i8] }>
%struct.anon.175 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.146 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.146 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_txwi_cache = type { %struct.list_head, i32, ptr }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7915_tx_free = type { i16, i16, i8, [3 x i8], [0 x i32] }
%struct.mt7915_dev = type { %union.anon.145, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.anon.147 = type { i8, i8 }
%struct.mt7915_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, %struct.list_head, [8 x i32], i32, i32, i32, %struct.mt76_sta_stats, %struct.mt7915_sta_key_conf, %struct.anon.155 }
%struct.mt76_sta_stats = type { [12 x i64], [4 x i64], [4 x i64], [16 x i64] }
%struct.mt7915_sta_key_conf = type { i8, [16 x i8] }
%struct.anon.155 = type { i8, [8 x %struct.mt7915_twt_flow] }
%struct.mt7915_twt_flow = type { %struct.list_head, i64, i64, i32, i16, i16, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt7915_vif = type { %struct.mt76_vif, %struct.mt7915_vif_cap, %struct.mt7915_sta, ptr, [4 x %struct.ieee80211_tx_queue_params], %struct.cfg80211_bitrate_mask }
%struct.mt7915_vif_cap = type { i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
%struct.mt7915_txp = type <{ i16, i16, i8, i16, i8, [6 x i32], [6 x i16] }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ieee80211_twt_setup = type { i8, i8, i8, i8, [0 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/mac.c\00", [48 x i8] zeroinitializer }, align 32
@mt7915_mac_tx_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt7915_mac_tx_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mt7915_mac_add_txs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mt7915_rx_get_wcid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bridge_tunnel_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@mt7915_mac_decode_he_radiotap.known = internal constant { %struct.ieee80211_radiotap_he, [20 x i8] } { %struct.ieee80211_radiotap_he { i16 -7033, i16 29184, i16 0, i16 0, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@mt7915_mac_decode_he_mu_radiotap.mu_known = internal constant { %struct.ieee80211_radiotap_he_mu, [20 x i8] } { %struct.ieee80211_radiotap_he_mu { i16 20609, i16 1024, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout waiting for MCU reset state %x\0A\00", [56 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@etsi_radar_specs = internal constant { %struct.mt7915_dfs_radar_spec, [100 x i8] } { %struct.mt7915_dfs_radar_spec { %struct.mt7915_dfs_pulse { i32 110, i32 -10, i32 -80, i32 40, i32 5200, i32 128, i32 5200 }, [16 x %struct.mt7915_dfs_pattern] [%struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 6, i8 32, i8 28, i8 0, i32 990, i32 5010, i8 17, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 9, i8 32, i8 28, i8 0, i32 615, i32 5010, i8 27, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 15, i8 32, i8 28, i8 0, i32 240, i32 445, i8 27, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 12, i8 32, i8 28, i8 0, i32 240, i32 510, i8 42, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 2490, i32 3343, i8 14, i8 0, i8 0, i8 12, i8 32, i8 28, [2 x i8] zeroinitializer, i32 126 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 2490, i32 3343, i8 14, i8 0, i8 0, i8 15, i8 32, i8 24, [2 x i8] zeroinitializer, i32 126 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 823, i32 2510, i8 14, i8 0, i8 0, i8 18, i8 32, i8 28, [2 x i8] zeroinitializer, i32 54 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 823, i32 2510, i8 14, i8 0, i8 0, i8 27, i8 32, i8 24, [2 x i8] zeroinitializer, i32 54 }>, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer] }, [100 x i8] zeroinitializer }, align 32
@jp_radar_specs = internal constant { %struct.mt7915_dfs_radar_spec, [100 x i8] } { %struct.mt7915_dfs_radar_spec { %struct.mt7915_dfs_pulse { i32 110, i32 -10, i32 -80, i32 40, i32 5200, i32 128, i32 5200 }, [16 x %struct.mt7915_dfs_pattern] [%struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 8, i8 32, i8 28, i8 0, i32 508, i32 3076, i8 13, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 12, i8 32, i8 28, i8 0, i32 140, i32 240, i8 17, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 8, i8 32, i8 28, i8 0, i32 190, i32 510, i8 22, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 6, i8 32, i8 28, i8 0, i32 190, i32 510, i8 32, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 9, i8 -1, i8 28, i8 0, i32 323, i32 343, i8 13, i8 1, i8 32, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern zeroinitializer, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 7, i8 32, i8 28, i8 0, i32 3836, i32 3856, i8 14, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 6, i8 32, i8 28, i8 0, i32 615, i32 5010, i8 110, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 15, i32 5010, i8 110, i8 0, i8 0, i8 12, i8 32, i8 28, [2 x i8] zeroinitializer, i32 0 }>] }, [100 x i8] zeroinitializer }, align 32
@fcc_radar_specs = internal constant { { %struct.mt7915_dfs_pulse, <{ %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, [11 x %struct.mt7915_dfs_pattern] }> }, [100 x i8] } { { %struct.mt7915_dfs_pulse, <{ %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, [11 x %struct.mt7915_dfs_pattern] }> } { %struct.mt7915_dfs_pulse { i32 110, i32 -10, i32 -80, i32 40, i32 5200, i32 128, i32 5200 }, <{ %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, %struct.mt7915_dfs_pattern, [11 x %struct.mt7915_dfs_pattern] }> <{ %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 8, i8 32, i8 28, i8 0, i32 508, i32 3076, i8 13, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 12, i8 32, i8 28, i8 0, i32 140, i32 240, i8 17, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 8, i8 32, i8 28, i8 0, i32 190, i32 510, i8 22, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 6, i8 32, i8 28, i8 0, i32 190, i32 510, i8 32, i8 1, i8 1, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, %struct.mt7915_dfs_pattern <{ i8 1, i8 0, i8 9, i8 -1, i8 28, i8 0, i32 323, i32 343, i8 13, i8 1, i8 32, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0 }>, [11 x %struct.mt7915_dfs_pattern] zeroinitializer }> }, [100 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33792, i64 53248]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 7, i64 11, i64 15, i64 20, i64 21, i64 127]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.17 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.23 = internal global [71 x i64] [i64 69, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 2538, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1420, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"known\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 315, i32 44 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"mu_known\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 274, i32 47 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1855, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 378, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"etsi_radar_specs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 17, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"jp_radar_specs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 42, i32 43 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"fcc_radar_specs\00", align 1
@___asan_gen_.62 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 31, i32 43 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7915_mac_decode_he_radiotap.known, ptr @mt7915_mac_decode_he_mu_radiotap.mu_known, ptr @.str.5, ptr @xa_init_flags.__key, ptr @.str.6, ptr @etsi_radar_specs, ptr @jp_radar_specs, ptr @fcc_radar_specs], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mac_decode_he_radiotap.known to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_mac_decode_he_mu_radiotap.mu_known to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etsi_radar_specs to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jp_radar_specs to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcc_radar_specs to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mt7915_sta_ps(ptr nocapture noundef %mdev, ptr nocapture noundef %sta, i1 noundef zeroext %ps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt7915_mac_wtbl_update(ptr noundef %dev, i32 noundef %idx, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %and9 = and i32 %idx, 1023
  %or = or i32 %and9, %mask
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 213040, i32 noundef 1023, i32 noundef %or) #7
  %call10 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 213040, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #7
  ret i1 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mac_wtbl_lmac_addr(ptr noundef %dev, i16 noundef zeroext %wcid, i8 noundef zeroext %dw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wcid to i32
  %0 = lshr i32 %conv, 7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr, align 4
  %and13 = and i32 %0, 7
  tail call void %4(ptr noundef %dev, i32 noundef 212992, i32 noundef %and13) #7
  %shl33 = shl nuw nsw i32 %conv, 8
  %and34 = and i32 %shl33, 32512
  %conv53 = zext i8 %dw to i32
  %shl54 = shl nuw nsw i32 %conv53, 2
  %and55 = and i32 %shl54, 252
  %or = or i32 %and34, %and55
  %or56 = or i32 %or, 229376
  ret i32 %or56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_write_txwi(ptr noundef %dev, ptr noundef %txwi, ptr noundef %skb, ptr nocapture noundef readonly %wcid, i32 noundef %pid, ptr noundef readonly %key, i1 noundef zeroext %beacon) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 8
  %hw_queue = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %hw_queue, align 4
  %3 = and i32 %bf.load, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  %and3 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %omac_idx7 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %6 = ptrtoint ptr %omac_idx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %omac_idx7, align 1
  %wmm_idx9 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %8 = ptrtoint ptr %wmm_idx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wmm_idx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wmm_idx.0 = phi i8 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %omac_idx.0 = phi i8 [ %7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %phy2 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy2, align 8
  %tobool11.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool11.not, ptr %dev, ptr %11
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end.if.end14_crit_edge
  %mphy.0 = phi ptr [ %dev, %if.end.if.end14_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %beacon, label %if.end14.do.body32_crit_edge, label %if.else

if.end14.do.body32_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.else:                                          ; preds = %if.end14
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp = icmp ugt i16 %13, 3
  br i1 %cmp, label %if.else.do.body32_crit_edge, label %if.else20

if.else.do.body32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i8 %wmm_idx.0, 2
  %conv23 = trunc i16 %13 to i8
  %sub.i = or i8 %mul, 3
  %add = sub nuw i8 %sub.i, %conv23
  br label %do.body32

do.body32:                                        ; preds = %if.else20, %if.else.do.body32_crit_edge, %if.end14.do.body32_crit_edge
  %q_idx.0 = phi i8 [ %add, %if.else20 ], [ 18, %if.end14.do.body32_crit_edge ], [ 16, %if.else.do.body32_crit_edge ]
  %p_fmt.0 = phi i32 [ 0, %if.else20 ], [ 25165824, %if.end14.do.body32_crit_edge ], [ 0, %if.else.do.body32_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %add33 = add i32 %15, 32
  %and50 = and i32 %add33, 65535
  %or = or i32 %p_fmt.0, %and50
  %conv100 = zext i8 %q_idx.0 to i32
  %shl101 = shl i32 %conv100, 25
  %or103 = or i32 %or, %shl101
  %16 = tail call i32 @llvm.bswap.i32(i32 %or103)
  %17 = ptrtoint ptr %txwi to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %txwi, align 4
  %idx = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 6
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idx, align 2
  %20 = and i16 %19, 1023
  %and131 = zext i16 %20 to i32
  %conv156 = zext i8 %omac_idx.0 to i32
  %shl157 = shl nuw i32 %conv156, 24
  %and158 = and i32 %shl157, 1056964608
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %q_idx.0)
  %cmp164 = icmp ugt i8 %q_idx.0, 15
  %or.cond371 = select i1 %tobool.not.not, i1 %cmp164, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %q_idx.0)
  %cmp168 = icmp ult i8 %q_idx.0, 19
  %or.cond372 = select i1 %or.cond371, i1 %cmp168, i1 false
  %val.0.v = select i1 %or.cond372, i32 -1073740800, i32 -2147482624
  %or132 = or i32 %val.0.v, %and158
  %val.0 = or i32 %or132, %and131
  %21 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %arrayidx173 = getelementptr i32, ptr %txwi, i32 1
  %22 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx173, align 4
  %arrayidx174 = getelementptr i32, ptr %txwi, i32 2
  %23 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx174, align 4
  %tobool202.not = icmp eq ptr %key, null
  %val.1 = select i1 %tobool202.not, i32 536901632, i32 536901634
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i, align 8
  %and207 = lshr i32 %25, 2
  %26 = and i32 %and207, 1
  %27 = or i32 %26, %val.1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx212 = getelementptr i32, ptr %txwi, i32 3
  %29 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx212, align 4
  %arrayidx213 = getelementptr i32, ptr %txwi, i32 4
  %30 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx213, align 4
  %and237 = and i32 %pid, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pid)
  %cmp238 = icmp sgt i32 %pid, 1
  %or241 = or i32 %and237, 1024
  %spec.select375 = select i1 %cmp238, i32 %or241, i32 %and237
  %31 = tail call i32 @llvm.bswap.i32(i32 %spec.select375)
  %arrayidx243 = getelementptr i32, ptr %txwi, i32 5
  %32 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx243, align 4
  %arrayidx244 = getelementptr i32, ptr %txwi, i32 6
  %33 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx244, align 4
  %amsdu = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 9
  %34 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load245 = load i8, ptr %amsdu, align 2
  %35 = and i8 %bf.load245, 32
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 13
  %arrayidx250 = getelementptr i32, ptr %txwi, i32 7
  %38 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx250, align 4
  br i1 %tobool4.not, label %if.else253, label %if.then252

if.then252:                                       ; preds = %do.body32
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %39 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %priority.i, align 4
  %41 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %amsdu, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then252.mt7915_mac_write_txwi_8023.exit_crit_edge, label %if.then.i

if.then252.mt7915_mac_write_txwi_8023.exit_crit_edge: ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_write_txwi_8023.exit

if.then.i:                                        ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #9
  %wme.i = getelementptr i8, ptr %wcid, i32 -136
  %42 = ptrtoint ptr %wme.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wme.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i = icmp eq i8 %43, 0
  %phi.cast.i = select i1 %tobool2.not.i, i32 0, i32 8
  br label %mt7915_mac_write_txwi_8023.exit

mt7915_mac_write_txwi_8023.exit:                  ; preds = %if.then.i, %if.then252.mt7915_mac_write_txwi_8023.exit_crit_edge
  %wmm.0.off0.i = phi i32 [ %phi.cast.i, %if.then.i ], [ 0, %if.then252.mt7915_mac_write_txwi_8023.exit_crit_edge ]
  %conv37.i = shl i32 %40, 20
  %and38.i = and i32 %conv37.i, 7340032
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %44 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %45)
  %cmp.i = icmp ugt i16 %45, 1535
  %or42.i = or i32 %and38.i, 32768
  %spec.select.i = select i1 %cmp.i, i32 %or42.i, i32 %and38.i
  %46 = or i32 %spec.select.i, %val.0
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx173, align 4
  %or100.i = shl nuw nsw i32 %wmm.0.off0.i, 24
  %49 = or i32 %or100.i, 536870912
  %50 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx174, align 4
  %shl153.i = shl nuw nsw i32 %wmm.0.off0.i, 8
  %or155.i = or i32 %shl153.i, %37
  %or157.i = or i32 %or155.i, 8192
  br label %if.end254

if.else253:                                       ; preds = %do.body32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %priority.i379 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %53 = ptrtoint ptr %priority.i379 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %priority.i379, align 4
  %55 = trunc i32 %54 to i8
  %conv.i380 = and i8 %55, 15
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %52, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %52, i32 0, i32 2
  %58 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr1.i, align 4
  %60 = lshr i32 %59, 24
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = and i16 %57, -1024
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i16 %63, label %if.else253.do.end54.i_crit_edge [
    i16 -12288, label %land.lhs.true.i
    i16 -31744, label %if.then21.i
  ]

if.else253.do.end54.i_crit_edge:                  ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

land.lhs.true.i:                                  ; preds = %if.else253
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 6
  %65 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp.i381 = icmp eq i8 %66, 3
  br i1 %cmp.i381, label %land.lhs.true7.i, label %land.lhs.true.i.do.end54.i_crit_edge

land.lhs.true.i.do.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %u9.i = getelementptr inbounds %struct.anon.169, ptr %u.i, i32 0, i32 1
  %67 = ptrtoint ptr %u9.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %u9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp11.i = icmp eq i8 %68, 0
  br i1 %cmp11.i, label %if.then.i383, label %land.lhs.true7.i.do.end54.i_crit_edge

land.lhs.true7.i.do.end54.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

if.then.i383:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  %capab15.i = getelementptr inbounds %struct.anon.169, ptr %u.i, i32 0, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %capab15.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %capab15.i, align 1
  %71 = lshr i16 %70, 10
  %or.i = or i32 %31, 4194304
  %72 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i, ptr %arrayidx243, align 4
  %73 = trunc i16 %71 to i8
  %conv18.i = and i8 %73, 15
  br label %do.end54.i

if.then21.i:                                      ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #9
  %control22.i = getelementptr inbounds %struct.ieee80211_bar, ptr %52, i32 0, i32 4
  %74 = ptrtoint ptr %control22.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %control22.i, align 1
  %76 = trunc i16 %75 to i8
  %77 = lshr i8 %76, 4
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then21.i, %if.then.i383, %land.lhs.true7.i.do.end54.i_crit_edge, %land.lhs.true.i.do.end54.i_crit_edge, %if.else253.do.end54.i_crit_edge
  %tid.0.i = phi i8 [ %conv18.i, %if.then.i383 ], [ %77, %if.then21.i ], [ %conv.i380, %land.lhs.true7.i.do.end54.i_crit_edge ], [ %conv.i380, %land.lhs.true.i.do.end54.i_crit_edge ], [ %conv.i380, %if.else253.do.end54.i_crit_edge ]
  %call72.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #7
  %78 = shl i32 %call72.i, 10
  %and73.i = and i32 %78, 63488
  %conv95.i = zext i8 %tid.0.i to i32
  %shl96.i = shl nuw nsw i32 %conv95.i, 20
  %and97.i = and i32 %shl96.i, 7340032
  %or74.i = or i32 %and73.i, %and97.i
  %or98.i = or i32 %or74.i, 131072
  %79 = tail call i32 @llvm.bswap.i32(i32 %or98.i) #7
  %80 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx173, align 4
  %or100.i387 = or i32 %81, %79
  store i32 %or100.i387, ptr %arrayidx173, align 4
  %82 = lshr i16 %57, 8
  %83 = trunc i16 %82 to i8
  %84 = lshr i8 %83, 2
  %conv104.i = and i8 %84, 3
  %85 = lshr i8 %83, 4
  %conv132.i = zext i8 %conv104.i to i32
  %shl133.i = shl nuw nsw i32 %conv132.i, 4
  %conv158.i = zext i8 %85 to i32
  %or161.i = or i32 %shl133.i, %conv158.i
  %86 = zext i8 %62 to i32
  %shl189.i = shl nuw nsw i32 %86, 10
  %or191.i = or i32 %or161.i, %shl189.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool187.not.i = icmp eq i8 %62, 0
  %or.cond2.i = select i1 %tobool202.not, i1 true, i1 %tobool187.not.i
  br i1 %or.cond2.i, label %do.end54.i.if.end206.i_crit_edge, label %land.lhs.true196.i

do.end54.i.if.end206.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

land.lhs.true196.i:                               ; preds = %do.end54.i
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %88)
  %cmp.i4.i = icmp ult i32 %88, 25
  br i1 %cmp.i4.i, label %land.lhs.true196.i.if.end206.i_crit_edge, label %if.end.i.i

land.lhs.true196.i.if.end206.i_crit_edge:         ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end.i.i:                                       ; preds = %land.lhs.true196.i
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %90, align 2
  %93 = and i16 %92, -1024
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %93, label %if.end.i.i.if.end206.i_crit_edge [
    i16 -24576, label %if.end.i.i.land.lhs.true199.i_crit_edge
    i16 -16384, label %if.end.i.i.land.lhs.true199.i_crit_edge414
    i16 -12288, label %if.then5.i.i.i
  ]

if.end.i.i.land.lhs.true199.i_crit_edge414:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true199.i

if.end.i.i.land.lhs.true199.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true199.i

if.end.i.i.if.end206.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i
  %95 = and i16 %92, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp.i46.not.i.i.i = icmp eq i16 %95, 0
  br i1 %cmp.i46.not.i.i.i, label %if.end9.i.i.i, label %if.then5.i.i.i.land.lhs.true199.i_crit_edge

if.then5.i.i.i.land.lhs.true199.i_crit_edge:      ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true199.i

if.end9.i.i.i:                                    ; preds = %if.then5.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %90, i32 24
  %96 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr.i.i.i, align 1
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %97, label %if.end9.i.i.i.land.lhs.true199.i_crit_edge [
    i8 4, label %if.end9.i.i.i.if.end206.i_crit_edge
    i8 7, label %if.end9.i.i.i.if.end206.i_crit_edge415
    i8 11, label %if.end9.i.i.i.if.end206.i_crit_edge416
    i8 15, label %if.end9.i.i.i.if.end206.i_crit_edge417
    i8 20, label %if.end9.i.i.i.if.end206.i_crit_edge418
    i8 21, label %if.end9.i.i.i.if.end206.i_crit_edge419
    i8 127, label %if.end9.i.i.i.if.end206.i_crit_edge420
  ]

if.end9.i.i.i.if.end206.i_crit_edge420:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge419:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge418:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge417:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge416:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge415:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge:              ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.end9.i.i.i.land.lhs.true199.i_crit_edge:       ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true199.i

land.lhs.true199.i:                               ; preds = %if.end9.i.i.i.land.lhs.true199.i_crit_edge, %if.then5.i.i.i.land.lhs.true199.i_crit_edge, %if.end.i.i.land.lhs.true199.i_crit_edge, %if.end.i.i.land.lhs.true199.i_crit_edge414
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %99 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027078, i32 %100)
  %cmp200.i = icmp eq i32 %100, 1027078
  br i1 %cmp200.i, label %if.then202.i, label %land.lhs.true199.i.if.end206.i_crit_edge

land.lhs.true199.i.if.end206.i_crit_edge:         ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.then202.i:                                     ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #9
  %or203.i = or i32 %or191.i, 2048
  %101 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx212, align 4
  %and205.i = and i32 %102, -33554433
  store i32 %and205.i, ptr %arrayidx212, align 4
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then202.i, %land.lhs.true199.i.if.end206.i_crit_edge, %if.end9.i.i.i.if.end206.i_crit_edge, %if.end9.i.i.i.if.end206.i_crit_edge415, %if.end9.i.i.i.if.end206.i_crit_edge416, %if.end9.i.i.i.if.end206.i_crit_edge417, %if.end9.i.i.i.if.end206.i_crit_edge418, %if.end9.i.i.i.if.end206.i_crit_edge419, %if.end9.i.i.i.if.end206.i_crit_edge420, %if.end.i.i.if.end206.i_crit_edge, %land.lhs.true196.i.if.end206.i_crit_edge, %do.end54.i.if.end206.i_crit_edge
  %val.0.i = phi i32 [ %or203.i, %if.then202.i ], [ %or191.i, %land.lhs.true199.i.if.end206.i_crit_edge ], [ %or191.i, %do.end54.i.if.end206.i_crit_edge ], [ %or191.i, %land.lhs.true196.i.if.end206.i_crit_edge ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge415 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge416 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge417 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge418 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge419 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge420 ], [ %or191.i, %if.end.i.i.if.end206.i_crit_edge ]
  %103 = and i16 %57, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %103)
  %cmp.i5.i = icmp ne i16 %103, 2048
  %tobool187.not.i.not = xor i1 %tobool187.not.i, true
  %brmerge = select i1 %cmp.i5.i, i1 true, i1 %tobool187.not.i.not
  br i1 %brmerge, label %if.end206.i.if.then213.i_crit_edge, label %lor.lhs.false210.i

if.end206.i.if.then213.i_crit_edge:               ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then213.i

lor.lhs.false210.i:                               ; preds = %if.end206.i
  %104 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cb.i, align 8
  %and211.i = and i32 %105, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %lor.lhs.false210.i.if.end215.i_crit_edge, label %lor.lhs.false210.i.if.then213.i_crit_edge

lor.lhs.false210.i.if.then213.i_crit_edge:        ; preds = %lor.lhs.false210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then213.i

lor.lhs.false210.i.if.end215.i_crit_edge:         ; preds = %lor.lhs.false210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i

if.then213.i:                                     ; preds = %lor.lhs.false210.i.if.then213.i_crit_edge, %if.end206.i.if.then213.i_crit_edge
  %or214.i = or i32 %val.0.i, -2147483648
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then213.i, %lor.lhs.false210.i.if.end215.i_crit_edge
  %val.1.i = phi i32 [ %or214.i, %if.then213.i ], [ %val.0.i, %lor.lhs.false210.i.if.end215.i_crit_edge ]
  %106 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #7
  %107 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx174, align 4
  %or217.i = or i32 %108, %106
  store i32 %or217.i, ptr %arrayidx174, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %63)
  %cmp.i6.i = icmp eq i16 %63, -32768
  br i1 %cmp.i6.i, label %if.then219.i, label %if.end215.i.if.end224.i_crit_edge

if.end215.i.if.end224.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224.i

if.then219.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx212, align 4
  %and221.i = and i32 %110, -16252961
  %or223.i = or i32 %and221.i, 16252928
  store i32 %or223.i, ptr %arrayidx212, align 4
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.then219.i, %if.end215.i.if.end224.i_crit_edge
  %111 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cb.i, align 8
  %and226.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226.i)
  %tobool227.not.i = icmp eq i32 %and226.i, 0
  br i1 %tobool227.not.i, label %if.end224.i.mt7915_mac_write_txwi_80211.exit_crit_edge, label %if.then228.i

if.end224.i.mt7915_mac_write_txwi_80211.exit_crit_edge: ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_write_txwi_80211.exit

if.then228.i:                                     ; preds = %if.end224.i
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %52, i32 0, i32 5
  %113 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %seq_ctrl.i, align 2
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #7
  %116 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %52, align 2
  %118 = and i16 %117, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %118)
  %cmp.i7.i = icmp eq i16 %118, -31744
  br i1 %cmp.i7.i, label %if.then231.i, label %if.then228.i.do.body241.i_crit_edge

if.then228.i.do.body241.i_crit_edge:              ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body241.i

if.then231.i:                                     ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i, align 4
  %start_seq_num.i = getelementptr inbounds %struct.ieee80211_bar, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %start_seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %start_seq_num.i, align 1
  %123 = tail call i16 @llvm.bswap.i16(i16 %122) #7
  br label %do.body241.i

do.body241.i:                                     ; preds = %if.then231.i, %if.then228.i.do.body241.i_crit_edge
  %seqno.0.i = phi i16 [ %123, %if.then231.i ], [ %115, %if.then228.i.do.body241.i_crit_edge ]
  %124 = lshr i16 %seqno.0.i, 4
  %125 = zext i16 %124 to i32
  %shl266.i = shl nuw nsw i32 %125, 16
  %or268.i = or i32 %shl266.i, -2147483648
  %126 = tail call i32 @llvm.bswap.i32(i32 %or268.i) #7
  %127 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx212, align 4
  %or270.i = or i32 %126, %128
  store i32 %or270.i, ptr %arrayidx212, align 4
  br label %mt7915_mac_write_txwi_80211.exit

mt7915_mac_write_txwi_80211.exit:                 ; preds = %do.body241.i, %if.end224.i.mt7915_mac_write_txwi_80211.exit_crit_edge
  %shl296.i = shl nuw nsw i32 %conv132.i, 12
  %shl322.i = shl nuw nsw i32 %conv158.i, 8
  %or324.i = or i32 %shl296.i, %shl322.i
  %129 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx250, align 4
  %or326.i = or i32 %130, %or324.i
  br label %if.end254

if.end254:                                        ; preds = %mt7915_mac_write_txwi_80211.exit, %mt7915_mac_write_txwi_8023.exit
  %storemerge = phi i32 [ %or157.i, %mt7915_mac_write_txwi_8023.exit ], [ %or326.i, %mt7915_mac_write_txwi_80211.exit ]
  %mcast.0 = phi i8 [ 0, %mt7915_mac_write_txwi_8023.exit ], [ %62, %mt7915_mac_write_txwi_80211.exit ]
  %131 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %storemerge, ptr %arrayidx250, align 4
  %132 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx174, align 4
  %and256 = and i32 %133, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %if.end254.if.end295_crit_edge, label %if.then258

if.end254.if.end295_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end295

if.then258:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mcast.0)
  %tobool260 = icmp ne i8 %mcast.0, 0
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0, i32 0, i32 5
  %134 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chandef.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  br i1 %beacon, label %if.then.i389, label %entry.if.end1057_crit_edge.i

entry.if.end1057_crit_edge.i:                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = and i32 %137, 255
  br label %if.end1057.i

if.then.i389:                                     ; preds = %if.then258
  %beacon_tx_rate.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 62
  %idxprom.i = and i32 %137, 255
  %arrayidx.i388 = getelementptr [6 x %struct.anon.138], ptr %beacon_tx_rate.i, i32 0, i32 %idxprom.i
  %he_mcs.i = getelementptr [6 x %struct.anon.138], ptr %beacon_tx_rate.i, i32 0, i32 %idxprom.i, i32 3
  %138 = ptrtoint ptr %he_mcs.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %he_mcs.i, align 2
  %conv226.i = zext i16 %139 to i32
  %call.i.i = tail call i32 @__sw_hweight16(i32 noundef %conv226.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i390 = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i390, label %if.then228.i392, label %if.else.i393

if.then228.i392:                                  ; preds = %if.then.i389
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %he_mcs.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %he_mcs.i, align 2
  %142 = tail call i16 @llvm.cttz.i16(i16 %141, i1 true) #7, !range !48
  %143 = zext i16 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %iszero.i = icmp eq i16 %141, 0
  %sub.i391 = select i1 %iszero.i, i32 -1, i32 %143
  br label %mt7915_mac_tx_rate_val.exit

if.else.i393:                                     ; preds = %if.then.i389
  %vht_mcs.i = getelementptr [6 x %struct.anon.138], ptr %beacon_tx_rate.i, i32 0, i32 %idxprom.i, i32 2
  %144 = ptrtoint ptr %vht_mcs.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vht_mcs.i, align 2
  %conv469.i = zext i16 %145 to i32
  %call.i1348.i = tail call i32 @__sw_hweight16(i32 noundef %conv469.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1348.i)
  %cmp473.i = icmp eq i32 %call.i1348.i, 1
  br i1 %cmp473.i, label %if.then475.i, label %if.else485.i

if.then475.i:                                     ; preds = %if.else.i393
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %vht_mcs.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %vht_mcs.i, align 2
  %148 = tail call i16 @llvm.cttz.i16(i16 %147, i1 true) #7, !range !48
  %149 = zext i16 %148 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %iszero482.i = icmp eq i16 %147, 0
  %sub484.i = select i1 %iszero482.i, i32 -1, i32 %149
  br label %mt7915_mac_tx_rate_val.exit

if.else485.i:                                     ; preds = %if.else.i393
  %ht_mcs.i = getelementptr [6 x %struct.anon.138], ptr %beacon_tx_rate.i, i32 0, i32 %idxprom.i, i32 1
  %150 = ptrtoint ptr %ht_mcs.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %ht_mcs.i, align 4
  %conv600.i = zext i8 %151 to i32
  %call.i1349.i = tail call i32 @__sw_hweight8(i32 noundef %conv600.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1349.i)
  %cmp604.i = icmp eq i32 %call.i1349.i, 1
  br i1 %cmp604.i, label %if.then606.i, label %cond.false1036.i

if.then606.i:                                     ; preds = %if.else485.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %ht_mcs.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ht_mcs.i, align 4
  %154 = tail call i8 @llvm.cttz.i8(i8 %153, i1 true) #7, !range !49
  %155 = zext i8 %154 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %iszero613.i = icmp eq i8 %153, 0
  %sub615.i = select i1 %iszero613.i, i32 -1, i32 %155
  br label %mt7915_mac_tx_rate_val.exit

cond.false1036.i:                                 ; preds = %if.else485.i
  %156 = ptrtoint ptr %arrayidx.i388 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i388, align 4
  %call.i1350.i = tail call i32 @__sw_hweight32(i32 noundef %157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1350.i)
  %cmp1044.i = icmp eq i32 %call.i1350.i, 1
  br i1 %cmp1044.i, label %cleanup.i, label %cond.false1036.i.if.end1057.i_crit_edge

cond.false1036.i.if.end1057.i_crit_edge:          ; preds = %cond.false1036.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1057.i

cleanup.i:                                        ; preds = %cond.false1036.i
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %arrayidx.i388 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i388, align 4
  %160 = tail call i32 @llvm.cttz.i32(i32 %159, i1 true) #7, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %iszero1051.i = icmp eq i32 %159, 0
  %sub1053.i = select i1 %iszero1051.i, i32 -1, i32 %160
  br label %legacy1074.i

if.end1057.i:                                     ; preds = %cond.false1036.i.if.end1057.i_crit_edge, %entry.if.end1057_crit_edge.i
  %idxprom1060.pre-phi.i = phi i32 [ %.pre.i, %entry.if.end1057_crit_edge.i ], [ %idxprom.i, %cond.false1036.i.if.end1057.i_crit_edge ]
  %arrayidx1061.i = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 26, i32 %idxprom1060.pre-phi.i
  %161 = ptrtoint ptr %arrayidx1061.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx1061.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp1064.i = icmp sgt i32 %162, 0
  %or.cond.i394 = select i1 %tobool260, i1 %cmp1064.i, i1 false
  br i1 %or.cond.i394, label %if.then1066.i, label %if.else1068.i

if.then1066.i:                                    ; preds = %if.end1057.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub1067.i = add nsw i32 %162, -1
  br label %legacy1074.i

if.else1068.i:                                    ; preds = %if.end1057.i
  call void @__sanitizer_cov_trace_pc() #9
  %basic_rates.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 24
  %163 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %basic_rates.i, align 8
  %165 = tail call i32 @llvm.cttz.i32(i32 %164, i1 true) #7, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %iszero1070.i = icmp eq i32 %164, 0
  %sub1072.i = select i1 %iszero1070.i, i32 -1, i32 %165
  br label %legacy1074.i

legacy1074.i:                                     ; preds = %if.else1068.i, %if.then1066.i, %cleanup.i
  %rateidx.1.i = phi i32 [ %sub1053.i, %cleanup.i ], [ %sub1067.i, %if.then1066.i ], [ %sub1072.i, %if.else1068.i ]
  %call1075.i = tail call zeroext i16 @mt76_calculate_default_rate(ptr noundef %mphy.0, i32 noundef %rateidx.1.i) #7
  %166 = and i16 %call1075.i, 255
  %and1079.i = zext i16 %166 to i32
  %167 = lshr i16 %call1075.i, 2
  %168 = and i16 %167, 960
  %phi.bo413 = zext i16 %168 to i32
  br label %mt7915_mac_tx_rate_val.exit

mt7915_mac_tx_rate_val.exit:                      ; preds = %legacy1074.i, %if.then606.i, %if.then475.i, %if.then228.i392
  %rateidx.2.i = phi i32 [ %and1079.i, %legacy1074.i ], [ %sub615.i, %if.then606.i ], [ %sub484.i, %if.then475.i ], [ %sub.i391, %if.then228.i392 ]
  %mode.1.i = phi i32 [ %phi.bo413, %legacy1074.i ], [ 128, %if.then606.i ], [ 256, %if.then475.i ], [ 512, %if.then228.i392 ]
  %169 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx174, align 4
  %or263 = or i32 %170, 2097152
  store i32 %or263, ptr %arrayidx174, align 4
  %and1098.i = and i32 %rateidx.2.i, 63
  %or.i396 = or i32 %mode.1.i, %and1098.i
  %shl288 = shl nuw nsw i32 %or.i396, 16
  %or290 = or i32 %shl288, 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %or290)
  %172 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx244, align 4
  %or292 = or i32 %173, %171
  store i32 %or292, ptr %arrayidx244, align 4
  %174 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx212, align 4
  %or294 = or i32 %175, 16
  store i32 %or294, ptr %arrayidx212, align 4
  br label %if.end295

if.end295:                                        ; preds = %mt7915_mac_tx_rate_val.exit, %if.end254.if.end295_crit_edge
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0, i32 0, i32 17
  %176 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp.i397.not = icmp eq i32 %177, 0
  br i1 %cmp.i397.not, label %if.end295.if.end298_crit_edge, label %if.then297

if.end295.if.end298_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end298

if.then297:                                       ; preds = %if.end295
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0, i32 0, i32 2
  %178 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %priv, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 8
  %tx_rate_nss.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 7
  %182 = ptrtoint ptr %tx_rate_nss.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %tx_rate_nss.i, align 4
  %tx_rate_idx.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 6
  %184 = ptrtoint ptr %tx_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tx_rate_idx.i, align 1
  %tx_skb.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 2
  %186 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tx_skb.i, align 8
  %cmp.not.i = icmp eq ptr %187, %skb
  br i1 %cmp.not.i, label %if.end.i, label %if.then297.if.end298_crit_edge

if.then297.if.end298_crit_edge:                   ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end298

if.end.i:                                         ; preds = %if.then297
  %tx_rate_mode.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 5
  %188 = ptrtoint ptr %tx_rate_mode.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %tx_rate_mode.i, align 2
  %190 = zext i8 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %189, label %sw.default.i [
    i8 2, label %sw.bb.i
    i8 3, label %if.end.i.sw.epilog.i_crit_edge
    i8 4, label %sw.bb6.i
    i8 5, label %sw.bb7.i
    i8 6, label %sw.bb8.i
    i8 7, label %sw.bb9.i
    i8 0, label %if.end.i._crit_edge
    i8 1, label %sw.bb11.i
  ]

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %192

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %191 = lshr i8 %185, 3
  %narrow.i398 = add nuw nsw i8 %191, 1
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add18.i = add i8 %185, 4
  br label %192

192:                                              ; preds = %sw.bb11.i, %if.end.i._crit_edge
  %cck.0.off0380.i = phi i1 [ false, %sw.bb11.i ], [ true, %if.end.i._crit_edge ]
  %193 = phi i8 [ %add18.i, %sw.bb11.i ], [ %185, %if.end.i._crit_edge ]
  %.in.in.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 5
  %194 = ptrtoint ptr %.in.in.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %.in.i = load ptr, ptr %.in.in.i, align 4
  %195 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp14382.i = icmp eq i32 %196, 0
  %rate_idx.0.i = select i1 %cmp14382.i, i8 %193, i8 %185
  %197 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %181, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i399 = getelementptr %struct.wiphy, ptr %200, i32 0, i32 53, i32 %196
  %201 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i399, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bitrates.i, align 4
  %idxprom.i400 = zext i8 %rate_idx.0.i to i32
  %hw_value_short.i = getelementptr %struct.ieee80211_rate, ptr %204, i32 %idxprom.i400, i32 3
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %204, i32 %idxprom.i400, i32 2
  %spec.select412 = select i1 %cck.0.off0380.i, ptr %hw_value_short.i, ptr %hw_value.i
  %205 = ptrtoint ptr %spec.select412 to i32
  call void @__asan_load2_noabort(i32 %205)
  %cond.in.i = load i16, ptr %spec.select412, align 2
  %shr27.i = lshr i16 %cond.in.i, 8
  %conv28.i = trunc i16 %shr27.i to i8
  %conv29.i = trunc i16 %cond.in.i to i8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %192, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %rate_idx.1.i = phi i8 [ %185, %sw.default.i ], [ %conv29.i, %192 ], [ %185, %sw.bb9.i ], [ %185, %sw.bb8.i ], [ %185, %sw.bb7.i ], [ %185, %sw.bb6.i ], [ %185, %sw.bb.i ], [ %185, %if.end.i.sw.epilog.i_crit_edge ]
  %nss.0.i = phi i8 [ %183, %sw.default.i ], [ %183, %192 ], [ %183, %sw.bb9.i ], [ %183, %sw.bb8.i ], [ %183, %sw.bb7.i ], [ %183, %sw.bb6.i ], [ %narrow.i398, %sw.bb.i ], [ %183, %if.end.i.sw.epilog.i_crit_edge ]
  %mode.0.i = phi i8 [ 1, %sw.default.i ], [ %conv28.i, %192 ], [ 11, %sw.bb9.i ], [ 10, %sw.bb8.i ], [ 9, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 2, %sw.bb.i ], [ 4, %if.end.i.sw.epilog.i_crit_edge ]
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 5, i32 1
  %206 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %width.i, align 4
  %208 = zext i32 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %207, label %sw.default35.i [
    i32 2, label %sw.epilog.i.sw.epilog36.i_crit_edge
    i32 3, label %sw.bb33.i
    i32 4, label %sw.epilog.i.sw.bb34.i_crit_edge
    i32 5, label %sw.epilog.i.sw.bb34.i_crit_edge421
  ]

sw.epilog.i.sw.bb34.i_crit_edge421:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

sw.epilog.i.sw.bb34.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

sw.epilog.i.sw.epilog36.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36.i

sw.bb33.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36.i

sw.bb34.i:                                        ; preds = %sw.epilog.i.sw.bb34.i_crit_edge, %sw.epilog.i.sw.bb34.i_crit_edge421
  br label %sw.epilog36.i

sw.default35.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36.i

sw.epilog36.i:                                    ; preds = %sw.default35.i, %sw.bb34.i, %sw.bb33.i, %sw.epilog.i.sw.epilog36.i_crit_edge
  %cmp259.not.i = phi i1 [ true, %sw.default35.i ], [ false, %sw.bb34.i ], [ false, %sw.bb33.i ], [ false, %sw.epilog.i.sw.epilog36.i_crit_edge ]
  %bw.0.i = phi i32 [ 0, %sw.default35.i ], [ 3, %sw.bb34.i ], [ 2, %sw.bb33.i ], [ 1, %sw.epilog.i.sw.epilog36.i_crit_edge ]
  %tx_rate_stbc.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 10
  %209 = ptrtoint ptr %tx_rate_stbc.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %tx_rate_stbc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool38.not.i = icmp ne i8 %210, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %nss.0.i)
  %cmp41.i = icmp eq i8 %nss.0.i, 1
  %or.cond.i402 = select i1 %tobool38.not.i, i1 %cmp41.i, i1 false
  %rateval.0.i = select i1 %or.cond.i402, i32 8192, i32 0
  %inc.i = zext i1 %or.cond.i402 to i8
  %nss.1.i = add i8 %nss.0.i, %inc.i
  %conv102.i = zext i8 %nss.1.i to i32
  %conv91.i = zext i8 %mode.0.i to i32
  %shl92.i = shl nuw nsw i32 %conv91.i, 6
  %and93.i = and i32 %shl92.i, 960
  %211 = and i8 %rate_idx.1.i, 63
  %and67.i = zext i8 %211 to i32
  %or94.i = or i32 %and93.i, %and67.i
  %sub.i404 = shl nuw nsw i32 %conv102.i, 10
  %shl122.i = add nuw nsw i32 %sub.i404, 7168
  %and123.i = and i32 %shl122.i, 7168
  %or124.i = or i32 %or94.i, %rateval.0.i
  %or126.i = or i32 %or124.i, %and123.i
  %212 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx174, align 4
  %or129.i = or i32 %213, 128
  store i32 %or129.i, ptr %arrayidx174, align 4
  %214 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx212, align 4
  %and.i.i = and i32 %215, -16252929
  %or.i.i = or i32 %and.i.i, 524288
  store i32 %or.i.i, ptr %arrayidx212, align 4
  %216 = ptrtoint ptr %tx_rate_mode.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %tx_rate_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %217)
  %cmp133.i = icmp ult i8 %217, 2
  br i1 %cmp133.i, label %if.then135.i, label %sw.epilog36.i.do.end215.i_crit_edge

sw.epilog36.i.do.end215.i_crit_edge:              ; preds = %sw.epilog36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end215.i

if.then135.i:                                     ; preds = %sw.epilog36.i
  call void @__sanitizer_cov_trace_pc() #9
  %or137.i = or i32 %and.i.i, 524304
  %218 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %or137.i, ptr %arrayidx212, align 4
  br label %do.end215.i

do.end215.i:                                      ; preds = %if.then135.i, %sw.epilog36.i.do.end215.i_crit_edge
  %tx_rate_sgi.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 8
  %219 = ptrtoint ptr %tx_rate_sgi.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %tx_rate_sgi.i, align 1
  %shl190.i = shl nuw nsw i32 %or126.i, 16
  %or165.i = or i32 %shl190.i, %bw.0.i
  %conv218.i = zext i8 %220 to i32
  %shl219.i = shl nuw nsw i32 %conv218.i, 14
  %and220.i = and i32 %shl219.i, 49152
  %or192.i = or i32 %and220.i, %or165.i
  %or221.i = or i32 %or192.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %mode.0.i)
  %cmp223.i = icmp ugt i8 %mode.0.i, 7
  br i1 %cmp223.i, label %do.end248.i, label %do.end215.i.if.end255.i_crit_edge

do.end215.i.if.end255.i_crit_edge:                ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255.i

do.end248.i:                                      ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_ltf.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 11
  %221 = ptrtoint ptr %tx_ltf.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %tx_ltf.i, align 8
  %conv251.i = zext i8 %222 to i32
  %shl252.i = shl nuw nsw i32 %conv251.i, 12
  %and253.i = and i32 %shl252.i, 12288
  %or254.i = or i32 %and253.i, %or221.i
  br label %if.end255.i

if.end255.i:                                      ; preds = %do.end248.i, %do.end215.i.if.end255.i_crit_edge
  %val.0.i405 = phi i32 [ %or254.i, %do.end248.i ], [ %or221.i, %do.end215.i.if.end255.i_crit_edge ]
  %tx_rate_ldpc.i = getelementptr inbounds %struct.mt76_phy, ptr %181, i32 0, i32 17, i32 9
  %223 = ptrtoint ptr %tx_rate_ldpc.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %tx_rate_ldpc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool257.not.i = icmp eq i8 %224, 0
  %cmp223.not.i = xor i1 %cmp223.i, true
  %brmerge.i = select i1 %cmp259.not.i, i1 true, i1 %cmp223.not.i
  %or.cond375.i = select i1 %tobool257.not.i, i1 %brmerge.i, i1 false
  %or266.i = or i32 %val.0.i405, 2048
  %val.1.i406 = select i1 %or.cond375.i, i32 %val.0.i405, i32 %or266.i
  %225 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx212, align 4
  %and269.i = and i32 %226, -129
  store i32 %and269.i, ptr %arrayidx212, align 4
  %227 = tail call i32 @llvm.bswap.i32(i32 %val.1.i406) #7
  %228 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx244, align 4
  %or271.i = or i32 %227, %229
  store i32 %or271.i, ptr %arrayidx244, align 4
  %spe_idx.i = getelementptr inbounds %struct.mt7915_phy, ptr %179, i32 0, i32 18, i32 6
  %230 = ptrtoint ptr %spe_idx.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %spe_idx.i, align 1
  %conv300.i = zext i8 %231 to i32
  %shl301.i = shl nuw nsw i32 %conv300.i, 19
  %and302.i = and i32 %shl301.i, 16252928
  %232 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx250, align 4
  %or304.i = or i32 %233, %and302.i
  store i32 %or304.i, ptr %arrayidx250, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.end255.i, %if.then297.if.end298_crit_edge, %if.end295.if.end298_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_tx_prepare_skb(ptr noundef %mdev, ptr noundef %txwi_ptr, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef %tx_info) local_unnamed_addr #1 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %4 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_key, align 4
  %vif2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %nbuf3 = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 2
  %8 = ptrtoint ptr %nbuf3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbuf3, align 4
  %sub = add i32 %9, -1
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp = icmp ult i32 %11, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %wcid, null
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 36
  %spec.select = select i1 %tobool6.not, ptr %global_wcid, ptr %wcid
  %tobool9.not = icmp eq ptr %sta, null
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %jiffies = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5, i32 2
  %12 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jiffies, align 4
  %add = add i32 %13, 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub11 = sub i32 %add, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp12 = icmp slt i32 %sub11, 0
  br i1 %cmp12, label %if.then13, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i, align 8
  %or = or i32 %16, 1
  store i32 %or, ptr %cb.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %jiffies, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %drv = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 11
  %19 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv, align 16
  %txwi_size = getelementptr inbounds %struct.mt76_driver_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %txwi_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %txwi_size, align 4
  %conv = zext i16 %22 to i32
  %add.ptr17 = getelementptr i8, ptr %txwi_ptr, i32 %conv
  %23 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr17, ptr %t, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %skb19 = getelementptr inbounds %struct.mt76_txwi_cache, ptr %add.ptr17, i32 0, i32 2
  %26 = ptrtoint ptr %skb19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %skb19, align 4
  %call20 = call i32 @mt76_token_consume(ptr noundef %mdev, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end16.cleanup_crit_edge, label %if.end24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb, align 4
  %call26 = call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %spec.select, ptr noundef %28) #7
  %29 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb, align 4
  call void @mt7915_mac_write_txwi(ptr noundef %mdev, ptr noundef %txwi_ptr, ptr noundef %30, ptr noundef %spec.select, i32 noundef %call26, ptr noundef %5, i1 noundef zeroext false)
  %add.ptr28 = getelementptr i8, ptr %txwi_ptr, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp29138 = icmp sgt i32 %sub, 0
  br i1 %cmp29138, label %for.body.lr.ph, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %buf32 = getelementptr i8, ptr %txwi_ptr, i32 40
  %len38 = getelementptr i8, ptr %txwi_ptr, i32 64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %add31, %for.body.for.body_crit_edge ]
  %add31 = add nuw nsw i32 %i.0139, 1
  %arrayidx = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add31
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %arrayidx33 = getelementptr [6 x i32], ptr %buf32, i32 0, i32 %i.0139
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx33, align 4
  %len37 = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add31, i32 1
  %35 = ptrtoint ptr %len37 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len37, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %arrayidx39 = getelementptr [6 x i16], ptr %len38, i32 0, i32 %i.0139
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx39, align 2
  %exitcond.not = icmp eq i32 %add31, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %conv40 = trunc i32 %sub to i8
  %nbuf41 = getelementptr i8, ptr %txwi_ptr, i32 39
  %39 = ptrtoint ptr %nbuf41 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv40, ptr %nbuf41, align 1
  %tobool43.not = icmp eq ptr %5, null
  %spec.select137 = select i1 %tobool43.not, i16 -30464, i16 -32512
  %40 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %spec.select137, ptr %add.ptr28, align 4
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cb.i, align 8
  %and = and i32 %42, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %land.lhs.true, label %for.end.if.end59_crit_edge

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true:                                    ; preds = %for.end
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %3, align 2
  %45 = and i16 %44, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.i = icmp eq i16 %45, 0
  br i1 %cmp.i, label %if.then54, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %46 = or i16 %spec.select137, 1024
  %47 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr28, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %land.lhs.true.if.end59_crit_edge, %for.end.if.end59_crit_edge
  %tobool60.not = icmp eq ptr %7, null
  br i1 %tobool60.not, label %if.end59.if.end64_crit_edge, label %if.then61

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv62 = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 19
  %48 = ptrtoint ptr %drv_priv62 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %drv_priv62, align 8
  %bss_idx = getelementptr i8, ptr %txwi_ptr, i32 36
  %50 = ptrtoint ptr %bss_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %bss_idx, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end59.if.end64_crit_edge
  %conv65 = trunc i32 %call20 to i16
  %51 = call i16 @llvm.bswap.i16(i16 %conv65)
  %token = getelementptr i8, ptr %txwi_ptr, i32 34
  %52 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %token, align 2
  %flags66 = getelementptr inbounds %struct.mt76_wcid, ptr %spec.select, i32 0, i32 2
  %53 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags66, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool68.not = icmp eq i32 %55, 0
  br i1 %tobool68.not, label %if.end64.if.end72_crit_edge, label %if.then69

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %idx70 = getelementptr inbounds %struct.mt76_wcid, ptr %spec.select, i32 0, i32 6
  %56 = ptrtoint ptr %idx70 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %idx70, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end64.if.end72_crit_edge
  %.sink = phi i16 [ %58, %if.then69 ], [ -253, %if.end64.if.end72_crit_edge ]
  %59 = getelementptr i8, ptr %txwi_ptr, i32 37
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %.sink, ptr %59, align 1
  %61 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4
  %len76 = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %len76 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 72, ptr %len76, align 4
  %skip_unmap = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %skip_unmap to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %skip_unmap, align 2
  %64 = ptrtoint ptr %nbuf3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %nbuf3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -22, %entry.cleanup_crit_edge ], [ %call20, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_token_consume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt7915_rx_check(ptr noundef %mdev, ptr noundef %data, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %len, 4
  %arrayidx = getelementptr i32, ptr %data, i32 %div
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = lshr i32 %1, 3
  %shr = and i32 %2, 31
  %3 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr, label %entry.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 0, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mt7915_mac_tx_free(ptr noundef %mdev, ptr noundef %data, i32 noundef %len)
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %add.ptr1730 = getelementptr i32, ptr %data, i32 10
  %cmp.not31 = icmp ugt ptr %add.ptr1730, %arrayidx
  br i1 %cmp.not31, label %sw.bb15.cleanup_crit_edge, label %for.body.preheader

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb15
  %add.ptr16 = getelementptr i32, ptr %data, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %add.ptr1733 = phi ptr [ %add.ptr17, %for.body.for.body_crit_edge ], [ %add.ptr1730, %for.body.preheader ]
  %rxd.032 = phi ptr [ %add.ptr1733, %for.body.for.body_crit_edge ], [ %add.ptr16, %for.body.preheader ]
  tail call fastcc void @mt7915_mac_add_txs(ptr noundef %mdev, ptr noundef %rxd.032)
  %add.ptr17 = getelementptr i32, ptr %add.ptr1733, i32 8
  %cmp.not = icmp ugt ptr %add.ptr17, %arrayidx
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.bb ], [ true, %entry.cleanup_crit_edge ], [ false, %sw.bb15.cleanup_crit_edge ], [ false, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_mac_tx_free(ptr noundef %dev, ptr noundef readonly %data, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  %sta_poll_list.i = alloca %struct.list_head, align 4
  %free_list = alloca %struct.list_head, align 4
  %wake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy2 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_list) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %free_list, i32 0, i32 1
  %3 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free_list, ptr %free_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_list, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %len
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wake) #7
  %5 = ptrtoint ptr %wake to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wake, align 1
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %6 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 16
  call void %9(ptr noundef %dev, ptr noundef %11, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %tx_cleanup2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_cleanup2, align 4
  %arrayidx4 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 8
  call void %15(ptr noundef %dev, ptr noundef %17, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end24_crit_edge, label %if.then

entry.do.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup6 = getelementptr inbounds %struct.mt76_queue_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %tx_cleanup6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_cleanup6, align 4
  %arrayidx8 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8, align 8
  call void %21(ptr noundef %dev, ptr noundef %23, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup10 = getelementptr inbounds %struct.mt76_queue_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %tx_cleanup10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_cleanup10, align 4
  %arrayidx12 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx12, align 8
  call void %27(ptr noundef %dev, ptr noundef %29, i1 noundef zeroext false) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then, %entry.do.end24_crit_edge
  %ctrl = getelementptr inbounds %struct.mt7915_tx_free, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ctrl, align 2
  %32 = lshr i16 %31, 8
  %conv26 = trunc i16 %32 to i8
  %idxprom = zext i16 %32 to i32
  %arrayidx27 = getelementptr %struct.mt7915_tx_free, ptr %data, i32 0, i32 4, i32 %idxprom
  %cmp = icmp ugt ptr %arrayidx27, %add.ptr
  br i1 %cmp, label %land.rhs, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv26)
  %cmp76252.not = icmp eq i8 %conv26, 0
  br i1 %cmp76252.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sta_poll_lock = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 15
  %sta_poll_list = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13, i32 1
  br label %for.body

land.rhs:                                         ; preds = %do.end24
  %.b241 = load i1, ptr @mt7915_mac_tx_free.__already_done, align 1
  br i1 %.b241, label %land.rhs.cleanup185_crit_edge, label %if.then37, !prof !52

land.rhs.cleanup185_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup185

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7915_mac_tx_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1403, i32 noundef 9, ptr noundef null) #7
  br label %cleanup185

for.body:                                         ; preds = %cleanup159.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup159.for.body_crit_edge ]
  %sta.0255 = phi ptr [ null, %for.body.lr.ph ], [ %sta.1, %cleanup159.for.body_crit_edge ]
  %count.0253 = phi i8 [ %conv26, %for.body.lr.ph ], [ %count.1, %cleanup159.for.body_crit_edge ]
  %arrayidx81 = getelementptr %struct.mt7915_tx_free, ptr %data, i32 0, i32 4, i32 %indvars.iv
  %33 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx81, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool83.not = icmp sgt i32 %35, -1
  br i1 %tobool83.not, label %do.end151, label %if.then84

if.then84:                                        ; preds = %for.body
  %inc = add i8 %count.0253, 1
  %and101 = lshr i32 %35, 14
  %conv103 = and i32 %and101, 1023
  %arrayidx110 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 %conv103
  %36 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx110, align 4
  %call = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool112.not = icmp eq i32 %call, 0
  br i1 %tobool112.not, label %land.lhs.true, label %if.then84.do.end120_crit_edge

if.then84.do.end120_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end120

land.lhs.true:                                    ; preds = %if.then84
  %call113 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true.do.end120_crit_edge, label %land.lhs.true115

land.lhs.true.do.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end120

land.lhs.true115:                                 ; preds = %land.lhs.true
  %.b239240 = load i1, ptr @mt7915_mac_tx_free.__warned, align 1
  br i1 %.b239240, label %land.lhs.true115.do.end120_crit_edge, label %if.then117

land.lhs.true115.do.end120_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end120

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7915_mac_tx_free.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1420, ptr noundef nonnull @.str.1) #7
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %land.lhs.true115.do.end120_crit_edge, %land.lhs.true.do.end120_crit_edge, %if.then84.do.end120_crit_edge
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %do.end120.cleanup159_crit_edge, label %lor.lhs.false.i

do.end120.cleanup159_crit_edge:                   ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

lor.lhs.false.i:                                  ; preds = %do.end120
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  %add.ptr.i = getelementptr i8, ptr %37, i32 -268
  %tobool123.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool123.not
  br i1 %or.cond, label %lor.lhs.false.i.cleanup159_crit_edge, label %if.end125

lor.lhs.false.i.cleanup159_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end125:                                        ; preds = %lor.lhs.false.i
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %poll_list = getelementptr inbounds %struct.mt7915_sta, ptr %37, i32 0, i32 2
  %39 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %40, %poll_list
  br i1 %cmp.i.not, label %if.then130, label %if.end125.if.end132_crit_edge

if.end125.if.end132_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then130:                                       ; preds = %if.end125
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %poll_list, ptr noundef %42, ptr noundef %sta_poll_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then130.if.end132_crit_edge

if.then130.if.end132_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.end.i.i:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %poll_list, ptr %prev.i, align 4
  %44 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %sta_poll_list, ptr %poll_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mt7915_sta, ptr %37, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %poll_list, ptr %42, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.end.i.i, %if.then130.if.end132_crit_edge, %if.end125.if.end132_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  br label %cleanup159

do.end151:                                        ; preds = %for.body
  %and153 = lshr i32 %35, 16
  %call155 = call ptr @mt76_token_release(ptr noundef %dev, i32 noundef %and153, ptr noundef nonnull %wake) #7
  %tobool156.not = icmp eq ptr %call155, null
  br i1 %tobool156.not, label %do.end151.cleanup159_crit_edge, label %if.end158

do.end151.cleanup159_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end158:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mt7915_txwi_free(ptr noundef %dev, ptr noundef nonnull %call155, ptr noundef %sta.0255, ptr noundef nonnull %free_list)
  br label %cleanup159

cleanup159:                                       ; preds = %if.end158, %do.end151.cleanup159_crit_edge, %if.end132, %lor.lhs.false.i.cleanup159_crit_edge, %do.end120.cleanup159_crit_edge
  %count.1 = phi i8 [ %count.0253, %if.end158 ], [ %inc, %if.end132 ], [ %count.0253, %do.end151.cleanup159_crit_edge ], [ %inc, %do.end120.cleanup159_crit_edge ], [ %inc, %lor.lhs.false.i.cleanup159_crit_edge ]
  %sta.1 = phi ptr [ %sta.0255, %if.end158 ], [ %add.ptr.i, %if.end132 ], [ %sta.0255, %do.end151.cleanup159_crit_edge ], [ null, %do.end120.cleanup159_crit_edge ], [ null, %lor.lhs.false.i.cleanup159_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %47 = zext i8 %count.1 to i32
  %cmp76 = icmp ult i32 %indvars.iv.next, %47
  br i1 %cmp76, label %cleanup159.for.body_crit_edge, label %cleanup159.for.end_crit_edge

cleanup159.for.end_crit_edge:                     ; preds = %cleanup159
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup159.for.body_crit_edge:                    ; preds = %cleanup159
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup159.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sta_poll_list.i) #7
  %48 = getelementptr inbounds %struct.list_head, ptr %sta_poll_list.i, i32 0, i32 1
  %49 = ptrtoint ptr %sta_poll_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sta_poll_list.i, ptr %sta_poll_list.i, align 4
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %sta_poll_list.i, ptr %48, align 4
  %sta_poll_lock.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 15
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #7
  %sta_poll_list1.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13
  %51 = ptrtoint ptr %sta_poll_list1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %sta_poll_list1.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %52, %sta_poll_list1.i
  br i1 %cmp.i.not.i.i, label %for.end.list_splice_init.exit.i_crit_edge, label %if.then.i175.i

for.end.list_splice_init.exit.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i

if.then.i175.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %sta_poll_list.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sta_poll_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13, i32 1
  %55 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sta_poll_list.i, ptr %prev3.i.i.i, align 4
  store ptr %52, ptr %sta_poll_list.i, align 4
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %54, ptr %56, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev6.i.i.i, align 4
  %60 = ptrtoint ptr %sta_poll_list1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %sta_poll_list1.i, ptr %sta_poll_list1.i, align 4
  store ptr %sta_poll_list1.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i175.i, %for.end.list_splice_init.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #7
  %61 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %64, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i243 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i243, label %list_splice_init.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

list_splice_init.exit.i.rcu_read_lock.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %list_splice_init.exit.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %list_splice_init.exit.i.rcu_read_lock.exit.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #7
  %65 = ptrtoint ptr %sta_poll_list.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %sta_poll_list.i, align 4
  %cmp.i.not216.i = icmp eq ptr %66, %sta_poll_list.i
  br i1 %cmp.i.not216.i, label %rcu_read_lock.exit.i.while.end.i_crit_edge, label %if.end.lr.ph.i

rcu_read_lock.exit.i.while.end.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end.lr.ph.i:                                   ; preds = %rcu_read_lock.exit.i
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup110.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %67 = phi ptr [ %66, %if.end.lr.ph.i ], [ %173, %cleanup110.i.if.end.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %67) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %67, ptr %67, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %67, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #7
  %idx7.i = getelementptr i8, ptr %67, i32 -190
  %76 = ptrtoint ptr %idx7.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %idx7.i, align 2
  %conv.i176.i = zext i16 %77 to i32
  %78 = lshr i32 %conv.i176.i, 7
  %79 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr.i.i, align 4
  %and13.i.i = and i32 %78, 7
  call void %82(ptr noundef %dev, i32 noundef 212992, i32 noundef %and13.i.i) #7
  %shl33.i.i = shl nuw nsw i32 %conv.i176.i, 8
  %and34.i.i = and i32 %shl33.i.i, 32512
  %or56.i.i = or i32 %and34.i.i, 229456
  %airtime_ac.i = getelementptr i8, ptr %67, i32 16
  %83 = ptrtoint ptr %airtime_ac.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %airtime_ac.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %67, i32 32
  %85 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx10.i, align 4
  %87 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %call11.i = call i32 %90(ptr noundef %dev, i32 noundef %or56.i.i) #7
  %91 = ptrtoint ptr %airtime_ac.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call11.i, ptr %airtime_ac.i, align 4
  %92 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %add16.i = or i32 %and34.i.i, 229460
  %call17.i = call i32 %95(ptr noundef %dev, i32 noundef %add16.i) #7
  %96 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call17.i, ptr %arrayidx10.i, align 4
  %97 = ptrtoint ptr %airtime_ac.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %airtime_ac.i, align 4
  %sub.i = sub i32 %98, %84
  %sub27.i = sub i32 %call17.i, %86
  %or.i = or i32 %86, %84
  %and.i = and i32 %or.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp ne i32 %and.i, 0
  %add32.i = or i32 %and34.i.i, 229464
  %arrayidx.1.i = getelementptr i8, ptr %67, i32 20
  %99 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx10.1.i = getelementptr i8, ptr %67, i32 36
  %101 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx10.1.i, align 4
  %103 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %call11.1.i = call i32 %106(ptr noundef %dev, i32 noundef %add32.i) #7
  %107 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call11.1.i, ptr %arrayidx.1.i, align 4
  %108 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %add16.1.i = or i32 %and34.i.i, 229468
  %call17.1.i = call i32 %111(ptr noundef %dev, i32 noundef %add16.1.i) #7
  %112 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call17.1.i, ptr %arrayidx10.1.i, align 4
  %113 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.1.i, align 4
  %sub.1.i = sub i32 %114, %100
  %sub27.1.i = sub i32 %call17.1.i, %102
  %or.1.i = or i32 %102, %100
  %and.1.i = and i32 %or.1.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool29.not.1.i = icmp ne i32 %and.1.i, 0
  %add32.1.i = or i32 %and34.i.i, 229472
  %arrayidx.2.i = getelementptr i8, ptr %67, i32 24
  %115 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx10.2.i = getelementptr i8, ptr %67, i32 40
  %117 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx10.2.i, align 4
  %119 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %call11.2.i = call i32 %122(ptr noundef %dev, i32 noundef %add32.1.i) #7
  %123 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call11.2.i, ptr %arrayidx.2.i, align 4
  %124 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %add16.2.i = or i32 %and34.i.i, 229476
  %call17.2.i = call i32 %127(ptr noundef %dev, i32 noundef %add16.2.i) #7
  %128 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call17.2.i, ptr %arrayidx10.2.i, align 4
  %129 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.2.i, align 4
  %sub.2.i = sub i32 %130, %116
  %sub27.2.i = sub i32 %call17.2.i, %118
  %or.2.i = or i32 %118, %116
  %and.2.i = and i32 %or.2.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool29.not.2.i = icmp ne i32 %and.2.i, 0
  %add32.2.i = or i32 %and34.i.i, 229480
  %arrayidx.3.i = getelementptr i8, ptr %67, i32 28
  %131 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx10.3.i = getelementptr i8, ptr %67, i32 44
  %133 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx10.3.i, align 4
  %135 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %call11.3.i = call i32 %138(ptr noundef %dev, i32 noundef %add32.2.i) #7
  %139 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call11.3.i, ptr %arrayidx.3.i, align 4
  %140 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bus.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %add16.3.i = or i32 %and34.i.i, 229484
  %call17.3.i = call i32 %143(ptr noundef %dev, i32 noundef %add16.3.i) #7
  %144 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call17.3.i, ptr %arrayidx10.3.i, align 4
  %145 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.3.i, align 4
  %sub.3.i = sub i32 %146, %132
  %sub27.3.i = sub i32 %call17.3.i, %134
  %or.3.i = or i32 %134, %132
  %and.3.i = and i32 %or.3.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool29.not.3.i = icmp ne i32 %and.3.i, 0
  %147 = select i1 %tobool29.not.3.i, i1 true, i1 %tobool29.not.2.i
  %148 = select i1 %147, i1 true, i1 %tobool29.not.1.i
  %spec.select.3.i = select i1 %148, i1 true, i1 %tobool29.not.i
  br i1 %spec.select.3.i, label %mt7915_mac_wtbl_update.exit.i, label %list_del_init.exit.i.if.end37.i_crit_edge

list_del_init.exit.i.if.end37.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

mt7915_mac_wtbl_update.exit.i:                    ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rmw.i.i, align 4
  %and9.i.i = and i32 %conv.i176.i, 1023
  %or.i182.i = or i32 %and9.i.i, 4096
  %call.i183.i = call i32 %152(ptr noundef %dev, i32 noundef 213040, i32 noundef 1023, i32 noundef %or.i182.i) #7
  %call10.i.i = call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 213040, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #7
  %153 = call ptr @memset(ptr %airtime_ac.i, i32 0, i32 32)
  br label %if.end37.i

if.end37.i:                                       ; preds = %mt7915_mac_wtbl_update.exit.i, %list_del_init.exit.i.if.end37.i_crit_edge
  %sta39.i = getelementptr i8, ptr %67, i32 -186
  %154 = ptrtoint ptr %sta39.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load.i244 = load i8, ptr %sta39.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i244)
  %tobool40.not.i = icmp sgt i8 %bf.load.i244, -1
  br i1 %tobool40.not.i, label %if.end37.i.cleanup110.i_crit_edge, label %if.end42.i

if.end37.i.cleanup110.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110.i

if.end42.i:                                       ; preds = %if.end37.i
  %add.ptr45.i = getelementptr i8, ptr %67, i32 -548
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %132)
  %tobool56.not.i = icmp eq i32 %146, %132
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.3.i, i32 %134)
  %tobool57.not.i = icmp eq i32 %call17.3.i, %134
  %or.cond.i = select i1 %tobool56.not.i, i1 %tobool57.not.i, i1 false
  br i1 %or.cond.i, label %if.end42.i.cleanup.i_crit_edge, label %if.end59.i

if.end42.i.cleanup.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end59.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr45.i, i8 noundef zeroext 6, i32 noundef %sub.3.i, i32 noundef %sub27.3.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end59.i, %if.end42.i.cleanup.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %116)
  %tobool56.not.1.i = icmp eq i32 %130, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.2.i, i32 %118)
  %tobool57.not.1.i = icmp eq i32 %call17.2.i, %118
  %or.cond.1.i = select i1 %tobool56.not.1.i, i1 %tobool57.not.1.i, i1 false
  br i1 %or.cond.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end59.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end59.1.i:                                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr45.i, i8 noundef zeroext 4, i32 noundef %sub.2.i, i32 noundef %sub27.2.i) #7
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end59.1.i, %cleanup.i.cleanup.1.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %100)
  %tobool56.not.2.i = icmp eq i32 %114, %100
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.1.i, i32 %102)
  %tobool57.not.2.i = icmp eq i32 %call17.1.i, %102
  %or.cond.2.i = select i1 %tobool56.not.2.i, i1 %tobool57.not.2.i, i1 false
  br i1 %or.cond.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end59.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2.i

if.end59.2.i:                                     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr45.i, i8 noundef zeroext 0, i32 noundef %sub.1.i, i32 noundef %sub27.1.i) #7
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end59.2.i, %cleanup.1.i.cleanup.2.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %84)
  %tobool56.not.3.i = icmp eq i32 %98, %84
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i, i32 %86)
  %tobool57.not.3.i = icmp eq i32 %call17.i, %86
  %or.cond.3.i = select i1 %tobool56.not.3.i, i1 %tobool57.not.3.i, i1 false
  br i1 %or.cond.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %if.end59.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3.i

if.end59.3.i:                                     ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr45.i, i8 noundef zeroext 1, i32 noundef %sub.i, i32 noundef %sub27.i) #7
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end59.3.i, %cleanup.2.i.cleanup.3.i_crit_edge
  %rate67.i = getelementptr i8, ptr %67, i32 -200
  %155 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bus.i.i, align 4
  %wr.i188.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %wr.i188.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wr.i188.i, align 4
  call void %158(ptr noundef %dev, i32 noundef 212992, i32 noundef %and13.i.i) #7
  %or56.i197.i = or i32 %and34.i.i, 229404
  %159 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %call71.i = call i32 %162(ptr noundef %dev, i32 noundef %or56.i197.i) #7
  %bw72.i = getelementptr i8, ptr %67, i32 -195
  %163 = ptrtoint ptr %bw72.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %bw72.i, align 1
  %switch.tableidx = add i8 %164, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %165 = icmp ult i8 %switch.tableidx, 3
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %bw.0.i = select i1 %165, i32 %switch.offset, i32 0
  %166 = ptrtoint ptr %rate67.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %rate67.i, align 2
  %conv76.i = zext i8 %167 to i32
  %and77.i = and i32 %conv76.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.else.i, label %if.then79.i

if.then79.i:                                      ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %168 = shl nuw nsw i32 %bw.0.i, 1
  %conv82.i = or i32 %168, 24
  %shl.i = shl i32 3, %conv82.i
  %and84.i = and i32 %shl.i, %call71.i
  %shr.i = lshr i32 %and84.i, %conv82.i
  %conv86.i = trunc i32 %shr.i to i8
  %he_gi.i = getelementptr i8, ptr %67, i32 -194
  %169 = ptrtoint ptr %he_gi.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv86.i, ptr %he_gi.i, align 2
  br label %cleanup110.i

if.else.i:                                        ; preds = %cleanup.3.i
  %and89.i = and i32 %conv76.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.else.i.cleanup110.i_crit_edge, label %if.then91.i

if.else.i.cleanup110.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110.i

if.then91.i:                                      ; preds = %if.else.i
  %add93.i = or i32 %bw.0.i, 12
  %shl94.i = shl nuw i32 1, %add93.i
  %and95.i = and i32 %shl94.i, %call71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.else102.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  %or100.i = or i8 %167, 4
  %170 = ptrtoint ptr %rate67.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %or100.i, ptr %rate67.i, align 2
  br label %cleanup110.i

if.else102.i:                                     ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  %and105.i = and i8 %167, -5
  %171 = ptrtoint ptr %rate67.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %and105.i, ptr %rate67.i, align 2
  br label %cleanup110.i

cleanup110.i:                                     ; preds = %if.else102.i, %if.then97.i, %if.else.i.cleanup110.i_crit_edge, %if.then79.i, %if.end37.i.cleanup110.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #7
  %172 = ptrtoint ptr %sta_poll_list.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile ptr, ptr %sta_poll_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %173, %sta_poll_list.i
  br i1 %cmp.i.not.i, label %cleanup110.i.while.end.i_crit_edge, label %cleanup110.i.if.end.i_crit_edge

cleanup110.i.if.end.i_crit_edge:                  ; preds = %cleanup110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup110.i.while.end.i_crit_edge:               ; preds = %cleanup110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup110.i.while.end.i_crit_edge, %rcu_read_lock.exit.i.while.end.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #7
  %call.i199.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i199.i, label %while.end.i.mt7915_mac_sta_poll.exit_crit_edge, label %land.lhs.true.i202.i

while.end.i.mt7915_mac_sta_poll.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_sta_poll.exit

land.lhs.true.i202.i:                             ; preds = %while.end.i
  %call1.i200.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200.i)
  %tobool.not.i201.i = icmp eq i32 %call1.i200.i, 0
  br i1 %tobool.not.i201.i, label %land.lhs.true.i202.i.mt7915_mac_sta_poll.exit_crit_edge, label %land.lhs.true2.i204.i

land.lhs.true.i202.i.mt7915_mac_sta_poll.exit_crit_edge: ; preds = %land.lhs.true.i202.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_sta_poll.exit

land.lhs.true2.i204.i:                            ; preds = %land.lhs.true.i202.i
  %.b4.i203.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i203.i, label %land.lhs.true2.i204.i.mt7915_mac_sta_poll.exit_crit_edge, label %if.then.i205.i

land.lhs.true2.i204.i.mt7915_mac_sta_poll.exit_crit_edge: ; preds = %land.lhs.true2.i204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_sta_poll.exit

if.then.i205.i:                                   ; preds = %land.lhs.true2.i204.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %mt7915_mac_sta_poll.exit

mt7915_mac_sta_poll.exit:                         ; preds = %if.then.i205.i, %land.lhs.true2.i204.i.mt7915_mac_sta_poll.exit_crit_edge, %land.lhs.true.i202.i.mt7915_mac_sta_poll.exit_crit_edge, %while.end.i.mt7915_mac_sta_poll.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %174 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i206.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i.i.i206.i to ptr
  %preempt_count.i.i.i.i207.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %preempt_count.i.i.i.i207.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %preempt_count.i.i.i.i207.i, align 4
  %sub.i.i.i.i = add i32 %177, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i207.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sta_poll_list.i) #7
  %178 = ptrtoint ptr %wake to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %wake, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool162.not = icmp eq i8 %179, 0
  br i1 %tobool162.not, label %mt7915_mac_sta_poll.exit.if.end164_crit_edge, label %if.then163

mt7915_mac_sta_poll.exit.if.end164_crit_edge:     ; preds = %mt7915_mac_sta_poll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then163:                                       ; preds = %mt7915_mac_sta_poll.exit
  call void @__sanitizer_cov_trace_pc() #9
  %token_lock.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 28
  call void @_raw_spin_lock_bh(ptr noundef %token_lock.i) #7
  call void @__mt76_set_tx_blocked(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @_raw_spin_unlock_bh(ptr noundef %token_lock.i) #7
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %mt7915_mac_sta_poll.exit.if.end164_crit_edge
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26
  %180 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i245 = icmp eq ptr %181, null
  br i1 %tobool.not.i245, label %if.end164.mt76_worker_schedule.exit_crit_edge, label %if.end.i247

if.end164.mt76_worker_schedule.exit_crit_edge:    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_schedule.exit

if.end.i247:                                      ; preds = %if.end164
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 2
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i246 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i246, label %land.lhs.true.i, label %if.end.i247.mt76_worker_schedule.exit_crit_edge

if.end.i247.mt76_worker_schedule.exit_crit_edge:  ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_schedule.exit

land.lhs.true.i:                                  ; preds = %if.end.i247
  %182 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %state.i, align 4
  %184 = and i32 %183, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool4.not.i = icmp eq i32 %184, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge

land.lhs.true.i.mt76_worker_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_schedule.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tx_worker, align 4
  %call7.i = call i32 @wake_up_process(ptr noundef %186) #7
  br label %mt76_worker_schedule.exit

mt76_worker_schedule.exit:                        ; preds = %if.then5.i, %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge, %if.end.i247.mt76_worker_schedule.exit_crit_edge, %if.end164.mt76_worker_schedule.exit_crit_edge
  %187 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %free_list, align 4
  %cmp174.not256 = icmp eq ptr %188, %free_list
  br i1 %cmp174.not256, label %mt76_worker_schedule.exit.cleanup185_crit_edge, label %mt76_worker_schedule.exit.for.body178_crit_edge

mt76_worker_schedule.exit.for.body178_crit_edge:  ; preds = %mt76_worker_schedule.exit
  br label %for.body178

mt76_worker_schedule.exit.cleanup185_crit_edge:   ; preds = %mt76_worker_schedule.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup185

for.body178:                                      ; preds = %skb_list_del_init.exit.for.body178_crit_edge, %mt76_worker_schedule.exit.for.body178_crit_edge
  %skb.0257 = phi ptr [ %tmp.0, %skb_list_del_init.exit.for.body178_crit_edge ], [ %188, %mt76_worker_schedule.exit.for.body178_crit_edge ]
  %189 = ptrtoint ptr %skb.0257 to i32
  call void @__asan_load4_noabort(i32 %189)
  %tmp.0 = load ptr, ptr %skb.0257, align 8
  %call.i.i248 = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.0257) #7
  br i1 %call.i.i248, label %if.end.i.i249, label %for.body178.skb_list_del_init.exit_crit_edge

for.body178.skb_list_del_init.exit_crit_edge:     ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_list_del_init.exit

if.end.i.i249:                                    ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %skb.0257, i32 0, i32 1
  %190 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %prev.i.i, align 4
  %192 = ptrtoint ptr %skb.0257 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %skb.0257, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %191, ptr %prev1.i.i.i, align 4
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %193, ptr %191, align 4
  br label %skb_list_del_init.exit

skb_list_del_init.exit:                           ; preds = %if.end.i.i249, %for.body178.skb_list_del_init.exit_crit_edge
  %196 = ptrtoint ptr %skb.0257 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %skb.0257, align 8
  call void @napi_consume_skb(ptr noundef %skb.0257, i32 noundef 1) #7
  %cmp174.not = icmp eq ptr %tmp.0, %free_list
  br i1 %cmp174.not, label %skb_list_del_init.exit.cleanup185_crit_edge, label %skb_list_del_init.exit.for.body178_crit_edge

skb_list_del_init.exit.for.body178_crit_edge:     ; preds = %skb_list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body178

skb_list_del_init.exit.cleanup185_crit_edge:      ; preds = %skb_list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup185

cleanup185:                                       ; preds = %skb_list_del_init.exit.cleanup185_crit_edge, %mt76_worker_schedule.exit.cleanup185_crit_edge, %if.then37, %land.rhs.cleanup185_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wake) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_list) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_mac_add_txs(ptr noundef %dev, ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = and i32 %1, 32769
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %3)
  %cmp = icmp ugt i32 %3, 8388608
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx32 = getelementptr i32, ptr %data, i32 3
  %4 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx32, align 4
  %conv52 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv52)
  %cmp53 = icmp ult i32 %conv52, 2
  br i1 %cmp53, label %if.end.cleanup_crit_edge, label %if.end56

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end
  %arrayidx13 = getelementptr i32, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 4
  %8 = and i32 %7, 65283
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 18808832, i32 %9)
  %cmp58 = icmp ugt i32 %9, 18808832
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %shr31 = lshr exact i32 %9, 16
  %10 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end61.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end61.rcu_read_lock.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end61
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end61.rcu_read_lock.exit_crit_edge
  %arrayidx67 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 %shr31
  %14 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx67, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end76_crit_edge

rcu_read_lock.exit.do.end76_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true.do.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true
  %.b114 = load i1, ptr @mt7915_mac_add_txs.__warned, align 1
  br i1 %.b114, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7915_mac_add_txs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1602, ptr noundef nonnull @.str.1) #7
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true.do.end76_crit_edge, %rcu_read_lock.exit.do.end76_crit_edge
  %tobool78.not = icmp eq ptr %15, null
  br i1 %tobool78.not, label %do.end76.out_crit_edge, label %if.end80

do.end76.out_crit_edge:                           ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end80:                                         ; preds = %do.end76
  %stats = getelementptr inbounds %struct.mt7915_sta, ptr %15, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #7
  %16 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @mt76_tx_status_lock(ptr noundef %dev, ptr noundef nonnull %list.i) #7
  %call.i115 = call ptr @mt76_tx_status_skb_get(ptr noundef %dev, ptr noundef nonnull %15, i32 noundef %conv52, ptr noundef nonnull %list.i) #7
  %tobool.not.i116 = icmp eq ptr %call.i115, null
  br i1 %tobool.not.i116, label %if.end80.mt7915_mac_add_txs_skb.exit_crit_edge, label %if.end.i

if.end80.mt7915_mac_add_txs_skb.exit_crit_edge:   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_add_txs_skb.exit

if.end.i:                                         ; preds = %if.end80
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #7
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 3
  %and.i = and i32 %19, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %21, 512
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %22 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 3, i32 8
  %ampdu_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 3, i32 25
  %23 = ptrtoint ptr %ampdu_len.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ampdu_len.i, align 1
  %24 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i.i, align 8
  %and6.i = lshr i32 %25, 9
  %26 = trunc i32 %and6.i to i8
  %27 = and i8 %26, 1
  %ampdu_ack_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 3, i32 24
  %28 = ptrtoint ptr %ampdu_ack_len.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ampdu_ack_len.i, align 8
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %22, align 8
  %30 = trunc i32 %19 to i8
  %conv41.i = and i8 %30, 63
  %and58.i = lshr i32 %19, 10
  %31 = trunc i32 %and58.i to i8
  %32 = and i8 %31, 7
  %conv60.i = add nuw nsw i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %cmp.i = icmp ult i8 %32, 4
  br i1 %cmp.i, label %if.then64.i, label %if.end4.i.if.end69.i_crit_edge

if.end4.i.if.end69.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.then64.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = zext i8 %32 to i32
  %arrayidx68.i = getelementptr %struct.mt7915_sta, ptr %15, i32 0, i32 8, i32 2, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx68.i, align 8
  %inc.i = add i64 %34, 1
  store i64 %inc.i, ptr %arrayidx68.i, align 8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i, %if.end4.i.if.end69.i_crit_edge
  %conv71.i = zext i8 %conv41.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv41.i)
  %cmp72.i = icmp ult i8 %conv41.i, 16
  br i1 %cmp72.i, label %if.then74.i, label %if.end69.i.do.end93.i_crit_edge

if.end69.i.do.end93.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93.i

if.then74.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx76.i = getelementptr %struct.mt7915_sta, ptr %15, i32 0, i32 8, i32 3, i32 %conv71.i
  %35 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx76.i, align 8
  %inc77.i = add i64 %36, 1
  store i64 %inc77.i, ptr %arrayidx76.i, align 8
  br label %do.end93.i

do.end93.i:                                       ; preds = %if.then74.i, %if.end69.i.do.end93.i_crit_edge
  %and95.i = lshr i32 %19, 6
  %shr96.i = and i32 %and95.i, 15
  %37 = zext i32 %shr96.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr96.i, label %do.end93.i.out.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %do.end93.i.sw.bb97.i_crit_edge
    i32 2, label %do.end93.i.sw.bb120.i_crit_edge
    i32 3, label %do.end93.i.sw.bb120.i_crit_edge128
    i32 4, label %sw.bb146.i
    i32 8, label %do.end93.i.sw.bb154.i_crit_edge
    i32 9, label %do.end93.i.sw.bb154.i_crit_edge129
    i32 10, label %do.end93.i.sw.bb154.i_crit_edge130
    i32 11, label %do.end93.i.sw.bb154.i_crit_edge131
  ]

do.end93.i.sw.bb154.i_crit_edge131:               ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb154.i

do.end93.i.sw.bb154.i_crit_edge130:               ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb154.i

do.end93.i.sw.bb154.i_crit_edge129:               ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb154.i

do.end93.i.sw.bb154.i_crit_edge:                  ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb154.i

do.end93.i.sw.bb120.i_crit_edge128:               ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb120.i

do.end93.i.sw.bb120.i_crit_edge:                  ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb120.i

do.end93.i.sw.bb97.i_crit_edge:                   ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb97.i

do.end93.i.out.i_crit_edge:                       ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb.i:                                          ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb97.i

sw.bb97.i:                                        ; preds = %sw.bb.i, %do.end93.i.sw.bb97.i_crit_edge
  %cck.0.off0.i = phi i1 [ false, %do.end93.i.sw.bb97.i_crit_edge ], [ true, %sw.bb.i ]
  %ext_phy.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 9
  %38 = ptrtoint ptr %ext_phy.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %ext_phy.i, align 2
  %39 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool99.not.i = icmp eq i8 %39, 0
  br i1 %tobool99.not.i, label %sw.bb97.i.if.end103.i_crit_edge, label %land.lhs.true.i117

sw.bb97.i.if.end103.i_crit_edge:                  ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.i

land.lhs.true.i117:                               ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %40 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy2.i, align 8
  %tobool100.not.i = icmp eq ptr %41, null
  %spec.select.i = select i1 %tobool100.not.i, ptr %dev, ptr %41
  br label %if.end103.i

if.end103.i:                                      ; preds = %land.lhs.true.i117, %sw.bb97.i.if.end103.i_crit_edge
  %mphy.0.i = phi ptr [ %dev, %sw.bb97.i.if.end103.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i117 ]
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 5
  %42 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chandef.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp104.i = icmp eq i32 %45, 1
  %sband_5g.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 11
  %sband_2g.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 10
  %sband.0.i = select i1 %cmp104.i, ptr %sband_5g.i, ptr %sband_2g.i
  %dev110.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 1
  %46 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev110.i, align 4
  %call114.i = call i32 @mt76_get_rate(ptr noundef %47, ptr noundef %sband.0.i, i32 noundef %conv71.i, i1 noundef zeroext %cck.0.off0.i) #7
  %conv115.i = trunc i32 %call114.i to i8
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bitrates.i, align 4
  %idxprom118.i = and i32 %call114.i, 255
  %bitrate.i = getelementptr %struct.ieee80211_rate, ptr %49, i32 %idxprom118.i, i32 1
  %50 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bitrate.i, align 4
  br label %sw.epilog.i

sw.bb120.i:                                       ; preds = %do.end93.i.sw.bb120.i_crit_edge, %do.end93.i.sw.bb120.i_crit_edge128
  %mul.i = shl nuw nsw i8 %32, 3
  %add126.i = add nuw nsw i8 %mul.i, %conv41.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %add126.i)
  %cmp130.i = icmp ugt i8 %add126.i, 31
  br i1 %cmp130.i, label %sw.bb120.i.out.i_crit_edge, label %if.end133.i

sw.bb120.i.out.i_crit_edge:                       ; preds = %sw.bb120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end133.i:                                      ; preds = %sw.bb120.i
  call void @__sanitizer_cov_trace_pc() #9
  %rate135.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5
  %52 = ptrtoint ptr %rate135.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rate135.i, align 4
  %54 = and i8 %53, 4
  %55 = or i8 %54, 1
  br label %sw.epilog.i

sw.bb146.i:                                       ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv41.i)
  %cmp149.i = icmp ugt i8 %conv41.i, 9
  br i1 %cmp149.i, label %sw.bb146.i.out.i_crit_edge, label %sw.bb146.i.sw.epilog.i_crit_edge

sw.bb146.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb146.i.out.i_crit_edge:                       ; preds = %sw.bb146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb154.i:                                       ; preds = %do.end93.i.sw.bb154.i_crit_edge, %do.end93.i.sw.bb154.i_crit_edge129, %do.end93.i.sw.bb154.i_crit_edge130, %do.end93.i.sw.bb154.i_crit_edge131
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv41.i)
  %cmp157.i = icmp ugt i8 %conv41.i, 11
  br i1 %cmp157.i, label %sw.bb154.i.out.i_crit_edge, label %if.end160.i

sw.bb154.i.out.i_crit_edge:                       ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end160.i:                                      ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #9
  %he_gi.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 5
  %56 = ptrtoint ptr %he_gi.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %he_gi.i, align 2
  %58 = lshr i8 %30, 4
  %conv181.i = and i8 %58, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end160.i, %sw.bb146.i.sw.epilog.i_crit_edge, %if.end133.i, %if.end103.i
  %rate.sroa.20.0.i = phi i16 [ 0, %if.end160.i ], [ %51, %if.end103.i ], [ 0, %if.end133.i ], [ 0, %sw.bb146.i.sw.epilog.i_crit_edge ]
  %rate.sroa.29.0.i = phi i8 [ %57, %if.end160.i ], [ 0, %if.end103.i ], [ 0, %if.end133.i ], [ 0, %sw.bb146.i.sw.epilog.i_crit_edge ]
  %rate.sroa.30.0.i = phi i8 [ %conv181.i, %if.end160.i ], [ 0, %if.end103.i ], [ 0, %if.end133.i ], [ 0, %sw.bb146.i.sw.epilog.i_crit_edge ]
  %rate.sroa.9.0.i = phi i8 [ %conv41.i, %if.end160.i ], [ %conv115.i, %if.end103.i ], [ %add126.i, %if.end133.i ], [ %conv41.i, %sw.bb146.i.sw.epilog.i_crit_edge ]
  %rate.sroa.0.0.i = phi i8 [ 16, %if.end160.i ], [ 0, %if.end103.i ], [ %55, %if.end133.i ], [ 2, %sw.bb146.i.sw.epilog.i_crit_edge ]
  %arrayidx183.i = getelementptr [12 x i64], ptr %stats, i32 0, i32 %shr96.i
  %59 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx183.i, align 8
  %inc184.i = add i64 %60, 1
  store i64 %inc184.i, ptr %arrayidx183.i, align 8
  %and201.i = lshr i32 %19, 29
  %shr202.i = and i32 %and201.i, 3
  %61 = zext i32 %shr202.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr202.i, label %sw.default216.i [
    i32 3, label %sw.bb203.i
    i32 2, label %sw.bb206.i
    i32 1, label %sw.bb211.i
  ]

sw.bb203.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx204.i = getelementptr %struct.mt7915_sta, ptr %15, i32 0, i32 8, i32 1, i32 3
  br label %sw.epilog221.i

sw.bb206.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx209.i = getelementptr %struct.mt7915_sta, ptr %15, i32 0, i32 8, i32 1, i32 2
  br label %sw.epilog221.i

sw.bb211.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx214.i = getelementptr %struct.mt7915_sta, ptr %15, i32 0, i32 8, i32 1, i32 1
  br label %sw.epilog221.i

sw.default216.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_bw218.i = getelementptr inbounds %struct.mt7915_sta, ptr %15, i32 0, i32 8, i32 1
  br label %sw.epilog221.i

sw.epilog221.i:                                   ; preds = %sw.default216.i, %sw.bb211.i, %sw.bb206.i, %sw.bb203.i
  %tx_bw218.sink2.i = phi ptr [ %tx_bw218.i, %sw.default216.i ], [ %arrayidx214.i, %sw.bb211.i ], [ %arrayidx209.i, %sw.bb206.i ], [ %arrayidx204.i, %sw.bb203.i ]
  %rate.sroa.25.0.i = phi i8 [ 0, %sw.default216.i ], [ 3, %sw.bb211.i ], [ 4, %sw.bb206.i ], [ 5, %sw.bb203.i ]
  %62 = ptrtoint ptr %tx_bw218.sink2.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_bw218.sink2.i, align 8
  %inc220.i = add i64 %63, 1
  store i64 %inc220.i, ptr %tx_bw218.sink2.i, align 8
  %rate222.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5
  %64 = ptrtoint ptr %rate222.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %rate.sroa.0.0.i, ptr %rate222.i, align 4
  %rate.sroa.9.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %rate.sroa.9.0.rate222.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %rate.sroa.9.0.i, ptr %rate.sroa.9.0.rate222.sroa_idx.i, align 1
  %rate.sroa.20.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %rate.sroa.20.0.rate222.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %rate.sroa.20.0.i, ptr %rate.sroa.20.0.rate222.sroa_idx.i, align 2
  %rate.sroa.21.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 3
  %67 = ptrtoint ptr %rate.sroa.21.0.rate222.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv60.i, ptr %rate.sroa.21.0.rate222.sroa_idx.i, align 4
  %rate.sroa.25.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 4
  %68 = ptrtoint ptr %rate.sroa.25.0.rate222.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %rate.sroa.25.0.i, ptr %rate.sroa.25.0.rate222.sroa_idx.i, align 1
  %rate.sroa.29.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 5
  %69 = ptrtoint ptr %rate.sroa.29.0.rate222.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %rate.sroa.29.0.i, ptr %rate.sroa.29.0.rate222.sroa_idx.i, align 2
  %rate.sroa.30.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 6
  %70 = ptrtoint ptr %rate.sroa.30.0.rate222.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %rate.sroa.30.0.i, ptr %rate.sroa.30.0.rate222.sroa_idx.i, align 1
  %rate.sroa.31.0.rate222.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 7
  %71 = ptrtoint ptr %rate.sroa.31.0.rate222.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %rate.sroa.31.0.rate222.sroa_idx.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog221.i, %sw.bb154.i.out.i_crit_edge, %sw.bb146.i.out.i_crit_edge, %sw.bb120.i.out.i_crit_edge, %do.end93.i.out.i_crit_edge
  call void @mt76_tx_status_skb_done(ptr noundef %dev, ptr noundef nonnull %call.i115, ptr noundef nonnull %list.i) #7
  br label %mt7915_mac_add_txs_skb.exit

mt7915_mac_add_txs_skb.exit:                      ; preds = %out.i, %if.end80.mt7915_mac_add_txs_skb.exit_crit_edge
  call void @mt76_tx_status_unlock(ptr noundef %dev, ptr noundef nonnull %list.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #7
  %sta = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 9
  %72 = ptrtoint ptr %sta to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %sta, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool84.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool84.not, label %mt7915_mac_add_txs_skb.exit.out_crit_edge, label %if.end86

mt7915_mac_add_txs_skb.exit.out_crit_edge:        ; preds = %mt7915_mac_add_txs_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end86:                                         ; preds = %mt7915_mac_add_txs_skb.exit
  %sta_poll_lock = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 15
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %poll_list = getelementptr inbounds %struct.mt7915_sta, ptr %15, i32 0, i32 2
  %73 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i118.not = icmp eq ptr %74, %poll_list
  br i1 %cmp.i118.not, label %if.then89, label %if.end86.if.end91_crit_edge

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then89:                                        ; preds = %if.end86
  %sta_poll_list = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13, i32 1
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %poll_list, ptr noundef %76, ptr noundef %sta_poll_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then89.if.end91_crit_edge

if.then89.if.end91_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.end.i.i:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %poll_list, ptr %prev.i, align 4
  %78 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %sta_poll_list, ptr %poll_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mt7915_sta, ptr %15, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %poll_list, ptr %76, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end.i.i, %if.then89.if.end91_crit_edge, %if.end86.if.end91_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  br label %out

out:                                              ; preds = %if.end91, %mt7915_mac_add_txs_skb.exit.out_crit_edge, %do.end76.out_crit_edge
  %call.i119 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i119, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i122

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i122:                               ; preds = %out
  %call1.i120 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i124

land.lhs.true.i122.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i124:                              ; preds = %land.lhs.true.i122
  %.b4.i123 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i123, label %land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge, label %if.then.i125

land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i125:                                     ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i125, %land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i122.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %81 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i126 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i126 to ptr
  %preempt_count.i.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i127, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i127, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end56.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_queue_rx_skb(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = lshr i32 %5, 3
  %shr = and i32 %6, 31
  %7 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr, label %entry.sw.default_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb18
    i32 1, label %sw.bb19
    i32 0, label %sw.bb20
    i32 2, label %sw.bb24
  ]

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mt7915_mac_tx_free(ptr noundef %mdev, ptr noundef %1, i32 noundef %3)
  tail call void @napi_consume_skb(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt7915_mcu_rx_event(ptr noundef %mdev, ptr noundef %skb) #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %phy1.i = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb19.mt7915_mac_fill_rx_vector.exit_crit_edge, label %if.then.i

sw.bb19.mt7915_mac_fill_rx_vector.exit_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_fill_rx_vector.exit

if.then.i:                                        ; preds = %sw.bb19
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 1
  %10 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.mt7915_mac_fill_rx_vector.exit_crit_edge, label %if.end.i.i

if.then.i.mt7915_mac_fill_rx_vector.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_fill_rx_vector.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 8
  br label %mt7915_mac_fill_rx_vector.exit

mt7915_mac_fill_rx_vector.exit:                   ; preds = %if.end.i.i, %if.then.i.mt7915_mac_fill_rx_vector.exit_crit_edge, %sw.bb19.mt7915_mac_fill_rx_vector.exit_crit_edge
  %phy.0.i = phi ptr [ %phy1.i, %sw.bb19.mt7915_mac_fill_rx_vector.exit_crit_edge ], [ %13, %if.end.i.i ], [ null, %if.then.i.mt7915_mac_fill_rx_vector.exit_crit_edge ]
  %arrayidx16.i = getelementptr i32, ptr %1, i32 10
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %arrayidx17.i = getelementptr i32, ptr %1, i32 11
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %arrayidx18.i = getelementptr i32, ptr %1, i32 12
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %shr19.i = lshr i32 %22, 5
  %arrayidx22.i = getelementptr i32, ptr %1, i32 13
  %conv.i = trunc i32 %16 to i8
  %arrayidx25.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %arrayidx25.i, align 1
  %conv27.i = trunc i32 %19 to i8
  %arrayidx29.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 3, i32 0
  %24 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv27.i, ptr %arrayidx29.i, align 1
  %conv31.i = trunc i32 %shr19.i to i8
  %arrayidx33.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 4, i32 0
  %25 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv31.i, ptr %arrayidx33.i, align 1
  %shr34.i = lshr i32 %16, 8
  %shr35.i = lshr i32 %19, 8
  %shr36.i = lshr i32 %22, 14
  %conv.1.i = trunc i32 %shr34.i to i8
  %arrayidx25.1.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.1.i, ptr %arrayidx25.1.i, align 1
  %conv27.1.i = trunc i32 %shr35.i to i8
  %arrayidx29.1.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv27.1.i, ptr %arrayidx29.1.i, align 1
  %conv31.1.i = trunc i32 %shr36.i to i8
  %arrayidx33.1.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv31.1.i, ptr %arrayidx33.1.i, align 1
  %shr34.1.i = lshr i32 %16, 16
  %shr35.1.i = lshr i32 %19, 16
  %shr36.1.i = lshr i32 %22, 23
  %conv.2.i = trunc i32 %shr34.1.i to i8
  %arrayidx25.2.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.2.i, ptr %arrayidx25.2.i, align 1
  %conv27.2.i = trunc i32 %shr35.1.i to i8
  %arrayidx29.2.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv27.2.i, ptr %arrayidx29.2.i, align 1
  %conv31.2.i = trunc i32 %shr36.1.i to i8
  %arrayidx33.2.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 4, i32 2
  %31 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv31.2.i, ptr %arrayidx33.2.i, align 1
  %32 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx22.i, align 4
  %34 = lshr i32 %33, 24
  %phi.cast.i = trunc i32 %34 to i8
  %shr35.2.i = lshr i32 %19, 24
  %shr34.2.i = lshr i32 %16, 24
  %conv.3.i = trunc i32 %shr34.2.i to i8
  %arrayidx25.3.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 2, i32 3
  %35 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.3.i, ptr %arrayidx25.3.i, align 1
  %conv27.3.i = trunc i32 %shr35.2.i to i8
  %arrayidx29.3.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv27.3.i, ptr %arrayidx29.3.i, align 1
  %arrayidx33.3.i = getelementptr %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 4, i32 3
  %37 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %phi.cast.i, ptr %arrayidx33.3.i, align 1
  %arrayidx37.i = getelementptr i32, ptr %1, i32 24
  %38 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx37.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %arrayidx38.i = getelementptr i32, ptr %1, i32 25
  %41 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx38.i, align 4
  %shr56.i = lshr i32 %40, 19
  %43 = lshr i32 %42, 11
  %shl.i = and i32 %43, 1040384
  %or.i = or i32 %shl.i, %shr56.i
  %and91.i = lshr i32 %40, 13
  %44 = trunc i32 %and91.i to i8
  %45 = and i8 %44, 63
  %conv93.i = add nsw i8 %45, -16
  %last_freq_offset.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %last_freq_offset.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i, ptr %last_freq_offset.i, align 4
  %last_snr.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy.0.i, i32 0, i32 18, i32 5
  %47 = ptrtoint ptr %last_snr.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv93.i, ptr %last_snr.i, align 4
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %add.ptr2259 = getelementptr i32, ptr %1, i32 10
  %cmp.not60 = icmp ugt ptr %add.ptr2259, %arrayidx
  br i1 %cmp.not60, label %sw.bb20.for.end_crit_edge, label %for.body.preheader

sw.bb20.for.end_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %sw.bb20
  %add.ptr21 = getelementptr i32, ptr %1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %add.ptr2262 = phi ptr [ %add.ptr22, %for.body.for.body_crit_edge ], [ %add.ptr2259, %for.body.preheader ]
  %rxd.061 = phi ptr [ %add.ptr2262, %for.body.for.body_crit_edge ], [ %add.ptr21, %for.body.preheader ]
  tail call fastcc void @mt7915_mac_add_txs(ptr noundef %mdev, ptr noundef %rxd.061)
  %add.ptr22 = getelementptr i32, ptr %add.ptr2262, i32 8
  %cmp.not = icmp ugt ptr %add.ptr22, %arrayidx
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb20.for.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %phy2.i = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 4
  %arrayidx3.i = getelementptr i32, ptr %1, i32 1
  %48 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx3.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  %arrayidx4.i = getelementptr i32, ptr %1, i32 2
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx4.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %arrayidx5.i = getelementptr i32, ptr %1, i32 3
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %1, i32 4
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i, align 4
  %58 = lshr i32 %57, 24
  %59 = call ptr @memset(ptr %cb.i, i32 0, i32 44)
  %and.i49 = and i32 %50, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %sw.bb24.if.end10.i_crit_edge, label %if.then.i51

sw.bb24.if.end10.i_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i51:                                      ; preds = %sw.bb24
  %phy27.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 1
  %60 = ptrtoint ptr %phy27.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy27.i, align 8
  %tobool8.not.i = icmp eq ptr %61, null
  br i1 %tobool8.not.i, label %if.then.i51.sw.default_crit_edge, label %if.end.i

if.then.i51.sw.default_crit_edge:                 ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end.i:                                         ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 8
  %ext_phy.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %64 = ptrtoint ptr %ext_phy.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %ext_phy.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ext_phy.i, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %sw.bb24.if.end10.i_crit_edge
  %phy1.0.i = phi ptr [ %63, %if.end.i ], [ %phy2.i, %sw.bb24.if.end10.i_crit_edge ]
  %mphy.0.i = phi ptr [ %61, %if.end.i ], [ %mdev, %sw.bb24.if.end10.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 3
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i, align 4
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool11.not.i = icmp ne i32 %67, 0
  %and14.i = and i32 %53, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond1272.i = select i1 %tobool11.not.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond1272.i, label %if.end17.i, label %if.end10.i.sw.default_crit_edge

if.end10.i.sw.default_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end17.i:                                       ; preds = %if.end10.i
  %and18.i = and i32 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %and21.i = and i32 %50, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %or.cond.i = select i1 %tobool19.not.i, i1 true, i1 %tobool22.not.i
  br i1 %or.cond.i, label %if.end24.i, label %if.end17.i.sw.default_crit_edge

if.end17.i.sw.default_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end24.i:                                       ; preds = %if.end17.i
  %and25.i = and i32 %50, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.do.end40.i_crit_edge, label %if.then27.i

if.end24.i.do.end40.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %68 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flag.i, align 4
  %or.i52 = or i32 %69, 131072
  store i32 %or.i52, ptr %flag.i, align 4
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then27.i, %if.end24.i.do.end40.i_crit_edge
  %70 = and i32 %55, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %70)
  %cmp.i = icmp eq i32 %70, 256
  %71 = trunc i32 %50 to i16
  %conv.i53 = and i16 %71, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 287, i16 %conv.i53)
  %cmp.i.i = icmp ugt i16 %conv.i53, 287
  br i1 %cmp.i.i, label %do.end40.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge, label %if.end.i.i55

do.end40.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge: ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_rx_get_wcid.exit.thread.i

if.end.i.i55:                                     ; preds = %do.end40.i
  %conv.i.i = zext i16 %conv.i53 to i32
  %arrayidx.i.i = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 37, i32 %conv.i.i
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i54 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i54, label %land.lhs.true.i.i, label %if.end.i.i55.do.end11.i.i_crit_edge

if.end.i.i55.do.end11.i.i_crit_edge:              ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i55
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end11.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b36.i.i = load i1, ptr @mt7915_rx_get_wcid.__warned, align 1
  br i1 %.b36.i.i, label %land.lhs.true6.i.i.do.end11.i.i_crit_edge, label %if.then8.i.i

land.lhs.true6.i.i.do.end11.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7915_rx_get_wcid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @.str.1) #7
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true6.i.i.do.end11.i.i_crit_edge, %land.lhs.true.i.i.do.end11.i.i_crit_edge, %if.end.i.i55.do.end11.i.i_crit_edge
  %tobool15.not.i.i = icmp eq ptr %73, null
  %or.cond.i.i = select i1 %cmp.i, i1 true, i1 %tobool15.not.i.i
  br i1 %or.cond.i.i, label %do.end11.i.i.mt7915_rx_get_wcid.exit.i_crit_edge, label %if.end17.i.i

do.end11.i.i.mt7915_rx_get_wcid.exit.i_crit_edge: ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_rx_get_wcid.exit.i

if.end17.i.i:                                     ; preds = %do.end11.i.i
  %sta18.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %sta18.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i.i = load i8, ptr %sta18.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool19.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool19.not.i.i, label %if.end17.i.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge, label %if.end21.i.i

if.end17.i.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_rx_get_wcid.exit.thread.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  %vif.i.i = getelementptr inbounds %struct.mt7915_sta, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vif.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %76, null
  %sta27.i.i = getelementptr inbounds %struct.mt7915_vif, ptr %76, i32 0, i32 2
  br i1 %tobool23.not.i.i, label %if.end21.i.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge, label %if.end21.i.i.mt7915_rx_get_wcid.exit.i_crit_edge

if.end21.i.i.mt7915_rx_get_wcid.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_rx_get_wcid.exit.i

if.end21.i.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_rx_get_wcid.exit.thread.i

mt7915_rx_get_wcid.exit.thread.i:                 ; preds = %if.end21.i.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge, %if.end17.i.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge, %do.end40.i.mt7915_rx_get_wcid.exit.thread.i_crit_edge
  %77 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %cb.i, align 4
  br label %if.end72.i

mt7915_rx_get_wcid.exit.i:                        ; preds = %if.end21.i.i.mt7915_rx_get_wcid.exit.i_crit_edge, %do.end11.i.i.mt7915_rx_get_wcid.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %73, %do.end11.i.i.mt7915_rx_get_wcid.exit.i_crit_edge ], [ %sta27.i.i, %if.end21.i.i.mt7915_rx_get_wcid.exit.i_crit_edge ]
  %78 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %retval.0.i.i, ptr %cb.i, align 4
  %tobool63.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool63.not.i, label %mt7915_rx_get_wcid.exit.i.if.end72.i_crit_edge, label %if.then64.i

mt7915_rx_get_wcid.exit.i.if.end72.i_crit_edge:   ; preds = %mt7915_rx_get_wcid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then64.i:                                      ; preds = %mt7915_rx_get_wcid.exit.i
  %sta_poll_lock.i = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #7
  %poll_list.i = getelementptr inbounds %struct.mt7915_sta, ptr %retval.0.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %poll_list.i, align 4
  %cmp.i1273.not.i = icmp eq ptr %80, %poll_list.i
  br i1 %cmp.i1273.not.i, label %if.then68.i, label %if.then64.i.if.end70.i_crit_edge

if.then64.i.if.end70.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.then64.i
  %sta_poll_list.i = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 13, i32 1
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %poll_list.i, ptr noundef %82, ptr noundef %sta_poll_list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then68.i.if.end70.i_crit_edge

if.then68.i.if.end70.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end.i.i.i:                                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %poll_list.i, ptr %prev.i.i, align 4
  %84 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %sta_poll_list.i, ptr %poll_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mt7915_sta, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %poll_list.i, ptr %82, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end.i.i.i, %if.then68.i.if.end70.i_crit_edge, %if.then64.i.if.end70.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.end70.i, %mt7915_rx_get_wcid.exit.i.if.end72.i_crit_edge, %mt7915_rx_get_wcid.exit.thread.i
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 5
  %87 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %center_freq.i, align 4
  %conv73.i = trunc i32 %90 to i16
  %freq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %91 = ptrtoint ptr %freq.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv73.i, ptr %freq.i, align 2
  %92 = load ptr, ptr %chandef.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %conv76.i = trunc i32 %94 to i8
  %band77.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %95 = ptrtoint ptr %band77.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv76.i, ptr %band77.i, align 1
  %conv79.i = and i32 %94, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv79.i)
  %cmp80.i = icmp eq i32 %conv79.i, 1
  %sband_5g.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 11
  %sband_2g.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 10
  %sband.0.i = select i1 %cmp80.i, ptr %sband_5g.i, ptr %sband_2g.i
  %96 = ptrtoint ptr %sband.0.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sband.0.i, align 4
  %tobool86.not.i = icmp eq ptr %97, null
  br i1 %tobool86.not.i, label %if.end72.i.sw.default_crit_edge, label %if.end88.i

if.end72.i.sw.default_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end88.i:                                       ; preds = %if.end72.i
  %98 = and i32 %5, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %98)
  %cmp90.i = icmp eq i32 %98, 32769
  br i1 %cmp90.i, label %if.then92.i, label %if.end88.i.if.end96.i_crit_edge

if.end88.i.if.end96.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

if.then92.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %99 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load93.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear94.i = and i16 %bf.load93.i, -1537
  %bf.set95.i = or i16 %bf.clear94.i, 512
  store i16 %bf.set95.i, ptr %ip_summed.i, align 8
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then92.i, %if.end88.i.if.end96.i_crit_edge
  %and97.i = and i32 %50, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end96.i.if.end102.i_crit_edge, label %if.then99.i

if.end96.i.if.end102.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

if.then99.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %flag100.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %100 = ptrtoint ptr %flag100.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flag100.i, align 4
  %or101.i = or i32 %101, 32
  store i32 %or101.i, ptr %flag100.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then99.i, %if.end96.i.if.end102.i_crit_edge
  %and103.i = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.end102.i.do.end123.i_crit_edge, label %if.then105.i

if.end102.i.do.end123.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123.i

if.then105.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  %flag106.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %102 = ptrtoint ptr %flag106.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flag106.i, align 4
  %or107.i = or i32 %103, 1
  store i32 %or107.i, ptr %flag106.i, align 4
  br label %do.end123.i

do.end123.i:                                      ; preds = %if.then105.i, %if.end102.i.do.end123.i_crit_edge
  %and125.i = lshr i32 %50, 16
  %shr126.i = and i32 %and125.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr126.i)
  %cmp127.not.i = icmp ne i32 %shr126.i, 0
  %and130.i = and i32 %50, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  %or.cond1265.i = select i1 %cmp127.not.i, i1 %tobool131.not.i, i1 false
  br i1 %or.cond1265.i, label %if.then132.i, label %do.end123.i.do.end154.i_crit_edge

do.end123.i.do.end154.i_crit_edge:                ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end154.i

if.then132.i:                                     ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %flag133.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %104 = ptrtoint ptr %flag133.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flag133.i, align 4
  %or138.i = or i32 %105, 2097178
  store i32 %or138.i, ptr %flag133.i, align 4
  br label %do.end154.i

do.end154.i:                                      ; preds = %if.then132.i, %do.end123.i.do.end154.i_crit_edge
  %and159.i = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %if.end162.i, label %do.end154.i.sw.default_crit_edge

do.end154.i.sw.default_crit_edge:                 ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end162.i:                                      ; preds = %do.end154.i
  %add.ptr163.i = getelementptr i32, ptr %1, i32 6
  %and164.i = and i32 %50, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %if.end162.i.if.end233.i_crit_edge, label %if.then166.i

if.end162.i.if.end233.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233.i

if.then166.i:                                     ; preds = %if.end162.i
  %106 = ptrtoint ptr %add.ptr163.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr163.i, align 4
  %arrayidx168.i = getelementptr i32, ptr %1, i32 8
  %108 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx168.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  %111 = lshr i32 %107, 16
  %112 = trunc i32 %111 to i16
  %shr205.i = lshr i32 %110, 16
  %conv206.i = trunc i32 %shr205.i to i8
  %conv225.i = trunc i32 %110 to i16
  %add.ptr226.i = getelementptr i32, ptr %1, i32 10
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr226.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %116)
  %cmp228.not.i = icmp ult i32 %sub.ptr.sub.i, %116
  br i1 %cmp228.not.i, label %if.then166.i.if.end233.i_crit_edge, label %if.then166.i.sw.default_crit_edge

if.then166.i.sw.default_crit_edge:                ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.then166.i.if.end233.i_crit_edge:               ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.then166.i.if.end233.i_crit_edge, %if.end162.i.if.end233.i_crit_edge
  %fc.0.i = phi i16 [ %112, %if.then166.i.if.end233.i_crit_edge ], [ 0, %if.end162.i.if.end233.i_crit_edge ]
  %qos_ctl.0.i = phi i8 [ %conv206.i, %if.then166.i.if.end233.i_crit_edge ], [ 0, %if.end162.i.if.end233.i_crit_edge ]
  %seq_ctrl.0.i = phi i16 [ %conv225.i, %if.then166.i.if.end233.i_crit_edge ], [ 0, %if.end162.i.if.end233.i_crit_edge ]
  %rxd.0.i = phi ptr [ %add.ptr226.i, %if.then166.i.if.end233.i_crit_edge ], [ %add.ptr163.i, %if.end162.i.if.end233.i_crit_edge ]
  %and234.i = and i32 %50, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i)
  %tobool235.not.i = icmp eq i32 %and234.i, 0
  br i1 %tobool235.not.i, label %if.end233.i.if.end312.i_crit_edge, label %if.then236.i

if.end233.i.if.end312.i_crit_edge:                ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end312.i

if.then236.i:                                     ; preds = %if.end233.i
  %flag238.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %117 = ptrtoint ptr %flag238.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flag238.i, align 4
  %and239.i = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.i)
  %tobool240.not.i = icmp eq i32 %and239.i, 0
  br i1 %tobool240.not.i, label %if.then236.i.if.end298.i_crit_edge, label %do.end256.i

if.then236.i.if.end298.i_crit_edge:               ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end298.i

do.end256.i:                                      ; preds = %if.then236.i
  %119 = zext i32 %shr126.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr126.i, label %do.end256.i.if.end298.i_crit_edge [
    i32 4, label %do.end256.i.do.end274.i_crit_edge
    i32 9, label %do.end256.i.do.end274.i_crit_edge63
    i32 10, label %do.end256.i.do.end274.i_crit_edge64
    i32 2, label %do.end256.i.sw.bb280.i_crit_edge
    i32 3, label %do.end256.i.sw.bb280.i_crit_edge65
    i32 11, label %do.end256.i.sw.bb280.i_crit_edge66
    i32 12, label %do.end256.i.sw.bb280.i_crit_edge67
  ]

do.end256.i.sw.bb280.i_crit_edge67:               ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280.i

do.end256.i.sw.bb280.i_crit_edge66:               ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280.i

do.end256.i.sw.bb280.i_crit_edge65:               ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280.i

do.end256.i.sw.bb280.i_crit_edge:                 ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280.i

do.end256.i.do.end274.i_crit_edge64:              ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end274.i

do.end256.i.do.end274.i_crit_edge63:              ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end274.i

do.end256.i.do.end274.i_crit_edge:                ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end274.i

do.end256.i.if.end298.i_crit_edge:                ; preds = %do.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end298.i

do.end274.i:                                      ; preds = %do.end256.i.do.end274.i_crit_edge, %do.end256.i.do.end274.i_crit_edge63, %do.end256.i.do.end274.i_crit_edge64
  %120 = and i32 %53, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool278.i = icmp ne i32 %120, 0
  br label %sw.bb280.i

sw.bb280.i:                                       ; preds = %do.end274.i, %do.end256.i.sw.bb280.i_crit_edge, %do.end256.i.sw.bb280.i_crit_edge65, %do.end256.i.sw.bb280.i_crit_edge66, %do.end256.i.sw.bb280.i_crit_edge67
  %insert_ccmp_hdr.0.i = phi i1 [ false, %do.end256.i.sw.bb280.i_crit_edge ], [ false, %do.end256.i.sw.bb280.i_crit_edge65 ], [ false, %do.end256.i.sw.bb280.i_crit_edge66 ], [ false, %do.end256.i.sw.bb280.i_crit_edge67 ], [ %tobool278.i, %do.end274.i ]
  %arrayidx281.i = getelementptr i8, ptr %rxd.0.i, i32 5
  %121 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx281.i, align 1
  %iv.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %123 = ptrtoint ptr %iv.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %iv.i, align 4
  %arrayidx283.i = getelementptr i8, ptr %rxd.0.i, i32 4
  %124 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx283.i, align 1
  %arrayidx285.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %126 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx285.i, align 1
  %arrayidx286.i = getelementptr i8, ptr %rxd.0.i, i32 3
  %127 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx286.i, align 1
  %arrayidx288.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %129 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx288.i, align 2
  %arrayidx289.i = getelementptr i8, ptr %rxd.0.i, i32 2
  %130 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx289.i, align 1
  %arrayidx291.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 19
  %132 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx291.i, align 1
  %arrayidx292.i = getelementptr i8, ptr %rxd.0.i, i32 1
  %133 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx292.i, align 1
  %arrayidx294.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %135 = ptrtoint ptr %arrayidx294.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx294.i, align 4
  %136 = ptrtoint ptr %rxd.0.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %rxd.0.i, align 1
  %arrayidx297.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %138 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx297.i, align 1
  br label %if.end298.i

if.end298.i:                                      ; preds = %sw.bb280.i, %do.end256.i.if.end298.i_crit_edge, %if.then236.i.if.end298.i_crit_edge
  %insert_ccmp_hdr.1.i = phi i1 [ false, %do.end256.i.if.end298.i_crit_edge ], [ %insert_ccmp_hdr.0.i, %sw.bb280.i ], [ false, %if.then236.i.if.end298.i_crit_edge ]
  %add.ptr299.i = getelementptr i32, ptr %rxd.0.i, i32 4
  %139 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast301.i = ptrtoint ptr %add.ptr299.i to i32
  %sub.ptr.rhs.cast302.i = ptrtoint ptr %140 to i32
  %sub.ptr.sub303.i = sub i32 %sub.ptr.lhs.cast301.i, %sub.ptr.rhs.cast302.i
  %141 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub303.i, i32 %142)
  %cmp305.not.i = icmp ult i32 %sub.ptr.sub303.i, %142
  br i1 %cmp305.not.i, label %if.end298.i.if.end312.i_crit_edge, label %if.end298.i.sw.default_crit_edge

if.end298.i.sw.default_crit_edge:                 ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end298.i.if.end312.i_crit_edge:                ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end312.i

if.end312.i:                                      ; preds = %if.end298.i.if.end312.i_crit_edge, %if.end233.i.if.end312.i_crit_edge
  %insert_ccmp_hdr.2.off0.i = phi i1 [ %insert_ccmp_hdr.1.i, %if.end298.i.if.end312.i_crit_edge ], [ false, %if.end233.i.if.end312.i_crit_edge ]
  %rxd.1.i = phi ptr [ %add.ptr299.i, %if.end298.i.if.end312.i_crit_edge ], [ %rxd.0.i, %if.end233.i.if.end312.i_crit_edge ]
  %and313.i = and i32 %50, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313.i)
  %tobool314.not.i = icmp eq i32 %and313.i, 0
  br i1 %tobool314.not.i, label %if.end312.i.if.end349.i_crit_edge, label %if.then315.i

if.end312.i.if.end349.i_crit_edge:                ; preds = %if.end312.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end349.i

if.then315.i:                                     ; preds = %if.end312.i
  %143 = ptrtoint ptr %rxd.1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rxd.1.i, align 4
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #7
  %timestamp.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %146 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %timestamp.i, align 4
  %flag317.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %147 = ptrtoint ptr %flag317.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flag317.i, align 4
  %or318.i = or i32 %148, 128
  store i32 %or318.i, ptr %flag317.i, align 4
  %and319.i = and i32 %53, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i)
  %tobool320.not.i = icmp eq i32 %and319.i, 0
  br i1 %tobool320.not.i, label %if.then321.i, label %if.then315.i.if.end338.i_crit_edge

if.then315.i.if.end338.i_crit_edge:               ; preds = %if.then315.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end338.i

if.then321.i:                                     ; preds = %if.then315.i
  %or323.i = or i32 %148, 640
  %149 = ptrtoint ptr %flag317.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or323.i, ptr %flag317.i, align 4
  %rx_ampdu_ts.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy1.0.i, i32 0, i32 14
  %150 = ptrtoint ptr %rx_ampdu_ts.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_ampdu_ts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %145)
  %cmp325.not.i = icmp eq i32 %151, %145
  br i1 %cmp325.not.i, label %if.then321.i.if.end333.i_crit_edge, label %if.then327.i

if.then321.i.if.end333.i_crit_edge:               ; preds = %if.then321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end333.i

if.then327.i:                                     ; preds = %if.then321.i
  call void @__sanitizer_cov_trace_pc() #9
  %ampdu_ref.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy1.0.i, i32 0, i32 15
  %152 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ampdu_ref.i, align 8
  %inc.i = add i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool328.not.i = icmp eq i32 %inc.i, 0
  %spec.store.select1266.i = select i1 %tobool328.not.i, i32 1, i32 %inc.i
  %154 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %spec.store.select1266.i, ptr %ampdu_ref.i, align 8
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.then327.i, %if.then321.i.if.end333.i_crit_edge
  %155 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %timestamp.i, align 4
  %157 = ptrtoint ptr %rx_ampdu_ts.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %rx_ampdu_ts.i, align 4
  %ampdu_ref336.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy1.0.i, i32 0, i32 15
  %158 = ptrtoint ptr %ampdu_ref336.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ampdu_ref336.i, align 8
  %ampdu_ref337.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %160 = ptrtoint ptr %ampdu_ref337.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %ampdu_ref337.i, align 4
  br label %if.end338.i

if.end338.i:                                      ; preds = %if.end333.i, %if.then315.i.if.end338.i_crit_edge
  %add.ptr339.i = getelementptr i32, ptr %rxd.1.i, i32 2
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast341.i = ptrtoint ptr %add.ptr339.i to i32
  %sub.ptr.rhs.cast342.i = ptrtoint ptr %162 to i32
  %sub.ptr.sub343.i = sub i32 %sub.ptr.lhs.cast341.i, %sub.ptr.rhs.cast342.i
  %163 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub343.i, i32 %164)
  %cmp345.not.i = icmp ult i32 %sub.ptr.sub343.i, %164
  br i1 %cmp345.not.i, label %if.end338.i.if.end349.i_crit_edge, label %if.end338.i.sw.default_crit_edge

if.end338.i.sw.default_crit_edge:                 ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end338.i.if.end349.i_crit_edge:                ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end349.i

if.end349.i:                                      ; preds = %if.end338.i.if.end349.i_crit_edge, %if.end312.i.if.end349.i_crit_edge
  %rxd.2.i = phi ptr [ %add.ptr339.i, %if.end338.i.if.end349.i_crit_edge ], [ %rxd.1.i, %if.end312.i.if.end349.i_crit_edge ]
  %and350.i = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350.i)
  %tobool351.not.i = icmp eq i32 %and350.i, 0
  br i1 %tobool351.not.i, label %if.end349.i.do.end832.i_crit_edge, label %if.then352.i

if.end349.i.do.end832.i_crit_edge:                ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end832.i

if.then352.i:                                     ; preds = %if.end349.i
  %add.ptr355.i = getelementptr i32, ptr %rxd.2.i, i32 2
  %165 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast357.i = ptrtoint ptr %add.ptr355.i to i32
  %sub.ptr.rhs.cast358.i = ptrtoint ptr %166 to i32
  %sub.ptr.sub359.i = sub i32 %sub.ptr.lhs.cast357.i, %sub.ptr.rhs.cast358.i
  %167 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub359.i, i32 %168)
  %cmp361.not.i = icmp ult i32 %sub.ptr.sub359.i, %168
  br i1 %cmp361.not.i, label %if.end364.i, label %if.then352.i.sw.default_crit_edge

if.then352.i.sw.default_crit_edge:                ; preds = %if.then352.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end364.i:                                      ; preds = %if.then352.i
  %169 = ptrtoint ptr %rxd.2.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rxd.2.i, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #7
  %arrayidx366.i = getelementptr i32, ptr %rxd.2.i, i32 1
  %172 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx366.i, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #7
  %175 = ptrtoint ptr %add.ptr355.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr355.i, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #7
  %and368.i = and i32 %171, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368.i)
  %tobool369.not.i = icmp eq i32 %and368.i, 0
  br i1 %tobool369.not.i, label %if.end364.i.if.end374.i_crit_edge, label %if.then370.i

if.end364.i.if.end374.i_crit_edge:                ; preds = %if.end364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end374.i

if.then370.i:                                     ; preds = %if.end364.i
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %178 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %enc_flags.i, align 4
  %180 = or i8 %179, 64
  store i8 %180, ptr %enc_flags.i, align 4
  br label %if.end374.i

if.end374.i:                                      ; preds = %if.then370.i, %if.end364.i.if.end374.i_crit_edge
  %antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy.0.i, i32 0, i32 15
  %181 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %antenna_mask.i, align 8
  %chains.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %183 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %chains.i, align 1
  %and391.i = and i32 %174, 255
  %sub.i = add nuw nsw i32 %and391.i, 292
  %div1255.i = lshr i32 %sub.i, 1
  %conv393.i = trunc i32 %div1255.i to i8
  %chain_signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %184 = ptrtoint ptr %chain_signal.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv393.i, ptr %chain_signal.i, align 4
  %and411.i = lshr i32 %174, 8
  %shr412.i = and i32 %and411.i, 255
  %sub413.i = add nuw nsw i32 %shr412.i, 292
  %div4141256.i = lshr i32 %sub413.i, 1
  %conv415.i = trunc i32 %div4141256.i to i8
  %arrayidx417.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 41
  %185 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv415.i, ptr %arrayidx417.i, align 1
  %and434.i = lshr i32 %174, 16
  %shr435.i = and i32 %and434.i, 255
  %sub436.i = add nuw nsw i32 %shr435.i, 292
  %div4371257.i = lshr i32 %sub436.i, 1
  %conv438.i = trunc i32 %div4371257.i to i8
  %arrayidx440.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 42
  %186 = ptrtoint ptr %arrayidx440.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv438.i, ptr %arrayidx440.i, align 2
  %shr458.i = lshr i32 %174, 24
  %sub459.i = add nuw nsw i32 %shr458.i, 292
  %div4601258.i = lshr i32 %sub459.i, 1
  %conv461.i = trunc i32 %div4601258.i to i8
  %arrayidx463.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 43
  %187 = ptrtoint ptr %arrayidx463.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv461.i, ptr %arrayidx463.i, align 1
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %188 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv393.i, ptr %signal.i, align 2
  br label %cond.false.i

cond.false.i:                                     ; preds = %for.inc.i, %if.end374.i
  %i.0.i = phi i32 [ 1, %if.end374.i ], [ %inc561.i, %for.inc.i ]
  %189 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %antenna_mask.i, align 8
  %conv535.i = zext i8 %190 to i32
  %call.i1275.i = tail call i32 @__sw_hweight8(i32 noundef %conv535.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %call.i1275.i)
  %cmp537.i = icmp ult i32 %i.0.i, %call.i1275.i
  br i1 %cmp537.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %cond.false.i
  %191 = ptrtoint ptr %chains.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %chains.i, align 1
  %conv540.i = zext i8 %192 to i32
  %shl.i56 = shl nuw i32 1, %i.0.i
  %and541.i = and i32 %shl.i56, %conv540.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and541.i)
  %tobool542.not.i = icmp eq i32 %and541.i, 0
  br i1 %tobool542.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end544.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end544.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %signal.i, align 2
  %arrayidx547.i = getelementptr [4 x i8], ptr %chain_signal.i, i32 0, i32 %i.0.i
  %195 = ptrtoint ptr %arrayidx547.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx547.i, align 1
  %197 = tail call i8 @llvm.smax.i8(i8 %194, i8 %196) #7
  %198 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %signal.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end544.i, %for.body.i.for.inc.i_crit_edge
  %inc561.i = add nuw i32 %i.0.i, 1
  br label %cond.false.i

for.end.i:                                        ; preds = %cond.false.i
  %and562.i = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and562.i)
  %tobool563.not.i = icmp eq i32 %and562.i, 0
  br i1 %tobool563.not.i, label %for.end.i.do.end832.i_crit_edge, label %if.then564.i

for.end.i.do.end832.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end832.i

if.then564.i:                                     ; preds = %for.end.i
  %and600.i = lshr i32 %177, 13
  %199 = trunc i32 %and600.i to i8
  %conv602.i = and i8 %199, 3
  %add.ptr603.i = getelementptr i32, ptr %rxd.2.i, i32 20
  %200 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast605.i = ptrtoint ptr %add.ptr603.i to i32
  %sub.ptr.rhs.cast606.i = ptrtoint ptr %201 to i32
  %sub.ptr.sub607.i = sub i32 %sub.ptr.lhs.cast605.i, %sub.ptr.rhs.cast606.i
  %202 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub607.i, i32 %203)
  %cmp609.not.i = icmp ult i32 %sub.ptr.sub607.i, %203
  br i1 %cmp609.not.i, label %do.end627.i, label %if.then564.i.sw.default_crit_edge

if.then564.i.sw.default_crit_edge:                ; preds = %if.then564.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

do.end627.i:                                      ; preds = %if.then564.i
  %and629.i = and i32 %171, 127
  %and647.i = lshr i32 %177, 4
  %shr648.i = and i32 %and647.i, 15
  %204 = zext i32 %shr648.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr648.i, label %do.end627.i.sw.default_crit_edge [
    i32 0, label %sw.bb649.i
    i32 1, label %do.end627.i.sw.bb650.i_crit_edge
    i32 3, label %do.end627.i.sw.bb653.i_crit_edge
    i32 2, label %do.end627.i.sw.bb653.i_crit_edge68
    i32 4, label %do.end676.i
    i32 11, label %do.end627.i.do.end705.i_crit_edge
    i32 8, label %do.end627.i.do.end705.i_crit_edge69
    i32 9, label %do.end627.i.do.end705.i_crit_edge70
    i32 10, label %do.end627.i.do.end705.i_crit_edge71
  ]

do.end627.i.do.end705.i_crit_edge71:              ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end705.i

do.end627.i.do.end705.i_crit_edge70:              ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end705.i

do.end627.i.do.end705.i_crit_edge69:              ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end705.i

do.end627.i.do.end705.i_crit_edge:                ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end705.i

do.end627.i.sw.bb653.i_crit_edge68:               ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb653.i

do.end627.i.sw.bb653.i_crit_edge:                 ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb653.i

do.end627.i.sw.bb650.i_crit_edge:                 ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb650.i

do.end627.i.sw.default_crit_edge:                 ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb649.i:                                       ; preds = %do.end627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb650.i

sw.bb650.i:                                       ; preds = %sw.bb649.i, %do.end627.i.sw.bb650.i_crit_edge
  %cck.0.off0.i = phi i1 [ false, %do.end627.i.sw.bb650.i_crit_edge ], [ true, %sw.bb649.i ]
  %call652.i = tail call i32 @mt76_get_rate(ptr noundef %mdev, ptr noundef %sband.0.i, i32 noundef %and629.i, i1 noundef zeroext %cck.0.off0.i) #7
  br label %sw.epilog739.i

sw.bb653.i:                                       ; preds = %do.end627.i.sw.bb653.i_crit_edge, %do.end627.i.sw.bb653.i_crit_edge68
  %encoding.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %205 = ptrtoint ptr %encoding.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %bf.load654.i = load i16, ptr %encoding.i, align 1
  %bf.clear655.i = and i16 %bf.load654.i, 16383
  %bf.set656.i = or i16 %bf.clear655.i, 16384
  store i16 %bf.set656.i, ptr %encoding.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and629.i)
  %cmp657.i = icmp ugt i32 %and629.i, 31
  br i1 %cmp657.i, label %sw.bb653.i.sw.default_crit_edge, label %sw.bb653.i.sw.epilog739.i_crit_edge

sw.bb653.i.sw.epilog739.i_crit_edge:              ; preds = %sw.bb653.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog739.i

sw.bb653.i.sw.default_crit_edge:                  ; preds = %sw.bb653.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

do.end676.i:                                      ; preds = %do.end627.i
  %and678.i = lshr i32 %171, 7
  %206 = trunc i32 %and678.i to i8
  %207 = and i8 %206, 7
  %conv681.i = add nuw nsw i8 %207, 1
  %nss.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %208 = ptrtoint ptr %nss.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv681.i, ptr %nss.i, align 4
  %encoding682.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %209 = ptrtoint ptr %encoding682.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 2)
  %bf.load683.i = load i16, ptr %encoding682.i, align 1
  %bf.clear684.i = and i16 %bf.load683.i, 16383
  %bf.set685.i = or i16 %bf.clear684.i, -32768
  store i16 %bf.set685.i, ptr %encoding682.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and629.i)
  %cmp686.i = icmp ugt i32 %and629.i, 9
  br i1 %cmp686.i, label %do.end676.i.sw.default_crit_edge, label %do.end676.i.sw.epilog739.i_crit_edge

do.end676.i.sw.epilog739.i_crit_edge:             ; preds = %do.end676.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog739.i

do.end676.i.sw.default_crit_edge:                 ; preds = %do.end676.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

do.end705.i:                                      ; preds = %do.end627.i.do.end705.i_crit_edge, %do.end627.i.do.end705.i_crit_edge69, %do.end627.i.do.end705.i_crit_edge70, %do.end627.i.do.end705.i_crit_edge71
  %and707.i = lshr i32 %171, 7
  %210 = trunc i32 %and707.i to i8
  %211 = and i8 %210, 7
  %conv710.i = add nuw nsw i8 %211, 1
  %nss711.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %212 = ptrtoint ptr %nss711.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv710.i, ptr %nss711.i, align 4
  %encoding712.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %213 = ptrtoint ptr %encoding712.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 2)
  %bf.load713.i = load i16, ptr %encoding712.i, align 1
  %bf.set715.i = or i16 %bf.load713.i, -16384
  %and716.i = and i32 %171, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv602.i)
  %cmp718.not.i = icmp eq i8 %conv602.i, 3
  %214 = trunc i32 %and600.i to i16
  %bf.value.i = shl i16 %214, 6
  %bf.shl.i = and i16 %bf.value.i, 192
  %bf.clear722.i = and i16 %bf.set715.i, -225
  %bf.set723.i = or i16 %bf.clear722.i, %bf.shl.i
  %storemerge1259.i = select i1 %cmp718.not.i, i16 %bf.set715.i, i16 %bf.set723.i
  %215 = trunc i32 %171 to i8
  %216 = shl i8 %215, 1
  %217 = and i8 %216, 32
  %bf.shl734.i = zext i8 %217 to i16
  %bf.clear735.i = and i16 %storemerge1259.i, -33
  %bf.set736.i = or i16 %bf.clear735.i, %bf.shl734.i
  %218 = ptrtoint ptr %encoding712.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 2)
  store i16 %bf.set736.i, ptr %encoding712.i, align 1
  br label %sw.epilog739.i

sw.epilog739.i:                                   ; preds = %do.end705.i, %do.end676.i.sw.epilog739.i_crit_edge, %sw.bb653.i.sw.epilog739.i_crit_edge, %sw.bb650.i
  %i.1.i = phi i32 [ %and716.i, %do.end705.i ], [ %and629.i, %do.end676.i.sw.epilog739.i_crit_edge ], [ %and629.i, %sw.bb653.i.sw.epilog739.i_crit_edge ], [ %call652.i, %sw.bb650.i ]
  %conv740.i = trunc i32 %i.1.i to i8
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %219 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv740.i, ptr %rate_idx.i, align 1
  %and757.i = lshr i32 %177, 8
  %shr758.i = and i32 %and757.i, 7
  %220 = zext i32 %shr758.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr758.i, label %sw.epilog739.i.sw.default_crit_edge [
    i32 0, label %sw.epilog739.i.sw.epilog789.i_crit_edge
    i32 1, label %sw.bb759.i
    i32 2, label %sw.bb778.i
    i32 3, label %sw.bb783.i
  ]

sw.epilog739.i.sw.epilog789.i_crit_edge:          ; preds = %sw.epilog739.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog789.i

sw.epilog739.i.sw.default_crit_edge:              ; preds = %sw.epilog739.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb759.i:                                       ; preds = %sw.epilog739.i
  %221 = and i32 %177, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool761.not.i = icmp eq i32 %221, 0
  %and763.i = and i32 %171, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and763.i)
  %tobool764.not.i = icmp eq i32 %and763.i, 0
  %or.cond1267.i = select i1 %tobool761.not.i, i1 true, i1 %tobool764.not.i
  %bw773.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %222 = ptrtoint ptr %bw773.i to i32
  call void @__asan_loadN_noabort(i32 %222, i32 2)
  %bf.load774.i = load i16, ptr %bw773.i, align 1
  br i1 %or.cond1267.i, label %if.else772.i, label %if.then765.i

if.then765.i:                                     ; preds = %sw.bb759.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear767.i = and i16 %bf.load774.i, -16129
  %bf.set771.i = or i16 %bf.clear767.i, 12800
  %223 = ptrtoint ptr %bw773.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 2)
  store i16 %bf.set771.i, ptr %bw773.i, align 1
  br label %sw.epilog789.i

if.else772.i:                                     ; preds = %sw.bb759.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear775.i = and i16 %bf.load774.i, -14337
  %bf.set776.i = or i16 %bf.clear775.i, 6144
  %224 = ptrtoint ptr %bw773.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 2)
  store i16 %bf.set776.i, ptr %bw773.i, align 1
  br label %sw.epilog789.i

sw.bb778.i:                                       ; preds = %sw.epilog739.i
  call void @__sanitizer_cov_trace_pc() #9
  %bw779.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %225 = ptrtoint ptr %bw779.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %bf.load780.i = load i16, ptr %bw779.i, align 1
  %bf.clear781.i = and i16 %bf.load780.i, -14337
  %bf.set782.i = or i16 %bf.clear781.i, 8192
  store i16 %bf.set782.i, ptr %bw779.i, align 1
  br label %sw.epilog789.i

sw.bb783.i:                                       ; preds = %sw.epilog739.i
  call void @__sanitizer_cov_trace_pc() #9
  %bw784.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %226 = ptrtoint ptr %bw784.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 2)
  %bf.load785.i = load i16, ptr %bw784.i, align 1
  %bf.clear786.i = and i16 %bf.load785.i, -14337
  %bf.set787.i = or i16 %bf.clear786.i, 10240
  store i16 %bf.set787.i, ptr %bw784.i, align 1
  br label %sw.epilog789.i

sw.epilog789.i:                                   ; preds = %sw.bb783.i, %sw.bb778.i, %if.else772.i, %if.then765.i, %sw.epilog739.i.sw.epilog789.i_crit_edge
  %enc_flags791.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %227 = ptrtoint ptr %enc_flags791.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %enc_flags791.i, align 4
  %229 = trunc i32 %177 to i8
  %230 = and i8 %229, 3
  %231 = mul nuw i8 %230, 48
  %conv794.i = or i8 %228, %231
  store i8 %conv794.i, ptr %enc_flags791.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr648.i)
  %cmp795.i = icmp ugt i32 %shr648.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv602.i)
  %tobool799.not.i = icmp eq i8 %conv602.i, 0
  %or.cond1268.i = select i1 %cmp795.i, i1 true, i1 %tobool799.not.i
  br i1 %or.cond1268.i, label %sw.epilog789.i.do.end832.i_crit_edge, label %if.then800.i

sw.epilog789.i.do.end832.i_crit_edge:             ; preds = %sw.epilog789.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end832.i

if.then800.i:                                     ; preds = %sw.epilog789.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = or i8 %conv794.i, 4
  %233 = ptrtoint ptr %enc_flags791.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %enc_flags791.i, align 4
  br label %do.end832.i

do.end832.i:                                      ; preds = %if.then800.i, %sw.epilog789.i.do.end832.i_crit_edge, %for.end.i.do.end832.i_crit_edge, %if.end349.i.do.end832.i_crit_edge
  %mode.3.i = phi i32 [ 0, %if.end349.i.do.end832.i_crit_edge ], [ %shr648.i, %sw.epilog789.i.do.end832.i_crit_edge ], [ %shr648.i, %if.then800.i ], [ 0, %for.end.i.do.end832.i_crit_edge ]
  %rxv.0.i = phi ptr [ null, %if.end349.i.do.end832.i_crit_edge ], [ %rxd.2.i, %sw.epilog789.i.do.end832.i_crit_edge ], [ %rxd.2.i, %if.then800.i ], [ %rxd.2.i, %for.end.i.do.end832.i_crit_edge ]
  %rxd.5.i = phi ptr [ %rxd.2.i, %if.end349.i.do.end832.i_crit_edge ], [ %add.ptr603.i, %sw.epilog789.i.do.end832.i_crit_edge ], [ %add.ptr603.i, %if.then800.i ], [ %add.ptr355.i, %for.end.i.do.end832.i_crit_edge ]
  %234 = trunc i32 %58 to i8
  %conv836.i = and i8 %234, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv836.i)
  %tobool837.not.i = icmp eq i8 %conv836.i, 0
  %amsdu.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %235 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 2)
  %bf.load843.i = load i16, ptr %amsdu.i, align 1
  %bf.shl845.i = select i1 %tobool837.not.i, i16 0, i16 16
  %bf.clear846.i = and i16 %bf.load843.i, -17
  %bf.set847.i = or i16 %bf.clear846.i, %bf.shl845.i
  br i1 %tobool837.not.i, label %do.end832.i.if.end874.i_crit_edge, label %if.then853.i

do.end832.i.if.end874.i_crit_edge:                ; preds = %do.end832.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end874.i

if.then853.i:                                     ; preds = %do.end832.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv836.i)
  %cmp855.i = icmp eq i8 %conv836.i, 3
  %bf.shl860.i = select i1 %cmp855.i, i16 8, i16 0
  %bf.clear861.i = and i16 %bf.set847.i, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv836.i)
  %cmp865.i = icmp eq i8 %conv836.i, 1
  %bf.shl870.i = select i1 %cmp865.i, i16 4, i16 0
  %bf.set862.i = or i16 %bf.shl870.i, %bf.shl860.i
  %bf.set872.i = or i16 %bf.set862.i, %bf.clear861.i
  br label %if.end874.i

if.end874.i:                                      ; preds = %if.then853.i, %do.end832.i.if.end874.i_crit_edge
  %storemerge.i = phi i16 [ %bf.set872.i, %if.then853.i ], [ %bf.set847.i, %do.end832.i.if.end874.i_crit_edge ]
  %236 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 %storemerge.i, ptr %amsdu.i, align 1
  %237 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast876.i = ptrtoint ptr %rxd.5.i to i32
  %sub.ptr.rhs.cast877.i = ptrtoint ptr %238 to i32
  %sub.ptr.sub878.i = sub i32 %sub.ptr.lhs.cast876.i, %sub.ptr.rhs.cast877.i
  %239 = lshr i32 %53, 13
  %mul880.i = and i32 %239, 6
  %add881.i = add i32 %sub.ptr.sub878.i, %mul880.i
  %conv882.i = trunc i32 %add881.i to i16
  br i1 %tobool19.not.i, label %land.lhs.true897.critedge.i, label %land.lhs.true885.i

land.lhs.true885.i:                               ; preds = %if.end874.i
  %240 = and i16 %fc.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %cmp.i1276.not.i = icmp eq i16 %240, 0
  br i1 %cmp.i1276.not.i, label %if.else907.critedge.i, label %if.then888.i

if.then888.i:                                     ; preds = %land.lhs.true885.i
  %call889.i = tail call fastcc i32 @mt7915_reverse_frag0_hdr_trans(ptr noundef %skb, i16 noundef zeroext %conv882.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call889.i)
  %tobool890.not.i = icmp eq i32 %call889.i, 0
  br i1 %tobool890.not.i, label %if.then888.i.if.then945.i_crit_edge, label %if.then888.i.sw.default_crit_edge

if.then888.i.sw.default_crit_edge:                ; preds = %if.then888.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.then888.i.if.then945.i_crit_edge:              ; preds = %if.then888.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then945.i

land.lhs.true897.critedge.i:                      ; preds = %if.end874.i
  %conv894.c1269.i = and i32 %add881.i, 65535
  %call895.c1270.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv894.c1269.i) #7
  %241 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_loadN_noabort(i32 %241, i32 2)
  %bf.load899.i = load i16, ptr %amsdu.i, align 1
  %242 = and i16 %bf.load899.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool904.not.i = icmp eq i16 %242, 0
  br i1 %tobool904.not.i, label %land.lhs.true897.critedge.i.if.then945.i_crit_edge, label %if.end935.i

land.lhs.true897.critedge.i.if.then945.i_crit_edge: ; preds = %land.lhs.true897.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then945.i

if.else907.critedge.i:                            ; preds = %land.lhs.true885.i
  %conv894.c.i = and i32 %add881.i, 65535
  %call895.c.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv894.c.i) #7
  %and911.i = and i32 %53, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and911.i)
  %tobool912.not.i = icmp eq i32 %and911.i, 0
  br i1 %tobool912.not.i, label %if.else907.critedge.i.if.else974.i_crit_edge, label %if.then913.i

if.else907.critedge.i.if.else974.i_crit_edge:     ; preds = %if.else907.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else974.i

if.then913.i:                                     ; preds = %if.else907.critedge.i
  %243 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %data, align 4
  %add.ptr915.i = getelementptr i8, ptr %244, i32 12
  %245 = ptrtoint ptr %add.ptr915.i to i32
  call void @__asan_loadN_noabort(i32 %245, i32 2)
  %246 = load i16, ptr %add.ptr915.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %246)
  %cmp918.i = icmp eq i16 %246, -32512
  %spec.select.i = select i1 %cmp918.i, i32 16, i32 12
  %add.ptr924.i = getelementptr i8, ptr %244, i32 %spec.select.i
  %247 = ptrtoint ptr %add.ptr924.i to i32
  call void @__asan_loadN_noabort(i32 %247, i32 2)
  %248 = load i16, ptr %add.ptr924.i, align 1
  %conv926.i = zext i16 %248 to i32
  %249 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %len, align 4
  %sub928.i = select i1 %cmp918.i, i32 -18, i32 -14
  %sub929.i = add i32 %sub928.i, %250
  call void @__sanitizer_cov_trace_cmp4(i32 %sub929.i, i32 %conv926.i)
  %cmp930.not.i = icmp eq i32 %sub929.i, %conv926.i
  br i1 %cmp930.not.i, label %if.else974.critedge.i, label %if.then913.i.if.else974.i_crit_edge

if.then913.i.if.else974.i_crit_edge:              ; preds = %if.then913.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else974.i

if.end935.i:                                      ; preds = %land.lhs.true897.critedge.i
  %call906.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call906.i)
  %tobool936.not.i = icmp eq i32 %call906.i, 0
  br i1 %tobool936.not.i, label %if.end935.i.if.then945.i_crit_edge, label %if.then945.critedge.i

if.end935.i.if.then945.i_crit_edge:               ; preds = %if.end935.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then945.i

if.then945.critedge.i:                            ; preds = %if.end935.i
  call void @__sanitizer_cov_trace_pc() #9
  %251 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %data, align 4
  %add.ptr939.c.i = getelementptr i8, ptr %252, i32 2
  %253 = call ptr @memmove(ptr %add.ptr939.c.i, ptr %252, i32 %call906.i)
  %call941.c.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  br label %if.then945.i

if.then945.i:                                     ; preds = %if.then945.critedge.i, %if.end935.i.if.then945.i_crit_edge, %land.lhs.true897.critedge.i.if.then945.i_crit_edge, %if.then888.i.if.then945.i_crit_edge
  br i1 %insert_ccmp_hdr.2.off0.i, label %if.then947.i, label %if.then945.i.if.end967.i_crit_edge

if.then945.i.if.end967.i_crit_edge:               ; preds = %if.then945.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end967.i

if.then947.i:                                     ; preds = %if.then945.i
  call void @__sanitizer_cov_trace_pc() #9
  %and964.i = lshr i32 %50, 21
  %254 = trunc i32 %and964.i to i8
  %conv966.i = and i8 %254, 3
  tail call void @mt76_insert_ccmp_hdr(ptr noundef %skb, i8 noundef zeroext %conv966.i) #7
  br label %if.end967.i

if.end967.i:                                      ; preds = %if.then947.i, %if.then945.i.if.end967.i_crit_edge
  %255 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %data, align 4
  %mstat.sroa.4.0.arraydecay.sroa_idx.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %257 = ptrtoint ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %mstat.sroa.4.0.copyload.i.i = load i32, ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i.i, align 4
  %and.i.i = and i32 %mstat.sroa.4.0.copyload.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1277.i = icmp eq i32 %and.i.i, 0
  %spec.select.idx.i.i = select i1 %tobool.not.i1277.i, i32 0, i32 12
  %spec.select.i1278.i = getelementptr i8, ptr %256, i32 %spec.select.idx.i.i
  %and6.i.i = and i32 %mstat.sroa.4.0.copyload.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %data.1.idx.i.i = select i1 %tobool7.not.i.i, i32 0, i32 12
  %data.1.i.i = getelementptr i8, ptr %spec.select.i1278.i, i32 %data.1.idx.i.i
  %258 = ptrtoint ptr %data.1.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %data.1.i.i, align 2
  %260 = and i16 %259, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %260)
  %cmp.i1279.i = icmp eq i16 %260, -30720
  br i1 %cmp.i1279.i, label %if.then970.i, label %if.end967.i.if.end977.i_crit_edge

if.end967.i.if.end977.i_crit_edge:                ; preds = %if.end967.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end977.i

if.then970.i:                                     ; preds = %if.end967.i
  call void @__sanitizer_cov_trace_pc() #9
  %seq_ctrl971.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %data.1.i.i, i32 0, i32 5
  %261 = ptrtoint ptr %seq_ctrl971.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %seq_ctrl971.i, align 2
  %263 = tail call i16 @llvm.bswap.i16(i16 %262) #7
  %264 = and i16 %259, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %264)
  %cmp.i.i.i = icmp eq i16 %264, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i1280.i = getelementptr i8, ptr %data.1.i.i, i32 %retval.0.v.i.i
  %265 = ptrtoint ptr %retval.0.i1280.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %retval.0.i1280.i, align 1
  br label %if.end977.i

if.else974.critedge.i:                            ; preds = %if.then913.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr939.c1304.i = getelementptr i8, ptr %244, i32 2
  %267 = call ptr @memmove(ptr %add.ptr939.c1304.i, ptr %244, i32 %spec.select.i)
  %call941.c1305.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  br label %if.else974.i

if.else974.i:                                     ; preds = %if.else974.critedge.i, %if.then913.i.if.else974.i_crit_edge, %if.else907.critedge.i.if.else974.i_crit_edge
  %flag975.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %268 = ptrtoint ptr %flag975.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %flag975.i, align 4
  %or976.i = or i32 %269, 1073741824
  store i32 %or976.i, ptr %flag975.i, align 4
  br label %if.end977.i

if.end977.i:                                      ; preds = %if.else974.i, %if.then970.i, %if.end967.i.if.end977.i_crit_edge
  %fc.1.i = phi i16 [ %fc.0.i, %if.else974.i ], [ %259, %if.then970.i ], [ %259, %if.end967.i.if.end977.i_crit_edge ]
  %qos_ctl.2.i = phi i8 [ %qos_ctl.0.i, %if.else974.i ], [ %266, %if.then970.i ], [ %qos_ctl.0.i, %if.end967.i.if.end977.i_crit_edge ]
  %seq_ctrl.2.i = phi i16 [ %seq_ctrl.0.i, %if.else974.i ], [ %263, %if.then970.i ], [ %seq_ctrl.0.i, %if.end967.i.if.end977.i_crit_edge ]
  %tobool978.not.i = icmp ne ptr %rxv.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mode.3.i)
  %cmp980.i = icmp ugt i32 %mode.3.i, 7
  %or.cond1271.i = select i1 %tobool978.not.i, i1 %cmp980.i, i1 false
  br i1 %or.cond1271.i, label %land.lhs.true982.i, label %if.end977.i.if.end987.i_crit_edge

if.end977.i.if.end987.i_crit_edge:                ; preds = %if.end977.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end987.i

land.lhs.true982.i:                               ; preds = %if.end977.i
  %flag983.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %270 = ptrtoint ptr %flag983.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %flag983.i, align 4
  %and984.i = and i32 %271, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and984.i)
  %tobool985.not.i = icmp eq i32 %and984.i, 0
  br i1 %tobool985.not.i, label %if.then986.i, label %land.lhs.true982.i.if.end987.i_crit_edge

land.lhs.true982.i.if.end987.i_crit_edge:         ; preds = %land.lhs.true982.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end987.i

if.then986.i:                                     ; preds = %land.lhs.true982.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mt7915_mac_decode_he_radiotap(ptr noundef %skb, ptr noundef nonnull %rxv.0.i, i32 noundef %mode.3.i) #7
  br label %if.end987.i

if.end987.i:                                      ; preds = %if.then986.i, %land.lhs.true982.i.if.end987.i_crit_edge, %if.end977.i.if.end987.i_crit_edge
  %272 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cb.i, align 4
  %tobool988.not.i = icmp ne ptr %273, null
  %274 = and i16 %fc.1.i, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %274)
  %cmp.i1281.i = icmp eq i16 %274, -30720
  %or.cond1302.i = select i1 %tobool988.not.i, i1 %cmp.i1281.i, i1 false
  br i1 %or.cond1302.i, label %if.end991.i, label %if.end987.i.if.then_crit_edge

if.end987.i.if.then_crit_edge:                    ; preds = %if.end987.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end991.i:                                      ; preds = %if.end987.i
  call void @__sanitizer_cov_trace_pc() #9
  %275 = and i16 %fc.1.i, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %275)
  %cmp.i1282.i = icmp eq i16 %275, -14336
  %phi.sel.i = select i1 %cmp.i1282.i, i8 0, i8 64
  %276 = select i1 %cmp.i, i8 %phi.sel.i, i8 0
  %aggr.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %277 = ptrtoint ptr %aggr.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %bf.load998.i = load i8, ptr %aggr.i, align 2
  %bf.clear1001.i = and i8 %bf.load998.i, -65
  %bf.set1002.i = or i8 %bf.clear1001.i, %276
  store i8 %bf.set1002.i, ptr %aggr.i, align 2
  %qos_ctl1003.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 23
  %278 = ptrtoint ptr %qos_ctl1003.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %qos_ctl.2.i, ptr %qos_ctl1003.i, align 1
  %279 = lshr i16 %seq_ctrl.2.i, 4
  %seqno.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %280 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %279, ptr %seqno.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.end991.i, %if.end987.i.if.then_crit_edge
  tail call void @mt76_rx(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #7
  br label %cleanup

sw.default:                                       ; preds = %if.then888.i.sw.default_crit_edge, %sw.epilog739.i.sw.default_crit_edge, %do.end676.i.sw.default_crit_edge, %sw.bb653.i.sw.default_crit_edge, %do.end627.i.sw.default_crit_edge, %if.then564.i.sw.default_crit_edge, %if.then352.i.sw.default_crit_edge, %if.end338.i.sw.default_crit_edge, %if.end298.i.sw.default_crit_edge, %if.then166.i.sw.default_crit_edge, %do.end154.i.sw.default_crit_edge, %if.end72.i.sw.default_crit_edge, %if.end17.i.sw.default_crit_edge, %if.end10.i.sw.default_crit_edge, %if.then.i51.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then, %for.end, %mt7915_mac_fill_rx_vector.exit, %sw.bb18, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mcu_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef %e) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  %3 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %e, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %4, i32 noundef 1) #7
  br label %if.end7

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %4, inttoptr (i32 -1 to ptr)
  br i1 %cmp, label %mt7915_txwi_to_txp.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

mt7915_txwi_to_txp.exit:                          ; preds = %if.end
  %drv.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 11
  %5 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv.i.i, align 16
  %txwi_size.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %txwi_size.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %txwi_size.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %idx.neg.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 32
  %token = getelementptr inbounds %struct.mt7915_txp, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %token to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %token, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %11 to i32
  %token_lock.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %token_lock.i) #7
  %token1.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 29
  %call.i = tail call ptr @idr_remove(ptr noundef %token1.i, i32 noundef %conv) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %token_lock.i) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %mt7915_txwi_to_txp.exit.cond.end_crit_edge, label %cond.true

mt7915_txwi_to_txp.exit.cond.end_crit_edge:       ; preds = %mt7915_txwi_to_txp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %mt7915_txwi_to_txp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %skb = getelementptr inbounds %struct.mt76_txwi_cache, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mt7915_txwi_to_txp.exit.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ null, %mt7915_txwi_to_txp.exit.cond.end_crit_edge ]
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond, ptr %e, align 4
  br label %if.end4

if.end4:                                          ; preds = %cond.end, %if.end.if.end4_crit_edge
  %15 = phi ptr [ %cond, %cond.end ], [ %4, %if.end.if.end4_crit_edge ]
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %wcid = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %16 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wcid, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %17, ptr noundef nonnull %15, ptr noundef null) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_cca_stats_reset(ptr noundef readonly %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp.not = icmp eq ptr %phy2, %phy
  %add3 = select i1 %cmp.not, i32 -2096619516, i32 -2096553980
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %add3, i32 noundef 3584, i32 noundef 0) #7
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %rmw5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rmw5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw5, align 4
  %call6 = tail call i32 %9(ptr noundef %1, i32 noundef %add3, i32 noundef 0, i32 noundef 2560) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_reset_counters(ptr noundef %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp.not = icmp eq ptr %phy2, %phy
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %cond = select i1 %cmp.not, i32 149504, i32 673792
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add4 = or i32 %cond, 168
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %add4) #7
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add11 = or i32 %cond, 356
  %call12 = tail call i32 %9(ptr noundef %1, i32 noundef %add11) #7
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add4.1 = or i32 %cond, 172
  %call.1 = tail call i32 %13(ptr noundef %1, i32 noundef %add4.1) #7
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add11.1 = or i32 %cond, 360
  %call12.1 = tail call i32 %17(ptr noundef %1, i32 noundef %add11.1) #7
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add4.2 = or i32 %cond, 176
  %call.2 = tail call i32 %21(ptr noundef %1, i32 noundef %add4.2) #7
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %add11.2 = or i32 %cond, 364
  %call12.2 = tail call i32 %25(ptr noundef %1, i32 noundef %add11.2) #7
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add4.3 = or i32 %cond, 180
  %call.3 = tail call i32 %29(ptr noundef %1, i32 noundef %add4.3) #7
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %add11.3 = or i32 %cond, 368
  %call12.3 = tail call i32 %33(ptr noundef %1, i32 noundef %add11.3) #7
  %call.i43 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy215 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %phy215 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy215, align 8
  %survey_time = getelementptr inbounds %struct.mt76_phy, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %survey_time to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i43, ptr %survey_time, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %survey_time18 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %survey_time18 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call.i43, ptr %survey_time18, align 16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cond21 = phi i32 [ 137088, %if.else ], [ 661376, %if.then ]
  %i.1 = phi i32 [ 0, %if.else ], [ 16, %if.then ]
  %arrayidx = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %i.1
  %38 = call ptr @memset(ptr %arrayidx, i32 0, i32 64)
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw, align 4
  %call23 = tail call i32 %42(ptr noundef %1, i32 noundef %cond21, i32 noundef 0, i32 noundef -2147483648) #7
  %call24 = tail call i32 @mt7915_mcu_get_chan_mib_info(ptr noundef %phy, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_get_chan_mib_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_set_timing(ptr noundef readonly %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coverage_class1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 10
  %0 = ptrtoint ptr %coverage_class1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coverage_class1, align 2
  %dev2 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %phy3 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %phy3, %phy
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp65 = icmp eq i32 %9, 1
  %state = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %coverage_class71 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4, i32 10
  br label %if.end96.sink.split

if.else:                                          ; preds = %if.end
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.if.end96_crit_edge, label %mt7915_ext_phy.exit

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

mt7915_ext_phy.exit:                              ; preds = %if.else
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %tobool80.not = icmp eq ptr %16, null
  br i1 %tobool80.not, label %mt7915_ext_phy.exit.if.end96_crit_edge, label %if.then81

mt7915_ext_phy.exit.if.end96_crit_edge:           ; preds = %mt7915_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then81:                                        ; preds = %mt7915_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %coverage_class82 = getelementptr inbounds %struct.mt7915_phy, ptr %16, i32 0, i32 10
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.then81, %if.then69
  %coverage_class82.sink = phi ptr [ %coverage_class82, %if.then81 ], [ %coverage_class71, %if.then69 ]
  %cond99.ph = phi i32 [ 134272, %if.then81 ], [ 658560, %if.then69 ]
  %17 = ptrtoint ptr %coverage_class82.sink to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %coverage_class82.sink, align 2
  %19 = tail call i16 @llvm.smax.i16(i16 %18, i16 %1)
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %mt7915_ext_phy.exit.if.end96_crit_edge, %if.else.if.end96_crit_edge
  %cond99 = phi i32 [ 134272, %mt7915_ext_phy.exit.if.end96_crit_edge ], [ 134272, %if.else.if.end96_crit_edge ], [ %cond99.ph, %if.end96.sink.split ]
  %coverage_class.1 = phi i16 [ %1, %mt7915_ext_phy.exit.if.end96_crit_edge ], [ %1, %if.else.if.end96_crit_edge ], [ %19, %if.end96.sink.split ]
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw, align 4
  %call100 = tail call i32 %23(ptr noundef %3, i32 noundef %cond99, i32 noundef 0, i32 noundef 768) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #7
  %conv101 = sext i16 %coverage_class.1 to i32
  %mul = mul nsw i32 %conv101, 3
  %and123 = and i32 %mul, 65535
  %shl146 = mul i32 %conv101, 196608
  %or148 = or i32 %and123, %shl146
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr, align 4
  %cond152 = select i1 %cmp.not, i32 135168, i32 659456
  %add153 = or i32 %cond152, 144
  %add154 = add i32 %or148, 3145959
  tail call void %28(ptr noundef %3, i32 noundef %add153, i32 noundef %add154) #7
  %29 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus, align 4
  %wr156 = getelementptr inbounds %struct.mt76_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wr156 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr156, align 4
  %add160 = or i32 %cond152, 148
  %add161 = add i32 %or148, 1835068
  tail call void %32(ptr noundef %3, i32 noundef %add160, i32 noundef %add161) #7
  %slottime = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 11
  %33 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %slottime, align 4
  %add167 = or i32 %cond152, 164
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr163 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr163 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr163, align 4
  %conv260 = zext i8 %34 to i32
  %shl261 = shl nuw i32 %conv260, 24
  %and262 = and i32 %shl261, 2130706432
  %or234 = select i1 %cmp65, i32 657492, i32 657486
  %or263 = or i32 %or234, %and262
  tail call void %38(ptr noundef %3, i32 noundef %add167, i32 noundef %or263) #7
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %wr265 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr265 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr265, align 4
  %add269 = or i32 %cond152, 180
  tail call void %42(ptr noundef %3, i32 noundef %add269, i32 noundef 314) #7
  %43 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %slottime, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %44)
  %cmp288 = icmp ult i8 %44, 20
  %brmerge = select i1 %cmp288, i1 true, i1 %cmp65
  %val.0 = select i1 %brmerge, i32 73, i32 3
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 4
  %rmw296 = getelementptr inbounds %struct.mt76_bus_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rmw296 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmw296, align 4
  %add300 = select i1 %cmp.not, i32 133252, i32 657540
  %call325 = tail call i32 %48(ptr noundef %3, i32 noundef %add300, i32 noundef 16383, i32 noundef %val.0) #7
  %49 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus, align 4
  %rmw327 = getelementptr inbounds %struct.mt76_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %rmw327 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmw327, align 4
  %call332 = tail call i32 %52(ptr noundef %3, i32 noundef %cond99, i32 noundef 768, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_enable_nf(ptr noundef %dev, i1 noundef zeroext %ext_phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %shl = select i1 %ext_phy, i32 65536, i32 0
  %add1 = or i32 %shl, -2096594384
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %add1, i32 noundef 0, i32 noundef 537133056) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw3, align 4
  %add8 = or i32 %shl, -2096619516
  %call17 = tail call i32 %7(ptr noundef %dev, i32 noundef %add8, i32 noundef 0, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_update_channel(ptr nocapture noundef readonly %mphy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chan_state = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 7
  %2 = ptrtoint ptr %chan_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_state, align 4
  %dev = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %phy1 = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 4
  %cmp = icmp ne ptr %1, %phy1
  %call = tail call i32 @mt7915_mcu_get_chan_mib_info(ptr noundef %1, i1 noundef zeroext false) #7
  %conv = zext i1 %cmp to i32
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dbdc_support.i = getelementptr inbounds %struct.mt7915_dev, ptr %7, i32 0, i32 17
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 10
  br label %cond.false.i

cond.false.i:                                     ; preds = %for.body.i, %entry
  %sum.0.i = phi i32 [ 0, %entry ], [ %add89.10.i, %for.body.i ]
  %n.0.i = phi i32 [ 0, %entry ], [ %add90.10.i, %for.body.i ]
  %nss.0.i = phi i32 [ 0, %entry ], [ %inc93.i, %for.body.i ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %chainmask.i = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %chainmask.i, align 2
  %conv76.i = zext i16 %11 to i32
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv76.i) #7
  %cmp.i = icmp ult i32 %nss.0.i, %call.i.i
  br i1 %cmp.i, label %for.body.i, label %for.end94.i

for.body.i:                                       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dbdc_support.i, align 4, !range !47
  %14 = zext i8 %13 to i32
  %shl.i = shl i32 %conv, %14
  %add80.i = add i32 %shl.i, %nss.0.i
  %shl81.i = shl i32 %add80.i, 16
  %add82.i = add i32 %shl81.i, -2097127424
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call87.i = tail call i32 %18(ptr noundef %7, i32 noundef %add82.i) #7
  %mul.i = mul i32 %call87.i, 92
  %add89.i = add i32 %mul.i, %sum.0.i
  %add90.i = add i32 %call87.i, %n.0.i
  %add91.i = add i32 %shl81.i, -2097127420
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call87.1.i = tail call i32 %22(ptr noundef %7, i32 noundef %add91.i) #7
  %mul.1.i = mul i32 %call87.1.i, 89
  %add89.1.i = add i32 %add89.i, %mul.1.i
  %add90.1.i = add i32 %add90.i, %call87.1.i
  %add91.1.i = add i32 %shl81.i, -2097127416
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call87.2.i = tail call i32 %26(ptr noundef %7, i32 noundef %add91.1.i) #7
  %mul.2.i = mul i32 %call87.2.i, 86
  %add89.2.i = add i32 %add89.1.i, %mul.2.i
  %add90.2.i = add i32 %add90.1.i, %call87.2.i
  %add91.2.i = add i32 %shl81.i, -2097127412
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call87.3.i = tail call i32 %30(ptr noundef %7, i32 noundef %add91.2.i) #7
  %mul.3.i = mul i32 %call87.3.i, 83
  %add89.3.i = add i32 %add89.2.i, %mul.3.i
  %add90.3.i = add i32 %add90.2.i, %call87.3.i
  %add91.3.i = add i32 %shl81.i, -2097127408
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call87.4.i = tail call i32 %34(ptr noundef %7, i32 noundef %add91.3.i) #7
  %mul.4.i = mul i32 %call87.4.i, 80
  %add89.4.i = add i32 %add89.3.i, %mul.4.i
  %add90.4.i = add i32 %add90.3.i, %call87.4.i
  %add91.4.i = add i32 %shl81.i, -2097127404
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call87.5.i = tail call i32 %38(ptr noundef %7, i32 noundef %add91.4.i) #7
  %mul.5.i = mul i32 %call87.5.i, 75
  %add89.5.i = add i32 %add89.4.i, %mul.5.i
  %add90.5.i = add i32 %add90.4.i, %call87.5.i
  %add91.5.i = add i32 %shl81.i, -2097127400
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call87.6.i = tail call i32 %42(ptr noundef %7, i32 noundef %add91.5.i) #7
  %mul.6.i = mul i32 %call87.6.i, 70
  %add89.6.i = add i32 %add89.5.i, %mul.6.i
  %add90.6.i = add i32 %add90.5.i, %call87.6.i
  %add91.6.i = add i32 %shl81.i, -2097127396
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call87.7.i = tail call i32 %46(ptr noundef %7, i32 noundef %add91.6.i) #7
  %mul.7.i = mul i32 %call87.7.i, 65
  %add89.7.i = add i32 %add89.6.i, %mul.7.i
  %add90.7.i = add i32 %add90.6.i, %call87.7.i
  %add91.7.i = add i32 %shl81.i, -2097127392
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call87.8.i = tail call i32 %50(ptr noundef %7, i32 noundef %add91.7.i) #7
  %mul.8.i = mul i32 %call87.8.i, 60
  %add89.8.i = add i32 %add89.7.i, %mul.8.i
  %add90.8.i = add i32 %add90.7.i, %call87.8.i
  %add91.8.i = add i32 %shl81.i, -2097127388
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call87.9.i = tail call i32 %54(ptr noundef %7, i32 noundef %add91.8.i) #7
  %mul.9.i = mul i32 %call87.9.i, 55
  %add89.9.i = add i32 %add89.8.i, %mul.9.i
  %add90.9.i = add i32 %add90.8.i, %call87.9.i
  %add91.9.i = add i32 %shl81.i, -2097127384
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call87.10.i = tail call i32 %58(ptr noundef %7, i32 noundef %add91.9.i) #7
  %mul.10.i = mul i32 %call87.10.i, 52
  %add89.10.i = add i32 %add89.9.i, %mul.10.i
  %add90.10.i = add i32 %add90.9.i, %call87.10.i
  %inc93.i = add nuw i32 %nss.0.i, 1
  br label %cond.false.i

for.end94.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %tobool95.not.i = icmp eq i32 %n.0.i, 0
  br i1 %tobool95.not.i, label %mt7915_phy_get_nf.exit.thread, label %mt7915_phy_get_nf.exit

mt7915_phy_get_nf.exit:                           ; preds = %for.end94.i
  %div.i = udiv i32 %sum.0.i, %n.0.i
  %59 = trunc i32 %div.i to i16
  %conv3 = and i16 %59, 255
  %noise = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %noise to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %noise, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool4.not = icmp eq i16 %61, 0
  br i1 %tobool4.not, label %mt7915_phy_get_nf.exit.if.then_crit_edge, label %if.else

mt7915_phy_get_nf.exit.if.then_crit_edge:         ; preds = %mt7915_phy_get_nf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

mt7915_phy_get_nf.exit.thread:                    ; preds = %for.end94.i
  %noise34 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 9
  %62 = ptrtoint ptr %noise34 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %noise34, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool4.not35 = icmp eq i16 %63, 0
  br i1 %tobool4.not35, label %mt7915_phy_get_nf.exit.thread.if.then_crit_edge, label %mt7915_phy_get_nf.exit.thread.if.end14_crit_edge

mt7915_phy_get_nf.exit.thread.if.end14_crit_edge: ; preds = %mt7915_phy_get_nf.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

mt7915_phy_get_nf.exit.thread.if.then_crit_edge:  ; preds = %mt7915_phy_get_nf.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %mt7915_phy_get_nf.exit.thread.if.then_crit_edge, %mt7915_phy_get_nf.exit.if.then_crit_edge
  %noise41 = phi ptr [ %noise34, %mt7915_phy_get_nf.exit.thread.if.then_crit_edge ], [ %noise, %mt7915_phy_get_nf.exit.if.then_crit_edge ]
  %conv338 = phi i16 [ 0, %mt7915_phy_get_nf.exit.thread.if.then_crit_edge ], [ %conv3, %mt7915_phy_get_nf.exit.if.then_crit_edge ]
  %conv5 = shl nuw nsw i16 %conv338, 4
  %64 = ptrtoint ptr %noise41 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv5, ptr %noise41, align 8
  br label %if.end14

if.else:                                          ; preds = %mt7915_phy_get_nf.exit
  %conv96.i = trunc i32 %div.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv96.i)
  %tobool7.not = icmp eq i8 %conv96.i, 0
  br i1 %tobool7.not, label %if.else.if.end14_crit_edge, label %if.then8

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %65 = lshr i16 %61, 4
  %sub = sub i16 %61, %65
  %add = add i16 %sub, %conv3
  %66 = ptrtoint ptr %noise to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %add, ptr %noise, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else.if.end14_crit_edge, %if.then, %mt7915_phy_get_nf.exit.thread.if.end14_crit_edge
  %noise40 = phi ptr [ %noise, %if.else.if.end14_crit_edge ], [ %noise, %if.then8 ], [ %noise41, %if.then ], [ %noise34, %mt7915_phy_get_nf.exit.thread.if.end14_crit_edge ]
  %67 = ptrtoint ptr %noise40 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %noise40, align 8
  %69 = lshr i16 %68, 4
  %70 = trunc i16 %69 to i8
  %sub18 = sub i8 0, %70
  %noise20 = getelementptr inbounds %struct.mt76_channel_state, ptr %3, i32 0, i32 5
  %71 = ptrtoint ptr %noise20 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %sub18, ptr %noise20, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_tx_token_put(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %token_lock = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %token_lock) #7
  %token = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call8 = call ptr @idr_get_next(ptr noundef %token, ptr noundef nonnull %id) #7
  %cmp.not9 = icmp eq ptr %call8, null
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %token_count = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call10 = phi ptr [ %call8, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  call fastcc void @mt7915_txwi_free(ptr noundef %dev, ptr noundef nonnull %call10, ptr noundef null, ptr noundef null)
  %1 = ptrtoint ptr %token_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %token_count, align 32
  %dec = add i32 %2, -1
  store i32 %dec, ptr %token_count, align 32
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %add = add i32 %4, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %token, ptr noundef nonnull %id) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %token_lock) #7
  call void @idr_destroy(ptr noundef %token) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_txwi_free(ptr noundef %dev, ptr noundef %t, ptr noundef %sta, ptr noundef %free_list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %t, null
  br i1 %tobool.not.i.i, label %entry.mt7915_txwi_to_txp.exit.i_crit_edge, label %if.end.i.i

entry.mt7915_txwi_to_txp.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_txwi_to_txp.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %drv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i.i.i, align 16
  %txwi_size.i.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %txwi_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %txwi_size.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %t, i32 %idx.neg.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 32
  br label %mt7915_txwi_to_txp.exit.i

mt7915_txwi_to_txp.exit.i:                        ; preds = %if.end.i.i, %entry.mt7915_txwi_to_txp.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %entry.mt7915_txwi_to_txp.exit.i_crit_edge ]
  %nbuf.i = getelementptr inbounds %struct.mt7915_txp, ptr %retval.0.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %nbuf.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nbuf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp12.not.i = icmp eq i8 %5, 0
  br i1 %cmp12.not.i, label %mt7915_txwi_to_txp.exit.i.mt7915_txp_skb_unmap.exit_crit_edge, label %for.body.lr.ph.i

mt7915_txwi_to_txp.exit.i.mt7915_txp_skb_unmap.exit_crit_edge: ; preds = %mt7915_txwi_to_txp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_txp_skb_unmap.exit

for.body.lr.ph.i:                                 ; preds = %mt7915_txwi_to_txp.exit.i
  %dev2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2.i, align 8
  %arrayidx.i = getelementptr %struct.mt7915_txp, ptr %retval.0.i.i, i32 0, i32 5, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %arrayidx3.i = getelementptr %struct.mt7915_txp, ptr %retval.0.i.i, i32 0, i32 6, i32 %i.013.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx3.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #7
  %conv4.i = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %10, i32 noundef %conv4.i, i32 noundef 1, i32 noundef 0) #7
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %14 = ptrtoint ptr %nbuf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nbuf.i, align 1
  %conv.i = zext i8 %15 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mt7915_txp_skb_unmap.exit_crit_edge

for.body.i.mt7915_txp_skb_unmap.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_txp_skb_unmap.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mt7915_txp_skb_unmap.exit:                        ; preds = %for.body.i.mt7915_txp_skb_unmap.exit_crit_edge, %mt7915_txwi_to_txp.exit.i.mt7915_txp_skb_unmap.exit_crit_edge
  %skb = getelementptr inbounds %struct.mt76_txwi_cache, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %mt7915_txp_skb_unmap.exit.out_crit_edge, label %if.end

mt7915_txp_skb_unmap.exit.out_crit_edge:          ; preds = %mt7915_txp_skb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %mt7915_txp_skb_unmap.exit
  %drv.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %18 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv.i, align 16
  %txwi_size.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %txwi_size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %txwi_size.i, align 4
  %conv.i37 = zext i16 %21 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i37
  %add.ptr.i = getelementptr i8, ptr %t, i32 %idx.neg.i
  %tobool1.not = icmp eq ptr %sta, null
  br i1 %tobool1.not, label %do.end20, label %if.then2

if.then2:                                         ; preds = %if.end
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %idx, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 18
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %25)
  %cmp.not = icmp eq i16 %25, -30578
  br i1 %cmp.not, label %if.then2.if.end22_crit_edge, label %lor.lhs.false.i, !prof !51

if.then2.if.end22_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

lor.lhs.false.i:                                  ; preds = %if.then2
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ht_supported.i, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end22_crit_edge, label %do.end13.i

lor.lhs.false.i.if.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end13.i:                                       ; preds = %lor.lhs.false.i
  %arrayidx.i38 = getelementptr i32, ptr %add.ptr.i, i32 1
  %28 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i38, align 4
  %30 = trunc i32 %29 to i16
  %31 = lshr i16 %30, 12
  %conv.i39 = and i16 %31, 7
  %conv14.i = zext i16 %conv.i39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv.i39)
  %cmp.i40 = icmp ugt i16 %conv.i39, 5
  br i1 %cmp.i40, label %do.end13.i.if.end22_crit_edge, label %if.end17.i

do.end13.i.if.end22_crit_edge:                    ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end17.i:                                       ; preds = %do.end13.i
  %arrayidx18.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %32 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx18.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %35 = lshr i32 %34, 2
  %shl.i = and i32 %35, 12
  %and53.i = shl i32 %34, 4
  %shl55.i = and i32 %and53.i, 240
  %or.i = or i32 %shl.i, %shl55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %or.i)
  %cmp58.not.i = icmp eq i32 %or.i, 136
  br i1 %cmp58.not.i, label %if.end63.i, label %if.end17.i.if.end22_crit_edge, !prof !52

if.end17.i.if.end22_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end63.i:                                       ; preds = %if.end17.i
  %ampdu_state.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5, i32 2, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %conv14.i, ptr noundef %ampdu_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool65.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end63.i.if.end22_crit_edge

if.end63.i.if.end22_crit_edge:                    ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %call67.i = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef nonnull %sta, i16 noundef zeroext %conv.i39, i16 noundef zeroext 0) #7
  br label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i32, ptr %add.ptr.i, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %38 = and i32 %37, -16580608
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %conv21 = trunc i32 %39 to i16
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.then66.i, %if.end63.i.if.end22_crit_edge, %if.end17.i.if.end22_crit_edge, %do.end13.i.if.end22_crit_edge, %lor.lhs.false.i.if.end22_crit_edge, %if.then2.if.end22_crit_edge
  %wcid_idx.0 = phi i16 [ %23, %if.then2.if.end22_crit_edge ], [ %conv21, %do.end20 ], [ %23, %lor.lhs.false.i.if.end22_crit_edge ], [ %23, %do.end13.i.if.end22_crit_edge ], [ %23, %if.end17.i.if.end22_crit_edge ], [ %23, %if.end63.i.if.end22_crit_edge ], [ %23, %if.then66.i ]
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %dev, i16 noundef zeroext %wcid_idx.0, ptr noundef %41, ptr noundef %free_list) #7
  br label %out

out:                                              ; preds = %if.end22, %mt7915_txp_skb_unmap.exit.out_crit_edge
  %42 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %skb, align 4
  tail call void @mt76_put_txwi(ptr noundef %dev, ptr noundef %t) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_reset_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -13240
  %phy21 = getelementptr i8, ptr %work, i32 -12512
  %0 = ptrtoint ptr %phy21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy21, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %reset_state = getelementptr i8, ptr %work, i32 96
  %4 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %reset_state, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_stop_queues(ptr noundef %7) #7
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %9) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %state = getelementptr i8, ptr %work, i32 -13228
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #7
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #7
  %wait = getelementptr i8, ptr %work, i32 -12096
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %mac_work = getelementptr i8, ptr %work, i32 -12680
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #7
  %tobool9.not = icmp eq ptr %cond, null
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cond, align 8
  %state11 = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state11) #7
  %12 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cond, align 8
  %mac_work13 = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 18
  %call14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work13) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7.if.end15_crit_edge
  %tx_worker = getelementptr i8, ptr %work, i32 -5104
  %14 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end15.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end15.mt76_worker_disable.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %15) #7
  %state.i = getelementptr i8, ptr %work, i32 -5096
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end15.mt76_worker_disable.exit_crit_edge
  %napi = getelementptr i8, ptr %work, i32 -7304
  tail call void @napi_disable(ptr noundef %napi) #7
  %arrayidx17 = getelementptr i8, ptr %work, i32 -7080
  tail call void @napi_disable(ptr noundef %arrayidx17) #7
  %arrayidx19 = getelementptr i8, ptr %work, i32 -6856
  tail call void @napi_disable(ptr noundef %arrayidx19) #7
  %tx_napi = getelementptr i8, ptr %work, i32 -5088
  tail call void @napi_disable(ptr noundef %tx_napi) #7
  %mutex = getelementptr i8, ptr %work, i32 -12360
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %bus = getelementptr i8, ptr %work, i32 -12268
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr, align 4
  tail call void %20(ptr noundef %add.ptr, i32 noundef 12552, i32 noundef 1) #7
  %call20 = tail call fastcc zeroext i1 @mt7915_wait_reset_state(ptr noundef %add.ptr, i32 noundef 8)
  br i1 %call20, label %if.then21, label %mt76_worker_disable.exit.if.end25_crit_edge

mt76_worker_disable.exit.if.end25_crit_edge:      ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %mt76_worker_disable.exit
  %21 = ptrtoint ptr %phy21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy21, align 8
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw.i, align 4
  %call.i120 = tail call i32 %26(ptr noundef %add.ptr, i32 noundef 868872, i32 noundef 5, i32 noundef 0) #7
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw2.i, align 4
  %call3.i = tail call i32 %30(ptr noundef %add.ptr, i32 noundef 872968, i32 noundef 5, i32 noundef 0) #7
  %hif2.i = getelementptr i8, ptr %work, i32 -2232
  %31 = ptrtoint ptr %hif2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hif2.i, align 128
  %tobool.not.i121 = icmp eq ptr %32, null
  br i1 %tobool.not.i121, label %if.then21.if.end.i122_crit_edge, label %if.then.i

if.then21.if.end.i122_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i122

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %rmw5.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %rmw5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw5.i, align 4
  %call6.i = tail call i32 %36(ptr noundef %add.ptr, i32 noundef 885256, i32 noundef 5, i32 noundef 0) #7
  %37 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus, align 4
  %rmw8.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %rmw8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmw8.i, align 4
  %call10.i = tail call i32 %40(ptr noundef %add.ptr, i32 noundef 889352, i32 noundef 5, i32 noundef 0) #7
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i, %if.then21.if.end.i122_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %queue_ops.i = getelementptr i8, ptr %work, i32 -5124
  %tobool11.not.i = icmp eq ptr %22, null
  %41 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %tx_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_cleanup.i, align 4
  %arrayidx.i = getelementptr i8, ptr %work, i32 -13224
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  tail call void %44(ptr noundef %add.ptr, ptr noundef %46, i1 noundef zeroext true) #7
  br i1 %tobool11.not.i, label %if.end.i122.for.inc.1.i_crit_edge, label %if.then12.i

if.end.i122.for.inc.1.i_crit_edge:                ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then12.i:                                      ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup14.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %tx_cleanup14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_cleanup14.i, align 4
  %arrayidx16.i = getelementptr %struct.mt76_phy, ptr %22, i32 0, i32 4, i32 0
  %51 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx16.i, align 4
  tail call void %50(ptr noundef %add.ptr, ptr noundef %52, i1 noundef zeroext true) #7
  %53 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.1.c103.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %tx_cleanup.1.c103.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_cleanup.1.c103.i, align 4
  %arrayidx.1.c104.i = getelementptr i8, ptr %work, i32 -13220
  %57 = ptrtoint ptr %arrayidx.1.c104.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.1.c104.i, align 4
  tail call void %56(ptr noundef %add.ptr, ptr noundef %58, i1 noundef zeroext true) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then12.i, %if.end.i122.for.inc.1.i_crit_edge
  %dev.sink.i = phi ptr [ %22, %if.then12.i ], [ %add.ptr, %if.end.i122.for.inc.1.i_crit_edge ]
  %59 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.1.c.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %tx_cleanup.1.c.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_cleanup.1.c.i, align 4
  %arrayidx.1.c.i = getelementptr %struct.mt76_phy, ptr %dev.sink.i, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %arrayidx.1.c.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.1.c.i, align 4
  tail call void %62(ptr noundef %add.ptr, ptr noundef %64, i1 noundef zeroext true) #7
  %65 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %tx_cleanup.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_cleanup.2.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %work, i32 -13216
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void %68(ptr noundef %add.ptr, ptr noundef %70, i1 noundef zeroext true) #7
  br i1 %tobool11.not.i, label %for.inc.1.i.for.inc.3.i_crit_edge, label %if.then12.2.i

for.inc.1.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then12.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup14.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %tx_cleanup14.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_cleanup14.2.i, align 4
  %arrayidx16.2.i = getelementptr %struct.mt76_phy, ptr %22, i32 0, i32 4, i32 2
  %75 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx16.2.i, align 4
  tail call void %74(ptr noundef %add.ptr, ptr noundef %76, i1 noundef zeroext true) #7
  %77 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.3.c.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %tx_cleanup.3.c.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_cleanup.3.c.i, align 4
  %arrayidx.3.c.i = getelementptr i8, ptr %work, i32 -13212
  %81 = ptrtoint ptr %arrayidx.3.c.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.3.c.i, align 4
  tail call void %80(ptr noundef %add.ptr, ptr noundef %82, i1 noundef zeroext true) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then12.2.i, %for.inc.1.i.for.inc.3.i_crit_edge
  %dev.sink109.i = phi ptr [ %22, %if.then12.2.i ], [ %add.ptr, %for.inc.1.i.for.inc.3.i_crit_edge ]
  %83 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.3.c106.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %tx_cleanup.3.c106.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_cleanup.3.c106.i, align 4
  %arrayidx.3.c107.i = getelementptr %struct.mt76_phy, ptr %dev.sink109.i, i32 0, i32 4, i32 3
  %87 = ptrtoint ptr %arrayidx.3.c107.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.3.c107.i, align 4
  tail call void %86(ptr noundef %add.ptr, ptr noundef %88, i1 noundef zeroext true) #7
  %89 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %tx_cleanup.4.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_cleanup.4.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %work, i32 -13208
  %93 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void %92(ptr noundef %add.ptr, ptr noundef %94, i1 noundef zeroext true) #7
  br i1 %tobool11.not.i, label %for.inc.3.i.for.inc.5.i_crit_edge, label %if.then12.4.i

for.inc.3.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then12.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup14.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %tx_cleanup14.4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx_cleanup14.4.i, align 4
  %arrayidx16.4.i = getelementptr %struct.mt76_phy, ptr %22, i32 0, i32 4, i32 4
  %99 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx16.4.i, align 4
  tail call void %98(ptr noundef %add.ptr, ptr noundef %100, i1 noundef zeroext true) #7
  %101 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.5.c.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %tx_cleanup.5.c.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_cleanup.5.c.i, align 4
  %arrayidx.5.c.i = getelementptr i8, ptr %work, i32 -13204
  %105 = ptrtoint ptr %arrayidx.5.c.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.5.c.i, align 4
  tail call void %104(ptr noundef %add.ptr, ptr noundef %106, i1 noundef zeroext true) #7
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then12.4.i, %for.inc.3.i.for.inc.5.i_crit_edge
  %dev.sink113.i = phi ptr [ %22, %if.then12.4.i ], [ %add.ptr, %for.inc.3.i.for.inc.5.i_crit_edge ]
  %107 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.5.c110.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %tx_cleanup.5.c110.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx_cleanup.5.c110.i, align 4
  %arrayidx.5.c111.i = getelementptr %struct.mt76_phy, ptr %dev.sink113.i, i32 0, i32 4, i32 5
  %111 = ptrtoint ptr %arrayidx.5.c111.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.5.c111.i, align 4
  tail call void %110(ptr noundef %add.ptr, ptr noundef %112, i1 noundef zeroext true) #7
  %113 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.6.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %tx_cleanup.6.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_cleanup.6.i, align 4
  %arrayidx.6.i = getelementptr i8, ptr %work, i32 -13200
  %117 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.6.i, align 4
  tail call void %116(ptr noundef %add.ptr, ptr noundef %118, i1 noundef zeroext true) #7
  br i1 %tobool11.not.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then12.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

if.then12.6.i:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup14.6.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %tx_cleanup14.6.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_cleanup14.6.i, align 4
  %arrayidx16.6.i = getelementptr %struct.mt76_phy, ptr %22, i32 0, i32 4, i32 6
  %123 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx16.6.i, align 4
  tail call void %122(ptr noundef %add.ptr, ptr noundef %124, i1 noundef zeroext true) #7
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then12.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %125 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %tx_cleanup22.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx_cleanup22.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %work, i32 -5896
  %129 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx23.i, align 4
  tail call void %128(ptr noundef %add.ptr, ptr noundef %130, i1 noundef zeroext true) #7
  %131 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %tx_cleanup22.1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tx_cleanup22.1.i, align 4
  %arrayidx23.1.i = getelementptr i8, ptr %work, i32 -5892
  %135 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx23.1.i, align 4
  tail call void %134(ptr noundef %add.ptr, ptr noundef %136, i1 noundef zeroext true) #7
  %137 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %tx_cleanup22.2.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx_cleanup22.2.i, align 4
  %arrayidx23.2.i = getelementptr i8, ptr %work, i32 -5888
  %141 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx23.2.i, align 4
  tail call void %140(ptr noundef %add.ptr, ptr noundef %142, i1 noundef zeroext true) #7
  %ndesc.i = getelementptr i8, ptr %work, i32 -5776
  %143 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ndesc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool30.not.i = icmp eq i32 %144, 0
  br i1 %tobool30.not.i, label %for.inc.6.i.for.end35.i_crit_edge, label %for.body31.i

for.inc.6.i.for.end35.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.body31.i:                                     ; preds = %for.inc.6.i
  %145 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %rx_reset.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rx_reset.i, align 4
  tail call void %148(ptr noundef %add.ptr, i32 noundef 0) #7
  %ndesc.1.i = getelementptr i8, ptr %work, i32 -5624
  %149 = ptrtoint ptr %ndesc.1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ndesc.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool30.not.1.i = icmp eq i32 %150, 0
  br i1 %tobool30.not.1.i, label %for.body31.i.for.end35.i_crit_edge, label %for.body31.1.i

for.body31.i.for.end35.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.body31.1.i:                                   ; preds = %for.body31.i
  %151 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %rx_reset.1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rx_reset.1.i, align 4
  tail call void %154(ptr noundef %add.ptr, i32 noundef 1) #7
  %ndesc.2.i = getelementptr i8, ptr %work, i32 -5472
  %155 = ptrtoint ptr %ndesc.2.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ndesc.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool30.not.2.i = icmp eq i32 %156, 0
  br i1 %tobool30.not.2.i, label %for.body31.1.i.for.end35.i_crit_edge, label %for.body31.2.i

for.body31.1.i.for.end35.i_crit_edge:             ; preds = %for.body31.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.body31.2.i:                                   ; preds = %for.body31.1.i
  %157 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %158, i32 0, i32 5
  %159 = ptrtoint ptr %rx_reset.2.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rx_reset.2.i, align 4
  tail call void %160(ptr noundef %add.ptr, i32 noundef 2) #7
  %ndesc.3.i = getelementptr i8, ptr %work, i32 -5320
  %161 = ptrtoint ptr %ndesc.3.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ndesc.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool30.not.3.i = icmp eq i32 %162, 0
  br i1 %tobool30.not.3.i, label %for.body31.2.i.for.end35.i_crit_edge, label %for.body31.3.i

for.body31.2.i.for.end35.i_crit_edge:             ; preds = %for.body31.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.body31.3.i:                                   ; preds = %for.body31.2.i
  %163 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.3.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %rx_reset.3.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rx_reset.3.i, align 4
  tail call void %166(ptr noundef %add.ptr, i32 noundef 3) #7
  %ndesc.4.i = getelementptr i8, ptr %work, i32 -5168
  %167 = ptrtoint ptr %ndesc.4.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ndesc.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool30.not.4.i = icmp eq i32 %168, 0
  br i1 %tobool30.not.4.i, label %for.body31.3.i.for.end35.i_crit_edge, label %for.body31.4.i

for.body31.3.i.for.end35.i_crit_edge:             ; preds = %for.body31.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.body31.4.i:                                   ; preds = %for.body31.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %170, i32 0, i32 5
  %171 = ptrtoint ptr %rx_reset.4.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rx_reset.4.i, align 4
  tail call void %172(ptr noundef %add.ptr, i32 noundef 4) #7
  br label %for.end35.i

for.end35.i:                                      ; preds = %for.body31.4.i, %for.body31.3.i.for.end35.i_crit_edge, %for.body31.2.i.for.end35.i_crit_edge, %for.body31.1.i.for.end35.i_crit_edge, %for.body31.i.for.end35.i_crit_edge, %for.inc.6.i.for.end35.i_crit_edge
  tail call void @mt76_tx_status_check(ptr noundef %add.ptr, i1 noundef zeroext true) #7
  tail call void @mt7915_dma_prefetch(ptr noundef %add.ptr) #7
  %173 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bus, align 4
  %rmw37.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %rmw37.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmw37.i, align 4
  %call38.i = tail call i32 %176(ptr noundef %add.ptr, i32 noundef 868872, i32 noundef 0, i32 noundef 5) #7
  %177 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bus, align 4
  %rmw40.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %rmw40.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmw40.i, align 4
  %call41.i = tail call i32 %180(ptr noundef %add.ptr, i32 noundef 872968, i32 noundef 0, i32 noundef 402653189) #7
  %181 = ptrtoint ptr %hif2.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hif2.i, align 128
  %tobool43.not.i = icmp eq ptr %182, null
  br i1 %tobool43.not.i, label %for.end35.i.mt7915_dma_reset.exit_crit_edge, label %if.then44.i

for.end35.i.mt7915_dma_reset.exit_crit_edge:      ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_dma_reset.exit

if.then44.i:                                      ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bus, align 4
  %rmw46.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %rmw46.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rmw46.i, align 4
  %call48.i = tail call i32 %186(ptr noundef %add.ptr, i32 noundef 885256, i32 noundef 0, i32 noundef 5) #7
  %187 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus, align 4
  %rmw50.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %rmw50.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rmw50.i, align 4
  %call52.i = tail call i32 %190(ptr noundef %add.ptr, i32 noundef 889352, i32 noundef 0, i32 noundef 402653189) #7
  br label %mt7915_dma_reset.exit

mt7915_dma_reset.exit:                            ; preds = %if.then44.i, %for.end35.i.mt7915_dma_reset.exit_crit_edge
  tail call void @mt7915_tx_token_put(ptr noundef %add.ptr)
  %token = getelementptr i8, ptr %work, i32 -4820
  tail call void @__raw_spin_lock_init(ptr noundef %token, ptr noundef nonnull @.str.6, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr i8, ptr %work, i32 -4776
  %191 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr i8, ptr %work, i32 -4772
  %192 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr i8, ptr %work, i32 -4768
  %193 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr i8, ptr %work, i32 -4764
  %194 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %idr_next.i.i, align 4
  %195 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bus, align 4
  %wr23 = getelementptr inbounds %struct.mt76_bus_ops, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %wr23 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %wr23, align 4
  tail call void %198(ptr noundef %add.ptr, i32 noundef 12552, i32 noundef 2) #7
  %call24 = tail call fastcc zeroext i1 @mt7915_wait_reset_state(ptr noundef %add.ptr, i32 noundef 16)
  br label %if.end25

if.end25:                                         ; preds = %mt7915_dma_reset.exit, %mt76_worker_disable.exit.if.end25_crit_edge
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #7
  br i1 %tobool9.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cond, align 8
  %state31 = getelementptr inbounds %struct.mt76_phy, ptr %200, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state31) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  tail call fastcc void @local_bh_disable()
  tail call void @napi_enable(ptr noundef %napi) #7
  %call.i123 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i123, label %if.then.i124, label %if.end32.napi_schedule.exit_crit_edge

if.end32.napi_schedule.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit

if.then.i124:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i124, %if.end32.napi_schedule.exit_crit_edge
  tail call void @napi_enable(ptr noundef %arrayidx17) #7
  %call.i126 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx17) #7
  br i1 %call.i126, label %if.then.i127, label %napi_schedule.exit.napi_schedule.exit129_crit_edge

napi_schedule.exit.napi_schedule.exit129_crit_edge: ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit129

if.then.i127:                                     ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx17) #7
  br label %napi_schedule.exit129

napi_schedule.exit129:                            ; preds = %if.then.i127, %napi_schedule.exit.napi_schedule.exit129_crit_edge
  tail call void @napi_enable(ptr noundef %arrayidx19) #7
  %call.i130 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx19) #7
  br i1 %call.i130, label %if.then.i131, label %napi_schedule.exit129.napi_schedule.exit133_crit_edge

napi_schedule.exit129.napi_schedule.exit133_crit_edge: ; preds = %napi_schedule.exit129
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit133

if.then.i131:                                     ; preds = %napi_schedule.exit129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx19) #7
  br label %napi_schedule.exit133

napi_schedule.exit133:                            ; preds = %if.then.i131, %napi_schedule.exit129.napi_schedule.exit133_crit_edge
  tail call fastcc void @local_bh_enable()
  %state.i134 = getelementptr i8, ptr %work, i32 -2220
  %call.i135 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.then.i137, label %napi_schedule.exit133.tasklet_schedule.exit_crit_edge

napi_schedule.exit133.tasklet_schedule.exit_crit_edge: ; preds = %napi_schedule.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %tasklet_schedule.exit

if.then.i137:                                     ; preds = %napi_schedule.exit133
  call void @__sanitizer_cov_trace_pc() #9
  %irq_tasklet = getelementptr i8, ptr %work, i32 -2224
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #7
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i137, %napi_schedule.exit133.tasklet_schedule.exit_crit_edge
  %201 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bus, align 4
  %wr46 = getelementptr inbounds %struct.mt76_bus_ops, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %wr46 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %wr46, align 4
  tail call void %204(ptr noundef %add.ptr, i32 noundef 12552, i32 noundef 8) #7
  %call47 = tail call fastcc zeroext i1 @mt7915_wait_reset_state(ptr noundef %add.ptr, i32 noundef 32)
  %205 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i139 = icmp eq ptr %206, null
  br i1 %tobool.not.i139, label %tasklet_schedule.exit.mt76_worker_enable.exit_crit_edge, label %if.end.i140

tasklet_schedule.exit.mt76_worker_enable.exit_crit_edge: ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i140:                                      ; preds = %tasklet_schedule.exit
  tail call void @kthread_unpark(ptr noundef nonnull %206) #7
  %207 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %208, null
  br i1 %tobool.not.i.i, label %if.end.i140.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i140.mt76_worker_enable.exit_crit_edge:    ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i140
  %state.i.i = getelementptr i8, ptr %work, i32 -5096
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %209 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %state.i.i, align 4
  %211 = and i32 %210, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool4.not.i.i = icmp eq i32 %211, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %212 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %213) #7
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i140.mt76_worker_enable.exit_crit_edge, %tasklet_schedule.exit.mt76_worker_enable.exit_crit_edge
  tail call void @napi_enable(ptr noundef %tx_napi) #7
  %call.i141 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #7
  br i1 %call.i141, label %if.then.i142, label %mt76_worker_enable.exit.napi_schedule.exit144_crit_edge

mt76_worker_enable.exit.napi_schedule.exit144_crit_edge: ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit144

if.then.i142:                                     ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %tx_napi) #7
  br label %napi_schedule.exit144

napi_schedule.exit144:                            ; preds = %if.then.i142, %mt76_worker_enable.exit.napi_schedule.exit144_crit_edge
  %214 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_wake_queues(ptr noundef %215) #7
  br i1 %tobool.not, label %napi_schedule.exit144.if.end55_crit_edge, label %if.then53

napi_schedule.exit144.if.end55_crit_edge:         ; preds = %napi_schedule.exit144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then53:                                        ; preds = %napi_schedule.exit144
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %217) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %napi_schedule.exit144.if.end55_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %hw.i = getelementptr i8, ptr %work, i32 -12508
  %218 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_iterate_interfaces(ptr noundef %219, i32 noundef 3, ptr noundef nonnull @mt7915_update_vif_beacon, ptr noundef %219) #7
  %220 = ptrtoint ptr %phy21 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %phy21, align 8
  %tobool.not.i146 = icmp eq ptr %221, null
  br i1 %tobool.not.i146, label %if.end55.mt7915_update_beacons.exit_crit_edge, label %if.end.i147

if.end55.mt7915_update_beacons.exit_crit_edge:    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_update_beacons.exit

if.end.i147:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 8
  tail call void @ieee80211_iterate_interfaces(ptr noundef %223, i32 noundef 3, ptr noundef nonnull @mt7915_update_vif_beacon, ptr noundef %223) #7
  br label %mt7915_update_beacons.exit

mt7915_update_beacons.exit:                       ; preds = %if.end.i147, %if.end55.mt7915_update_beacons.exit_crit_edge
  %224 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_queue_delayed_work(ptr noundef %225, ptr noundef %mac_work, i32 noundef 10) #7
  br i1 %tobool9.not, label %mt7915_update_beacons.exit.cleanup_crit_edge, label %if.then60

mt7915_update_beacons.exit.cleanup_crit_edge:     ; preds = %mt7915_update_beacons.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %mt7915_update_beacons.exit
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 8
  %228 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cond, align 8
  %mac_work63 = getelementptr inbounds %struct.mt76_phy, ptr %229, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %227, ptr noundef %mac_work63, i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %mt7915_update_beacons.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mt7915_wait_reset_state(ptr noundef %dev, i32 noundef %state) unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1853) #7
  %reset_state = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %reset_state, align 8
  %and = and i32 %1, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then13, label %entry.if.end66_crit_edge

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %reset_wait = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 10
  %call98 = call i32 @prepare_to_wait_event(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %3 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %reset_state, align 8
  %and2199 = and i32 %4, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2199)
  %tobool22.not100.not = icmp eq i32 %and2199, 0
  br i1 %tobool22.not100.not, label %if.then13.cleanup_crit_edge, label %if.end42.thread

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

if.end42.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end66

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.1102 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ 3000, %if.then13.cleanup_crit_edge ]
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret14.1102) #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %5 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %reset_state, align 8
  %and21 = and i32 %6, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool26.not = icmp eq i32 %call39, 0
  %spec.store.select76 = select i1 %tobool26.not, i32 1, i32 %call39
  %__ret14.1 = select i1 %tobool22.not, i32 %call39, i32 %spec.store.select76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool32.not = icmp eq i32 %__ret14.1, 0
  %not.tobool22.not = xor i1 %tobool22.not, true
  %7 = select i1 %not.tobool22.not, i1 true, i1 %tobool32.not
  br i1 %7, label %if.end42, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %phi.cmp = icmp eq i32 %__ret14.1, 0
  call void @finish_wait(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %do.end60, label %if.end42.if.end66_crit_edge, !prof !51

if.end42.if.end66_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1855, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %state) #7
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %if.end42.if.end66_crit_edge, %if.end42.thread, %entry.if.end66_crit_edge
  %tobool4497 = phi i1 [ false, %do.end60 ], [ true, %if.end42.if.end66_crit_edge ], [ true, %entry.if.end66_crit_edge ], [ true, %if.end42.thread ]
  ret i1 %tobool4497
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_update_stats(ptr noundef %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %phy3 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp.not = icmp eq ptr %phy3, %phy
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cond = select i1 %cmp.not, i32 149504, i32 673792
  %add = or i32 %cond, 20
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %add) #7
  %and = and i32 %call, 65535
  %fcs_err_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %fcs_err_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcs_err_cnt, align 4
  %add16 = add i32 %7, %and
  store i32 %add16, ptr %fcs_err_cnt, align 4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add21 = or i32 %cond, 24
  %call22 = tail call i32 %11(ptr noundef %1, i32 noundef %add21) #7
  %and39 = and i32 %call22, 65535
  %rx_fifo_full_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 28
  %12 = ptrtoint ptr %rx_fifo_full_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_fifo_full_cnt, align 4
  %add41 = add i32 %13, %and39
  store i32 %add41, ptr %rx_fifo_full_cnt, align 4
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add46 = or i32 %cond, 28
  %call47 = tail call i32 %17(ptr noundef %1, i32 noundef %add46) #7
  %rx_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 33
  %18 = ptrtoint ptr %rx_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_mpdu_cnt, align 4
  %add48 = add i32 %19, %call47
  store i32 %add48, ptr %rx_mpdu_cnt, align 4
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add53 = or i32 %cond, 32
  %call54 = tail call i32 %23(ptr noundef %1, i32 noundef %add53) #7
  %and71 = and i32 %call54, 65535
  %channel_idle_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 29
  %24 = ptrtoint ptr %channel_idle_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_idle_cnt, align 4
  %add73 = add i32 %25, %and71
  store i32 %add73, ptr %channel_idle_cnt, align 4
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add78 = or i32 %cond, 36
  %call79 = tail call i32 %29(ptr noundef %1, i32 noundef %add78) #7
  %and96 = and i32 %call79, 65535
  %rx_vector_mismatch_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 30
  %30 = ptrtoint ptr %rx_vector_mismatch_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_vector_mismatch_cnt, align 4
  %add98 = add i32 %31, %and96
  store i32 %add98, ptr %rx_vector_mismatch_cnt, align 4
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add103 = or i32 %cond, 40
  %call104 = tail call i32 %35(ptr noundef %1, i32 noundef %add103) #7
  %and121 = and i32 %call104, 65535
  %rx_delimiter_fail_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 31
  %36 = ptrtoint ptr %rx_delimiter_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_delimiter_fail_cnt, align 4
  %add123 = add i32 %37, %and121
  store i32 %add123, ptr %rx_delimiter_fail_cnt, align 4
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %add128 = or i32 %cond, 52
  %call129 = tail call i32 %41(ptr noundef %1, i32 noundef %add128) #7
  %and146 = and i32 %call129, 65535
  %rx_len_mismatch_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 32
  %42 = ptrtoint ptr %rx_len_mismatch_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_len_mismatch_cnt, align 4
  %add148 = add i32 %43, %and146
  store i32 %add148, ptr %rx_len_mismatch_cnt, align 4
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %add153 = or i32 %cond, 56
  %call154 = tail call i32 %47(ptr noundef %1, i32 noundef %add153) #7
  %tx_ampdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 20
  %48 = ptrtoint ptr %tx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_ampdu_cnt, align 4
  %add155 = add i32 %49, %call154
  store i32 %add155, ptr %tx_ampdu_cnt, align 4
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %add160 = or i32 %cond, 60
  %call161 = tail call i32 %53(ptr noundef %1, i32 noundef %add160) #7
  %and178 = and i32 %call161, 65535
  %tx_stop_q_empty_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 21
  %54 = ptrtoint ptr %tx_stop_q_empty_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_stop_q_empty_cnt, align 4
  %add180 = add i32 %55, %and178
  store i32 %add180, ptr %tx_stop_q_empty_cnt, align 4
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %add185 = or i32 %cond, 64
  %call186 = tail call i32 %59(ptr noundef %1, i32 noundef %add185) #7
  %and203 = and i32 %call186, 16777215
  %tx_mpdu_attempts_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 22
  %60 = ptrtoint ptr %tx_mpdu_attempts_cnt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_mpdu_attempts_cnt, align 4
  %add205 = add i32 %61, %and203
  store i32 %add205, ptr %tx_mpdu_attempts_cnt, align 4
  %62 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %add210 = or i32 %cond, 68
  %call211 = tail call i32 %65(ptr noundef %1, i32 noundef %add210) #7
  %and228 = and i32 %call211, 16777215
  %tx_mpdu_success_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 23
  %66 = ptrtoint ptr %tx_mpdu_success_cnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_mpdu_success_cnt, align 4
  %add230 = add i32 %67, %and228
  store i32 %add230, ptr %tx_mpdu_success_cnt, align 4
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %add235 = or i32 %cond, 96
  %call236 = tail call i32 %71(ptr noundef %1, i32 noundef %add235) #7
  %rx_ampdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 34
  %72 = ptrtoint ptr %rx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_ampdu_cnt, align 4
  %add237 = add i32 %73, %call236
  store i32 %add237, ptr %rx_ampdu_cnt, align 4
  %74 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %add242 = or i32 %cond, 100
  %call243 = tail call i32 %77(ptr noundef %1, i32 noundef %add242) #7
  %rx_ampdu_bytes_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 35
  %78 = ptrtoint ptr %rx_ampdu_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_ampdu_bytes_cnt, align 4
  %add244 = add i32 %79, %call243
  store i32 %add244, ptr %rx_ampdu_bytes_cnt, align 4
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %add249 = or i32 %cond, 104
  %call250 = tail call i32 %83(ptr noundef %1, i32 noundef %add249) #7
  %and267 = and i32 %call250, 16777215
  %rx_ampdu_valid_subframe_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 36
  %84 = ptrtoint ptr %rx_ampdu_valid_subframe_cnt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_ampdu_valid_subframe_cnt, align 4
  %add269 = add i32 %85, %and267
  store i32 %add269, ptr %rx_ampdu_valid_subframe_cnt, align 4
  %86 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %add274 = or i32 %cond, 108
  %call275 = tail call i32 %89(ptr noundef %1, i32 noundef %add274) #7
  %rx_ampdu_valid_subframe_bytes_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 37
  %90 = ptrtoint ptr %rx_ampdu_valid_subframe_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_ampdu_valid_subframe_bytes_cnt, align 4
  %add276 = add i32 %91, %call275
  store i32 %add276, ptr %rx_ampdu_valid_subframe_bytes_cnt, align 4
  %92 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %add281 = or i32 %cond, 116
  %call282 = tail call i32 %95(ptr noundef %1, i32 noundef %add281) #7
  %and299 = and i32 %call282, 65535
  %tx_rwp_fail_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 26
  %96 = ptrtoint ptr %tx_rwp_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_rwp_fail_cnt, align 4
  %add301 = add i32 %97, %and299
  store i32 %add301, ptr %tx_rwp_fail_cnt, align 4
  %98 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %add306 = or i32 %cond, 120
  %call307 = tail call i32 %101(ptr noundef %1, i32 noundef %add306) #7
  %and324 = and i32 %call307, 65535
  %tx_rwp_need_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 27
  %102 = ptrtoint ptr %tx_rwp_need_cnt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_rwp_need_cnt, align 4
  %add326 = add i32 %103, %and324
  store i32 %add326, ptr %tx_rwp_need_cnt, align 4
  %104 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %add331 = or i32 %cond, 124
  %call332 = tail call i32 %107(ptr noundef %1, i32 noundef %add331) #7
  %and349 = and i32 %call332, 255
  %rx_pfdrop_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 38
  %108 = ptrtoint ptr %rx_pfdrop_cnt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_pfdrop_cnt, align 4
  %add351 = add i32 %109, %and349
  store i32 %add351, ptr %rx_pfdrop_cnt, align 4
  %110 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %add356 = or i32 %cond, 128
  %call357 = tail call i32 %113(ptr noundef %1, i32 noundef %add356) #7
  %and374 = and i32 %call357, 65535
  %rx_vec_queue_overflow_drop_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 39
  %114 = ptrtoint ptr %rx_vec_queue_overflow_drop_cnt to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_vec_queue_overflow_drop_cnt, align 4
  %add376 = add i32 %115, %and374
  store i32 %add376, ptr %rx_vec_queue_overflow_drop_cnt, align 4
  %116 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %add381 = or i32 %cond, 132
  %call382 = tail call i32 %119(ptr noundef %1, i32 noundef %add381) #7
  %rx_ba_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 40
  %120 = ptrtoint ptr %rx_ba_cnt to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_ba_cnt, align 4
  %add383 = add i32 %121, %call382
  store i32 %add383, ptr %rx_ba_cnt, align 4
  %122 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %add388 = or i32 %cond, 136
  %call389 = tail call i32 %125(ptr noundef %1, i32 noundef %add388) #7
  %and406 = and i32 %call389, 65535
  %tx_pkt_ebf_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 24
  %126 = ptrtoint ptr %tx_pkt_ebf_cnt to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_pkt_ebf_cnt, align 4
  %add408 = add i32 %127, %and406
  store i32 %add408, ptr %tx_pkt_ebf_cnt, align 4
  %128 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %add413 = or i32 %cond, 140
  %call414 = tail call i32 %131(ptr noundef %1, i32 noundef %add413) #7
  %and431 = and i32 %call414, 65535
  %tx_pkt_ibf_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 25
  %132 = ptrtoint ptr %tx_pkt_ibf_cnt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_pkt_ibf_cnt, align 4
  %add433 = add i32 %133, %and431
  store i32 %add433, ptr %tx_pkt_ibf_cnt, align 4
  %134 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %add438 = or i32 %cond, 144
  %call439 = tail call i32 %137(ptr noundef %1, i32 noundef %add438) #7
  %and456 = and i32 %call439, 65535
  %tx_bf_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 5
  %138 = ptrtoint ptr %tx_bf_cnt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_bf_cnt, align 4
  %add458 = add i32 %139, %and456
  store i32 %add458, ptr %tx_bf_cnt, align 4
  %140 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bus, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %add463 = or i32 %cond, 192
  %call464 = tail call i32 %143(ptr noundef %1, i32 noundef %add463) #7
  %tx_mu_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 6
  %144 = ptrtoint ptr %tx_mu_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_mu_mpdu_cnt, align 4
  %add465 = add i32 %145, %call464
  store i32 %add465, ptr %tx_mu_mpdu_cnt, align 4
  %146 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bus, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %add470 = or i32 %cond, 196
  %call471 = tail call i32 %149(ptr noundef %1, i32 noundef %add470) #7
  %tx_mu_acked_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 7
  %150 = ptrtoint ptr %tx_mu_acked_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tx_mu_acked_mpdu_cnt, align 4
  %add472 = add i32 %151, %call471
  store i32 %add472, ptr %tx_mu_acked_mpdu_cnt, align 4
  %152 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %add477 = or i32 %cond, 204
  %call478 = tail call i32 %155(ptr noundef %1, i32 noundef %add477) #7
  %tx_su_acked_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 8
  %156 = ptrtoint ptr %tx_su_acked_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_su_acked_mpdu_cnt, align 4
  %add479 = add i32 %157, %call478
  store i32 %add479, ptr %tx_su_acked_mpdu_cnt, align 4
  %158 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bus, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %cond483 = select i1 %cmp.not, i32 147456, i32 671744
  %add484 = or i32 %cond483, 240
  %call485 = tail call i32 %161(ptr noundef %1, i32 noundef %add484) #7
  %shr503 = lshr i32 %call485, 16
  %tx_bf_ibf_ppdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 9
  %162 = ptrtoint ptr %tx_bf_ibf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tx_bf_ibf_ppdu_cnt, align 4
  %add504 = add i32 %163, %shr503
  store i32 %add504, ptr %tx_bf_ibf_ppdu_cnt, align 4
  %and521 = and i32 %call485, 65535
  %tx_bf_ebf_ppdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 10
  %164 = ptrtoint ptr %tx_bf_ebf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_bf_ebf_ppdu_cnt, align 4
  %add523 = add i32 %165, %and521
  store i32 %add523, ptr %tx_bf_ebf_ppdu_cnt, align 4
  %166 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bus, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %add528 = or i32 %cond483, 248
  %call529 = tail call i32 %169(ptr noundef %1, i32 noundef %add528) #7
  %shr547 = lshr i32 %call529, 24
  %tx_bf_rx_fb_all_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 11
  %170 = ptrtoint ptr %tx_bf_rx_fb_all_cnt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tx_bf_rx_fb_all_cnt, align 4
  %add548 = add i32 %171, %shr547
  store i32 %add548, ptr %tx_bf_rx_fb_all_cnt, align 4
  %and565 = lshr i32 %call529, 16
  %shr566 = and i32 %and565, 255
  %tx_bf_rx_fb_he_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 12
  %172 = ptrtoint ptr %tx_bf_rx_fb_he_cnt to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tx_bf_rx_fb_he_cnt, align 4
  %add567 = add i32 %173, %shr566
  store i32 %add567, ptr %tx_bf_rx_fb_he_cnt, align 4
  %and584 = lshr i32 %call529, 8
  %shr585 = and i32 %and584, 255
  %tx_bf_rx_fb_vht_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 13
  %174 = ptrtoint ptr %tx_bf_rx_fb_vht_cnt to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tx_bf_rx_fb_vht_cnt, align 4
  %add586 = add i32 %175, %shr585
  store i32 %add586, ptr %tx_bf_rx_fb_vht_cnt, align 4
  %and603 = and i32 %call529, 255
  %tx_bf_rx_fb_ht_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 14
  %176 = ptrtoint ptr %tx_bf_rx_fb_ht_cnt to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %tx_bf_rx_fb_ht_cnt, align 4
  %add605 = add i32 %177, %and603
  store i32 %add605, ptr %tx_bf_rx_fb_ht_cnt, align 4
  %178 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %add610 = or i32 %cond483, 104
  %call611 = tail call i32 %181(ptr noundef %1, i32 noundef %add610) #7
  %and628 = lshr i32 %call611, 6
  %shr629 = and i32 %and628, 3
  %tx_bf_rx_fb_bw = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 15
  %182 = ptrtoint ptr %tx_bf_rx_fb_bw to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %shr629, ptr %tx_bf_rx_fb_bw, align 4
  %and646 = lshr i32 %call611, 3
  %shr647 = and i32 %and646, 7
  %tx_bf_rx_fb_nc_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 16
  %183 = ptrtoint ptr %tx_bf_rx_fb_nc_cnt to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tx_bf_rx_fb_nc_cnt, align 4
  %add648 = add i32 %184, %shr647
  store i32 %add648, ptr %tx_bf_rx_fb_nc_cnt, align 4
  %and665 = and i32 %call611, 7
  %tx_bf_rx_fb_nr_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 17
  %185 = ptrtoint ptr %tx_bf_rx_fb_nr_cnt to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tx_bf_rx_fb_nr_cnt, align 4
  %add667 = add i32 %186, %and665
  store i32 %add667, ptr %tx_bf_rx_fb_nr_cnt, align 4
  %187 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %add672 = or i32 %cond483, 64
  %call673 = tail call i32 %190(ptr noundef %1, i32 noundef %add672) #7
  %shr691 = lshr i32 %call673, 16
  %tx_bf_fb_cpl_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 18
  %191 = ptrtoint ptr %tx_bf_fb_cpl_cnt to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tx_bf_fb_cpl_cnt, align 4
  %add692 = add i32 %192, %shr691
  store i32 %add692, ptr %tx_bf_fb_cpl_cnt, align 4
  %and709 = and i32 %call673, 65535
  %tx_bf_fb_trig_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 19
  %193 = ptrtoint ptr %tx_bf_fb_trig_cnt to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tx_bf_fb_trig_cnt, align 4
  %add711 = add i32 %194, %and709
  store i32 %add711, ptr %tx_bf_fb_trig_cnt, align 4
  %tx_amsdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 42
  %195 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bus, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %call717 = tail call i32 %198(ptr noundef %1, i32 noundef 37088) #7
  %arrayidx = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 0
  %199 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx, align 4
  %add718 = add i32 %200, %call717
  store i32 %add718, ptr %arrayidx, align 4
  %201 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719 = add i32 %202, %call717
  store i32 %add719, ptr %tx_amsdu_cnt, align 4
  %203 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bus, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %call717.1 = tail call i32 %206(ptr noundef %1, i32 noundef 37092) #7
  %arrayidx.1 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 1
  %207 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.1, align 4
  %add718.1 = add i32 %208, %call717.1
  store i32 %add718.1, ptr %arrayidx.1, align 4
  %209 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.1 = add i32 %210, %call717.1
  store i32 %add719.1, ptr %tx_amsdu_cnt, align 4
  %211 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bus, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %call717.2 = tail call i32 %214(ptr noundef %1, i32 noundef 37096) #7
  %arrayidx.2 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 2
  %215 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx.2, align 4
  %add718.2 = add i32 %216, %call717.2
  store i32 %add718.2, ptr %arrayidx.2, align 4
  %217 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.2 = add i32 %218, %call717.2
  store i32 %add719.2, ptr %tx_amsdu_cnt, align 4
  %219 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %bus, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %call717.3 = tail call i32 %222(ptr noundef %1, i32 noundef 37100) #7
  %arrayidx.3 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 3
  %223 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx.3, align 4
  %add718.3 = add i32 %224, %call717.3
  store i32 %add718.3, ptr %arrayidx.3, align 4
  %225 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.3 = add i32 %226, %call717.3
  store i32 %add719.3, ptr %tx_amsdu_cnt, align 4
  %227 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %bus, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %call717.4 = tail call i32 %230(ptr noundef %1, i32 noundef 37104) #7
  %arrayidx.4 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 4
  %231 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.4, align 4
  %add718.4 = add i32 %232, %call717.4
  store i32 %add718.4, ptr %arrayidx.4, align 4
  %233 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.4 = add i32 %234, %call717.4
  store i32 %add719.4, ptr %tx_amsdu_cnt, align 4
  %235 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bus, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 4
  %call717.5 = tail call i32 %238(ptr noundef %1, i32 noundef 37108) #7
  %arrayidx.5 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 5
  %239 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx.5, align 4
  %add718.5 = add i32 %240, %call717.5
  store i32 %add718.5, ptr %arrayidx.5, align 4
  %241 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.5 = add i32 %242, %call717.5
  store i32 %add719.5, ptr %tx_amsdu_cnt, align 4
  %243 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bus, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  %call717.6 = tail call i32 %246(ptr noundef %1, i32 noundef 37112) #7
  %arrayidx.6 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 6
  %247 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.6, align 4
  %add718.6 = add i32 %248, %call717.6
  store i32 %add718.6, ptr %arrayidx.6, align 4
  %249 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.6 = add i32 %250, %call717.6
  store i32 %add719.6, ptr %tx_amsdu_cnt, align 4
  %251 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bus, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %call717.7 = tail call i32 %254(ptr noundef %1, i32 noundef 37116) #7
  %arrayidx.7 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 41, i32 7
  %255 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx.7, align 4
  %add718.7 = add i32 %256, %call717.7
  store i32 %add718.7, ptr %arrayidx.7, align 4
  %257 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tx_amsdu_cnt, align 4
  %add719.7 = add i32 %258, %call717.7
  store i32 %add719.7, ptr %tx_amsdu_cnt, align 4
  %mib2 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16
  %cond721 = select i1 %cmp.not, i32 0, i32 16
  %add722 = or i32 %cond721, 4
  %ba_miss_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 4
  %rts_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 2
  %rts_retries_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 16, i32 3
  br label %for.body725

for.body725:                                      ; preds = %for.body725.for.body725_crit_edge, %entry
  %i.11067 = phi i32 [ 0, %entry ], [ %inc854, %for.body725.for.body725_crit_edge ]
  %aggr0.01066 = phi i32 [ %cond721, %entry ], [ %inc832, %for.body725.for.body725_crit_edge ]
  %aggr1.01065 = phi i32 [ %add722, %entry ], [ %inc850, %for.body725.for.body725_crit_edge ]
  %259 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %bus, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %shl730 = shl i32 %i.11067, 4
  %add731 = add nuw nsw i32 %shl730, %cond
  %add732 = add nuw nsw i32 %add731, 260
  %call733 = tail call i32 %262(ptr noundef %1, i32 noundef %add732) #7
  %and750 = and i32 %call733, 65535
  %263 = ptrtoint ptr %ba_miss_cnt to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ba_miss_cnt, align 4
  %add752 = add i32 %264, %and750
  store i32 %add752, ptr %ba_miss_cnt, align 4
  %shr770 = lshr i32 %call733, 16
  %265 = ptrtoint ptr %mib2 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %mib2, align 4
  %add771 = add i32 %266, %shr770
  store i32 %add771, ptr %mib2, align 4
  %267 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %bus, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %add778 = add nuw nsw i32 %add731, 256
  %call779 = tail call i32 %270(ptr noundef %1, i32 noundef %add778) #7
  %and796 = and i32 %call779, 65535
  %271 = ptrtoint ptr %rts_cnt to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %rts_cnt, align 4
  %add798 = add i32 %272, %and796
  store i32 %add798, ptr %rts_cnt, align 4
  %shr816 = lshr i32 %call779, 16
  %273 = ptrtoint ptr %rts_retries_cnt to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %rts_retries_cnt, align 4
  %add817 = add i32 %274, %shr816
  store i32 %add817, ptr %rts_retries_cnt, align 4
  %275 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %bus, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %shl822 = shl i32 %i.11067, 2
  %add823 = add nuw nsw i32 %shl822, %cond
  %add824 = add nuw nsw i32 %add823, 168
  %call825 = tail call i32 %278(ptr noundef %1, i32 noundef %add824) #7
  %and826 = and i32 %call825, 65535
  %inc827 = or i32 %aggr0.01066, 1
  %arrayidx828 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %aggr0.01066
  %279 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx828, align 4
  %add829 = add i32 %280, %and826
  store i32 %add829, ptr %arrayidx828, align 4
  %shr830 = lshr i32 %call825, 16
  %inc832 = add nuw nsw i32 %aggr0.01066, 2
  %arrayidx833 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %inc827
  %281 = ptrtoint ptr %arrayidx833 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx833, align 4
  %add834 = add i32 %282, %shr830
  store i32 %add834, ptr %arrayidx833, align 4
  %283 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %bus, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 4
  %add841 = add nuw nsw i32 %add823, 356
  %call842 = tail call i32 %286(ptr noundef %1, i32 noundef %add841) #7
  %and843 = and i32 %call842, 65535
  %inc845 = or i32 %aggr1.01065, 1
  %arrayidx846 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %aggr1.01065
  %287 = ptrtoint ptr %arrayidx846 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx846, align 4
  %add847 = add i32 %288, %and843
  store i32 %add847, ptr %arrayidx846, align 4
  %shr848 = lshr i32 %call842, 16
  %inc850 = add nuw nsw i32 %aggr1.01065, 2
  %arrayidx851 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %inc845
  %289 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx851, align 4
  %add852 = add i32 %290, %shr848
  store i32 %add852, ptr %arrayidx851, align 4
  %inc854 = add nuw nsw i32 %i.11067, 1
  %exitcond.not = icmp eq i32 %inc854, 4
  br i1 %exitcond.not, label %for.end855, label %for.body725.for.body725_crit_edge

for.body725.for.body725_crit_edge:                ; preds = %for.body725
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body725

for.end855:                                       ; preds = %for.body725
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_sta_rc_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -13196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %sta_poll_lock = getelementptr i8, ptr %work, i32 168
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %sta_rc_list = getelementptr i8, ptr %work, i32 144
  %3 = ptrtoint ptr %sta_rc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sta_rc_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %sta_rc_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 148
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %sta_rc_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sta_rc_list, ptr %sta_rc_list, align 4
  store ptr %sta_rc_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %list, align 4
  %cmp.i.not37 = icmp eq ptr %14, %list
  br i1 %cmp.i.not37, label %list_splice_init.exit.while.end_crit_edge, label %list_splice_init.exit.while.body_crit_edge

list_splice_init.exit.while.body_crit_edge:       ; preds = %list_splice_init.exit
  br label %while.body

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %list_splice_init.exit.while.body_crit_edge
  %15 = phi ptr [ %29, %if.end21.while.body_crit_edge ], [ %14, %list_splice_init.exit.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  %changed5 = getelementptr i8, ptr %15, i32 40
  %24 = ptrtoint ptr %changed5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %changed5, align 8
  store i32 0, ptr %changed5, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  %add.ptr10 = getelementptr i8, ptr %15, i32 -556
  %vif12 = getelementptr i8, ptr %15, i32 -12
  %26 = ptrtoint ptr %vif12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vif12, align 4
  %add.ptr14 = getelementptr i8, ptr %27, i32 -848
  %and = and i32 %25, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 @mt7915_mcu_add_rate_ctrl(ptr noundef %add.ptr, ptr noundef %add.ptr14, ptr noundef %add.ptr10, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %and17 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end.if.end21_crit_edge, label %if.then19

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 @mt7915_mcu_add_smps(ptr noundef %add.ptr, ptr noundef %add.ptr14, ptr noundef %add.ptr10) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end.if.end21_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %29, %list
  br i1 %cmp.i.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_rate_ctrl(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_smps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -560
  %priv = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr i8, ptr %work, i32 -556
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @mt76_update_survey(ptr noundef %add.ptr) #7
  %mac_work_count = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_work_count, align 4
  %inc = add i8 %5, 1
  store i8 %inc, ptr %mac_work_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc)
  %cmp = icmp eq i8 %inc, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mac_work_count, align 4
  tail call void @mt7915_mac_update_stats(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %mutex4 = getelementptr inbounds %struct.mt76_dev, ptr %8, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex4) #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @mt76_tx_status_check(ptr noundef %10, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %12, ptr noundef %work, i32 noundef 10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_update_survey(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_dfs_init_radar_detector(ptr noundef %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %chandef1 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 5
  %dev2 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %phy3 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp = icmp ne ptr %phy3, %phy
  %frombool = zext i1 %cmp to i8
  %region = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %dfs_state = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 13
  %6 = ptrtoint ptr %dfs_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dfs_state, align 8
  %rdd_state = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 12
  %7 = ptrtoint ptr %rdd_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rdd_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.stop_crit_edge

if.then.stop_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dfs_state11 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 13
  %12 = ptrtoint ptr %dfs_state11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dfs_state11, align 8
  %14 = ptrtoint ptr %chandef1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef1, align 4
  %dfs_state12 = getelementptr inbounds %struct.ieee80211_channel, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %dfs_state12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dfs_state12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp13 = icmp eq i32 %13, %17
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %5, label %if.end15.if.then18_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %if.end15.sw.epilog.i_crit_edge
    i32 3, label %sw.bb3.i
  ]

if.end15.sw.epilog.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

sw.bb.i:                                          ; preds = %if.end15
  %call.i = tail call i32 @mt7915_mcu_set_fcc5_lpn(ptr noundef %3, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.i.if.then18_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i.if.then18_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

sw.bb3.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.end15.sw.epilog.i_crit_edge
  %radar_specs.0.i = phi ptr [ @jp_radar_specs, %sw.bb3.i ], [ @fcc_radar_specs, %sw.bb.i.sw.epilog.i_crit_edge ], [ @etsi_radar_specs, %if.end15.sw.epilog.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 0
  %call5.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 0, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %sw.epilog.i.if.then18_crit_edge, label %for.cond.i

sw.epilog.i.if.then18_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.i:                                       ; preds = %sw.epilog.i
  %arrayidx.1.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 1
  %call5.1.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 1, ptr noundef %arrayidx.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %cmp6.1.i = icmp slt i32 %call5.1.i, 0
  br i1 %cmp6.1.i, label %for.cond.i.if.then18_crit_edge, label %for.cond.1.i

for.cond.i.if.then18_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 2
  %call5.2.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 2, ptr noundef %arrayidx.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2.i)
  %cmp6.2.i = icmp slt i32 %call5.2.i, 0
  br i1 %cmp6.2.i, label %for.cond.1.i.if.then18_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then18_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 3
  %call5.3.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 3, ptr noundef %arrayidx.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3.i)
  %cmp6.3.i = icmp slt i32 %call5.3.i, 0
  br i1 %cmp6.3.i, label %for.cond.2.i.if.then18_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then18_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 4
  %call5.4.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 4, ptr noundef %arrayidx.4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4.i)
  %cmp6.4.i = icmp slt i32 %call5.4.i, 0
  br i1 %cmp6.4.i, label %for.cond.3.i.if.then18_crit_edge, label %for.cond.4.i

for.cond.3.i.if.then18_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 5
  %call5.5.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 5, ptr noundef %arrayidx.5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5.i)
  %cmp6.5.i = icmp slt i32 %call5.5.i, 0
  br i1 %cmp6.5.i, label %for.cond.4.i.if.then18_crit_edge, label %for.cond.5.i

for.cond.4.i.if.then18_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 6
  %call5.6.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 6, ptr noundef %arrayidx.6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6.i)
  %cmp6.6.i = icmp slt i32 %call5.6.i, 0
  br i1 %cmp6.6.i, label %for.cond.5.i.if.then18_crit_edge, label %for.cond.6.i

for.cond.5.i.if.then18_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 7
  %call5.7.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 7, ptr noundef %arrayidx.7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7.i)
  %cmp6.7.i = icmp slt i32 %call5.7.i, 0
  br i1 %cmp6.7.i, label %for.cond.6.i.if.then18_crit_edge, label %for.cond.7.i

for.cond.6.i.if.then18_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 8
  %call5.8.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 8, ptr noundef %arrayidx.8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8.i)
  %cmp6.8.i = icmp slt i32 %call5.8.i, 0
  br i1 %cmp6.8.i, label %for.cond.7.i.if.then18_crit_edge, label %for.cond.8.i

for.cond.7.i.if.then18_crit_edge:                 ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 9
  %call5.9.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 9, ptr noundef %arrayidx.9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.9.i)
  %cmp6.9.i = icmp slt i32 %call5.9.i, 0
  br i1 %cmp6.9.i, label %for.cond.8.i.if.then18_crit_edge, label %for.cond.9.i

for.cond.8.i.if.then18_crit_edge:                 ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 10
  %call5.10.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 10, ptr noundef %arrayidx.10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.10.i)
  %cmp6.10.i = icmp slt i32 %call5.10.i, 0
  br i1 %cmp6.10.i, label %for.cond.9.i.if.then18_crit_edge, label %for.cond.10.i

for.cond.9.i.if.then18_crit_edge:                 ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 11
  %call5.11.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 11, ptr noundef %arrayidx.11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.11.i)
  %cmp6.11.i = icmp slt i32 %call5.11.i, 0
  br i1 %cmp6.11.i, label %for.cond.10.i.if.then18_crit_edge, label %for.cond.11.i

for.cond.10.i.if.then18_crit_edge:                ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 12
  %call5.12.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 12, ptr noundef %arrayidx.12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.12.i)
  %cmp6.12.i = icmp slt i32 %call5.12.i, 0
  br i1 %cmp6.12.i, label %for.cond.11.i.if.then18_crit_edge, label %for.cond.12.i

for.cond.11.i.if.then18_crit_edge:                ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 13
  %call5.13.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 13, ptr noundef %arrayidx.13.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.13.i)
  %cmp6.13.i = icmp slt i32 %call5.13.i, 0
  br i1 %cmp6.13.i, label %for.cond.12.i.if.then18_crit_edge, label %for.cond.13.i

for.cond.12.i.if.then18_crit_edge:                ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 14
  %call5.14.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 14, ptr noundef %arrayidx.14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.14.i)
  %cmp6.14.i = icmp slt i32 %call5.14.i, 0
  br i1 %cmp6.14.i, label %for.cond.13.i.if.then18_crit_edge, label %for.cond.14.i

for.cond.13.i.if.then18_crit_edge:                ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr %struct.mt7915_dfs_radar_spec, ptr %radar_specs.0.i, i32 0, i32 1, i32 15
  %call5.15.i = tail call i32 @mt7915_mcu_set_radar_th(ptr noundef %3, i32 noundef 15, ptr noundef %arrayidx.15.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.15.i)
  %cmp6.15.i = icmp slt i32 %call5.15.i, 0
  br i1 %cmp6.15.i, label %for.cond.14.i.if.then18_crit_edge, label %mt7915_dfs_init_radar_specs.exit

for.cond.14.i.if.then18_crit_edge:                ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

mt7915_dfs_init_radar_specs.exit:                 ; preds = %for.cond.14.i
  %call9.i = tail call i32 @mt7915_mcu_set_pulse_th(ptr noundef %3, ptr noundef nonnull %radar_specs.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp17 = icmp slt i32 %call9.i, 0
  br i1 %cmp17, label %mt7915_dfs_init_radar_specs.exit.if.then18_crit_edge, label %if.end20

mt7915_dfs_init_radar_specs.exit.if.then18_crit_edge: ; preds = %mt7915_dfs_init_radar_specs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %mt7915_dfs_init_radar_specs.exit.if.then18_crit_edge, %for.cond.14.i.if.then18_crit_edge, %for.cond.13.i.if.then18_crit_edge, %for.cond.12.i.if.then18_crit_edge, %for.cond.11.i.if.then18_crit_edge, %for.cond.10.i.if.then18_crit_edge, %for.cond.9.i.if.then18_crit_edge, %for.cond.8.i.if.then18_crit_edge, %for.cond.7.i.if.then18_crit_edge, %for.cond.6.i.if.then18_crit_edge, %for.cond.5.i.if.then18_crit_edge, %for.cond.4.i.if.then18_crit_edge, %for.cond.3.i.if.then18_crit_edge, %for.cond.2.i.if.then18_crit_edge, %for.cond.1.i.if.then18_crit_edge, %for.cond.i.if.then18_crit_edge, %sw.epilog.i.if.then18_crit_edge, %sw.bb.i.if.then18_crit_edge, %if.end15.if.then18_crit_edge
  %19 = ptrtoint ptr %dfs_state11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %dfs_state11, align 8
  br label %stop

if.end20:                                         ; preds = %mt7915_dfs_init_radar_specs.exit
  %20 = ptrtoint ptr %chandef1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chandef1, align 4
  %dfs_state22 = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %dfs_state22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dfs_state22, align 4
  %24 = ptrtoint ptr %dfs_state11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dfs_state11, align 8
  %25 = load ptr, ptr %chandef1, align 4
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end20.stop_crit_edge, label %if.then26

if.end20.stop_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

if.then26:                                        ; preds = %if.end20
  %dfs_state28 = getelementptr inbounds %struct.ieee80211_channel, ptr %25, i32 0, i32 12
  %28 = ptrtoint ptr %dfs_state28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dfs_state28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp29.not = icmp eq i32 %29, 2
  br i1 %cmp29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.then26
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 8
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  %phy3.i = getelementptr inbounds %struct.mt7915_dev, ptr %33, i32 0, i32 4
  %cmp.i66 = icmp ne ptr %phy3.i, %phy
  %frombool.i = zext i1 %cmp.i66 to i8
  %call.i67 = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %33, i32 noundef 50, i8 noundef zeroext %frombool.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp4.i = icmp slt i32 %call.i67, 0
  br i1 %cmp4.i, label %if.then30.cleanup_crit_edge, label %if.end.i

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then30
  %call.i.i = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %33, i32 noundef 1, i8 noundef zeroext %frombool.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %mt7915_dfs_start_rdd.exit.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt7915_dfs_start_rdd.exit.i:                      ; preds = %if.end.i
  %call3.i.i = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %33, i32 noundef 2, i8 noundef zeroext %frombool.i, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp9.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp9.i, label %mt7915_dfs_start_rdd.exit.i.cleanup_crit_edge, label %if.end12.i

mt7915_dfs_start_rdd.exit.i.cleanup_crit_edge:    ; preds = %mt7915_dfs_start_rdd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i:                                       ; preds = %mt7915_dfs_start_rdd.exit.i
  %shl.i = shl nuw nsw i8 1, %frombool.i
  %rdd_state.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 12
  %34 = ptrtoint ptr %rdd_state.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rdd_state.i, align 1
  %conv16.i = or i8 %35, %shl.i
  store i8 %conv16.i, ptr %rdd_state.i, align 1
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %31, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width.i, align 4
  %38 = and i32 %37, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %switch.i = icmp eq i32 %38, 4
  br i1 %switch.i, label %if.then22.i, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.i:                                      ; preds = %if.end12.i
  %call.i51.i = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %if.then22.i.cleanup_crit_edge, label %mt7915_dfs_start_rdd.exit56.i

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt7915_dfs_start_rdd.exit56.i:                    ; preds = %if.then22.i
  %call3.i53.i = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %33, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i53.i)
  %cmp24.i = icmp slt i32 %call3.i53.i, 0
  br i1 %cmp24.i, label %mt7915_dfs_start_rdd.exit56.i.cleanup_crit_edge, label %if.end27.i

mt7915_dfs_start_rdd.exit56.i.cleanup_crit_edge:  ; preds = %mt7915_dfs_start_rdd.exit56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27.i:                                       ; preds = %mt7915_dfs_start_rdd.exit56.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %rdd_state.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rdd_state.i, align 1
  %41 = or i8 %40, 2
  store i8 %41, ptr %rdd_state.i, align 1
  br label %cleanup

if.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %3, i32 noundef 51, i8 noundef zeroext %frombool, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %cleanup

stop:                                             ; preds = %if.end20.stop_crit_edge, %if.then18, %if.then.stop_crit_edge
  %call38 = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %3, i32 noundef 52, i8 noundef zeroext %frombool, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %stop.cleanup_crit_edge, label %if.end42

stop.cleanup_crit_edge:                           ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %stop
  %42 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev2, align 4
  %rdd_state.i70 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 12
  %44 = ptrtoint ptr %rdd_state.i70 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rdd_state.i70, align 1
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.end42.if.end.i72_crit_edge, label %if.then.i

if.end42.if.end.i72_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i72

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call.i71 = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %43, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %if.end.i72

if.end.i72:                                       ; preds = %if.then.i, %if.end42.if.end.i72_crit_edge
  %47 = ptrtoint ptr %rdd_state.i70 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rdd_state.i70, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool5.not.i = icmp eq i8 %49, 0
  br i1 %tobool5.not.i, label %if.end.i72.cleanup_crit_edge, label %if.then6.i

if.end.i72.cleanup_crit_edge:                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %43, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i72.cleanup_crit_edge, %stop.cleanup_crit_edge, %if.end32, %if.end27.i, %mt7915_dfs_start_rdd.exit56.i.cleanup_crit_edge, %if.then22.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %mt7915_dfs_start_rdd.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end32 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call38, %stop.cleanup_crit_edge ], [ %call.i67, %if.then30.cleanup_crit_edge ], [ %call3.i.i, %mt7915_dfs_start_rdd.exit.i.cleanup_crit_edge ], [ %call3.i53.i, %mt7915_dfs_start_rdd.exit56.i.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ], [ 0, %if.end27.i ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i51.i, %if.then22.i.cleanup_crit_edge ], [ 0, %if.end.i72.cleanup_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_rdd_cmd(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_add_twt_setup(ptr noundef %hw, ptr noundef %sta, ptr nocapture noundef %twt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %twt, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %control.i = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %twt, i32 0, i32 3
  %7 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %control.i, align 1
  %9 = and i8 %8, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp ne i8 %9, 0
  %11 = and i16 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool9.not.i = icmp eq i16 %11, 0
  %or.cond = select i1 %10, i1 true, i1 %tobool9.not.i
  br i1 %or.cond, label %entry.out_crit_edge, label %do.end23.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end23.i:                                       ; preds = %entry
  %12 = lshr i16 %1, 2
  %13 = and i16 %12, 31
  %mantissa28.i = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %twt, i32 3, i32 3
  %14 = ptrtoint ptr %mantissa28.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %mantissa28.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #7
  %min_twt_dur.i = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %twt, i32 3, i32 2
  %17 = ptrtoint ptr %min_twt_dur.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %min_twt_dur.i, align 1
  %conv29.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv29.i, 8
  %19 = zext i32 %shl.i to i64
  %conv31.i = zext i16 %16 to i64
  %sh_prom.i = zext i16 %13 to i64
  %shl33.i = shl nuw nsw i64 %conv31.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl33.i, i64 %19)
  %cmp.i = icmp ult i64 %shl33.i, %19
  br i1 %cmp.i, label %do.end23.i.out_crit_edge, label %if.end

do.end23.i.out_crit_edge:                         ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %do.end23.i
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %6, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %twt4 = getelementptr inbounds %struct.mt7915_dev, ptr %6, i32 0, i32 24
  %n_agrt = getelementptr inbounds %struct.mt7915_dev, ptr %6, i32 0, i32 24, i32 1
  %20 = ptrtoint ptr %n_agrt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %n_agrt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %21)
  %cmp = icmp eq i8 %21, 16
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end7

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %if.end
  %twt8 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 3, i32 6, i32 3, i32 18
  %22 = ptrtoint ptr %twt8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %twt8, align 8
  %conv85 = zext i8 %23 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp87 = icmp eq i32 %call.i, 8
  br i1 %cmp87, label %if.end7.unlock_crit_edge, label %if.end90

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end90:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %twt8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %twt8, align 8
  %conv93 = zext i8 %25 to i32
  %neg = xor i32 %conv93, -1
  %26 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !55
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %params, align 2
  %conv95 = trunc i32 %26 to i16
  %and.i = and i16 %28, 32764
  %29 = shl nuw nsw i16 %conv95, 7
  %conv8.i.i = and i16 %29, 896
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #7
  %or.i = or i16 %30, %and.i
  %31 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or.i, ptr %params, align 2
  %32 = ptrtoint ptr %twt4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %twt4, align 16
  %conv97 = zext i8 %33 to i32
  %neg98 = xor i32 %conv97, -1
  %34 = tail call i32 @llvm.cttz.i32(i32 %neg98, i1 true), !range !55
  %and115 = lshr i16 %2, 10
  %35 = trunc i16 %and115 to i8
  %conv116 = and i8 %35, 31
  %arrayidx = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26
  %36 = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 32)
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx, ptr %prev.i, align 4
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idx, align 2
  %wcid138 = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 4
  %42 = ptrtoint ptr %wcid138 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %wcid138, align 4
  %conv139 = trunc i32 %34 to i8
  %table_id140 = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 7
  %43 = ptrtoint ptr %table_id140 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv139, ptr %table_id140, align 1
  %conv141 = trunc i32 %26 to i8
  %id = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 8
  %44 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv141, ptr %id, align 2
  %45 = ptrtoint ptr %min_twt_dur.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %min_twt_dur.i, align 1
  %conv142 = zext i8 %46 to i32
  %duration = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 3
  %47 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv142, ptr %duration, align 8
  %48 = ptrtoint ptr %mantissa28.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %mantissa28.i, align 1
  %mantissa143 = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 5
  %50 = ptrtoint ptr %mantissa143 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %mantissa143, align 2
  %exp144 = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 6
  %51 = ptrtoint ptr %exp144 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv116, ptr %exp144, align 8
  %protection = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 9
  %52 = ptrtoint ptr %protection to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %protection, align 1
  %sh.diff = lshr i16 %2, 8
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 31
  %53 = trunc i16 %2 to i8
  %54 = and i8 %53, 64
  %55 = shl i8 %53, 1
  %bf.shl176 = and i8 %55, 32
  %bf.set = or i8 %bf.shl, %54
  %bf.set165 = or i8 %bf.set, %bf.shl176
  %bf.set178 = or i8 %bf.set165, %bf.clear
  store i8 %bf.set178, ptr %protection, align 1
  %56 = and i16 %2, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %switch = icmp eq i16 %56, 0
  br i1 %switch, label %if.then183, label %if.else

if.then183:                                       ; preds = %if.end90
  %57 = ptrtoint ptr %mantissa28.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %mantissa28.i, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %conv185 = zext i16 %59 to i64
  %sh_prom = zext i8 %conv116 to i64
  %shl = shl nuw nsw i64 %conv185, %sh_prom
  %bf.set189 = or i8 %bf.set178, 16
  %60 = ptrtoint ptr %protection to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %bf.set189, ptr %protection, align 1
  %61 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %duration, align 8
  %shl.i318 = shl i32 %62, 8
  %twt_list.i = getelementptr inbounds %struct.mt7915_dev, ptr %6, i32 0, i32 14
  %63 = ptrtoint ptr %twt_list.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %twt_list.i, align 4
  %cmp.not.i = icmp eq ptr %64, %twt_list.i
  %tobool.not89.i = icmp eq ptr %64, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not89.i
  br i1 %tobool.not.i, label %if.then183.if.then.i_crit_edge, label %lor.lhs.false.i

if.then183.if.then.i_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then183
  %sched.i = getelementptr inbounds %struct.mt7915_twt_flow, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %sched.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %sched.i, align 1
  %66 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool4.not.i = icmp eq i8 %66, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %start_tsf6.i = getelementptr inbounds %struct.mt7915_twt_flow, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %start_tsf6.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %start_tsf6.i, align 8
  %conv.i = zext i32 %shl.i318 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %conv.i)
  %cmp7.i = icmp ugt i64 %68, %conv.i
  br i1 %cmp7.i, label %lor.lhs.false5.i.if.then.i_crit_edge, label %lor.lhs.false5.i.for.body.i_crit_edge

lor.lhs.false5.i.for.body.i_crit_edge:            ; preds = %lor.lhs.false5.i
  br label %for.body.i

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then183.if.then.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %twt_list.i, ptr noundef %64) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.mt7915_mac_twt_sched_list_add.exit_crit_edge

if.then.i.mt7915_mac_twt_sched_list_add.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_twt_sched_list_add.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %lor.lhs.false38.i.for.body.i_crit_edge, %lor.lhs.false5.i.for.body.i_crit_edge
  %iter.094.i = phi ptr [ %iter_next.095.i, %lor.lhs.false38.i.for.body.i_crit_edge ], [ %64, %lor.lhs.false5.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %iter.094.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %iter_next.095.i = load ptr, ptr %iter.094.i, align 8
  %start_tsf24.i = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.094.i, i32 0, i32 1
  %70 = ptrtoint ptr %start_tsf24.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %start_tsf24.i, align 8
  %duration25.i = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.094.i, i32 0, i32 3
  %72 = ptrtoint ptr %duration25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %duration25.i, align 8
  %shl.i.i = shl i32 %73, 8
  %conv26.i = sext i32 %shl.i.i to i64
  %add.i = add i64 %71, %conv26.i
  %cmp.i.not.i = icmp eq ptr %iter_next.095.i, %twt_list.i
  br i1 %cmp.i.not.i, label %for.end.i, label %if.end32.i

if.end32.i:                                       ; preds = %for.body.i
  %sched33.i = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter_next.095.i, i32 0, i32 9
  %74 = ptrtoint ptr %sched33.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load34.i = load i8, ptr %sched33.i, align 1
  %75 = and i8 %bf.load34.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool37.not.i = icmp eq i8 %75, 0
  br i1 %tobool37.not.i, label %if.end32.i.if.then44.i_crit_edge, label %lor.lhs.false38.i

if.end32.i.if.then44.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

lor.lhs.false38.i:                                ; preds = %if.end32.i
  %start_tsf39.i = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter_next.095.i, i32 0, i32 1
  %76 = ptrtoint ptr %start_tsf39.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %start_tsf39.i, align 8
  %add41.i = add i64 %add.i, %conv.i
  %cmp42.i = icmp ugt i64 %77, %add41.i
  br i1 %cmp42.i, label %lor.lhs.false38.i.if.then44.i_crit_edge, label %lor.lhs.false38.i.for.body.i_crit_edge

lor.lhs.false38.i.for.body.i_crit_edge:           ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

lor.lhs.false38.i.if.then44.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false38.i.if.then44.i_crit_edge, %if.end32.i.if.then44.i_crit_edge
  %call.i.i81.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %iter.094.i, ptr noundef %iter_next.095.i) #7
  br i1 %call.i.i81.i, label %if.end.i.i84.i, label %if.then44.i.mt7915_mac_twt_sched_list_add.exit_crit_edge

if.then44.i.mt7915_mac_twt_sched_list_add.exit_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_twt_sched_list_add.exit

if.end.i.i84.i:                                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i82.i = getelementptr inbounds %struct.list_head, ptr %iter_next.095.i, i32 0, i32 1
  br label %cleanup.sink.split.i

for.end.i:                                        ; preds = %for.body.i
  %prev.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %6, i32 0, i32 14, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i, align 4
  %call.i.i86.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %79, ptr noundef %twt_list.i) #7
  br i1 %call.i.i86.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.mt7915_mac_twt_sched_list_add.exit_crit_edge

for.end.i.mt7915_mac_twt_sched_list_add.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7915_mac_twt_sched_list_add.exit

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %if.end.i.i84.i, %if.end.i.i.i
  %prev.i.sink.i = phi ptr [ %prev1.i.i82.i, %if.end.i.i84.i ], [ %prev1.i.i.i, %if.end.i.i.i ], [ %prev.i.i, %for.end.i.cleanup.sink.split.i_crit_edge ]
  %twt_list.sink.i = phi ptr [ %iter_next.095.i, %if.end.i.i84.i ], [ %64, %if.end.i.i.i ], [ %twt_list.i, %for.end.i.cleanup.sink.split.i_crit_edge ]
  %.sink103.i = phi ptr [ %iter.094.i, %if.end.i.i84.i ], [ %twt_list.i, %if.end.i.i.i ], [ %79, %for.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i64 [ %add.i, %if.end.i.i84.i ], [ 0, %if.end.i.i.i ], [ %add.i, %for.end.i.cleanup.sink.split.i_crit_edge ]
  %80 = ptrtoint ptr %prev.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx, ptr %prev.i.sink.i, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %twt_list.sink.i, ptr %arrayidx, align 4
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %.sink103.i, ptr %prev.i, align 4
  %83 = ptrtoint ptr %.sink103.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %arrayidx, ptr %.sink103.i, align 4
  br label %mt7915_mac_twt_sched_list_add.exit

mt7915_mac_twt_sched_list_add.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.mt7915_mac_twt_sched_list_add.exit_crit_edge, %if.then44.i.mt7915_mac_twt_sched_list_add.exit_crit_edge, %if.then.i.mt7915_mac_twt_sched_list_add.exit_crit_edge
  %retval.0.i319 = phi i64 [ 0, %if.then.i.mt7915_mac_twt_sched_list_add.exit_crit_edge ], [ %add.i, %if.then44.i.mt7915_mac_twt_sched_list_add.exit_crit_edge ], [ %add.i, %for.end.i.mt7915_mac_twt_sched_list_add.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %start_tsf = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 1
  %84 = ptrtoint ptr %start_tsf to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %retval.0.i319, ptr %start_tsf, align 8
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %85 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vif, align 4
  %call191 = tail call i64 @__mt7915_get_tsf(ptr noundef %hw, ptr noundef %86) #7
  %87 = ptrtoint ptr %start_tsf to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %start_tsf, align 8
  %sub193 = sub i64 %call191, %88
  %conv194 = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub193)
  %cmp164.i = icmp ult i64 %sub193, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !52

if.then168.i:                                     ; preds = %mt7915_mac_twt_sched_list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %sub193 to i32
  %rem170.i = urem i32 %conv169.i, %conv194
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %mt7915_mac_twt_sched_list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %89 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv194, i64 %sub193) #10, !srcloc !56
  %asmresult.i3.i = extractvalue { i64, i64 } %89, 0
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i326 = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i326, %if.else174.i ]
  %add196 = add i64 %call191, %shl
  %conv197 = zext i32 %__rem.0.i to i64
  %sub198 = sub i64 %add196, %conv197
  %90 = tail call i64 @llvm.bswap.i64(i64 %sub198)
  %twt199 = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %twt, i32 1, i32 2
  %91 = ptrtoint ptr %twt199 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %90, ptr %twt199, align 1
  br label %if.end201

if.else:                                          ; preds = %if.end90
  %twt_list = getelementptr inbounds %struct.mt7915_dev, ptr %6, i32 0, i32 14
  %prev.i327 = getelementptr inbounds %struct.mt7915_dev, ptr %6, i32 0, i32 14, i32 1
  %92 = ptrtoint ptr %prev.i327 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i327, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %93, ptr noundef %twt_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end201_crit_edge

if.else.if.end201_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %prev.i327 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx, ptr %prev.i327, align 4
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %twt_list, ptr %arrayidx, align 4
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %arrayidx, ptr %93, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.end.i.i, %if.else.if.end201_crit_edge, %div_u64_rem.exit
  %twt202 = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %twt, i32 1, i32 2
  %98 = ptrtoint ptr %twt202 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %twt202, align 1
  %100 = tail call i64 @llvm.bswap.i64(i64 %99)
  %tsf = getelementptr %struct.anon.155, ptr %twt8, i32 0, i32 1, i32 %26, i32 2
  %101 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %tsf, align 8
  %vif203 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %102 = ptrtoint ptr %vif203 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vif203, align 4
  %call204 = tail call i32 @mt7915_mcu_twt_agrt_update(ptr noundef %6, ptr noundef %103, ptr noundef %arrayidx, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.end201.unlock_crit_edge

if.end201.unlock_crit_edge:                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end207:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  %shl208 = shl nuw i32 1, %34
  %104 = ptrtoint ptr %twt4 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %twt4, align 16
  %106 = trunc i32 %shl208 to i8
  %conv212 = or i8 %105, %106
  store i8 %conv212, ptr %twt4, align 16
  %shl213 = shl nuw i32 1, %26
  %107 = ptrtoint ptr %twt8 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %twt8, align 8
  %109 = trunc i32 %shl213 to i8
  %conv218 = or i8 %108, %109
  store i8 %conv218, ptr %twt8, align 8
  %110 = ptrtoint ptr %n_agrt to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %n_agrt, align 1
  %inc = add i8 %111, 1
  store i8 %inc, ptr %n_agrt, align 1
  br label %unlock

unlock:                                           ; preds = %if.end207, %if.end201.unlock_crit_edge, %if.end7.unlock_crit_edge, %if.end.unlock_crit_edge
  %setup_cmd.0 = phi i16 [ 3584, %if.end.unlock_crit_edge ], [ 3584, %if.end7.unlock_crit_edge ], [ 3584, %if.end201.unlock_crit_edge ], [ 2048, %if.end207 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %out

out:                                              ; preds = %unlock, %do.end23.i.out_crit_edge, %entry.out_crit_edge
  %setup_cmd.1 = phi i16 [ %setup_cmd.0, %unlock ], [ 3584, %entry.out_crit_edge ], [ 3584, %do.end23.i.out_crit_edge ]
  %112 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %params, align 2
  %and.i311 = and i16 %113, -3585
  %114 = and i16 %setup_cmd.1, 3584
  %or.i316 = or i16 %114, %and.i311
  store i16 %or.i316, ptr %params, align 2
  %115 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %control.i, align 1
  %117 = and i8 %116, 48
  store i8 %117, ptr %control.i, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__mt7915_get_tsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_twt_agrt_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_twt_teardown_flow(ptr noundef %dev, ptr noundef %msta, i8 noundef zeroext %flowid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 9, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !51

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2538, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i8 %flowid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %flowid)
  %cmp24 = icmp ugt i8 %flowid, 7
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %twt = getelementptr inbounds %struct.mt7915_sta, ptr %msta, i32 0, i32 10
  %1 = ptrtoint ptr %twt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %twt, align 8
  %conv28 = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %arrayidx = getelementptr %struct.mt7915_sta, ptr %msta, i32 0, i32 10, i32 1, i32 %conv
  %vif = getelementptr inbounds %struct.mt7915_sta, ptr %msta, i32 0, i32 1
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif, align 4
  %call35 = tail call i32 @mt7915_mcu_twt_agrt_update(ptr noundef %dev, ptr noundef %4, ptr noundef %arrayidx, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_del_init.exit_crit_edge

if.end38.list_del_init.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end38.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %twt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %twt, align 8
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv45 = and i8 %14, %16
  store i8 %conv45, ptr %twt, align 8
  %table_id = getelementptr %struct.mt7915_sta, ptr %msta, i32 0, i32 10, i32 1, i32 %conv, i32 7
  %17 = ptrtoint ptr %table_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %table_id, align 1
  %conv46 = zext i8 %18 to i32
  %shl47 = shl nuw i32 1, %conv46
  %twt49 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 24
  %19 = ptrtoint ptr %twt49 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %twt49, align 16
  %21 = trunc i32 %shl47 to i8
  %22 = xor i8 %21, -1
  %conv52 = and i8 %20, %22
  store i8 %conv52, ptr %twt49, align 16
  %n_agrt = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 24, i32 1
  %23 = ptrtoint ptr %n_agrt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %n_agrt, align 1
  %dec = add i8 %24, -1
  store i8 %dec, ptr %n_agrt, align 1
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mt76_calculate_default_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_token_release(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_set_tx_blocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_tx_status_skb_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_rate(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_skb_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_reverse_frag0_hdr_trans(ptr noundef %skb, i16 noundef zeroext %hdr_gap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = and i32 %5, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %cmp.not = icmp eq i32 %6, 256
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx13 = getelementptr i32, ptr %3, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 4
  %9 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %tobool17.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %vif18 = getelementptr inbounds %struct.mt7915_sta, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vif18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif18, align 4
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %conv = zext i16 %hdr_gap to i32
  %add.ptr28 = getelementptr i8, ptr %3, i32 %conv
  %12 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %eth_hdr.sroa.0.0.copyload = load i32, ptr %add.ptr28, align 1
  %eth_hdr.sroa.9.0.add.ptr28.sroa_idx = getelementptr inbounds i8, ptr %add.ptr28, i32 4
  %13 = ptrtoint ptr %eth_hdr.sroa.9.0.add.ptr28.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %eth_hdr.sroa.9.0.copyload = load i16, ptr %eth_hdr.sroa.9.0.add.ptr28.sroa_idx, align 1
  %eth_hdr.sroa.13.0.add.ptr28.sroa_idx = getelementptr inbounds i8, ptr %add.ptr28, i32 6
  %14 = ptrtoint ptr %eth_hdr.sroa.13.0.add.ptr28.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %eth_hdr.sroa.13.0.copyload = load i32, ptr %eth_hdr.sroa.13.0.add.ptr28.sroa_idx, align 1
  %eth_hdr.sroa.19.0.add.ptr28.sroa_idx = getelementptr inbounds i8, ptr %add.ptr28, i32 10
  %15 = ptrtoint ptr %eth_hdr.sroa.19.0.add.ptr28.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %eth_hdr.sroa.19.0.copyload = load i16, ptr %eth_hdr.sroa.19.0.add.ptr28.sroa_idx, align 1
  %eth_hdr.sroa.23.0.add.ptr28.sroa_idx = getelementptr inbounds i8, ptr %add.ptr28, i32 12
  %16 = ptrtoint ptr %eth_hdr.sroa.23.0.add.ptr28.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %eth_hdr.sroa.23.0.copyload = load i16, ptr %eth_hdr.sroa.23.0.add.ptr28.sroa_idx, align 1
  %arrayidx45 = getelementptr i32, ptr %3, i32 6
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx45, align 4
  %conv48 = trunc i32 %18 to i16
  %arrayidx65 = getelementptr i32, ptr %3, i32 8
  %19 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx65, align 4
  %conv68 = trunc i32 %20 to i16
  %arrayidx104 = getelementptr i32, ptr %3, i32 9
  %21 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx104, align 4
  %addr = getelementptr i8, ptr %11, i32 -48
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -44
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %addr110 = getelementptr i8, ptr %1, i32 -244
  %27 = ptrtoint ptr %addr110 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr110, align 4
  %add.ptr.i199 = getelementptr i8, ptr %1, i32 -240
  %29 = ptrtoint ptr %add.ptr.i199 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i199, align 2
  %31 = and i16 %conv48, 3
  %32 = zext i16 %31 to i32
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %32, label %if.end21.unreachabledefault [
    i32 0, label %sw.bb
    i32 2, label %sw.bb116
    i32 1, label %sw.bb120
    i32 3, label %sw.bb124
  ]

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %bss_conf = getelementptr i8, ptr %11, i32 -840
  %34 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bss_conf, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.ptr.i201 = getelementptr i8, ptr %35, i32 4
  %38 = ptrtoint ptr %add.ptr.i201 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i201, align 2
  %hdr.sroa.36.sroa.0.0.extract.shift = lshr i16 %39, 8
  %hdr.sroa.36.sroa.0.0.extract.trunc = trunc i16 %hdr.sroa.36.sroa.0.0.extract.shift to i8
  %hdr.sroa.36.sroa.9.0.extract.trunc = trunc i16 %39 to i8
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %hdr.sroa.36.sroa.0.0.extract.shift279 = lshr i16 %eth_hdr.sroa.19.0.copyload, 8
  %hdr.sroa.36.sroa.0.0.extract.trunc280 = trunc i16 %hdr.sroa.36.sroa.0.0.extract.shift279 to i8
  %hdr.sroa.36.sroa.9.0.extract.trunc288 = trunc i16 %eth_hdr.sroa.19.0.copyload to i8
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %hdr.sroa.36.sroa.0.0.extract.shift281 = lshr i16 %eth_hdr.sroa.9.0.copyload, 8
  %hdr.sroa.36.sroa.0.0.extract.trunc282 = trunc i16 %hdr.sroa.36.sroa.0.0.extract.shift281 to i8
  %hdr.sroa.36.sroa.9.0.extract.trunc289 = trunc i16 %eth_hdr.sroa.9.0.copyload to i8
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %hdr.sroa.36.sroa.0.0.extract.shift283 = lshr i16 %eth_hdr.sroa.9.0.copyload, 8
  %hdr.sroa.36.sroa.0.0.extract.trunc284 = trunc i16 %hdr.sroa.36.sroa.0.0.extract.shift283 to i8
  %hdr.sroa.36.sroa.9.0.extract.trunc290 = trunc i16 %eth_hdr.sroa.9.0.copyload to i8
  %hdr.sroa.44.sroa.0.0.extract.shift = and i32 %eth_hdr.sroa.13.0.copyload, -16777216
  %phi.cast = and i32 %eth_hdr.sroa.13.0.copyload, 255
  %phi.cast371 = and i32 %eth_hdr.sroa.13.0.copyload, 65280
  %phi.cast372 = and i32 %eth_hdr.sroa.13.0.copyload, 16711680
  br label %sw.epilog

if.end21.unreachabledefault:                      ; preds = %if.end21
  unreachable

sw.epilog:                                        ; preds = %sw.bb124, %sw.bb120, %sw.bb116, %sw.bb
  %hdr.sroa.28.sroa.11.0.in = phi i32 [ %eth_hdr.sroa.0.0.copyload, %sw.bb124 ], [ %eth_hdr.sroa.0.0.copyload, %sw.bb120 ], [ %eth_hdr.sroa.13.0.copyload, %sw.bb116 ], [ %37, %sw.bb ]
  %hdr.sroa.36.sroa.9.0 = phi i8 [ %hdr.sroa.36.sroa.9.0.extract.trunc290, %sw.bb124 ], [ %hdr.sroa.36.sroa.9.0.extract.trunc289, %sw.bb120 ], [ %hdr.sroa.36.sroa.9.0.extract.trunc288, %sw.bb116 ], [ %hdr.sroa.36.sroa.9.0.extract.trunc, %sw.bb ]
  %hdr.sroa.36.sroa.0.0 = phi i8 [ %hdr.sroa.36.sroa.0.0.extract.trunc284, %sw.bb124 ], [ %hdr.sroa.36.sroa.0.0.extract.trunc282, %sw.bb120 ], [ %hdr.sroa.36.sroa.0.0.extract.trunc280, %sw.bb116 ], [ %hdr.sroa.36.sroa.0.0.extract.trunc, %sw.bb ]
  %hdr.sroa.44.sroa.7.0 = phi i32 [ %phi.cast, %sw.bb124 ], [ 255, %sw.bb120 ], [ 255, %sw.bb116 ], [ 255, %sw.bb ]
  %hdr.sroa.44.sroa.6.0 = phi i32 [ %phi.cast371, %sw.bb124 ], [ 65280, %sw.bb120 ], [ 65280, %sw.bb116 ], [ 65280, %sw.bb ]
  %hdr.sroa.44.sroa.5.0 = phi i32 [ %phi.cast372, %sw.bb124 ], [ 16711680, %sw.bb120 ], [ 16711680, %sw.bb116 ], [ 16711680, %sw.bb ]
  %hdr.sroa.44.sroa.0.0 = phi i32 [ %hdr.sroa.44.sroa.0.0.extract.shift, %sw.bb124 ], [ -16777216, %sw.bb120 ], [ -16777216, %sw.bb116 ], [ -16777216, %sw.bb ]
  %hdr.sroa.49.0 = phi i16 [ %eth_hdr.sroa.19.0.copyload, %sw.bb124 ], [ -1, %sw.bb120 ], [ -1, %sw.bb116 ], [ -1, %sw.bb ]
  %sub = add nuw nsw i32 %conv, 12
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub) #7
  %40 = zext i16 %eth_hdr.sroa.23.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %eth_hdr.sroa.23.0.copyload, label %if.else [
    i16 -32525, label %sw.epilog.if.then141_crit_edge
    i16 -32457, label %sw.epilog.if.then141_crit_edge374
  ]

sw.epilog.if.then141_crit_edge374:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

sw.epilog.if.then141_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.then141:                                       ; preds = %sw.epilog.if.then141_crit_edge, %sw.epilog.if.then141_crit_edge374
  %call142 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bridge_tunnel_header to i32))
  %41 = load i32, ptr @bridge_tunnel_header, align 4
  %42 = ptrtoint ptr %call142 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %call142, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i8], ptr @bridge_tunnel_header, i32 0, i32 4) to i32))
  %43 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @bridge_tunnel_header, i32 0, i32 4), align 2
  %add.ptr1.i211 = getelementptr i8, ptr %call142, i32 4
  %44 = ptrtoint ptr %add.ptr1.i211 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i211, align 2
  br label %if.end152

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %eth_hdr.sroa.23.0.copyload)
  %cmp145 = icmp ugt i16 %eth_hdr.sroa.23.0.copyload, 1535
  br i1 %cmp145, label %if.then147, label %if.else149

if.then147:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call148 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rfc1042_header to i32))
  %45 = load i32, ptr @rfc1042_header, align 4
  %46 = ptrtoint ptr %call148 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %call148, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4) to i32))
  %47 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4), align 2
  %add.ptr1.i212 = getelementptr i8, ptr %call148, i32 4
  %48 = ptrtoint ptr %add.ptr1.i212 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %add.ptr1.i212, align 2
  br label %if.end152

if.else149:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call150 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %if.then147, %if.then141
  %49 = and i16 %conv48, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp.i.not = icmp eq i16 %49, 0
  br i1 %cmp.i.not, label %if.end152.if.end157_crit_edge, label %if.then155

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %call156 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #7
  %ht_ctrl.0.extract.shift = lshr i32 %22, 16
  %ht_ctrl.0.extract.trunc = trunc i32 %ht_ctrl.0.extract.shift to i16
  %50 = ptrtoint ptr %call156 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %ht_ctrl.0.extract.trunc, ptr %call156, align 1
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end152.if.end157_crit_edge
  %51 = and i16 %conv48, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %51)
  %cmp.i213 = icmp eq i16 %51, -30720
  br i1 %cmp.i213, label %if.then160, label %if.end157.if.end162_crit_edge

if.end157.if.end162_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %call161 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #7
  %52 = ptrtoint ptr %call161 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 0, ptr %call161, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.end157.if.end162_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp.i214 = icmp eq i16 %31, 3
  br i1 %cmp.i214, label %if.then165, label %if.else167

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 30) #7
  %53 = ptrtoint ptr %call166 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %conv48, ptr %call166, align 1
  %hdr.sroa.10.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 2
  %54 = ptrtoint ptr %hdr.sroa.10.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 0, ptr %hdr.sroa.10.0.call166.sroa_idx, align 1
  %hdr.sroa.12.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 4
  %55 = ptrtoint ptr %hdr.sroa.12.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %24, ptr %hdr.sroa.12.0.call166.sroa_idx, align 1
  %hdr.sroa.17.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 8
  %56 = ptrtoint ptr %hdr.sroa.17.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %26, ptr %hdr.sroa.17.0.call166.sroa_idx, align 1
  %hdr.sroa.20.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 10
  %57 = ptrtoint ptr %hdr.sroa.20.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %28, ptr %hdr.sroa.20.0.call166.sroa_idx, align 1
  %hdr.sroa.25.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 14
  %58 = ptrtoint ptr %hdr.sroa.25.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %30, ptr %hdr.sroa.25.0.call166.sroa_idx, align 1
  %hdr.sroa.28.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 16
  %59 = ptrtoint ptr %hdr.sroa.28.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %hdr.sroa.28.sroa.11.0.in, ptr %hdr.sroa.28.0.call166.sroa_idx, align 1
  %hdr.sroa.36.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 20
  %hdr.sroa.36.sroa.9.0.insert.ext = zext i8 %hdr.sroa.36.sroa.9.0 to i16
  %hdr.sroa.36.sroa.0.0.insert.ext = zext i8 %hdr.sroa.36.sroa.0.0 to i16
  %hdr.sroa.36.sroa.0.0.insert.shift = shl nuw i16 %hdr.sroa.36.sroa.0.0.insert.ext, 8
  %hdr.sroa.36.sroa.0.0.insert.insert = or i16 %hdr.sroa.36.sroa.0.0.insert.shift, %hdr.sroa.36.sroa.9.0.insert.ext
  %60 = ptrtoint ptr %hdr.sroa.36.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %hdr.sroa.36.sroa.0.0.insert.insert, ptr %hdr.sroa.36.0.call166.sroa_idx, align 1
  %hdr.sroa.42.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 22
  %61 = ptrtoint ptr %hdr.sroa.42.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %conv68, ptr %hdr.sroa.42.0.call166.sroa_idx, align 1
  %hdr.sroa.44.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 24
  %hdr.sroa.44.sroa.6.0.insert.insert = or i32 %hdr.sroa.44.sroa.6.0, %hdr.sroa.44.sroa.7.0
  %hdr.sroa.44.sroa.5.0.insert.insert = or i32 %hdr.sroa.44.sroa.6.0.insert.insert, %hdr.sroa.44.sroa.5.0
  %hdr.sroa.44.sroa.0.0.insert.insert = or i32 %hdr.sroa.44.sroa.5.0.insert.insert, %hdr.sroa.44.sroa.0.0
  %62 = ptrtoint ptr %hdr.sroa.44.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %hdr.sroa.44.sroa.0.0.insert.insert, ptr %hdr.sroa.44.0.call166.sroa_idx, align 1
  %hdr.sroa.49.0.call166.sroa_idx = getelementptr inbounds i8, ptr %call166, i32 28
  %63 = ptrtoint ptr %hdr.sroa.49.0.call166.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %hdr.sroa.49.0, ptr %hdr.sroa.49.0.call166.sroa_idx, align 1
  br label %cleanup

if.else167:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %call168 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 24) #7
  %64 = ptrtoint ptr %call168 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %conv48, ptr %call168, align 1
  %hdr.sroa.10.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 2
  %65 = ptrtoint ptr %hdr.sroa.10.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 0, ptr %hdr.sroa.10.0.call168.sroa_idx, align 1
  %hdr.sroa.12.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 4
  %66 = ptrtoint ptr %hdr.sroa.12.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %24, ptr %hdr.sroa.12.0.call168.sroa_idx, align 1
  %hdr.sroa.17.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 8
  %67 = ptrtoint ptr %hdr.sroa.17.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %26, ptr %hdr.sroa.17.0.call168.sroa_idx, align 1
  %hdr.sroa.20.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 10
  %68 = ptrtoint ptr %hdr.sroa.20.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %28, ptr %hdr.sroa.20.0.call168.sroa_idx, align 1
  %hdr.sroa.25.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 14
  %69 = ptrtoint ptr %hdr.sroa.25.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %30, ptr %hdr.sroa.25.0.call168.sroa_idx, align 1
  %hdr.sroa.28.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 16
  %70 = ptrtoint ptr %hdr.sroa.28.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %hdr.sroa.28.sroa.11.0.in, ptr %hdr.sroa.28.0.call168.sroa_idx, align 1
  %hdr.sroa.36.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 20
  %hdr.sroa.36.sroa.9.0.insert.ext285 = zext i8 %hdr.sroa.36.sroa.9.0 to i16
  %hdr.sroa.36.sroa.0.0.insert.ext275 = zext i8 %hdr.sroa.36.sroa.0.0 to i16
  %hdr.sroa.36.sroa.0.0.insert.shift276 = shl nuw i16 %hdr.sroa.36.sroa.0.0.insert.ext275, 8
  %hdr.sroa.36.sroa.0.0.insert.insert278 = or i16 %hdr.sroa.36.sroa.0.0.insert.shift276, %hdr.sroa.36.sroa.9.0.insert.ext285
  %71 = ptrtoint ptr %hdr.sroa.36.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %hdr.sroa.36.sroa.0.0.insert.insert278, ptr %hdr.sroa.36.0.call168.sroa_idx, align 1
  %hdr.sroa.42.0.call168.sroa_idx = getelementptr inbounds i8, ptr %call168, i32 22
  %72 = ptrtoint ptr %hdr.sroa.42.0.call168.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %conv68, ptr %hdr.sroa.42.0.call168.sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else167, %if.then165, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.else167 ], [ 0, %if.then165 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_insert_ccmp_hdr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_mac_decode_he_radiotap(ptr noundef %skb, ptr nocapture noundef readonly %rxv, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %arrayidx = getelementptr i32, ptr %rxv, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %or = or i32 %3, 67108864
  store i32 %or, ptr %flag, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #7
  %4 = call ptr @memcpy(ptr %call1, ptr @mt7915_mac_decode_he_radiotap.known, i32 12)
  %arrayidx2 = getelementptr i32, ptr %rxv, i32 14
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %sh.diff = lshr i32 %6, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %7 = and i16 %tr.sh.diff, 16128
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = trunc i32 %9 to i16
  %11 = lshr i16 %10, 6
  %12 = and i16 %11, 64
  %or11163 = or i16 %12, %7
  %data3 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 2
  %13 = ptrtoint ptr %data3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or11163, ptr %data3, align 2
  %arrayidx13 = getelementptr i32, ptr %rxv, i32 11
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  %sh.diff379 = lshr i32 %15, 8
  %tr.sh.diff380 = trunc i32 %sh.diff379 to i16
  %16 = and i16 %tr.sh.diff380, 3840
  %data4 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 3
  %17 = ptrtoint ptr %data4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %data4, align 2
  %18 = trunc i32 %1 to i16
  %19 = load i32, ptr %arrayidx, align 4
  %20 = trunc i32 %19 to i16
  %21 = lshr i16 %20, 8
  %22 = and i16 %21, 128
  %23 = shl i16 %18, 5
  %24 = add i16 %23, 16384
  %25 = and i16 %24, -16384
  %or25164 = or i16 %22, %25
  %data5 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 4
  %26 = ptrtoint ptr %data5 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or25164, ptr %data5, align 2
  %27 = ptrtoint ptr %rxv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxv, align 4
  %29 = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = or i16 %or25164, 64
  %31 = ptrtoint ptr %data5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %data5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2, align 4
  %34 = and i32 %33, -1071710208
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %div4.i227.lhs.trunc = trunc i32 %35 to i16
  %36 = lshr exact i16 %div4.i227.lhs.trunc, 6
  %37 = trunc i32 %33 to i16
  %38 = shl i16 %37, 4
  %39 = and i16 %38, 4096
  %or42165 = or i16 %39, %36
  %data6 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 5
  %40 = ptrtoint ptr %data6 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %or42165, ptr %data6, align 2
  %41 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %mode, label %if.end.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb62
    i32 11, label %sw.bb76
    i32 10, label %sw.bb99
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %call1, align 2
  %44 = or i16 %43, 6144
  store i16 %44, ptr %call1, align 2
  %45 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2, align 4
  %sh.diff381 = lshr i32 %46, 7
  %tr.sh.diff382 = trunc i32 %sh.diff381 to i16
  %47 = and i16 %tr.sh.diff382, 16384
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %50 = trunc i32 %49 to i16
  %51 = shl i16 %50, 8
  %52 = and i16 %51, -32768
  %53 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %data3, align 2
  %or57172 = or i16 %52, %54
  %or60173 = or i16 %or57172, %47
  store i16 %or60173, ptr %data3, align 2
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %call1, align 2
  %57 = or i16 %56, 4352
  store i16 %57, ptr %call1, align 2
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %60 = trunc i32 %59 to i16
  %61 = shl i16 %60, 8
  %62 = and i16 %61, -32768
  %63 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %data3, align 2
  %or74171 = or i16 %62, %64
  store i16 %or74171, ptr %data3, align 2
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  %65 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %call1, align 2
  %67 = or i16 %66, 4608
  store i16 %67, ptr %call1, align 2
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %70 = trunc i32 %69 to i16
  %71 = shl i16 %70, 8
  %72 = and i16 %71, -32768
  %73 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %data3, align 2
  %or88169 = or i16 %72, %74
  store i16 %or88169, ptr %data3, align 2
  %arrayidx90 = getelementptr i32, ptr %rxv, i32 7
  %75 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx90, align 4
  %77 = and i32 %76, 61567
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = lshr exact i32 %78, 16
  %conv8.i315 = trunc i32 %79 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv8.i315) #7
  %81 = ptrtoint ptr %data4 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %data4, align 2
  %or97170 = or i16 %80, %82
  store i16 %or97170, ptr %data4, align 2
  tail call fastcc void @mt7915_mac_decode_he_radiotap_ru(ptr noundef %cb, ptr noundef %call1, ptr noundef %rxv)
  %83 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flag, align 4
  %or.i = or i32 %84, 134217728
  store i32 %or.i, ptr %flag, align 4
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #7
  %85 = call ptr @memcpy(ptr %call.i, ptr @mt7915_mac_decode_he_mu_radiotap.mu_known, i32 12)
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %86 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rate_idx.i, align 1
  %88 = and i8 %87, 15
  %conv8.i.i = zext i8 %88 to i16
  %89 = shl nuw nsw i16 %conv8.i.i, 8
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %call.i, align 2
  %or493.i = or i16 %91, %89
  store i16 %or493.i, ptr %call.i, align 2
  %he_dcm.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %92 = ptrtoint ptr %he_dcm.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %bf.load.i = load i16, ptr %he_dcm.i, align 1
  %93 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool.not.i357 = icmp eq i16 %93, 0
  br i1 %tobool.not.i357, label %sw.bb76.le16_encode_bits.exit123.i_crit_edge, label %if.then.i358

sw.bb76.le16_encode_bits.exit123.i_crit_edge:     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  br label %le16_encode_bits.exit123.i

if.then.i358:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  %or1696.i = or i16 %or493.i, 8192
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %or1696.i, ptr %call.i, align 2
  br label %le16_encode_bits.exit123.i

le16_encode_bits.exit123.i:                       ; preds = %if.then.i358, %sw.bb76.le16_encode_bits.exit123.i_crit_edge
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx, align 4
  %97 = trunc i32 %96 to i16
  %98 = ptrtoint ptr %he_dcm.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %bf.load18.i = load i16, ptr %he_dcm.i, align 1
  %99 = lshr i16 %bf.load18.i, 3
  %100 = and i16 %99, 768
  %101 = shl i16 %97, 12
  %or2994.i = or i16 %101, %100
  %flags2.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 1
  %102 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %flags2.i, align 2
  %or3195.i = or i16 %103, %or2994.i
  store i16 %or3195.i, ptr %flags2.i, align 2
  %arrayidx33.i = getelementptr i32, ptr %rxv, i32 3
  %104 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx33.i, align 4
  %106 = lshr i32 %105, 24
  %conv35.i = trunc i32 %106 to i8
  %ru_ch1.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 2
  %107 = ptrtoint ptr %ru_ch1.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv35.i, ptr %ru_ch1.i, align 2
  %bf.load38.i = load i16, ptr %he_dcm.i, align 1
  %108 = and i16 %bf.load38.i, 14336
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %108)
  %cmp.i = icmp ugt i16 %108, 4096
  br i1 %cmp.i, label %if.then44.i, label %le16_encode_bits.exit123.i.if.end53.i_crit_edge

le16_encode_bits.exit123.i.if.end53.i_crit_edge:  ; preds = %le16_encode_bits.exit123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then44.i:                                      ; preds = %le16_encode_bits.exit123.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %call.i, align 2
  %111 = or i16 %110, 2
  store i16 %111, ptr %call.i, align 2
  %112 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx33.i, align 4
  %sum.shift.i = lshr i32 %113, 16
  %div4.i126131135136.i = trunc i32 %sum.shift.i to i8
  %ru_ch2.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 3
  %114 = ptrtoint ptr %ru_ch2.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %div4.i126131135136.i, ptr %ru_ch2.i, align 2
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then44.i, %le16_encode_bits.exit123.i.if.end53.i_crit_edge
  %115 = ptrtoint ptr %he_dcm.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %bf.load55.i = load i16, ptr %he_dcm.i, align 1
  %116 = and i16 %bf.load55.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp60.not.i = icmp eq i16 %116, 0
  br i1 %cmp60.not.i, label %if.end53.i.sw.epilog_crit_edge, label %if.then62.i

if.end53.i.sw.epilog_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then62.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx33.i, align 4
  %119 = lshr i32 %118, 8
  %conv65.i = trunc i32 %119 to i8
  %arrayidx67.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 2, i32 1
  %120 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv65.i, ptr %arrayidx67.i, align 1
  %121 = load i32, ptr %arrayidx33.i, align 4
  %conv70.i = trunc i32 %121 to i8
  %arrayidx72.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv70.i, ptr %arrayidx72.i, align 1
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %call1, align 2
  %125 = or i16 %124, 824
  store i16 %125, ptr %call1, align 2
  %126 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx13, align 4
  %128 = and i32 %127, 15728896
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  %130 = trunc i32 %129 to i16
  %131 = trunc i32 %127 to i16
  %132 = lshr i16 %131, 9
  %133 = and i16 %132, 15
  %or114166 = or i16 %133, %130
  %134 = and i32 %127, 57345
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  %sum.shift372 = lshr exact i32 %135, 17
  %136 = trunc i32 %sum.shift372 to i16
  %137 = ptrtoint ptr %data4 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %data4, align 2
  %or120167 = or i16 %or114166, %138
  %or123168 = or i16 %or120167, %136
  store i16 %or123168, ptr %data4, align 2
  tail call fastcc void @mt7915_mac_decode_he_radiotap_ru(ptr noundef %cb, ptr noundef %call1, ptr noundef %rxv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb99, %if.then62.i, %if.end53.i.sw.epilog_crit_edge, %sw.bb62, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_mac_decode_he_radiotap_ru(ptr nocapture noundef %status, ptr nocapture noundef %he, ptr nocapture noundef readonly %rxv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxv, align 4
  %2 = lshr i32 %1, 4
  %shr = and i32 %2, 15
  %arrayidx29 = getelementptr i32, ptr %rxv, i32 1
  %3 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx29, align 4
  %5 = lshr i32 %4, 20
  %shl = and i32 %5, 240
  %or = or i32 %shl, %shr
  %bw = getelementptr inbounds %struct.mt76_rx_status, ptr %status, i32 0, i32 11
  %6 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load = load i16, ptr %bw, align 1
  %bf.clear = and i16 %bf.load, -14337
  %bf.set = or i16 %bf.clear, 12288
  store i16 %bf.set, ptr %bw, align 1
  %trunc = trunc i32 %or to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %trunc, label %entry.le16_encode_bits.exit_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge101
    i8 2, label %entry.sw.bb_crit_edge102
    i8 3, label %entry.sw.bb_crit_edge103
    i8 4, label %entry.sw.bb_crit_edge104
    i8 5, label %entry.sw.bb_crit_edge105
    i8 6, label %entry.sw.bb_crit_edge106
    i8 7, label %entry.sw.bb_crit_edge107
    i8 8, label %entry.sw.bb_crit_edge108
    i8 9, label %entry.sw.bb_crit_edge109
    i8 10, label %entry.sw.bb_crit_edge110
    i8 11, label %entry.sw.bb_crit_edge111
    i8 12, label %entry.sw.bb_crit_edge112
    i8 13, label %entry.sw.bb_crit_edge113
    i8 14, label %entry.sw.bb_crit_edge114
    i8 15, label %entry.sw.bb_crit_edge115
    i8 16, label %entry.sw.bb_crit_edge116
    i8 17, label %entry.sw.bb_crit_edge117
    i8 18, label %entry.sw.bb_crit_edge118
    i8 19, label %entry.sw.bb_crit_edge119
    i8 20, label %entry.sw.bb_crit_edge120
    i8 21, label %entry.sw.bb_crit_edge121
    i8 22, label %entry.sw.bb_crit_edge122
    i8 23, label %entry.sw.bb_crit_edge123
    i8 24, label %entry.sw.bb_crit_edge124
    i8 25, label %entry.sw.bb_crit_edge125
    i8 26, label %entry.sw.bb_crit_edge126
    i8 27, label %entry.sw.bb_crit_edge127
    i8 28, label %entry.sw.bb_crit_edge128
    i8 29, label %entry.sw.bb_crit_edge129
    i8 30, label %entry.sw.bb_crit_edge130
    i8 31, label %entry.sw.bb_crit_edge131
    i8 32, label %entry.sw.bb_crit_edge132
    i8 33, label %entry.sw.bb_crit_edge133
    i8 34, label %entry.sw.bb_crit_edge134
    i8 35, label %entry.sw.bb_crit_edge135
    i8 36, label %entry.sw.bb_crit_edge136
    i8 37, label %entry.sw.bb36_crit_edge
    i8 38, label %entry.sw.bb36_crit_edge137
    i8 39, label %entry.sw.bb36_crit_edge138
    i8 40, label %entry.sw.bb36_crit_edge139
    i8 41, label %entry.sw.bb36_crit_edge140
    i8 42, label %entry.sw.bb36_crit_edge141
    i8 43, label %entry.sw.bb36_crit_edge142
    i8 44, label %entry.sw.bb36_crit_edge143
    i8 45, label %entry.sw.bb36_crit_edge144
    i8 46, label %entry.sw.bb36_crit_edge145
    i8 47, label %entry.sw.bb36_crit_edge146
    i8 48, label %entry.sw.bb36_crit_edge147
    i8 49, label %entry.sw.bb36_crit_edge148
    i8 50, label %entry.sw.bb36_crit_edge149
    i8 51, label %entry.sw.bb36_crit_edge150
    i8 52, label %entry.sw.bb36_crit_edge151
    i8 53, label %entry.sw.bb43_crit_edge
    i8 54, label %entry.sw.bb43_crit_edge152
    i8 55, label %entry.sw.bb43_crit_edge153
    i8 56, label %entry.sw.bb43_crit_edge154
    i8 57, label %entry.sw.bb43_crit_edge155
    i8 58, label %entry.sw.bb43_crit_edge156
    i8 59, label %entry.sw.bb43_crit_edge157
    i8 60, label %entry.sw.bb43_crit_edge158
    i8 61, label %entry.sw.bb51_crit_edge
    i8 62, label %entry.sw.bb51_crit_edge159
    i8 63, label %entry.sw.bb51_crit_edge160
    i8 64, label %entry.sw.bb51_crit_edge161
    i8 65, label %entry.sw.bb59_crit_edge
    i8 66, label %entry.sw.bb59_crit_edge162
    i8 67, label %sw.bb67
    i8 68, label %sw.bb72
  ]

entry.sw.bb59_crit_edge162:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb59

entry.sw.bb59_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb59

entry.sw.bb51_crit_edge161:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

entry.sw.bb51_crit_edge160:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

entry.sw.bb51_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

entry.sw.bb43_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge157:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge156:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge155:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge154:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge153:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge152:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb43_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

entry.sw.bb36_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge148:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge147:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge146:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb_crit_edge136:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge135:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge134:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge133:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge132:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge131:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge130:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge129:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge128:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge127:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge126:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge125:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge124:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge123:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge122:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge120:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge119:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge118:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge117:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge116:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge115:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge114:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge113:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge112:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge111:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge110:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge109:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge108:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge107:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge106:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge105:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge103:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge102:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge101:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.le16_encode_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %le16_encode_bits.exit

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge101, %entry.sw.bb_crit_edge102, %entry.sw.bb_crit_edge103, %entry.sw.bb_crit_edge104, %entry.sw.bb_crit_edge105, %entry.sw.bb_crit_edge106, %entry.sw.bb_crit_edge107, %entry.sw.bb_crit_edge108, %entry.sw.bb_crit_edge109, %entry.sw.bb_crit_edge110, %entry.sw.bb_crit_edge111, %entry.sw.bb_crit_edge112, %entry.sw.bb_crit_edge113, %entry.sw.bb_crit_edge114, %entry.sw.bb_crit_edge115, %entry.sw.bb_crit_edge116, %entry.sw.bb_crit_edge117, %entry.sw.bb_crit_edge118, %entry.sw.bb_crit_edge119, %entry.sw.bb_crit_edge120, %entry.sw.bb_crit_edge121, %entry.sw.bb_crit_edge122, %entry.sw.bb_crit_edge123, %entry.sw.bb_crit_edge124, %entry.sw.bb_crit_edge125, %entry.sw.bb_crit_edge126, %entry.sw.bb_crit_edge127, %entry.sw.bb_crit_edge128, %entry.sw.bb_crit_edge129, %entry.sw.bb_crit_edge130, %entry.sw.bb_crit_edge131, %entry.sw.bb_crit_edge132, %entry.sw.bb_crit_edge133, %entry.sw.bb_crit_edge134, %entry.sw.bb_crit_edge135, %entry.sw.bb_crit_edge136
  %bf.clear34 = and i16 %bf.set, -3841
  %8 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %bf.clear34, ptr %bw, align 1
  br label %le16_encode_bits.exit

sw.bb36:                                          ; preds = %entry.sw.bb36_crit_edge, %entry.sw.bb36_crit_edge137, %entry.sw.bb36_crit_edge138, %entry.sw.bb36_crit_edge139, %entry.sw.bb36_crit_edge140, %entry.sw.bb36_crit_edge141, %entry.sw.bb36_crit_edge142, %entry.sw.bb36_crit_edge143, %entry.sw.bb36_crit_edge144, %entry.sw.bb36_crit_edge145, %entry.sw.bb36_crit_edge146, %entry.sw.bb36_crit_edge147, %entry.sw.bb36_crit_edge148, %entry.sw.bb36_crit_edge149, %entry.sw.bb36_crit_edge150, %entry.sw.bb36_crit_edge151
  %bf.clear39 = and i16 %bf.set, -3841
  %bf.set40 = or i16 %bf.clear39, 256
  %9 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %bf.set40, ptr %bw, align 1
  %conv42 = add nsw i8 %trunc, -37
  br label %le16_encode_bits.exit

sw.bb43:                                          ; preds = %entry.sw.bb43_crit_edge, %entry.sw.bb43_crit_edge152, %entry.sw.bb43_crit_edge153, %entry.sw.bb43_crit_edge154, %entry.sw.bb43_crit_edge155, %entry.sw.bb43_crit_edge156, %entry.sw.bb43_crit_edge157, %entry.sw.bb43_crit_edge158
  %bf.clear46 = and i16 %bf.set, -3841
  %bf.set47 = or i16 %bf.clear46, 512
  %10 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %bf.set47, ptr %bw, align 1
  %conv50 = add nsw i8 %trunc, -53
  br label %le16_encode_bits.exit

sw.bb51:                                          ; preds = %entry.sw.bb51_crit_edge, %entry.sw.bb51_crit_edge159, %entry.sw.bb51_crit_edge160, %entry.sw.bb51_crit_edge161
  %bf.clear54 = and i16 %bf.set, -3841
  %bf.set55 = or i16 %bf.clear54, 768
  %11 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %bf.set55, ptr %bw, align 1
  %conv58 = add nsw i8 %trunc, -61
  br label %le16_encode_bits.exit

sw.bb59:                                          ; preds = %entry.sw.bb59_crit_edge, %entry.sw.bb59_crit_edge162
  %bf.clear62 = and i16 %bf.set, -3841
  %bf.set63 = or i16 %bf.clear62, 1024
  %12 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %bf.set63, ptr %bw, align 1
  %conv66 = add nsw i8 %trunc, -65
  br label %le16_encode_bits.exit

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear70 = and i16 %bf.set, -3841
  %bf.set71 = or i16 %bf.clear70, 1280
  %13 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %bf.set71, ptr %bw, align 1
  br label %le16_encode_bits.exit

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear75 = and i16 %bf.set, -3841
  %bf.set76 = or i16 %bf.clear75, 1536
  %14 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %bf.set76, ptr %bw, align 1
  br label %le16_encode_bits.exit

le16_encode_bits.exit:                            ; preds = %sw.bb72, %sw.bb67, %sw.bb59, %sw.bb51, %sw.bb43, %sw.bb36, %sw.bb, %entry.le16_encode_bits.exit_crit_edge
  %offs.0 = phi i8 [ 0, %entry.le16_encode_bits.exit_crit_edge ], [ 0, %sw.bb72 ], [ 0, %sw.bb67 ], [ %conv66, %sw.bb59 ], [ %conv58, %sw.bb51 ], [ %conv50, %sw.bb43 ], [ %conv42, %sw.bb36 ], [ %trunc, %sw.bb ]
  %15 = ptrtoint ptr %he to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %he, align 2
  %17 = or i16 %16, 64
  store i16 %17, ptr %he, align 2
  %18 = or i8 %offs.0, 64
  %19 = zext i8 %18 to i16
  %data2 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %he, i32 0, i32 1
  %20 = ptrtoint ptr %data2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data2, align 2
  %or84100 = or i16 %21, %19
  store i16 %or84100, ptr %data2, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_put_txwi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_dma_prefetch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_update_vif_beacon(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 7, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge3
    i32 3, label %entry.sw.bb_crit_edge4
  ]

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3, %entry.sw.bb_crit_edge4
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 17
  %3 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_beacon, align 1, !range !47
  %5 = zext i8 %4 to i32
  %call = tail call i32 @mt7915_mcu_add_beacon(ptr noundef %priv, ptr noundef %vif, i32 noundef %5) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_fcc5_lpn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_radar_th(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_pulse_th(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 2538, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 1403, i32 6}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 1420, i32 11}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"ac_to_tid", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 102, i32 18}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 1602, i32 9}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 65, i32 9}
!20 = !{ptr @mt7915_mac_decode_he_radiotap.known, !21, !"known", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 315, i32 44}
!22 = !{ptr @mt7915_mac_decode_he_mu_radiotap.mu_known, !23, !"mu_known", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 274, i32 47}
!24 = distinct !{null, !25, !"nf_power", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 1807, i32 18}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 1855, i32 2}
!28 = !{ptr @xa_init_flags.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fcc_radar_specs, !32, !"fcc_radar_specs", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 31, i32 43}
!33 = !{ptr @etsi_radar_specs, !34, !"etsi_radar_specs", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 17, i32 43}
!35 = !{ptr @jp_radar_specs, !36, !"jp_radar_specs", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mac.c", i32 42, i32 43}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{i16 0, i16 17}
!49 = !{i8 0, i8 9}
!50 = !{i32 0, i32 33}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2149731073}
!54 = !{i64 2149731339}
!55 = !{i32 0, i32 9}
!56 = !{i64 2148824970, i64 2148825250, i64 2148825584, i64 2148825918}
