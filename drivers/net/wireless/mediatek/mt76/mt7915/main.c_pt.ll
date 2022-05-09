; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/main.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.138 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.138 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.144, ptr, %union.anon.145, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.140, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.140 = type { ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { ptr, i32 }
%union.anon.145 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt7915_dev = type { %union.anon.139, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.139 = type { %struct.mt76_dev }
%struct.anon.147 = type { i8, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.135, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.135 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.136] }
%struct.anon.136 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.130 = type { i32, i16 }
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
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.mt7915_vif = type { %struct.mt76_vif, %struct.mt7915_vif_cap, %struct.mt7915_sta, ptr, [4 x %struct.ieee80211_tx_queue_params], %struct.cfg80211_bitrate_mask }
%struct.mt7915_vif_cap = type { i8 }
%struct.mt7915_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, %struct.list_head, [8 x i32], i32, i32, i32, %struct.mt76_sta_stats, %struct.mt7915_sta_key_conf, %struct.anon.148 }
%struct.mt76_sta_stats = type { [12 x i64], [4 x i64], [4 x i64], [16 x i64] }
%struct.mt7915_sta_key_conf = type { i8, [16 x i8] }
%struct.anon.148 = type { i8, [8 x %struct.mt7915_twt_flow] }
%struct.mt7915_twt_flow = type { %struct.list_head, i64, i64, i32, i16, i16, i8, i8, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.mt76_txq = type { ptr, i16, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.mt76_ethtool_worker_info = type { ptr, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/main.c\00", [47 x i8] zeroinitializer }, align 32
@mt7915_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt7915_tx, ptr @mt7915_start, ptr @mt7915_stop, ptr null, ptr null, ptr null, ptr @mt7915_add_interface, ptr null, ptr @mt7915_remove_interface, ptr @mt7915_config, ptr @mt7915_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt7915_configure_filter, ptr null, ptr null, ptr @mt7915_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sw_scan, ptr @mt76_sw_scan_complete, ptr @mt7915_get_stats, ptr null, ptr null, ptr @mt7915_set_rts_threshold, ptr @mt7915_sta_add, ptr @mt7915_sta_remove, ptr @mt7915_sta_add_debugfs, ptr null, ptr null, ptr null, ptr @mt76_sta_pre_rcu_remove, ptr @mt7915_sta_rc_update, ptr null, ptr @mt7915_sta_statistics, ptr @mt7915_conf_tx, ptr @mt7915_get_tsf, ptr @mt7915_set_tsf, ptr @mt7915_offset_tsf, ptr null, ptr null, ptr @mt7915_ampdu_action, ptr @mt76_get_survey, ptr null, ptr @mt7915_set_coverage_class, ptr @mt76_testmode_cmd, ptr @mt76_testmode_dump, ptr null, ptr null, ptr @mt7915_set_antenna, ptr @mt76_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7915_set_bitrate_mask, ptr null, ptr null, ptr @mt76_release_buffered_frames, ptr @mt7915_get_et_sset_count, ptr @mt7915_get_et_stats, ptr @mt7915_get_et_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7915_channel_switch_beacon, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_txpower, ptr null, ptr null, ptr null, ptr @mt76_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7915_sta_set_4addr, ptr @mt7915_set_sar_specs, ptr @mt7915_sta_set_decap_offload, ptr @mt7915_mac_add_twt_setup, ptr @mt7915_twt_teardown_request, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mt7915_get_et_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ei: %d  MT7915_SSTATS_LEN: %d\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt7915_get_et_stats\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7915_get_et_stats._entry_ptr = internal global ptr @mt7915_get_et_stats._entry, section ".printk_index", align 4
@mt7915_gstrings_stats = internal constant { [85 x [32 x i8]], [672 x i8] } { [85 x [32 x i8]] [[32 x i8] c"tx_ampdu_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_stop_q_empty_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mpdu_attempts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mpdu_success\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_rwp_fail_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_rwp_need_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pkt_ebf_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pkt_ibf_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:0-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:2-10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:11-19\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:20-28\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:29-37\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:38-46\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:47-55\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:56-79\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:80-103\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:104-127\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:128-151\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:152-175\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:176-199\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:200-223\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:224-247\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ba_miss_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_beamformer_ppdu_iBF\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_beamformer_ppdu_eBF\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_all\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_he\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_vht\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_ht\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_bw\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_nc\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_nr\00\00\00\00", [32 x i8] c"tx_beamformee_ok_feedback_pkts\00\00", [32 x i8] c"tx_beamformee_feedback_trig\00\00\00\00\00", [32 x i8] c"tx_mu_beamforming\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mu_mpdu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mu_successful_mpdu\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_su_successful_mpdu\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fifo_full_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_mpdu_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel_idle_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_vector_mismatch_cnt\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_delimiter_fail_cnt\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_len_mismatch_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ampdu_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ampdu_bytes_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ampdu_valid_subframe_cnt\00\00\00\00\00", [32 x i8] c"rx_ampdu_valid_subframe_b_cnt\00\00\00", [32 x i8] c"rx_pfdrop_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_vec_queue_overflow_drop_cnt\00\00", [32 x i8] c"rx_ba_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_cck\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_ofdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_ht\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_ht_gf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_vht\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_su\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_ext_su\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_tb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_mu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [672 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 32, i64 1027074, i64 1027076, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1339905]
@__sancov_gen_cov_switch_values.10 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 859, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"mt7915_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 1335, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 378, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 1318, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"mt7915_gstrings_stats\00", align 1
@___asan_gen_.39 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/main.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 1101, i32 19 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @mt7915_get_et_stats._entry, ptr @mt7915_get_et_stats._entry_ptr, ptr @.str, ptr @mt7915_ops, ptr @xa_init_flags.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt7915_gstrings_stats], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_get_et_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_gstrings_stats to i32), i32 2720, i32 3392, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_set_channel(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #8
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mt7915_init_dfs_state.exit_crit_edge

entry.mt7915_init_dfs_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7915_init_dfs_state.exit

if.end.i:                                         ; preds = %entry
  %chandef2.i = getelementptr inbounds %struct.ieee80211_conf, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %chandef2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef2.i, align 4
  %flags4.i = getelementptr inbounds %struct.ieee80211_channel, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags4.i, align 4
  %and5.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.mt7915_init_dfs_state.exit_crit_edge, label %if.end8.i

if.end.i.mt7915_init_dfs_state.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7915_init_dfs_state.exit

if.end8.i:                                        ; preds = %if.end.i
  %chandef9.i = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %chandef9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chandef9.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq.i, align 4
  %center_freq12.i = getelementptr inbounds %struct.ieee80211_channel, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %center_freq12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i = icmp eq i32 %19, %21
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i, align 4
  %width14.i = getelementptr inbounds %struct.ieee80211_conf, ptr %9, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %width14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp15.i = icmp eq i32 %23, %25
  br i1 %cmp15.i, label %land.lhs.true.i.mt7915_init_dfs_state.exit_crit_edge, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i.mt7915_init_dfs_state.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7915_init_dfs_state.exit

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %dfs_state.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 13
  %26 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dfs_state.i, align 8
  br label %mt7915_init_dfs_state.exit

mt7915_init_dfs_state.exit:                       ; preds = %if.end17.i, %land.lhs.true.i.mt7915_init_dfs_state.exit_crit_edge, %if.end.i.mt7915_init_dfs_state.exit_crit_edge, %entry.mt7915_init_dfs_state.exit_crit_edge
  tail call void @mt76_set_channel(ptr noundef %7) #8
  %flash_mode = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %flash_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flash_mode, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %mt7915_init_dfs_state.exit.if.end7_crit_edge, label %if.then

mt7915_init_dfs_state.exit.if.end7_crit_edge:     ; preds = %mt7915_init_dfs_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %mt7915_init_dfs_state.exit
  %call4 = tail call i32 @mt7915_mcu_apply_tx_dpd(ptr noundef %phy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %mt7915_init_dfs_state.exit.if.end7_crit_edge
  %call36 = tail call i32 @mt7915_mcu_set_chan_info(ptr noundef %phy, i32 noundef 2285) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end39:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7915_mac_set_timing(ptr noundef %phy) #8
  %call40 = tail call i32 @mt7915_dfs_init_radar_detector(ptr noundef %phy) #8
  tail call void @mt7915_mac_cca_stats_reset(ptr noundef %phy) #8
  tail call void @mt7915_mac_reset_counters(ptr noundef %phy) #8
  %noise = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 9
  %29 = ptrtoint ptr %noise to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %noise, align 8
  br label %out

out:                                              ; preds = %if.end39, %if.end7.out_crit_edge, %if.then.out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then.out_crit_edge ], [ %call36, %if.end7.out_crit_edge ], [ %call40, %if.end39 ]
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 8
  %state42 = getelementptr inbounds %struct.mt76_phy, ptr %31, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state42) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 8
  tail call void @mt76_txq_schedule_all(ptr noundef %33) #8
  %34 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy, align 8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i72.not = icmp eq i32 %37, 0
  br i1 %cmp.i72.not, label %if.then47, label %out.if.end51_crit_edge

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then47:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %mac_work50 = getelementptr inbounds %struct.mt76_phy, ptr %35, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %39, ptr noundef %mac_work50, i32 noundef 10) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %out.if.end51_crit_edge
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_apply_tx_dpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_chan_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_set_timing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_dfs_init_radar_detector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_cca_stats_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_reset_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mac_sta_add(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wcid_mask = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 33
  %call = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask, i32 noundef 268) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %rc_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 5
  %0 = ptrtoint ptr %rc_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rc_list, ptr %rc_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rc_list, ptr %prev.i, align 4
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i40 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %3 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %poll_list, ptr %prev.i40, align 4
  %vif4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %vif4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %drv_priv1, ptr %vif4, align 4
  %sta5 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %5 = ptrtoint ptr %sta5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %sta5, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %sta5, align 2
  %conv = trunc i32 %call to i16
  %idx7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %6 = ptrtoint ptr %idx7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %idx7, align 2
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv1, i32 0, i32 2
  %7 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %band_idx, align 2
  %bf.value = shl i8 %8, 6
  %bf.clear10 = and i8 %bf.set, -65
  %bf.set11 = or i8 %bf.value, %bf.clear10
  store i8 %bf.set11, ptr %sta5, align 2
  %tx_info = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 28
  %9 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_info, align 8
  %or = or i32 %10, -2147483648
  store i32 %or, ptr %tx_info, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5, i32 2
  %12 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %jiffies, align 4
  %call13 = tail call zeroext i1 @mt7915_mac_wtbl_update(ptr noundef %mdev, i32 noundef %call, i32 noundef 4096) #8
  %call14 = tail call i32 @mt7915_mcu_add_sta(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @mt7915_mcu_add_rate_ctrl(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -28, %entry.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7915_mac_wtbl_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_sta(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_rate_ctrl(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_mac_sta_remove(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %call = tail call i32 @mt7915_mcu_add_sta(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext false) #8
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call zeroext i1 @mt7915_mac_wtbl_update(ptr noundef %mdev, i32 noundef %conv, i32 noundef 4096) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 0) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 1) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 2) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 3) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 4) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 5) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 6) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %mdev, ptr noundef %drv_priv, i8 noundef zeroext 7) #8
  %sta_poll_lock = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #8
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %3, %poll_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %rc_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 5
  %12 = ptrtoint ptr %rc_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %rc_list, align 4
  %cmp.i24.not = icmp eq ptr %13, %rc_list
  br i1 %cmp.i24.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rc_list) #8
  br i1 %call.i.i26, label %if.end.i.i29, label %if.then8.list_del_init.exit31_crit_edge

if.then8.list_del_init.exit31_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit31

if.end.i.i29:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i27 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i27, align 4
  %16 = ptrtoint ptr %rc_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_list, align 4
  %prev1.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i28, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit31

list_del_init.exit31:                             ; preds = %if.end.i.i29, %if.then8.list_del_init.exit31_crit_edge
  %20 = ptrtoint ptr %rc_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %rc_list, ptr %rc_list, align 4
  %prev.i3.i30 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i3.i30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rc_list, ptr %prev.i3.i30, align 4
  br label %if.end10

if.end10:                                         ; preds = %list_del_init.exit31, %if.end.if.end10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_twt_teardown_flow(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__mt7915_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %mvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !26

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 859, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %mvif, i32 0, i32 1
  %7 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp28 = icmp ugt i8 %8, 3
  %phi.cast66 = zext i8 %8 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast66, 2
  %phi.bo67 = add nuw nsw i32 %phi.bo, 168
  %cond = select i1 %cmp28, i32 168, i32 %phi.bo67
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmw, align 4
  %cond36 = select i1 %cmp.not, i32 147968, i32 672256
  %add38 = add nuw nsw i32 %cond, %cond36
  %call39 = tail call i32 %12(ptr noundef %3, i32 noundef %add38, i32 noundef 3, i32 noundef 3) #8
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add44 = or i32 %cond36, 128
  %call45 = tail call i32 %16(ptr noundef %3, i32 noundef %add44) #8
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %add51 = or i32 %cond36, 132
  %call52 = tail call i32 %20(ptr noundef %3, i32 noundef %add51) #8
  %tsf.sroa.5.0.insert.ext = zext i32 %call52 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call45 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  ret i64 %tsf.sroa.0.0.insert.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %vif2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif2, align 8
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 4
  %tobool.not = icmp eq ptr %7, null
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 0, i32 29
  %spec.select = select i1 %tobool.not, ptr %global_wcid, ptr %drv_priv
  %tobool6.not = icmp eq ptr %5, null
  %sta12 = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 1, i32 1
  %spec.select23 = select i1 %tobool.not, ptr %sta12, ptr %drv_priv
  %wcid.1 = select i1 %tobool6.not, ptr %spec.select, ptr %spec.select23
  tail call void @mt76_tx(ptr noundef %1, ptr noundef %7, ptr noundef %wcid.1, ptr noundef %skb) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_start(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %init_work = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 7
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %init_work) #8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %entry
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then_crit_edge, label %mt7915_ext_phy.exit.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

mt7915_ext_phy.exit.i:                            ; preds = %if.end.i
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i.i, align 8
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %mt7915_ext_phy.exit.i.if.then_crit_edge, label %mt7915_dev_running.exit

mt7915_ext_phy.exit.i.if.then_crit_edge:          ; preds = %mt7915_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

mt7915_dev_running.exit:                          ; preds = %mt7915_ext_phy.exit.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %state3.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state3.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.i.not = icmp eq i32 %17, 0
  br i1 %tobool5.i.not, label %mt7915_dev_running.exit.if.then_crit_edge, label %mt7915_dev_running.exit.if.end15_crit_edge

mt7915_dev_running.exit.if.end15_crit_edge:       ; preds = %mt7915_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

mt7915_dev_running.exit.if.then_crit_edge:        ; preds = %mt7915_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %mt7915_dev_running.exit.if.then_crit_edge, %mt7915_ext_phy.exit.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %call4 = tail call i32 @mt7915_mcu_set_pm(ptr noundef %3, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %if.then
  %call7 = tail call i32 @mt7915_mcu_set_mac(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @mt7915_mcu_set_scs(ptr noundef %3, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7915_mac_enable_nf(ptr noundef %3, i1 noundef zeroext false) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %mt7915_dev_running.exit.if.end15_crit_edge, %entry.if.end15_crit_edge
  %retval.0.i114 = phi i1 [ false, %if.end14 ], [ true, %mt7915_dev_running.exit.if.end15_crit_edge ], [ true, %entry.if.end15_crit_edge ]
  %phy16 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy16
  br i1 %cmp.not, label %if.end15.if.end30_crit_edge, label %if.then17

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then17:                                        ; preds = %if.end15
  %call18 = tail call i32 @mt7915_mcu_set_pm(ptr noundef %3, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then17.out_crit_edge

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.then17
  %call22 = tail call i32 @mt7915_mcu_set_mac(ptr noundef %3, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @mt7915_mcu_set_scs(ptr noundef %3, i8 noundef zeroext 1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7915_mac_enable_nf(ptr noundef %3, i1 noundef zeroext true) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end15.if.end30_crit_edge
  %call31 = tail call i32 @mt7915_mcu_set_rts_thresh(ptr noundef %5, i32 noundef 2347) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @mt7915_mcu_set_sku_en(ptr noundef %5, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %if.end34
  %call67 = tail call i32 @mt7915_mcu_set_chan_info(ptr noundef %5, i32 noundef 20205) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end70:                                         ; preds = %if.end38
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %19, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 0
  br i1 %cmp.i.not, label %if.then73, label %if.end70.if.end75_crit_edge

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %21, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %mac_work, i32 noundef 10) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end70.if.end75_crit_edge
  br i1 %retval.0.i114, label %if.end75.out_crit_edge, label %if.then77

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7915_mac_reset_counters(ptr noundef %5) #8
  br label %out

out:                                              ; preds = %if.then77, %if.end75.out_crit_edge, %if.end38.out_crit_edge, %if.end34.out_crit_edge, %if.end30.out_crit_edge, %if.end25.out_crit_edge, %if.end21.out_crit_edge, %if.then17.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge, %if.then.out_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then17.out_crit_edge ], [ %call22, %if.end21.out_crit_edge ], [ %call26, %if.end25.out_crit_edge ], [ %call31, %if.end30.out_crit_edge ], [ %call35, %if.end34.out_crit_edge ], [ %call67, %if.end38.out_crit_edge ], [ 0, %if.end75.out_crit_edge ], [ 0, %if.then77 ], [ %call4, %if.then.out_crit_edge ], [ %call7, %if.end.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 18
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %call.i = tail call i32 @mt76_testmode_set_state(ptr noundef %9, i32 noundef 0) #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #8
  %phy5 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @mt7915_mcu_set_pm(ptr noundef %3, i32 noundef 1, i32 noundef 1) #8
  %call7 = tail call i32 @mt7915_mcu_set_mac(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %if.end
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then9_crit_edge, label %mt7915_ext_phy.exit.i

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

mt7915_ext_phy.exit.i:                            ; preds = %if.end.i
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i.i, align 8
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %mt7915_ext_phy.exit.i.if.then9_crit_edge, label %mt7915_dev_running.exit

mt7915_ext_phy.exit.i.if.then9_crit_edge:         ; preds = %mt7915_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

mt7915_dev_running.exit:                          ; preds = %mt7915_ext_phy.exit.i
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %state3.i = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state3.i, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.i.not = icmp eq i32 %23, 0
  br i1 %tobool5.i.not, label %mt7915_dev_running.exit.if.then9_crit_edge, label %mt7915_dev_running.exit.if.end12_crit_edge

mt7915_dev_running.exit.if.end12_crit_edge:       ; preds = %mt7915_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

mt7915_dev_running.exit.if.then9_crit_edge:       ; preds = %mt7915_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %mt7915_dev_running.exit.if.then9_crit_edge, %mt7915_ext_phy.exit.i.if.then9_crit_edge, %if.end.i.if.then9_crit_edge
  %call10 = tail call i32 @mt7915_mcu_set_pm(ptr noundef %3, i32 noundef 0, i32 noundef 1) #8
  %call11 = tail call i32 @mt7915_mcu_set_mac(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %mt7915_dev_running.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
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
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp = icmp ne ptr %5, %phy2
  %frombool = zext i1 %cmp to i8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i = tail call i32 @mt76_testmode_set_state(ptr noundef %7, i32 noundef 0) #8
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp3 = icmp eq i32 %9, 6
  br i1 %cmp3, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %monitor_vif = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vif, ptr %monitor_vif, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 35
  %15 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif_mask, align 4
  %neg = xor i32 %16, -1
  %17 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %iszero = icmp eq i32 %16, -1
  %18 = trunc i32 %17 to i8
  %conv = select i1 %iszero, i8 -1, i8 %18
  %19 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %drv_priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %conv)
  %cmp11 = icmp ugt i8 %conv, 18
  br i1 %cmp11, label %if.end.out_crit_edge, label %if.end14

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %if.end
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  %omac_mask = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %omac_mask, align 8
  %24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end.i [
    i32 7, label %if.end14.sw.bb.i_crit_edge
    i32 1, label %if.end14.sw.bb.i_crit_edge199
    i32 2, label %if.end14.sw.bb.i_crit_edge200
    i32 6, label %if.end14.sw.bb13.i_crit_edge
    i32 3, label %if.end14.sw.bb13.i_crit_edge201
  ]

if.end14.sw.bb13.i_crit_edge201:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i

if.end14.sw.bb13.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i

if.end14.sw.bb.i_crit_edge200:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end14.sw.bb.i_crit_edge199:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end14.sw.bb.i_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end14.sw.bb.i_crit_edge, %if.end14.sw.bb.i_crit_edge199, %if.end14.sw.bb.i_crit_edge200
  %conv.i194 = trunc i64 %23 to i32
  %neg.i.i = xor i32 %conv.i194, -1
  %and4.i.i = and i32 %neg.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %iszero.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %iszero.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.cttz.i32(i32 %and4.i.i, i1 true) #8, !range !27
  br label %if.end20

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 2
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  %and.i54.i = and i32 %neg.i.i, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %iszero.i55.i = icmp eq i32 %and.i54.i, 0
  br i1 %iszero.i55.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.cttz.i32(i32 %and.i54.i, i1 true) #8, !range !27
  br label %if.end20

if.end9.i:                                        ; preds = %if.end3.i
  %neg.i = and i64 %23, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %neg.i)
  %tobool10.not.not.i = icmp eq i64 %neg.i, 0
  br i1 %tobool10.not.not.i, label %if.end9.i.if.end20_crit_edge, label %if.end9.i.out_crit_edge

if.end9.i.out_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9.i.if.end20_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

sw.bb13.i:                                        ; preds = %if.end14.sw.bb13.i_crit_edge, %if.end14.sw.bb13.i_crit_edge201
  %neg14.i = and i64 %23, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %neg14.i)
  %tobool16.not.not.i = icmp eq i64 %neg14.i, 0
  br i1 %tobool16.not.not.i, label %sw.bb13.i.if.end20_crit_edge, label %if.end18.i

sw.bb13.i.if.end20_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end18.i:                                       ; preds = %sw.bb13.i
  %conv19.i = trunc i64 %23 to i32
  %neg.i57.i = and i32 %conv19.i, -131072
  %and.i58.i = xor i32 %neg.i57.i, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %iszero.i59.i = icmp eq i32 %and.i58.i, 0
  br i1 %iszero.i59.i, label %if.end18.i.out_crit_edge, label %if.then22.i

if.end18.i.out_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i32 @llvm.cttz.i32(i32 %and.i58.i, i1 true) #8, !range !27
  br label %if.end20

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end20:                                         ; preds = %if.then22.i, %sw.bb13.i.if.end20_crit_edge, %if.end9.i.if.end20_crit_edge, %if.then7.i, %if.then.i
  %retval.0.i.ph = phi i32 [ 0, %sw.bb13.i.if.end20_crit_edge ], [ 0, %if.end9.i.if.end20_crit_edge ], [ %26, %if.then7.i ], [ %25, %if.then.i ], [ %27, %if.then22.i ]
  %conv21 = trunc i32 %retval.0.i.ph to i8
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %28 = ptrtoint ptr %omac_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv21, ptr %omac_idx, align 1
  %phy23 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1
  %29 = ptrtoint ptr %phy23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %5, ptr %phy23, align 8
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %30 = ptrtoint ptr %band_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %band_idx, align 2
  %31 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp27 = icmp ne i32 %32, 3
  %conv29 = zext i1 %cmp27 to i8
  %wmm_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %conv36 = select i1 %cmp27, i8 3, i8 2
  %spec.select = select i1 %cmp, i8 %conv36, i8 %conv29
  %33 = ptrtoint ptr %wmm_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select, ptr %wmm_idx, align 1
  %call38 = tail call i32 @mt7915_mcu_add_dev_info(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end41:                                         ; preds = %if.end20
  %34 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %drv_priv, align 8
  %conv44 = zext i8 %35 to i32
  %shl = shl nuw i32 1, %conv44
  %36 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vif_mask, align 4
  %or = or i32 %shl, %37
  store i32 %or, ptr %vif_mask, align 4
  %38 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %omac_idx, align 1
  %sh_prom = zext i8 %39 to i64
  %shl49 = shl nuw i64 1, %sh_prom
  %40 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %omac_mask, align 8
  %or51 = or i64 %shl49, %41
  store i64 %or51, ptr %omac_mask, align 8
  %42 = load i8, ptr %drv_priv, align 8
  %conv54 = zext i8 %42 to i32
  %sub55 = sub nuw nsw i32 287, %conv54
  %sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %rc_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 50
  %43 = ptrtoint ptr %rc_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %rc_list, ptr %rc_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 51, i32 3
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rc_list, ptr %prev.i, align 4
  %poll_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %45 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i195 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %46 = ptrtoint ptr %prev.i195 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %poll_list, ptr %prev.i195, align 4
  %conv57 = trunc i32 %sub55 to i16
  %idx59 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %47 = ptrtoint ptr %idx59 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv57, ptr %idx59, align 2
  %48 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %band_idx, align 2
  %ext_phy64 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 9
  %50 = ptrtoint ptr %ext_phy64 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %ext_phy64, align 2
  %bf.value = shl i8 %49, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ext_phy64, align 2
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 30
  %51 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %hw_key_idx, align 4
  %tx_info = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 25
  %52 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_info, align 8
  %or69 = or i32 %53, -2147483648
  store i32 %or69, ptr %tx_info, align 8
  %list.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %54 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 41
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list.i, ptr %prev.i.i, align 4
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  tail call void @__raw_spin_lock_init(ptr noundef %pktid.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 0, i32 1
  %56 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 0, i32 2
  %57 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 1
  %58 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 2
  %59 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %idr_next.i.i.i, align 4
  %call72 = tail call zeroext i1 @mt7915_mac_wtbl_update(ptr noundef %3, i32 noundef %sub55, i32 noundef 4096) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %arrayidx101 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 37, i32 %sub55
  %60 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %sta, ptr %arrayidx101, align 4
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %61 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %txq, align 8
  %tobool113.not = icmp eq ptr %62, null
  br i1 %tobool113.not, label %if.end41.if.end121_crit_edge, label %if.then114

if.end41.if.end121_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then114:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %drv_priv116 = getelementptr inbounds %struct.ieee80211_txq, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %drv_priv116 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sta, ptr %drv_priv116, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then114, %if.end41.if.end121_crit_edge
  %64 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp123.not = icmp eq i32 %65, 3
  br i1 %cmp123.not, label %if.end121.if.end135_crit_edge, label %land.lhs.true125

if.end121.if.end135_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

land.lhs.true125:                                 ; preds = %if.end121
  %66 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %omac_idx, align 1
  %68 = add i8 %67, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %68)
  %69 = icmp ult i8 %68, -3
  br i1 %69, label %if.then134, label %land.lhs.true125.if.end135_crit_edge

land.lhs.true125.if.end135_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then134:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  %offload_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 11
  %70 = ptrtoint ptr %offload_flags to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %offload_flags, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %land.lhs.true125.if.end135_crit_edge, %if.end121.if.end135_crit_edge
  %offload_flags136 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 11
  %71 = ptrtoint ptr %offload_flags136 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offload_flags136, align 4
  %or137 = or i32 %72, 2
  store i32 %or137, ptr %offload_flags136, align 4
  %bitrate_mask.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 21
  %gi.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 44, i32 2, i32 1, i32 2
  %73 = ptrtoint ptr %gi.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %gi.i, align 4
  %he_gi.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 44, i32 2, i32 1, i32 3
  %74 = ptrtoint ptr %he_gi.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 255, ptr %he_gi.i, align 4
  %he_ltf.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 44, i32 2, i32 2
  %75 = ptrtoint ptr %he_ltf.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 255, ptr %he_ltf.i, align 4
  %arrayidx.1.i = getelementptr [6 x %struct.anon.136], ptr %bitrate_mask.i, i32 0, i32 1
  %gi.1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 56, i32 1
  %76 = call ptr @memset(ptr %bitrate_mask.i, i32 255, i32 46)
  %77 = ptrtoint ptr %gi.1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %gi.1.i, align 4
  %he_gi.1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 57
  %78 = ptrtoint ptr %he_gi.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 255, ptr %he_gi.1.i, align 4
  %he_ltf.1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 57, i32 4
  %79 = ptrtoint ptr %he_ltf.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 255, ptr %he_ltf.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 57, i32 5, i32 3
  %gi.2.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 0, i32 2, i32 1
  %80 = call ptr @memset(ptr %arrayidx.1.i, i32 255, i32 46)
  %81 = ptrtoint ptr %gi.2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %gi.2.i, align 4
  %he_gi.2.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %he_gi.2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 255, ptr %he_gi.2.i, align 4
  %he_ltf.2.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 0, i32 2, i32 5
  %83 = ptrtoint ptr %he_ltf.2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 255, ptr %he_ltf.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 0, i32 2, i32 7
  %gi.3.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 2, i32 1
  %84 = call ptr @memset(ptr %arrayidx.2.i, i32 255, i32 46)
  %85 = ptrtoint ptr %gi.3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %gi.3.i, align 4
  %he_gi.3.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 2, i32 3
  %86 = ptrtoint ptr %he_gi.3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 255, ptr %he_gi.3.i, align 4
  %he_ltf.3.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 2, i32 5
  %87 = ptrtoint ptr %he_ltf.3.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 255, ptr %he_ltf.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 1, i32 2, i32 7
  %gi.4.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 2, i32 1
  %88 = call ptr @memset(ptr %arrayidx.3.i, i32 255, i32 46)
  %89 = ptrtoint ptr %gi.4.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %gi.4.i, align 4
  %he_gi.4.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 2, i32 3
  %90 = ptrtoint ptr %he_gi.4.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 255, ptr %he_gi.4.i, align 4
  %he_ltf.4.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 2, i32 5
  %91 = ptrtoint ptr %he_ltf.4.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 255, ptr %he_ltf.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 2, i32 2, i32 7
  %gi.5.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %92 = call ptr @memset(ptr %arrayidx.4.i, i32 255, i32 46)
  %93 = ptrtoint ptr %gi.5.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %gi.5.i, align 4
  %he_gi.5.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 3, i32 2, i32 3
  %94 = ptrtoint ptr %he_gi.5.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 255, ptr %he_gi.5.i, align 4
  %he_ltf.5.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 62, i32 0, i32 3, i32 2, i32 5
  %95 = ptrtoint ptr %he_ltf.5.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 255, ptr %he_ltf.5.i, align 4
  %96 = call ptr @memset(ptr %arrayidx.5.i, i32 255, i32 46)
  %cap = getelementptr inbounds %struct.mt7915_vif, ptr %drv_priv, i32 0, i32 1
  %97 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %cap, align 1
  br label %out

out:                                              ; preds = %if.end135, %if.end20.out_crit_edge, %do.end.i, %if.end18.i.out_crit_edge, %if.end9.i.out_crit_edge, %if.end.i.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end20.out_crit_edge ], [ 0, %if.end135 ], [ -28, %if.end.out_crit_edge ], [ -28, %if.end.i.out_crit_edge ], [ -28, %if.end9.i.out_crit_edge ], [ -28, %if.end18.i.out_crit_edge ], [ -28, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
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
  %idx2 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %6 = ptrtoint ptr %idx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx2, align 2
  %conv = zext i16 %7 to i32
  %call3 = tail call i32 @mt7915_mcu_add_bss_info(ptr noundef %5, ptr noundef %vif, i32 noundef 0) #8
  %call4 = tail call i32 @mt7915_mcu_add_sta(ptr noundef %3, ptr noundef %vif, ptr noundef null, i1 noundef zeroext false) #8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %call.i = tail call i32 @mt76_testmode_set_state(ptr noundef %9, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %monitor_vif = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %monitor_vif, align 8
  %cmp = icmp eq ptr %11, %vif
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %monitor_vif, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call i32 @mt7915_mcu_add_dev_info(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext false) #8
  %arrayidx = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 37, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %14 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_priv, align 8
  %conv49 = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv49
  %neg = xor i32 %shl, -1
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 35
  %16 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vif_mask, align 4
  %and = and i32 %17, %neg
  store i32 %and, ptr %vif_mask, align 4
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %18 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %omac_idx, align 1
  %sh_prom = zext i8 %19 to i64
  %shl52 = shl nuw i64 1, %sh_prom
  %neg53 = xor i64 %shl52, -1
  %omac_mask = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %omac_mask, align 8
  %and54 = and i64 %21, %neg53
  store i64 %and54, ptr %omac_mask, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %sta_poll_lock = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #8
  %poll_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %22 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %23, %poll_list
  br i1 %cmp.i.not, label %if.end.if.end59_crit_edge, label %if.then57

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then57.list_del_init.exit_crit_edge

if.then57.list_del_init.exit_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then57.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %list_del_init.exit, %if.end.if.end59_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #8
  %32 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @mt76_tx_status_lock(ptr noundef %3, ptr noundef nonnull %list.i) #8
  %call.i91 = call ptr @mt76_tx_status_skb_get(ptr noundef %3, ptr noundef %sta, i32 noundef -1, ptr noundef nonnull %list.i) #8
  call void @mt76_tx_status_unlock(ptr noundef %3, ptr noundef nonnull %list.i) #8
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  call void @idr_destroy(ptr noundef %pktid.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_config(ptr noundef %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy2
  %and = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %test = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp eq i32 %9, 0
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp ne i32 %13, 0
  %spec.select = zext i1 %cmp.i to i32
  %call.i = tail call i32 @mt76_testmode_set_state(ptr noundef %11, i32 noundef %spec.select) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #8
  %call7 = tail call i32 @mt7915_set_channel(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry.if.end11_crit_edge
  %and12 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @mt7915_mcu_set_txpower_sku(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %mutex20 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex20, i32 noundef 0) #8
  %and21 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end63_crit_edge, label %if.then23

if.end19.if.end63_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw, align 8
  %and24 = and i32 %15, 1
  %rxfilter = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxfilter, align 4
  %and31 = and i32 %17, -262145
  %18 = shl nuw nsw i32 %and24, 18
  %19 = or i32 %18, %and31
  %and31.sink = xor i32 %19, 262144
  store i32 %and31.sink, ptr %rxfilter, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw, align 4
  %cond = select i1 %cmp.not, i32 138752, i32 663040
  %shl = shl nuw nsw i32 %and24, 23
  %call55 = tail call i32 %23(ptr noundef %3, i32 noundef %cond, i32 noundef 8388608, i32 noundef %shl) #8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 8
  %call.i100 = tail call i32 @mt76_testmode_set_state(ptr noundef %25, i32 noundef 0) #8
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr, align 4
  %cond60 = select i1 %cmp.not, i32 136192, i32 660480
  %rxfilter62 = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 7
  %30 = ptrtoint ptr %rxfilter62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxfilter62, align 4
  tail call void %29(ptr noundef %3, i32 noundef %cond60, i32 noundef %31) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then23, %if.end19.if.end63_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ %call7, %if.end.cleanup_crit_edge ], [ %call15, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr noundef %info, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp ne i32 %or.i, 0
  %conv = zext i1 %cmp.i to i32
  %call4 = tail call i32 @mt7915_mcu_add_bss_info(ptr noundef %3, ptr noundef %vif, i32 noundef %conv) #8
  %call6 = tail call i32 @mt7915_mcu_add_sta(ptr noundef %5, ptr noundef %vif, ptr noundef null, i1 noundef zeroext %cmp.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and7 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end15_crit_edge, label %if.then9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %14 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %assoc, align 1, !range !25
  %16 = zext i8 %15 to i32
  %call12 = tail call i32 @mt7915_mcu_add_bss_info(ptr noundef %3, ptr noundef %vif, i32 noundef %16) #8
  %he_obss_pd = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 57
  %17 = ptrtoint ptr %he_obss_pd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %he_obss_pd, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13 = icmp ne i8 %18, 0
  %call14 = tail call i32 @mt7915_mcu_add_obss_spr(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext %tobool13) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  %and16 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end29_crit_edge, label %if.then18

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then18:                                        ; preds = %if.end15
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %19 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_short_slot, align 2, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool19.not, i32 20, i32 9
  %slottime21 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %slottime21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %slottime21, align 4
  %conv22 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv22)
  %cmp23.not = icmp eq i32 %cond, %conv22
  br i1 %cmp23.not, label %if.then18.if.end29_crit_edge, label %if.then25

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %conv26 = trunc i32 %cond to i8
  %23 = ptrtoint ptr %slottime21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv26, ptr %slottime21, align 4
  tail call void @mt7915_mac_set_timing(ptr noundef %3) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then18.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %and30 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end38_crit_edge, label %land.lhs.true32

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true32:                                  ; preds = %if.end29
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %24 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_beacon, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool33.not = icmp eq i8 %25, 0
  br i1 %tobool33.not, label %land.lhs.true32.if.end38_crit_edge, label %if.then35

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 @mt7915_mcu_add_bss_info(ptr noundef %3, ptr noundef %vif, i32 noundef 1) #8
  %call37 = tail call i32 @mt7915_mcu_add_sta(ptr noundef %5, ptr noundef %vif, ptr noundef null, i1 noundef zeroext true) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true32.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %and39 = and i32 %changed, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @mt7915_mcu_set_tx(ptr noundef %5, ptr noundef %vif) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %and44 = and i32 %changed, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %if.then46

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %he_obss_pd47 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 57
  %26 = ptrtoint ptr %he_obss_pd47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %he_obss_pd47, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool49 = icmp ne i8 %27, 0
  %call50 = tail call i32 @mt7915_mcu_add_obss_spr(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext %tobool49) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end43.if.end51_crit_edge
  %and52 = and i32 %changed, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  %he_bss_color = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 58
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  %dev.i.i = getelementptr inbounds %struct.mt76_phy, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  %32 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vif, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %33, label %if.then54.if.end55_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %if.then54.sw.bb2.i_crit_edge
  ]

if.then54.sw.bb2.i_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.then54.if.end55_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

sw.bb.i:                                          ; preds = %if.then54
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv.i, i32 0, i32 1
  %35 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %omac_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i106 = icmp ugt i8 %36, 3
  br i1 %cmp.i106, label %sw.bb.i.if.end55_crit_edge, label %sw.bb.i.sw.bb2.i_crit_edge

sw.bb.i.sw.bb2.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

sw.bb.i.if.end55_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

sw.bb2.i:                                         ; preds = %sw.bb.i.sw.bb2.i_crit_edge, %if.then54.sw.bb2.i_crit_edge
  %call3.i = tail call i32 @mt7915_mcu_update_bss_color(ptr noundef %31, ptr noundef %vif, ptr noundef %he_bss_color) #8
  br label %if.end55

if.end55:                                         ; preds = %sw.bb2.i, %sw.bb.i.if.end55_crit_edge, %if.then54.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %and56 = and i32 %changed, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end63_crit_edge, label %if.then58

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %enable_beacon59 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %37 = ptrtoint ptr %enable_beacon59 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enable_beacon59, align 1, !range !25
  %39 = zext i8 %38 to i32
  %call62 = tail call i32 @mt7915_mcu_add_beacon(ptr noundef %hw, ptr noundef %vif, i32 noundef %39) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end55.if.end63_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy2
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %rxfilter = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxfilter, align 4
  %and = and i32 %7, -2301170
  store i32 %and, ptr %rxfilter, align 4
  %8 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_flags, align 4
  %and3 = and i32 %9, 64
  %and5 = and i32 %7, -2826226
  %and3.lobit = lshr exact i32 %and3, 6
  %10 = xor i32 %and3.lobit, 1
  %mul = mul nuw nsw i32 %10, 525056
  %or8 = or i32 %mul, %and5
  store i32 %or8, ptr %rxfilter, align 4
  %11 = load i32, ptr %total_flags, align 4
  %and10 = and i32 %11, 4
  %or11 = or i32 %and10, %and3
  %and13 = and i32 %or8, -2097396
  %and10.lobit = lshr exact i32 %and10, 1
  %12 = or i32 %and13, %and10.lobit
  %or20 = xor i32 %12, 2
  store i32 %or20, ptr %rxfilter, align 4
  %13 = load i32, ptr %total_flags, align 4
  %and24 = and i32 %13, 32
  %or25 = or i32 %or11, %and24
  %and27 = and i32 %or20, -3203314
  %and24.lobit = lshr exact i32 %and24, 5
  %14 = xor i32 %and24.lobit, 1
  %mul32 = mul nuw nsw i32 %14, 1105920
  %or34 = or i32 %and27, %mul32
  store i32 %or34, ptr %rxfilter, align 4
  store i32 %or25, ptr %total_flags, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr, align 4
  %cond = select i1 %cmp.not, i32 136192, i32 660480
  %19 = load i32, ptr %rxfilter, align 4
  tail call void %18(ptr noundef %3, i32 noundef %cond, i32 noundef %19) #8
  %20 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_flags, align 4
  %and39 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %rmw47 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw47, align 4
  %add50 = or i32 %cond, 4
  br i1 %tobool40.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 %25(ptr noundef %3, i32 noundef %add50, i32 noundef 496, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call i32 %25(ptr noundef %3, i32 noundef %add50, i32 noundef 0, i32 noundef 496) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %tobool.not = icmp eq ptr %sta, null
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta3 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %cond = select i1 %tobool.not, ptr %sta3, ptr %drv_priv1
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 7
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %4 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %5 to i32
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 1, label %entry.land.lhs.true_crit_edge
    i32 7, label %entry.land.lhs.true_crit_edge72
  ]

entry.land.lhs.true_crit_edge72:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge72
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %10, label %land.lhs.true.if.end_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true15_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true15_crit_edge73
  ]

land.lhs.true.land.lhs.true15_crit_edge73:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true.land.lhs.true15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true.land.lhs.true15_crit_edge, %land.lhs.true.land.lhs.true15_crit_edge73
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 8
  %14 = and i16 %13, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cipher18 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %cipher18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cipher18, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %16, label %if.end.cleanup_crit_edge [
    i32 1027078, label %sw.bb
    i32 1027074, label %if.end.sw.epilog_crit_edge
    i32 1027076, label %if.end.sw.epilog_crit_edge74
    i32 1027082, label %if.end.sw.epilog_crit_edge75
    i32 1027080, label %if.end.sw.epilog_crit_edge76
    i32 1027081, label %if.end.sw.epilog_crit_edge77
    i32 1339905, label %if.end.sw.epilog_crit_edge78
  ]

if.end.sw.epilog_crit_edge78:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge77:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge76:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge75:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge74:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hw_key_idx2 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 8
  %flags19 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %18 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags19, align 8
  %20 = or i16 %19, 1024
  store i16 %20, ptr %flags19, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge74, %if.end.sw.epilog_crit_edge75, %if.end.sw.epilog_crit_edge76, %if.end.sw.epilog_crit_edge77, %if.end.sw.epilog_crit_edge78
  %wcid_keyidx.0 = phi ptr [ %hw_key_idx, %if.end.sw.epilog_crit_edge ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge74 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge75 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge76 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge77 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge78 ], [ %hw_key_idx2, %sw.bb ]
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp24 = icmp eq i32 %cmd, 0
  br i1 %cmp24, label %sw.epilog.if.end34_crit_edge, label %if.else

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else:                                          ; preds = %sw.epilog
  %21 = ptrtoint ptr %wcid_keyidx.0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wcid_keyidx.0, align 1
  %conv28 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv28)
  %cmp29 = icmp eq i32 %conv, %conv28
  br i1 %cmp29, label %if.else.if.end34_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %sw.epilog.if.end34_crit_edge
  %spec.select = phi ptr [ null, %if.else.if.end34_crit_edge ], [ %key, %sw.epilog.if.end34_crit_edge ]
  %storemerge = phi i8 [ -1, %if.else.if.end34_crit_edge ], [ %5, %sw.epilog.if.end34_crit_edge ]
  %23 = ptrtoint ptr %wcid_keyidx.0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge, ptr %wcid_keyidx.0, align 1
  tail call void @mt76_wcid_key_setup(ptr noundef %3, ptr noundef %cond, ptr noundef %spec.select) #8
  %call41 = tail call i32 @mt7915_mcu_add_key(ptr noundef %3, ptr noundef %vif, ptr noundef %cond, ptr noundef %key, i32 noundef %cmd) #8
  br label %out

out:                                              ; preds = %if.end34, %if.else.out_crit_edge
  %err.0 = phi i32 [ %call41, %if.end34 ], [ 0, %if.else.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %land.lhs.true15.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan_complete(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mib2 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 16
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %rts_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 16, i32 2
  %6 = ptrtoint ptr %rts_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rts_cnt, align 4
  %dot11RTSSuccessCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 3
  %8 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dot11RTSSuccessCount, align 4
  %rts_retries_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 16, i32 3
  %9 = ptrtoint ptr %rts_retries_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rts_retries_cnt, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dot11RTSFailureCount, align 4
  %fcs_err_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %fcs_err_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fcs_err_cnt, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 2
  %14 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dot11FCSErrorCount, align 4
  %15 = ptrtoint ptr %mib2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mib2, align 4
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %stats, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call2 = tail call i32 @mt7915_mcu_set_rts_thresh(ptr noundef %5, i32 noundef %val) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_sta_add(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76_sta_state(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef 0, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_sta_remove(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76_sta_state(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef 1, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_sta_add_debugfs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_sta_rc_update(ptr noundef %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif.i, align 4
  %phy.i = getelementptr inbounds %struct.mt7915_vif, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 8
  %dev1.i = getelementptr inbounds %struct.mt7915_phy, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %sta_poll_lock.i = getelementptr inbounds %struct.mt7915_dev, ptr %11, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #8
  %changed2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5, i32 1
  %12 = ptrtoint ptr %changed2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %changed2.i, align 8
  %or.i = or i32 %13, %changed
  store i32 %or.i, ptr %changed2.i, align 8
  %rc_list.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 5
  %14 = ptrtoint ptr %rc_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rc_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %rc_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.mt7915_sta_rc_work.exit_crit_edge

entry.mt7915_sta_rc_work.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7915_sta_rc_work.exit

if.then.i:                                        ; preds = %entry
  %sta_rc_list.i = getelementptr inbounds %struct.mt7915_dev, ptr %11, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %11, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rc_list.i, ptr noundef %17, ptr noundef %sta_rc_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.mt7915_sta_rc_work.exit_crit_edge

if.then.i.mt7915_sta_rc_work.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7915_sta_rc_work.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rc_list.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %rc_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sta_rc_list.i, ptr %rc_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rc_list.i, ptr %17, align 4
  br label %mt7915_sta_rc_work.exit

mt7915_sta_rc_work.exit:                          ; preds = %if.end.i.i.i, %if.then.i.mt7915_sta_rc_work.exit_crit_edge, %entry.mt7915_sta_rc_work.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #8
  %rc_work = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %hw, ptr noundef %rc_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_sta_statistics(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  %rxrate = alloca %struct.rate_info, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rxrate) #8
  %4 = call ptr @memset(ptr %rxrate, i32 0, i32 10)
  %call1 = call i32 @mt7915_mcu_get_rx_rate(ptr noundef %3, ptr noundef %vif, ptr noundef %sta, ptr noundef nonnull %rxrate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rxrate2 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15
  %5 = call ptr @memcpy(ptr %rxrate2, ptr %rxrate, i32 10)
  %6 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sinfo, align 8
  %or = or i64 %7, 16384
  store i64 %or, ptr %sinfo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 3
  %8 = ptrtoint ptr %legacy to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %legacy, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not = icmp eq i16 %9, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then9

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %legacy12 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %legacy12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %9, ptr %legacy12, align 2
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mcs, align 1
  %mcs14 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %mcs14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mcs14, align 1
  %nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nss, align 2
  %nss16 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 3
  %18 = ptrtoint ptr %nss16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %nss16, align 4
  %bw = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 6
  %19 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bw, align 1
  %bw18 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 4
  %21 = ptrtoint ptr %bw18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %bw18, align 1
  %he_gi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 7
  %22 = ptrtoint ptr %he_gi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %he_gi, align 2
  %he_gi20 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 5
  %24 = ptrtoint ptr %he_gi20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %he_gi20, align 2
  %he_dcm = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 8
  %25 = ptrtoint ptr %he_dcm to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %he_dcm, align 1
  %he_dcm22 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 6
  %27 = ptrtoint ptr %he_dcm22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %he_dcm22, align 1
  %he_ru_alloc = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 9
  %28 = ptrtoint ptr %he_ru_alloc to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %he_ru_alloc, align 2
  %he_ru_alloc24 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 7
  %30 = ptrtoint ptr %he_ru_alloc24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %he_ru_alloc24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then9
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rate, align 2
  %txrate27 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %33 = ptrtoint ptr %txrate27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %txrate27, align 8
  %34 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sinfo, align 8
  %or30 = or i64 %35, 256
  store i64 %or30, ptr %sinfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rxrate) #8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_params = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 33, i32 1, i32 4
  %0 = sub i16 3, %queue
  %1 = and i16 %0, 255
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %queue_params, i32 0, i32 %idxprom
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %params, i32 14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mt7915_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call1 = tail call i64 @__mt7915_get_tsf(ptr noundef %hw, ptr noundef %drv_priv)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
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
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %6 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp3 = icmp ugt i8 %7, 3
  %phi.cast39 = zext i8 %7 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast39, 2
  %phi.bo40 = add nuw nsw i32 %phi.bo, 168
  %cond = select i1 %cmp3, i32 168, i32 %phi.bo40
  %tsf.sroa.5.0.extract.trunc = trunc i64 %timestamp to i32
  %tsf.sroa.0.0.extract.shift = lshr i64 %timestamp, 32
  %tsf.sroa.0.0.extract.trunc = trunc i64 %tsf.sroa.0.0.extract.shift to i32
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  %cond10 = select i1 %cmp.not, i32 147968, i32 672256
  %add = or i32 %cond10, 128
  tail call void %11(ptr noundef %3, i32 noundef %add, i32 noundef %tsf.sroa.0.0.extract.trunc) #8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr12, align 4
  %add16 = or i32 %cond10, 132
  tail call void %15(ptr noundef %3, i32 noundef %add16, i32 noundef %tsf.sroa.5.0.extract.trunc) #8
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw, align 4
  %add24 = add nuw nsw i32 %cond, %cond10
  %call25 = tail call i32 %19(ptr noundef %3, i32 noundef %add24, i32 noundef 3, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_offset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
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
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %6 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp3 = icmp ugt i8 %7, 3
  %phi.cast39 = zext i8 %7 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast39, 2
  %phi.bo40 = add nuw nsw i32 %phi.bo, 168
  %cond = select i1 %cmp3, i32 168, i32 %phi.bo40
  %tsf.sroa.5.0.extract.trunc = trunc i64 %timestamp to i32
  %tsf.sroa.0.0.extract.shift = lshr i64 %timestamp, 32
  %tsf.sroa.0.0.extract.trunc = trunc i64 %tsf.sroa.0.0.extract.shift to i32
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  %cond10 = select i1 %cmp.not, i32 147968, i32 672256
  %add = or i32 %cond10, 128
  tail call void %11(ptr noundef %3, i32 noundef %add, i32 noundef %tsf.sroa.0.0.extract.trunc) #8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr12, align 4
  %add16 = or i32 %cond10, 132
  tail call void %15(ptr noundef %3, i32 noundef %add16, i32 noundef %tsf.sroa.5.0.extract.trunc) #8
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw, align 4
  %add24 = add nuw nsw i32 %cond, %cond10
  %call25 = tail call i32 %19(ptr noundef %3, i32 noundef %add24, i32 noundef 3, i32 noundef 2) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta2, align 4
  %tid = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid, align 4
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %5, i32 0, i32 28, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 29
  %ssn6 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %ssn6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ssn6, align 2
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  %drv_priv7 = getelementptr inbounds %struct.ieee80211_txq, ptr %9, i32 0, i32 5
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %13, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 6, label %sw.bb15
    i32 4, label %if.end.sw.bb17_crit_edge
    i32 5, label %if.end.sw.bb17_crit_edge72
    i32 2, label %sw.bb21
    i32 3, label %sw.bb24
  ]

if.end.sw.bb17_crit_edge72:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i16 %7 to i8
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf_size, align 4
  %call9 = tail call i32 @mt76_rx_aggr_start(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %conv, i16 noundef zeroext %11, i16 noundef zeroext %16) #8
  %call10 = tail call i32 @mt7915_mcu_add_rx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext true) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = trunc i16 %7 to i8
  tail call void @mt76_rx_aggr_stop(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %conv13) #8
  %call14 = tail call i32 @mt7915_mcu_add_rx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %aggr = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %17 = ptrtoint ptr %aggr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %aggr, align 1
  %send_bar = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 2
  %18 = ptrtoint ptr %send_bar to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %send_bar, align 2
  %call16 = tail call i32 @mt7915_mcu_add_tx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext true) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge72
  %aggr18 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %19 = ptrtoint ptr %aggr18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %aggr18, align 1
  %ampdu_state = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 2, i32 5, i32 2, i32 2
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %ampdu_state) #8
  %call20 = tail call i32 @mt7915_mcu_add_tx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ampdu_state23 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 2, i32 5, i32 2, i32 2
  tail call void @_set_bit(i32 noundef %idxprom, ptr noundef %ampdu_state23) #8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %aggr25 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %20 = ptrtoint ptr %aggr25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %aggr25, align 1
  %ampdu_state27 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 2, i32 5, i32 2, i32 2
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %ampdu_state27) #8
  %call28 = tail call i32 @mt7915_mcu_add_tx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %sw.bb17, %sw.bb15, %sw.bb11, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %call28, %sw.bb24 ], [ 1, %sw.bb21 ], [ %call20, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb11 ], [ %call10, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_survey(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_set_coverage_class(ptr nocapture noundef readonly %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %6 = tail call i16 @llvm.smax.i16(i16 %coverage_class, i16 0)
  %coverage_class7 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %coverage_class7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %coverage_class7, align 2
  tail call void @mt7915_mac_set_timing(ptr noundef %3) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %available_antennas_tx, align 4
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %9) #8
  %phy77 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ant)
  %tobool79.not = icmp ne i32 %tx_ant, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_ant, i32 %rx_ant)
  %cmp80.not = icmp eq i32 %tx_ant, %rx_ant
  %or.cond = and i1 %tobool79.not, %cmp80.not
  br i1 %or.cond, label %lor.lhs.false82, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false82:                                  ; preds = %entry
  %10 = tail call i32 @llvm.cttz.i32(i32 %tx_ant, i1 true), !range !27
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call.i)
  %cmp83.not = icmp slt i32 %10, %call.i
  br i1 %cmp83.not, label %cond.false149, label %lor.lhs.false82.cleanup_crit_edge

lor.lhs.false82.cleanup_crit_edge:                ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false149:                                    ; preds = %lor.lhs.false82
  %call.i221 = tail call i32 @__sw_hweight8(i32 noundef %tx_ant) #8
  %notmask = shl nsw i32 -1, %call.i221
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %tx_ant)
  %cmp153.not = icmp eq i32 %sub, %tx_ant
  %notmask218 = shl nsw i32 -1, %10
  %sub160 = xor i32 %notmask218, -1
  %tx_ant.addr.0 = select i1 %cmp153.not, i32 %tx_ant, i32 %sub160
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %conv162 = trunc i32 %tx_ant.addr.0 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv162, ptr %antenna_mask, align 8
  br i1 %cmp.not, label %cond.false149.if.end172_crit_edge, label %if.then164

cond.false149.if.end172_crit_edge:                ; preds = %cond.false149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then164:                                       ; preds = %cond.false149
  %chainmask = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chainmask, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %15)
  %cmp166 = icmp eq i16 %15, 15
  br i1 %cmp166, label %if.then168, label %if.else

if.then168:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %shl169 = shl i32 %tx_ant.addr.0, 2
  br label %if.end172

if.else:                                          ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %shl170 = shl i32 %tx_ant.addr.0, 1
  br label %if.end172

if.end172:                                        ; preds = %if.else, %if.then168, %cond.false149.if.end172_crit_edge
  %tx_ant.addr.1 = phi i32 [ %shl169, %if.then168 ], [ %shl170, %if.else ], [ %tx_ant.addr.0, %cond.false149.if.end172_crit_edge ]
  %conv173 = trunc i32 %tx_ant.addr.1 to i16
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %chainmask175 = getelementptr inbounds %struct.mt76_phy, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %chainmask175 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv173, ptr %chainmask175, align 2
  %19 = load ptr, ptr %5, align 8
  tail call void @mt76_set_stream_caps(ptr noundef %19, i1 noundef zeroext true) #8
  tail call void @mt7915_set_stream_vht_txbf_caps(ptr noundef %5) #8
  tail call void @mt7915_set_stream_he_caps(ptr noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end172, %lor.lhs.false82.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end172 ], [ -22, %lor.lhs.false82.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_antenna(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_set_bitrate_mask(ptr noundef %hw, ptr nocapture noundef writeonly %vif, ptr nocapture noundef readonly %mask) #0 align 64 {
entry:
  %changed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed) #8
  %6 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %changed, align 4
  %bitrate_mask = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 39, i32 21
  %7 = call ptr @memcpy(ptr %bitrate_mask, ptr %mask, i32 360)
  call void @ieee80211_iterate_stations_atomic(ptr noundef %hw, ptr noundef nonnull @mt7915_sta_rc_work, ptr noundef nonnull %changed) #8
  %rc_work = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 8
  call void @ieee80211_queue_work(ptr noundef %hw, ptr noundef %rc_work) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_get_et_sset_count(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %. = select i1 %cmp, i32 85, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_get_et_stats(ptr noundef %hw, ptr nocapture noundef readonly %vif, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  %wi = alloca %struct.mt76_ethtool_worker_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wi) #8
  %6 = getelementptr inbounds %struct.mt76_ethtool_worker_info, ptr %wi, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mt76_ethtool_worker_info, ptr %wi, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mt76_ethtool_worker_info, ptr %wi, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mt76_ethtool_worker_info, ptr %wi, i32 0, i32 4
  %10 = ptrtoint ptr %wi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %wi, align 4
  %11 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drv_priv, align 8
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %6, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %9, align 4
  %phy5 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %5, %phy5
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @mt7915_mac_update_stats(ptr noundef %5) #8
  %tx_ampdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 20
  %16 = ptrtoint ptr %tx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ampdu_cnt, align 4
  %conv7 = zext i32 %17 to i64
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv7, ptr %data, align 8
  %tx_stop_q_empty_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 21
  %19 = ptrtoint ptr %tx_stop_q_empty_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_stop_q_empty_cnt, align 4
  %conv8 = zext i32 %20 to i64
  %arrayidx10 = getelementptr i64, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv8, ptr %arrayidx10, align 8
  %tx_mpdu_attempts_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 22
  %22 = ptrtoint ptr %tx_mpdu_attempts_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_mpdu_attempts_cnt, align 4
  %conv11 = zext i32 %23 to i64
  %arrayidx13 = getelementptr i64, ptr %data, i32 2
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv11, ptr %arrayidx13, align 8
  %tx_mpdu_success_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 23
  %25 = ptrtoint ptr %tx_mpdu_success_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_mpdu_success_cnt, align 4
  %conv14 = zext i32 %26 to i64
  %arrayidx16 = getelementptr i64, ptr %data, i32 3
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv14, ptr %arrayidx16, align 8
  %tx_rwp_fail_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 26
  %28 = ptrtoint ptr %tx_rwp_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_rwp_fail_cnt, align 4
  %conv17 = zext i32 %29 to i64
  %arrayidx19 = getelementptr i64, ptr %data, i32 4
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv17, ptr %arrayidx19, align 8
  %tx_rwp_need_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 27
  %31 = ptrtoint ptr %tx_rwp_need_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_rwp_need_cnt, align 4
  %conv20 = zext i32 %32 to i64
  %arrayidx22 = getelementptr i64, ptr %data, i32 5
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv20, ptr %arrayidx22, align 8
  %tx_pkt_ebf_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 24
  %34 = ptrtoint ptr %tx_pkt_ebf_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_pkt_ebf_cnt, align 4
  %conv23 = zext i32 %35 to i64
  %arrayidx25 = getelementptr i64, ptr %data, i32 6
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv23, ptr %arrayidx25, align 8
  %tx_pkt_ibf_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 25
  %37 = ptrtoint ptr %tx_pkt_ibf_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_pkt_ibf_cnt, align 4
  %conv26 = zext i32 %38 to i64
  %arrayidx28 = getelementptr i64, ptr %data, i32 7
  %39 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv26, ptr %arrayidx28, align 8
  %cond = select i1 %cmp.not, i32 0, i32 16
  %arrayidx32 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %cond
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx32, align 4
  %conv33 = zext i32 %41 to i64
  %arrayidx35 = getelementptr i64, ptr %data, i32 8
  %42 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv33, ptr %arrayidx35, align 8
  %add.1 = or i32 %cond, 1
  %arrayidx32.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.1
  %43 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx32.1, align 4
  %conv33.1 = zext i32 %44 to i64
  %arrayidx35.1 = getelementptr i64, ptr %data, i32 9
  %45 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv33.1, ptr %arrayidx35.1, align 8
  %add.2 = or i32 %cond, 2
  %arrayidx32.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.2
  %46 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx32.2, align 4
  %conv33.2 = zext i32 %47 to i64
  %arrayidx35.2 = getelementptr i64, ptr %data, i32 10
  %48 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv33.2, ptr %arrayidx35.2, align 8
  %add.3 = or i32 %cond, 3
  %arrayidx32.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.3
  %49 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx32.3, align 4
  %conv33.3 = zext i32 %50 to i64
  %arrayidx35.3 = getelementptr i64, ptr %data, i32 11
  %51 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv33.3, ptr %arrayidx35.3, align 8
  %add.4 = or i32 %cond, 4
  %arrayidx32.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.4
  %52 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx32.4, align 4
  %conv33.4 = zext i32 %53 to i64
  %arrayidx35.4 = getelementptr i64, ptr %data, i32 12
  %54 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv33.4, ptr %arrayidx35.4, align 8
  %add.5 = or i32 %cond, 5
  %arrayidx32.5 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.5
  %55 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx32.5, align 4
  %conv33.5 = zext i32 %56 to i64
  %arrayidx35.5 = getelementptr i64, ptr %data, i32 13
  %57 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv33.5, ptr %arrayidx35.5, align 8
  %add.6 = or i32 %cond, 6
  %arrayidx32.6 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.6
  %58 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx32.6, align 4
  %conv33.6 = zext i32 %59 to i64
  %arrayidx35.6 = getelementptr i64, ptr %data, i32 14
  %60 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv33.6, ptr %arrayidx35.6, align 8
  %add.7 = or i32 %cond, 7
  %arrayidx32.7 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.7
  %61 = ptrtoint ptr %arrayidx32.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx32.7, align 4
  %conv33.7 = zext i32 %62 to i64
  %arrayidx35.7 = getelementptr i64, ptr %data, i32 15
  %63 = ptrtoint ptr %arrayidx35.7 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv33.7, ptr %arrayidx35.7, align 8
  %add.8 = or i32 %cond, 8
  %arrayidx32.8 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.8
  %64 = ptrtoint ptr %arrayidx32.8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx32.8, align 4
  %conv33.8 = zext i32 %65 to i64
  %arrayidx35.8 = getelementptr i64, ptr %data, i32 16
  %66 = ptrtoint ptr %arrayidx35.8 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv33.8, ptr %arrayidx35.8, align 8
  %add.9 = or i32 %cond, 9
  %arrayidx32.9 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.9
  %67 = ptrtoint ptr %arrayidx32.9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx32.9, align 4
  %conv33.9 = zext i32 %68 to i64
  %arrayidx35.9 = getelementptr i64, ptr %data, i32 17
  %69 = ptrtoint ptr %arrayidx35.9 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv33.9, ptr %arrayidx35.9, align 8
  %add.10 = or i32 %cond, 10
  %arrayidx32.10 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.10
  %70 = ptrtoint ptr %arrayidx32.10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx32.10, align 4
  %conv33.10 = zext i32 %71 to i64
  %arrayidx35.10 = getelementptr i64, ptr %data, i32 18
  %72 = ptrtoint ptr %arrayidx35.10 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv33.10, ptr %arrayidx35.10, align 8
  %add.11 = or i32 %cond, 11
  %arrayidx32.11 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.11
  %73 = ptrtoint ptr %arrayidx32.11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx32.11, align 4
  %conv33.11 = zext i32 %74 to i64
  %arrayidx35.11 = getelementptr i64, ptr %data, i32 19
  %75 = ptrtoint ptr %arrayidx35.11 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv33.11, ptr %arrayidx35.11, align 8
  %add.12 = or i32 %cond, 12
  %arrayidx32.12 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.12
  %76 = ptrtoint ptr %arrayidx32.12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx32.12, align 4
  %conv33.12 = zext i32 %77 to i64
  %arrayidx35.12 = getelementptr i64, ptr %data, i32 20
  %78 = ptrtoint ptr %arrayidx35.12 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv33.12, ptr %arrayidx35.12, align 8
  %add.13 = or i32 %cond, 13
  %arrayidx32.13 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.13
  %79 = ptrtoint ptr %arrayidx32.13 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx32.13, align 4
  %conv33.13 = zext i32 %80 to i64
  %arrayidx35.13 = getelementptr i64, ptr %data, i32 21
  %81 = ptrtoint ptr %arrayidx35.13 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv33.13, ptr %arrayidx35.13, align 8
  %add.14 = or i32 %cond, 14
  %arrayidx32.14 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 %add.14
  %82 = ptrtoint ptr %arrayidx32.14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx32.14, align 4
  %conv33.14 = zext i32 %83 to i64
  %arrayidx35.14 = getelementptr i64, ptr %data, i32 22
  %84 = ptrtoint ptr %arrayidx35.14 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv33.14, ptr %arrayidx35.14, align 8
  %ba_miss_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 4
  %85 = ptrtoint ptr %ba_miss_cnt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ba_miss_cnt, align 4
  %conv38 = zext i32 %86 to i64
  %arrayidx40 = getelementptr i64, ptr %data, i32 23
  %87 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv38, ptr %arrayidx40, align 8
  %tx_bf_ibf_ppdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 9
  %88 = ptrtoint ptr %tx_bf_ibf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_bf_ibf_ppdu_cnt, align 4
  %conv41 = zext i32 %89 to i64
  %arrayidx43 = getelementptr i64, ptr %data, i32 24
  %90 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv41, ptr %arrayidx43, align 8
  %tx_bf_ebf_ppdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 10
  %91 = ptrtoint ptr %tx_bf_ebf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_bf_ebf_ppdu_cnt, align 4
  %conv44 = zext i32 %92 to i64
  %arrayidx46 = getelementptr i64, ptr %data, i32 25
  %93 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv44, ptr %arrayidx46, align 8
  %tx_bf_rx_fb_all_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 11
  %94 = ptrtoint ptr %tx_bf_rx_fb_all_cnt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_bf_rx_fb_all_cnt, align 4
  %conv47 = zext i32 %95 to i64
  %arrayidx49 = getelementptr i64, ptr %data, i32 26
  %96 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv47, ptr %arrayidx49, align 8
  %tx_bf_rx_fb_he_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 12
  %97 = ptrtoint ptr %tx_bf_rx_fb_he_cnt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_bf_rx_fb_he_cnt, align 4
  %conv50 = zext i32 %98 to i64
  %arrayidx52 = getelementptr i64, ptr %data, i32 27
  %99 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv50, ptr %arrayidx52, align 8
  %tx_bf_rx_fb_vht_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 13
  %100 = ptrtoint ptr %tx_bf_rx_fb_vht_cnt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_bf_rx_fb_vht_cnt, align 4
  %conv53 = zext i32 %101 to i64
  %arrayidx55 = getelementptr i64, ptr %data, i32 28
  %102 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv53, ptr %arrayidx55, align 8
  %tx_bf_rx_fb_ht_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 14
  %103 = ptrtoint ptr %tx_bf_rx_fb_ht_cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_bf_rx_fb_ht_cnt, align 4
  %conv56 = zext i32 %104 to i64
  %arrayidx58 = getelementptr i64, ptr %data, i32 29
  %105 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv56, ptr %arrayidx58, align 8
  %tx_bf_rx_fb_bw = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 15
  %106 = ptrtoint ptr %tx_bf_rx_fb_bw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_bf_rx_fb_bw, align 4
  %conv59 = zext i32 %107 to i64
  %arrayidx61 = getelementptr i64, ptr %data, i32 30
  %108 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv59, ptr %arrayidx61, align 8
  %tx_bf_rx_fb_nc_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 16
  %109 = ptrtoint ptr %tx_bf_rx_fb_nc_cnt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_bf_rx_fb_nc_cnt, align 4
  %conv62 = zext i32 %110 to i64
  %arrayidx64 = getelementptr i64, ptr %data, i32 31
  %111 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv62, ptr %arrayidx64, align 8
  %tx_bf_rx_fb_nr_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 17
  %112 = ptrtoint ptr %tx_bf_rx_fb_nr_cnt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_bf_rx_fb_nr_cnt, align 4
  %conv65 = zext i32 %113 to i64
  %arrayidx67 = getelementptr i64, ptr %data, i32 32
  %114 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv65, ptr %arrayidx67, align 8
  %tx_bf_fb_cpl_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 18
  %115 = ptrtoint ptr %tx_bf_fb_cpl_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_bf_fb_cpl_cnt, align 4
  %conv68 = zext i32 %116 to i64
  %arrayidx70 = getelementptr i64, ptr %data, i32 33
  %117 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv68, ptr %arrayidx70, align 8
  %tx_bf_fb_trig_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 19
  %118 = ptrtoint ptr %tx_bf_fb_trig_cnt to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_bf_fb_trig_cnt, align 4
  %conv71 = zext i32 %119 to i64
  %arrayidx73 = getelementptr i64, ptr %data, i32 34
  %120 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv71, ptr %arrayidx73, align 8
  %tx_bf_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 5
  %121 = ptrtoint ptr %tx_bf_cnt to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_bf_cnt, align 4
  %conv74 = zext i32 %122 to i64
  %arrayidx76 = getelementptr i64, ptr %data, i32 35
  %123 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv74, ptr %arrayidx76, align 8
  %tx_mu_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 6
  %124 = ptrtoint ptr %tx_mu_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_mu_mpdu_cnt, align 4
  %conv77 = zext i32 %125 to i64
  %arrayidx79 = getelementptr i64, ptr %data, i32 36
  %126 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv77, ptr %arrayidx79, align 8
  %tx_mu_acked_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 7
  %127 = ptrtoint ptr %tx_mu_acked_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_mu_acked_mpdu_cnt, align 4
  %conv80 = zext i32 %128 to i64
  %arrayidx82 = getelementptr i64, ptr %data, i32 37
  %129 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv80, ptr %arrayidx82, align 8
  %tx_su_acked_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 8
  %130 = ptrtoint ptr %tx_su_acked_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_su_acked_mpdu_cnt, align 4
  %conv83 = zext i32 %131 to i64
  %arrayidx85 = getelementptr i64, ptr %data, i32 38
  %132 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv83, ptr %arrayidx85, align 8
  %arrayidx90 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 0
  %133 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx90, align 4
  %conv91 = zext i32 %134 to i64
  %arrayidx93 = getelementptr i64, ptr %data, i32 39
  %135 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv91, ptr %arrayidx93, align 8
  %arrayidx90.1 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 1
  %136 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx90.1, align 4
  %conv91.1 = zext i32 %137 to i64
  %arrayidx93.1 = getelementptr i64, ptr %data, i32 40
  %138 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %conv91.1, ptr %arrayidx93.1, align 8
  %arrayidx90.2 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 2
  %139 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx90.2, align 4
  %conv91.2 = zext i32 %140 to i64
  %arrayidx93.2 = getelementptr i64, ptr %data, i32 41
  %141 = ptrtoint ptr %arrayidx93.2 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %conv91.2, ptr %arrayidx93.2, align 8
  %arrayidx90.3 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 3
  %142 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx90.3, align 4
  %conv91.3 = zext i32 %143 to i64
  %arrayidx93.3 = getelementptr i64, ptr %data, i32 42
  %144 = ptrtoint ptr %arrayidx93.3 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv91.3, ptr %arrayidx93.3, align 8
  %arrayidx90.4 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 4
  %145 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx90.4, align 4
  %conv91.4 = zext i32 %146 to i64
  %arrayidx93.4 = getelementptr i64, ptr %data, i32 43
  %147 = ptrtoint ptr %arrayidx93.4 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %conv91.4, ptr %arrayidx93.4, align 8
  %arrayidx90.5 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 5
  %148 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx90.5, align 4
  %conv91.5 = zext i32 %149 to i64
  %arrayidx93.5 = getelementptr i64, ptr %data, i32 44
  %150 = ptrtoint ptr %arrayidx93.5 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %conv91.5, ptr %arrayidx93.5, align 8
  %arrayidx90.6 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 6
  %151 = ptrtoint ptr %arrayidx90.6 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx90.6, align 4
  %conv91.6 = zext i32 %152 to i64
  %arrayidx93.6 = getelementptr i64, ptr %data, i32 45
  %153 = ptrtoint ptr %arrayidx93.6 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv91.6, ptr %arrayidx93.6, align 8
  %arrayidx90.7 = getelementptr %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 41, i32 7
  %154 = ptrtoint ptr %arrayidx90.7 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx90.7, align 4
  %conv91.7 = zext i32 %155 to i64
  %arrayidx93.7 = getelementptr i64, ptr %data, i32 46
  %156 = ptrtoint ptr %arrayidx93.7 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %conv91.7, ptr %arrayidx93.7, align 8
  %rx_fifo_full_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 28
  %157 = ptrtoint ptr %rx_fifo_full_cnt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx_fifo_full_cnt, align 4
  %conv97 = zext i32 %158 to i64
  %arrayidx99 = getelementptr i64, ptr %data, i32 47
  %159 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %conv97, ptr %arrayidx99, align 8
  %rx_mpdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 33
  %160 = ptrtoint ptr %rx_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rx_mpdu_cnt, align 4
  %conv100 = zext i32 %161 to i64
  %arrayidx102 = getelementptr i64, ptr %data, i32 48
  %162 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %conv100, ptr %arrayidx102, align 8
  %channel_idle_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 29
  %163 = ptrtoint ptr %channel_idle_cnt to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %channel_idle_cnt, align 4
  %conv103 = zext i32 %164 to i64
  %arrayidx105 = getelementptr i64, ptr %data, i32 49
  %165 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %conv103, ptr %arrayidx105, align 8
  %rx_vector_mismatch_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 30
  %166 = ptrtoint ptr %rx_vector_mismatch_cnt to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rx_vector_mismatch_cnt, align 4
  %conv106 = zext i32 %167 to i64
  %arrayidx108 = getelementptr i64, ptr %data, i32 50
  %168 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %conv106, ptr %arrayidx108, align 8
  %rx_delimiter_fail_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 31
  %169 = ptrtoint ptr %rx_delimiter_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_delimiter_fail_cnt, align 4
  %conv109 = zext i32 %170 to i64
  %arrayidx111 = getelementptr i64, ptr %data, i32 51
  %171 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %conv109, ptr %arrayidx111, align 8
  %rx_len_mismatch_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 32
  %172 = ptrtoint ptr %rx_len_mismatch_cnt to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rx_len_mismatch_cnt, align 4
  %conv112 = zext i32 %173 to i64
  %arrayidx114 = getelementptr i64, ptr %data, i32 52
  %174 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv112, ptr %arrayidx114, align 8
  %rx_ampdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 34
  %175 = ptrtoint ptr %rx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx_ampdu_cnt, align 4
  %conv115 = zext i32 %176 to i64
  %arrayidx117 = getelementptr i64, ptr %data, i32 53
  %177 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %conv115, ptr %arrayidx117, align 8
  %rx_ampdu_bytes_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 35
  %178 = ptrtoint ptr %rx_ampdu_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rx_ampdu_bytes_cnt, align 4
  %conv118 = zext i32 %179 to i64
  %arrayidx120 = getelementptr i64, ptr %data, i32 54
  %180 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %conv118, ptr %arrayidx120, align 8
  %rx_ampdu_valid_subframe_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 36
  %181 = ptrtoint ptr %rx_ampdu_valid_subframe_cnt to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rx_ampdu_valid_subframe_cnt, align 4
  %conv121 = zext i32 %182 to i64
  %arrayidx123 = getelementptr i64, ptr %data, i32 55
  %183 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %conv121, ptr %arrayidx123, align 8
  %rx_ampdu_valid_subframe_bytes_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 37
  %184 = ptrtoint ptr %rx_ampdu_valid_subframe_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rx_ampdu_valid_subframe_bytes_cnt, align 4
  %conv124 = zext i32 %185 to i64
  %arrayidx126 = getelementptr i64, ptr %data, i32 56
  %186 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %conv124, ptr %arrayidx126, align 8
  %rx_pfdrop_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 38
  %187 = ptrtoint ptr %rx_pfdrop_cnt to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rx_pfdrop_cnt, align 4
  %conv127 = zext i32 %188 to i64
  %arrayidx129 = getelementptr i64, ptr %data, i32 57
  %189 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %conv127, ptr %arrayidx129, align 8
  %rx_vec_queue_overflow_drop_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 39
  %190 = ptrtoint ptr %rx_vec_queue_overflow_drop_cnt to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rx_vec_queue_overflow_drop_cnt, align 4
  %conv130 = zext i32 %191 to i64
  %arrayidx132 = getelementptr i64, ptr %data, i32 58
  %192 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %conv130, ptr %arrayidx132, align 8
  %rx_ba_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 16, i32 40
  %193 = ptrtoint ptr %rx_ba_cnt to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rx_ba_cnt, align 4
  %conv133 = zext i32 %194 to i64
  %arrayidx135 = getelementptr i64, ptr %data, i32 59
  %195 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv133, ptr %arrayidx135, align 8
  %196 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 60, ptr %7, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %hw, ptr noundef nonnull @mt7915_ethtool_worker, ptr noundef nonnull %wi) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  %197 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp139 = icmp eq i32 %198, 0
  br i1 %cmp139, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %199 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %8, align 4
  %add142 = add i32 %200, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %add142)
  %cmp143.not = icmp eq i32 %add142, 85
  br i1 %cmp143.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev146 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 13
  %201 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev146, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.2, i32 noundef %add142, i32 noundef 85) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wi) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7915_get_et_strings(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = call ptr @memcpy(ptr %data, ptr @mt7915_gstrings_stats, i32 2720)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_channel_switch_beacon(ptr noundef %hw, ptr noundef %vif, ptr nocapture noundef readnone %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call1 = tail call i32 @mt7915_mcu_add_beacon(ptr noundef %hw, ptr noundef %vif, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_txpower(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wake_tx_queue(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_sta_set_4addr(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %flags = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = tail call i32 @mt7915_mcu_sta_update_hdr_trans(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_set_sar_specs(ptr noundef %hw, ptr noundef %sar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 5
  %call2 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %chandef) #8
  br i1 %call2, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mt76_init_sar_power(ptr noundef %hw, ptr noundef %sar) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @mt7915_mcu_set_txpower_sku(ptr noundef %3) #8
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call6, %if.end5 ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_sta_set_decap_offload(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %flags = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = tail call i32 @mt7915_mcu_sta_update_hdr_trans(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_add_twt_setup(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_twt_teardown_request(ptr nocapture noundef readonly %hw, ptr noundef %sta, i8 noundef zeroext %flowid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @mt7915_mac_twt_teardown_flow(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %flowid) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_pm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_mac(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_scs(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_enable_nf(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_rts_thresh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_sku_en(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_dev_info(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_bss_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_tx_status_skb_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_txpower_sku(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_obss_spr(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_update_bss_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wcid_key_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_sta_rc_work(ptr nocapture noundef readonly %data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %phy = getelementptr inbounds %struct.mt7915_vif, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %sta_poll_lock = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %changed2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5, i32 1
  %8 = ptrtoint ptr %changed2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %changed2, align 8
  %or = or i32 %9, %7
  store i32 %or, ptr %changed2, align 8
  %rc_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 5
  %10 = ptrtoint ptr %rc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rc_list, align 4
  %cmp.i.not = icmp eq ptr %11, %rc_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %sta_rc_list = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rc_list, ptr noundef %13, ptr noundef %sta_rc_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rc_list, ptr %prev.i, align 4
  %15 = ptrtoint ptr %rc_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sta_rc_list, ptr %rc_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %rc_list, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_get_rx_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_rx_aggr_start(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_rx_ba(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx_aggr_stop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_tx_ba(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_stream_caps(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_set_stream_vht_txbf_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_set_stream_he_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_ethtool_worker(ptr noundef %wi_data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %conv = zext i8 %3 to i32
  %idx1 = getelementptr inbounds %struct.mt76_ethtool_worker_info, ptr %wi_data, i32 0, i32 1
  %4 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stats = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 1, i32 0, i32 3
  tail call void @mt76_ethtool_worker(ptr noundef %wi_data, ptr noundef %stats) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_ethtool_worker(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_sta_update_hdr_trans(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_init_sar_power(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/main.c", i32 859, i32 2}
!2 = !{ptr @mt7915_ops, !3, !"mt7915_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/main.c", i32 1335, i32 28}
!4 = !{ptr @xa_init_flags.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/main.c", i32 1318, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mt7915_get_et_stats._entry, !8, !"_entry", i1 false, i1 false}
!13 = !{ptr @mt7915_get_et_stats._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @mt7915_gstrings_stats, !15, !"mt7915_gstrings_stats", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/main.c", i32 1101, i32 19}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i32 0, i32 33}
!28 = !{i64 2158348469}
