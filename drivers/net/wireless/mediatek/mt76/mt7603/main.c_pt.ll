; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/main.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7603_dev = type { %union.anon, ptr, i32, %struct.list_head, %struct.spinlock, %struct.mt7603_sta, i32, i32, i32, i32, i32, i32, i32, [3 x i8], i8, i16, i8, i64, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i16], i16, i32, [7 x i32], [12 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7603_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [4 x i32], %struct.sk_buff_head, [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7603_rate_set], i32, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7603_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
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
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.137] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.137 = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.mt76_txq = type { ptr, i16, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.130 = type { i64, i64, i8 }

@mt7603_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt7603_tx, ptr @mt7603_start, ptr @mt7603_stop, ptr null, ptr null, ptr null, ptr @mt7603_add_interface, ptr null, ptr @mt7603_remove_interface, ptr @mt7603_config, ptr @mt7603_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt7603_configure_filter, ptr null, ptr @mt76_set_tim, ptr @mt7603_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sw_scan, ptr @mt76_sw_scan_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sta_state, ptr @mt76_sta_pre_rcu_remove, ptr null, ptr @mt7603_sta_rate_tbl_update, ptr null, ptr @mt7603_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7603_ampdu_action, ptr @mt76_get_survey, ptr null, ptr @mt7603_set_coverage_class, ptr null, ptr null, ptr @mt7603_flush, ptr null, ptr null, ptr @mt76_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7603_release_buffered_frames, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_txpower, ptr null, ptr null, ptr null, ptr @mt76_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7603_set_sar_specs, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file393 = internal constant [63 x i8] c"mt7603e.file=drivers/net/wireless/mediatek/mt76/mt7603/mt7603e\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [29 x i8] c"mt7603e.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mt7603_pci_driver = external dso_local global %struct.pci_driver, align 4
@mt76_wmac_driver = external dso_local global %struct.platform_driver, align 4
@__initcall__kmod_mt7603e__395_750_mt7603_init6 = internal global ptr @mt7603_init, section ".initcall6.init", align 4
@__exitcall_mt7603_exit = internal global ptr @mt7603_exit, section ".exitcall.exit", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mt7603_sta_rate_tbl_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7603/main.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7603e\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"mt7603_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 696, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 378, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 641, i32 42 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/main.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 735, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__exitcall_mt7603_exit, ptr @__initcall__kmod_mt7603e__395_750_mt7603_init6, ptr @mt7603_exit, ptr @mt7603_ops, ptr @xa_init_flags.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_init_edcca(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 67104, i32 noundef 63, i32 noundef 35) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call10 = tail call i32 %7(ptr noundef %dev, i32 noundef 180304) #7
  %ed_monitor = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %ed_monitor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ed_monitor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %rmw15 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw15, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %13(ptr noundef %dev, i32 noundef 180224, i32 noundef 0, i32 noundef 1879048192) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 %13(ptr noundef %dev, i32 noundef 180224, i32 noundef 1879048192, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ed_strict_mode = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 23
  %14 = ptrtoint ptr %ed_strict_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %ed_strict_mode, align 8
  %ed_strong_signal = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 24
  %15 = ptrtoint ptr %ed_strong_signal to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ed_strong_signal, align 1
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %ed_time = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %ed_time to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i, ptr %ed_time, align 128
  tail call void @mt7603_edcca_set_strict(ptr noundef %dev, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_edcca_set_strict(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_sta_add(ptr noundef %mdev, ptr nocapture noundef readonly %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wcid_mask = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 33
  %call = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask, i32 noundef 122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %0 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %poll_list, ptr %prev.i, align 4
  %psq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 3
  %2 = ptrtoint ptr %psq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %psq, ptr %psq, align 4
  %prev.i32 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 0, i32 3
  %3 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %psq, ptr %prev.i32, align 4
  %qlen.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 0, i32 7
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %ps = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 16
  %5 = ptrtoint ptr %ps to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ps, align 4
  %smps = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 11
  %6 = ptrtoint ptr %smps to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %smps, align 1
  %sta4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %7 = ptrtoint ptr %sta4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %sta4, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %sta4, align 2
  %conv = trunc i32 %call to i16
  %idx6 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %8 = ptrtoint ptr %idx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %idx6, align 2
  %idx7 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %9 = ptrtoint ptr %idx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %idx7, align 4
  %conv8 = zext i8 %10 to i32
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void @mt7603_wtbl_init(ptr noundef %mdev, i32 noundef %call, i32 noundef %conv8, ptr noundef %addr) #7
  tail call void @mt7603_wtbl_set_ps(ptr noundef %mdev, ptr noundef %drv_priv, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp10 = icmp eq i32 %12, 3
  br i1 %cmp10, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_set_ps(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_sta_assoc(ptr noundef %mdev, ptr nocapture noundef readnone %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt7603_wtbl_update_cap(ptr noundef %mdev, ptr noundef %sta) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_update_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_sta_remove(ptr noundef %mdev, ptr nocapture noundef readnone %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_lock = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_lock) #7
  %psq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %psq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psq, align 4
  %cmp.i.i2.i = icmp eq ptr %1, %psq
  %tobool.not.i13.i = icmp eq ptr %1, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %entry.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

entry.__skb_queue_purge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %12, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.42, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.42, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #7
  %11 = ptrtoint ptr %psq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %psq, align 4
  %cmp.i.i.i = icmp eq ptr %12, %psq
  %tobool.not.i1.i = icmp eq ptr %12, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %entry.__skb_queue_purge.exit_crit_edge
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx, align 2
  %conv = zext i16 %14 to i32
  tail call void @mt7603_filter_tx(ptr noundef %mdev, i32 noundef %conv, i1 noundef zeroext true) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_lock) #7
  %sta_poll_lock = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %16, %poll_list
  br i1 %cmp.i.not, label %__skb_queue_purge.exit.if.end_crit_edge, label %if.then

__skb_queue_purge.exit.if.end_crit_edge:          ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %__skb_queue_purge.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %__skb_queue_purge.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idx, align 2
  %conv7 = zext i16 %26 to i32
  tail call void @mt7603_wtbl_clear(ptr noundef %mdev, i32 noundef %conv7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_filter_tx(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_sta_ps(ptr noundef %mdev, ptr noundef %sta, i1 noundef zeroext %ps) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #7
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  tail call void @mt76_stop_tx_queues(ptr noundef %mdev, ptr noundef %sta, i1 noundef zeroext true) #7
  tail call void @mt7603_wtbl_set_ps(ptr noundef %mdev, ptr noundef %drv_priv, i1 noundef zeroext %ps) #7
  br i1 %ps, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.63, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %ps_lock = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 18
  call void @_raw_spin_lock_bh(ptr noundef %ps_lock) #7
  %psq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 3
  %5 = ptrtoint ptr %psq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psq, align 4
  %cmp.i.not.i = icmp eq ptr %6, %psq
  br i1 %cmp.i.not.i, label %if.end.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

if.end.skb_queue_splice_tail_init.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 0, i32 3
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.42, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %10, align 8
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i13 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 0, i32 7
  %14 = ptrtoint ptr %qlen.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i13, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %psq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %psq, ptr %psq, align 4
  store ptr %psq, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i13, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %if.end.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ps_lock) #7
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %cmp.i.i7.i = icmp eq ptr %20, %list
  %tobool.not.i68.i = icmp eq ptr %20, null
  %tobool.not.i9.i = or i1 %cmp.i.i7.i, %tobool.not.i68.i
  br i1 %tobool.not.i9.i, label %skb_queue_splice_tail_init.exit.cleanup_crit_edge, label %while.body.lr.ph.i

skb_queue_splice_tail_init.exit.cleanup_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %skb_queue_splice_tail_init.exit
  %queue_ops.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %21 = phi ptr [ %20, %while.body.lr.ph.i ], [ %39, %while.body.i.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.42, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.42, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 10
  %30 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue_ops.i, align 4
  %tx_queue_skb_raw.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %tx_queue_skb_raw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_queue_skb_raw.i, align 4
  %arrayidx.i = getelementptr %struct.mt76_phy, ptr %mdev, i32 0, i32 4, i32 %conv.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = call i32 %35(ptr noundef %mdev, ptr noundef %37, ptr noundef nonnull %21, i32 noundef 0) #7
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list, align 4
  %cmp.i.i.i = icmp eq ptr %39, %list
  %tobool.not.i6.i = icmp eq ptr %39, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i6.i
  br i1 %tobool.not.i.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %skb_queue_splice_tail_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_stop_tx_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif1, align 8
  %global_sta = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 5
  %tobool5.not = icmp eq ptr %5, null
  %drv_priv7 = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  %spec.select = select i1 %tobool5.not, ptr %global_sta, ptr %drv_priv7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then
  %wcid.0 = phi ptr [ %drv_priv, %if.then ], [ %spec.select, %if.else ]
  tail call void @mt76_tx(ptr noundef %1, ptr noundef %3, ptr noundef %wcid.0, ptr noundef %skb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mt7603_mac_reset_counters(ptr noundef %1) #7
  tail call void @mt7603_mac_start(ptr noundef %1) #7
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %survey_time = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %survey_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i, ptr %survey_time, align 16
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #7
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  tail call void @mt7603_mac_work(ptr noundef %mac_work) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #7
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #7
  tail call void @mt7603_mac_stop(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #7
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  %2 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif_mask, align 4
  %neg = xor i32 %4, -1
  %5 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %iszero = icmp eq i32 %4, -1
  %6 = trunc i32 %5 to i8
  %conv = select i1 %iszero, i8 -1, i8 %6
  %idx1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %7 = ptrtoint ptr %idx1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %idx1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %cmp = icmp ugt i8 %conv, 3
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %conv3 = zext i8 %conv to i32
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  %mul = shl nuw nsw i32 %conv3, 3
  %add7 = add nuw nsw i32 %mul, 137252
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %addr, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void %11(ptr noundef %1, i32 noundef %add7, i32 noundef %14) #7
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr10, align 4
  %19 = ptrtoint ptr %idx1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %idx1, align 4
  %conv12 = zext i8 %20 to i32
  %mul13 = shl nuw nsw i32 %conv12, 3
  %add15 = add nuw nsw i32 %mul13, 137256
  %add.ptr = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %conv19 = zext i16 %23 to i32
  %or = or i32 %conv19, 65536
  tail call void %18(ptr noundef %1, i32 noundef %add15, i32 noundef %or) #7
  %24 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp20 = icmp eq i32 %25, 3
  br i1 %cmp20, label %if.then22, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %wr24 = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr24, align 4
  %30 = ptrtoint ptr %idx1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %idx1, align 4
  %conv26 = zext i8 %31 to i32
  %mul27 = shl nuw nsw i32 %conv26, 3
  %add29 = or i32 %mul27, 137220
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %addr, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void %29(ptr noundef %1, i32 noundef %add29, i32 noundef %34) #7
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr34 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr34, align 4
  %39 = ptrtoint ptr %idx1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %idx1, align 4
  %conv36 = zext i8 %40 to i32
  %mul37 = shl nuw nsw i32 %conv36, 3
  %add39 = add nuw nsw i32 %mul37, 137224
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %add.ptr, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  %conv44 = zext i16 %43 to i32
  %or45 = or i32 %conv44, 65536
  tail call void %38(ptr noundef %1, i32 noundef %add39, i32 noundef %or45) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then22, %if.end.if.end46_crit_edge
  %44 = ptrtoint ptr %idx1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %idx1, align 4
  %conv48 = zext i8 %45 to i32
  %sub49 = sub nsw i32 126, %conv48
  %shl = shl nuw i32 1, %conv48
  %46 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vif_mask, align 4
  %or53 = or i32 %shl, %47
  store i32 %or53, ptr %vif_mask, align 4
  %poll_list = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 2
  %48 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %poll_list, ptr %prev.i, align 4
  %conv54 = trunc i32 %sub49 to i16
  %idx56 = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 6
  %50 = ptrtoint ptr %idx56 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv54, ptr %idx56, align 2
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 28
  %51 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %hw_key_idx, align 4
  %list.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 25
  %52 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 29
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list.i, ptr %prev.i.i, align 4
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  tail call void @__raw_spin_lock_init(ptr noundef %pktid.i, ptr noundef nonnull @.str, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 44, i32 2, i32 2
  %54 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 16, i32 0, i32 2
  %55 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 16, i32 1
  %56 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 16, i32 2
  %57 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %idr_next.i.i.i, align 4
  %58 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  %59 = ptrtoint ptr %idx1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %idx1, align 4
  %conv63 = zext i8 %60 to i32
  call void @mt7603_wtbl_init(ptr noundef %1, i32 noundef %sub49, i32 noundef %conv63, ptr noundef nonnull %bc_addr) #7
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %61 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %txq, align 8
  %drv_priv65 = getelementptr inbounds %struct.ieee80211_txq, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %drv_priv65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %drv_priv, ptr %drv_priv65, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  %arrayidx97 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 37, i32 %sub49
  %64 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %drv_priv, ptr %arrayidx97, align 4
  br label %out

out:                                              ; preds = %if.end46, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end46 ], [ -28, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx1 = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 6
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx1, align 2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  %idx2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %8 = ptrtoint ptr %idx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %idx2, align 4
  %conv3 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv3, 3
  %add4 = add nuw nsw i32 %mul, 137252
  tail call void %7(ptr noundef %1, i32 noundef %add4, i32 noundef 0) #7
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr6, align 4
  %14 = ptrtoint ptr %idx2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %idx2, align 4
  %conv8 = zext i8 %15 to i32
  %mul9 = shl nuw nsw i32 %conv8, 3
  %add11 = add nuw nsw i32 %mul9, 137256
  tail call void %13(ptr noundef %1, i32 noundef %add11, i32 noundef 0) #7
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr13 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr13, align 4
  %20 = ptrtoint ptr %idx2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %idx2, align 4
  %conv15 = zext i8 %21 to i32
  %mul16 = shl nuw nsw i32 %conv15, 3
  %add18 = or i32 %mul16, 137220
  tail call void %19(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #7
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr20 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr20, align 4
  %26 = ptrtoint ptr %idx2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %idx2, align 4
  %conv22 = zext i8 %27 to i32
  %mul23 = shl nuw nsw i32 %conv22, 3
  %add25 = add nuw nsw i32 %mul23, 137224
  tail call void %25(ptr noundef %1, i32 noundef %add25, i32 noundef 0) #7
  %28 = ptrtoint ptr %idx2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %idx2, align 4
  %conv27 = zext i8 %29 to i32
  tail call void @mt7603_beacon_set_timer(ptr noundef %1, i32 noundef %conv27, i32 noundef 0) #7
  %conv = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 37, i32 %conv
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr null, ptr %arrayidx, align 4
  %sta_poll_lock = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %poll_list = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 2
  %31 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %32, %poll_list
  br i1 %cmp.i.not, label %entry.if.end64_crit_edge, label %if.then62

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then62:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then62.list_del_init.exit_crit_edge

if.then62.list_del_init.exit_crit_edge:           ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then62.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end64

if.end64:                                         ; preds = %list_del_init.exit, %entry.if.end64_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %41 = ptrtoint ptr %idx2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %idx2, align 4
  %conv67 = zext i8 %42 to i32
  %shl = shl nuw i32 1, %conv67
  %neg = xor i32 %shl, -1
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 35
  %43 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vif_mask, align 4
  %and = and i32 %44, %neg
  store i32 %and, ptr %vif_mask, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #7
  %45 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @mt76_tx_status_lock(ptr noundef %1, ptr noundef nonnull %list.i) #7
  %call.i = call ptr @mt76_tx_status_skb_get(ptr noundef %1, ptr noundef %drv_priv, i32 noundef -1, ptr noundef nonnull %list.i) #7
  call void @mt76_tx_status_unlock(ptr noundef %1, ptr noundef nonnull %list.i) #7
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  call void @idr_destroy(ptr noundef %pktid.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_config(ptr noundef %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %changed, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %call = tail call fastcc i32 @mt7603_set_channel(ptr noundef %hw, ptr noundef %chandef)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and1 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw, align 8
  %rxfilter = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxfilter, align 4
  %and9 = and i32 %5, -262145
  %and5 = shl i32 %3, 18
  %6 = and i32 %and5, 262144
  %7 = or i32 %6, %and9
  %and9.sink = xor i32 %7, 262144
  store i32 %and9.sink, ptr %rxfilter, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  tail call void %11(ptr noundef %1, i32 noundef 137216, i32 noundef %and9.sink) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_bss_info_changed(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %info, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %and = and i32 %changed, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %ibss_joined = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %4 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ibss_joined, align 8, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  %idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %idx, align 4
  %conv = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add4 = or i32 %mul, 137220
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %13, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void %9(ptr noundef %1, i32 noundef %add4, i32 noundef %16) #7
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %wr6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr6, align 4
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %idx, align 4
  %conv8 = zext i8 %22 to i32
  %mul9 = shl nuw nsw i32 %conv8, 3
  %add11 = add nuw nsw i32 %mul9, 137224
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  %conv14 = zext i16 %27 to i32
  %or = or i32 %conv14, 65536
  tail call void %20(ptr noundef %1, i32 noundef %add11, i32 noundef %or) #7
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %bus15 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus15, align 4
  %wr16 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr16, align 4
  %idx17 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %32 = ptrtoint ptr %idx17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %idx17, align 4
  %conv18 = zext i8 %33 to i32
  %mul19 = shl nuw nsw i32 %conv18, 3
  %add21 = or i32 %mul19, 137220
  tail call void %31(ptr noundef %1, i32 noundef %add21, i32 noundef 0) #7
  %34 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus15, align 4
  %wr23 = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr23, align 4
  %38 = ptrtoint ptr %idx17 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %idx17, align 4
  %conv25 = zext i8 %39 to i32
  %mul26 = shl nuw nsw i32 %conv25, 3
  %add28 = add nuw nsw i32 %mul26, 137224
  tail call void %37(ptr noundef %1, i32 noundef %add28, i32 noundef 0) #7
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then3, %entry.if.end29_crit_edge
  %and30 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end42_crit_edge, label %if.then32

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then32:                                        ; preds = %if.end29
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %40 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_short_slot, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool33.not = icmp eq i8 %41, 0
  %cond = select i1 %tobool33.not, i32 20, i32 9
  %slottime35 = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %slottime35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %slottime35, align 1
  %conv36 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv36)
  %cmp.not = icmp eq i32 %cond, %conv36
  br i1 %cmp.not, label %if.then32.if.end42_crit_edge, label %if.then38

if.then32.if.end42_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %conv39 = trunc i32 %cond to i8
  %44 = ptrtoint ptr %slottime35 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv39, ptr %slottime35, align 1
  tail call void @mt7603_mac_set_timing(ptr noundef %1) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.then32.if.end42_crit_edge, %if.end29.if.end42_crit_edge
  %and43 = and i32 %changed, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end54_crit_edge, label %if.then45

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %45 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %enable_beacon, align 1, !range !29
  %47 = zext i8 %46 to i32
  %beacon_int48 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 19
  %48 = ptrtoint ptr %beacon_int48 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %beacon_int48, align 2
  %conv49 = zext i16 %49 to i32
  %mul50 = mul nuw nsw i32 %conv49, %47
  %pre_tbtt_tasklet = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41
  %count.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @tasklet_unlock_wait(ptr noundef %pre_tbtt_tasklet) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %idx51 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %51 = ptrtoint ptr %idx51 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %idx51, align 4
  %conv52 = zext i8 %52 to i32
  tail call void @mt7603_beacon_set_timer(ptr noundef %1, i32 noundef %conv52, i32 noundef %mul50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !34
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end42.if.end54_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rxfilter = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxfilter, align 4
  %and = and i32 %3, -2301170
  store i32 %and, ptr %rxfilter, align 4
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_flags, align 4
  %and1 = and i32 %5, 64
  %and3 = and i32 %3, -2826226
  %and1.lobit = lshr exact i32 %and1, 6
  %6 = xor i32 %and1.lobit, 1
  %mul = mul nuw nsw i32 %6, 525056
  %or6 = or i32 %mul, %and3
  store i32 %or6, ptr %rxfilter, align 4
  %7 = load i32, ptr %total_flags, align 4
  %and8 = and i32 %7, 4
  %or9 = or i32 %and8, %and1
  %and11 = and i32 %or6, -2097396
  %and8.lobit = lshr exact i32 %and8, 1
  %8 = or i32 %and11, %and8.lobit
  %or18 = xor i32 %8, 2
  store i32 %or18, ptr %rxfilter, align 4
  %9 = load i32, ptr %total_flags, align 4
  %and22 = and i32 %9, 32
  %or23 = or i32 %or9, %and22
  %and25 = and i32 %or18, -3203314
  %and22.lobit = lshr exact i32 %and22, 5
  %10 = xor i32 %and22.lobit, 1
  %mul30 = mul nuw nsw i32 %10, 1105920
  %or32 = or i32 %and25, %mul30
  store i32 %or32, ptr %rxfilter, align 4
  store i32 %or23, ptr %total_flags, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr, align 4
  %15 = load i32, ptr %rxfilter, align 4
  tail call void %14(ptr noundef %1, i32 noundef 137216, i32 noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %sta, null
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %cond = select i1 %tobool.not, ptr %drv_priv, ptr %drv_priv1
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %2 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %3 to i32
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1027074, label %entry.sw.epilog_crit_edge
    i32 1027076, label %entry.sw.epilog_crit_edge58
  ]

entry.sw.epilog_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge58
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vif, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %8, label %sw.epilog.if.end_crit_edge [
    i32 1, label %sw.epilog.land.lhs.true_crit_edge
    i32 7, label %sw.epilog.land.lhs.true_crit_edge59
  ]

sw.epilog.land.lhs.true_crit_edge59:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.land.lhs.true_crit_edge, %sw.epilog.land.lhs.true_crit_edge59
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %5, label %land.lhs.true.if.end_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true16_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true16_crit_edge60
  ]

land.lhs.true.land.lhs.true16_crit_edge60:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true16

land.lhs.true.land.lhs.true16_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true16

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true.land.lhs.true16_crit_edge, %land.lhs.true.land.lhs.true16_crit_edge60
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 8
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool18.not = icmp eq i16 %13, 0
  br i1 %tobool18.not, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end_crit_edge

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true16.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp19 = icmp eq i32 %cmd, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %idx22 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 6
  %14 = ptrtoint ptr %idx22 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx22, align 2
  %conv23 = trunc i16 %15 to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %16 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv23, ptr %hw_key_idx, align 2
  %hw_key_idx25 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 7
  %17 = ptrtoint ptr %hw_key_idx25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %3, ptr %hw_key_idx25, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end
  %hw_key_idx26 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 7
  %18 = ptrtoint ptr %hw_key_idx26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw_key_idx26, align 4
  %conv27 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv27)
  %cmp28 = icmp eq i32 %conv, %conv27
  br i1 %cmp28, label %if.then30, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %hw_key_idx26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %hw_key_idx26, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else.if.end33_crit_edge, %if.then21
  %key.addr.0 = phi ptr [ %key, %if.then21 ], [ null, %if.then30 ], [ null, %if.else.if.end33_crit_edge ]
  tail call void @mt76_wcid_key_setup(ptr noundef %1, ptr noundef %cond, ptr noundef %key.addr.0) #7
  %idx34 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 6
  %21 = ptrtoint ptr %idx34 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idx34, align 2
  %conv35 = zext i16 %22 to i32
  %call = tail call i32 @mt7603_wtbl_set_key(ptr noundef %1, i32 noundef %conv35, ptr noundef %key.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %land.lhs.true16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end33 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan_complete(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_sta_rate_tbl_update(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rates = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 16
  %2 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rates, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @mt7603_sta_rate_tbl_update.__warned, align 1
  br i1 %.b71, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7603_sta_rate_tbl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 641, ptr noundef nonnull @.str.2) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %rates9 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 2, i32 1
  %arrayidx = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %6 = ptrtoint ptr %rates9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %rates9, align 1
  %count = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %count, align 1
  %count16 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates9, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %count16 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %bf.load = load i16, ptr %count16, align 1
  %bf.value = zext i8 %8 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count16, align 1
  %flags = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %bf.value23 = and i16 %11, 2047
  %bf.set25 = or i16 %bf.value23, %bf.shl
  store i16 %bf.set25, ptr %count16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp30 = icmp slt i8 %5, 0
  %bf.lshr = and i16 %bf.value, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr)
  %tobool36.not = icmp eq i16 %bf.lshr, 0
  %or.cond = select i1 %cmp30, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %do.end7.for.end_crit_edge, label %for.inc

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %do.end7
  %arrayidx.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 2
  %arrayidx10.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates9, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx10.1, align 1
  %count.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %count.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %count.1, align 1
  %count16.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 2, i32 3
  %17 = ptrtoint ptr %count16.1 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %bf.load.1 = load i16, ptr %count16.1, align 1
  %bf.value.1 = zext i8 %16 to i16
  %bf.shl.1 = shl i16 %bf.value.1, 11
  %bf.clear.1 = and i16 %bf.load.1, 2047
  %bf.set.1 = or i16 %bf.clear.1, %bf.shl.1
  store i16 %bf.set.1, ptr %count16.1, align 1
  %flags.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 1, i32 4
  %18 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.1, align 2
  %bf.value23.1 = and i16 %19, 2047
  %bf.set25.1 = or i16 %bf.value23.1, %bf.shl.1
  store i16 %bf.set25.1, ptr %count16.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp30.1 = icmp slt i8 %13, 0
  %bf.lshr.1 = and i16 %bf.value.1, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr.1)
  %tobool36.not.1 = icmp eq i16 %bf.lshr.1, 0
  %or.cond.1 = select i1 %cmp30.1, i1 true, i1 %tobool36.not.1
  br i1 %or.cond.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2, align 2
  %arrayidx10.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx10.2, align 1
  %count.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %count.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %count.2, align 1
  %count16.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates9, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %count16.2 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load.2 = load i16, ptr %count16.2, align 1
  %bf.value.2 = zext i8 %24 to i16
  %bf.shl.2 = shl i16 %bf.value.2, 11
  %bf.clear.2 = and i16 %bf.load.2, 2047
  %bf.set.2 = or i16 %bf.clear.2, %bf.shl.2
  store i16 %bf.set.2, ptr %count16.2, align 1
  %flags.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 2, i32 4
  %26 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags.2, align 2
  %bf.value23.2 = and i16 %27, 2047
  %bf.set25.2 = or i16 %bf.value23.2, %bf.shl.2
  store i16 %bf.set25.2, ptr %count16.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp30.2 = icmp slt i8 %21, 0
  %bf.lshr.2 = and i16 %bf.value.2, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr.2)
  %tobool36.not.2 = icmp eq i16 %bf.lshr.2, 0
  %or.cond.2 = select i1 %cmp30.2, i1 true, i1 %tobool36.not.2
  br i1 %or.cond.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3, align 2
  %arrayidx10.3 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates9, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx10.3, align 1
  %count.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 3, i32 1
  %31 = ptrtoint ptr %count.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %count.3, align 1
  %count16.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 3
  %33 = ptrtoint ptr %count16.3 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %bf.load.3 = load i16, ptr %count16.3, align 1
  %bf.value.3 = zext i8 %32 to i16
  %bf.shl.3 = shl i16 %bf.value.3, 11
  %bf.clear.3 = and i16 %bf.load.3, 2047
  %bf.set.3 = or i16 %bf.clear.3, %bf.shl.3
  store i16 %bf.set.3, ptr %count16.3, align 1
  %flags.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 3, i32 4
  %34 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags.3, align 2
  %bf.value23.3 = and i16 %35, 2047
  %bf.set25.3 = or i16 %bf.value23.3, %bf.shl.3
  store i16 %bf.set25.3, ptr %count16.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp30.3 = icmp slt i8 %29, 0
  %bf.lshr.3 = and i16 %bf.value.3, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr.3)
  %tobool36.not.3 = icmp eq i16 %bf.lshr.3, 0
  %or.cond.3 = select i1 %cmp30.3, i1 true, i1 %tobool36.not.3
  %spec.select = select i1 %or.cond.3, i8 3, i8 4
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %do.end7.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %do.end7.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ %spec.select, %for.inc.2 ]
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %n_rates = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 9
  %36 = ptrtoint ptr %n_rates to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %i.0.lcssa, ptr %n_rates, align 1
  tail call void @mt7603_wtbl_set_rates(ptr noundef %1, ptr noundef %drv_priv, ptr noundef null, ptr noundef %rates9) #7
  %rate_probe = getelementptr inbounds %struct.mt7603_sta, ptr %drv_priv, i32 0, i32 10
  %37 = ptrtoint ptr %rate_probe to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %rate_probe, align 2
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %38 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp42 = icmp eq i32 %39, 3
  tail call void @mt7603_wtbl_set_smps(ptr noundef %1, ptr noundef %drv_priv, i1 noundef zeroext %cmp42) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idxprom = zext i16 %queue to i32
  %arrayidx = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %hw_idx = getelementptr inbounds %struct.mt76_queue, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %hw_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_idx, align 1
  %cw_min1 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %cw_min1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cw_min1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %narrow = select i1 %tobool.not, i16 31, i16 %7
  %spec.select = zext i16 %narrow to i32
  %cw_max3 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %cw_max3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cw_max3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not = icmp eq i16 %9, 0
  %narrow130 = select i1 %tobool4.not, i16 1023, i16 %9
  %cw_max.0 = zext i16 %narrow130 to i32
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @mt7603_mac_stop(ptr noundef %1) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %conv8 = zext i8 %5 to i32
  %14 = shl nuw nsw i32 %conv8, 1
  %xor = and i32 %14, 508
  %shl = xor i32 %xor, 4
  %add = add nuw nsw i32 %shl, 136720
  %call = tail call i32 %13(ptr noundef %1, i32 noundef %add) #7
  %and = shl nuw nsw i32 %conv8, 4
  %mul = and i32 %and, 16
  %shl10 = shl nuw i32 65535, %mul
  %neg = xor i32 %shl10, -1
  %and11 = and i32 %call, %neg
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %params, align 2
  %conv12 = zext i16 %16 to i32
  %shl16 = shl nuw i32 %conv12, %mul
  %or = or i32 %shl16, %and11
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr, align 4
  tail call void %20(ptr noundef %1, i32 noundef %add, i32 noundef %or) #7
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call25 = tail call i32 %24(ptr noundef %1, i32 noundef 136224) #7
  %mul27 = shl nuw nsw i32 %conv8, 2
  %shl28 = shl i32 15, %mul27
  %neg29 = xor i32 %shl28, -1
  %and30 = and i32 %call25, %neg29
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %aifs, align 2
  %conv31 = zext i8 %26 to i32
  %shl34 = shl i32 %conv31, %mul27
  %or35 = or i32 %shl34, %and30
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %wr37 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr37, align 4
  tail call void %30(ptr noundef %1, i32 noundef 136224, i32 noundef %or35) #7
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call40 = tail call i32 %34(ptr noundef %1, i32 noundef 136256) #7
  %mul42 = shl nuw nsw i32 %conv8, 3
  %shl43 = shl i32 255, %mul42
  %neg44 = xor i32 %shl43, -1
  %and45 = and i32 %call40, %neg44
  %shl49 = shl i32 %spec.select, %mul42
  %or50 = or i32 %and45, %shl49
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr52 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr52, align 4
  tail call void %38(ptr noundef %1, i32 noundef 136256, i32 noundef %or50) #7
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %add58 = add nuw nsw i32 %xor, 136232
  %call59 = tail call i32 %42(ptr noundef %1, i32 noundef %add58) #7
  %and65 = and i32 %call59, %neg
  %shl70 = shl nuw i32 %cw_max.0, %mul
  %or71 = or i32 %and65, %shl70
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %wr73 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr73, align 4
  tail call void %46(ptr noundef %1, i32 noundef %add58, i32 noundef %or71) #7
  tail call void @mt7603_mac_start(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta2, align 4
  %tid = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tid, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %3, i32 0, i32 28, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  %ssn6 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %ssn6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ssn6, align 2
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %buf_size, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  %drv_priv7 = getelementptr inbounds %struct.ieee80211_txq, ptr %7, i32 0, i32 5
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %13, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 6, label %sw.bb16
    i32 4, label %if.end.sw.bb21_crit_edge
    i32 5, label %if.end.sw.bb21_crit_edge80
    i32 2, label %sw.bb27
    i32 3, label %sw.bb30
  ]

if.end.sw.bb21_crit_edge80:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = trunc i16 %5 to i8
  %15 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf_size, align 4
  %call = tail call i32 @mt76_rx_aggr_start(ptr noundef %1, ptr noundef %drv_priv, i8 noundef zeroext %conv9, i16 noundef zeroext %9, i16 noundef zeroext %16) #7
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  tail call void @mt7603_mac_rx_ba_reset(ptr noundef %1, ptr noundef %addr, i8 noundef zeroext %conv9) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = trunc i16 %5 to i8
  tail call void @mt76_rx_aggr_stop(ptr noundef %1, ptr noundef %drv_priv, i8 noundef zeroext %conv15) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %aggr = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %17 = ptrtoint ptr %aggr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %aggr, align 1
  %send_bar = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 2
  %18 = ptrtoint ptr %send_bar to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %send_bar, align 2
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 2
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idx, align 2
  %conv18 = zext i16 %20 to i32
  %21 = and i16 %11, 255
  %conv20 = zext i16 %21 to i32
  tail call void @mt7603_mac_tx_ba_reset(ptr noundef %1, i32 noundef %conv18, i32 noundef %idxprom, i32 noundef %conv20) #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge80
  %aggr22 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %22 = ptrtoint ptr %aggr22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %aggr22, align 1
  %idx24 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 2
  %23 = ptrtoint ptr %idx24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx24, align 2
  %conv25 = zext i16 %24 to i32
  tail call void @mt7603_mac_tx_ba_reset(ptr noundef %1, i32 noundef %conv25, i32 noundef %idxprom, i32 noundef -1) #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i16 %9, 4
  %agg_ssn = getelementptr inbounds %struct.ieee80211_txq, ptr %7, i32 1, i32 1
  %25 = ptrtoint ptr %agg_ssn to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %shl, ptr %agg_ssn, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %aggr31 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %26 = ptrtoint ptr %aggr31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %aggr31, align 1
  %idx33 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 2
  %27 = ptrtoint ptr %idx33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %idx33, align 2
  %conv34 = zext i16 %28 to i32
  tail call void @mt7603_mac_tx_ba_reset(ptr noundef %1, i32 noundef %conv34, i32 noundef %idxprom, i32 noundef -1) #7
  %addr36 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr36, i16 noundef zeroext %5) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb27, %sw.bb21, %sw.bb16, %sw.bb13, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb30 ], [ 1, %sw.bb27 ], [ 0, %sw.bb21 ], [ 0, %sw.bb16 ], [ 0, %sw.bb13 ], [ 0, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_survey(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_set_coverage_class(ptr nocapture noundef readonly %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = tail call i16 @llvm.smax.i16(i16 %coverage_class, i16 0)
  %coverage_class6 = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %coverage_class6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %coverage_class6, align 4
  tail call void @mt7603_mac_set_timing(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7603_flush(ptr nocapture noundef %hw, ptr nocapture noundef %vif, i32 noundef %queues, i1 noundef zeroext %drop) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_antenna(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_release_buffered_frames(ptr noundef %hw, ptr noundef %sta, i16 noundef zeroext %tids, i32 noundef %nframes, i32 noundef %reason, i1 noundef zeroext %more_data) #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #7
  %2 = getelementptr inbounds i8, ptr %list, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.63, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  call void @mt7603_wtbl_set_ps(ptr noundef %1, ptr noundef %drv_priv, i1 noundef zeroext false) #7
  %ps_lock = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 18
  call void @_raw_spin_lock_bh(ptr noundef %ps_lock) #7
  %psq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 3
  %7 = ptrtoint ptr %psq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psq, align 4
  %cmp.not41 = icmp eq ptr %8, %psq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes)
  %tobool.not42 = icmp eq i32 %nframes, 0
  %or.cond43 = or i1 %cmp.not41, %tobool.not42
  br i1 %or.cond43, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %conv = zext i16 %tids to i32
  %qlen.i36 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %skb.045 = phi ptr [ %8, %if.end.lr.ph ], [ %tmp.046, %for.inc.if.end_crit_edge ]
  %nframes.addr.044 = phi i32 [ %nframes, %if.end.lr.ph ], [ %nframes.addr.1, %for.inc.if.end_crit_edge ]
  %9 = ptrtoint ptr %skb.045 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.046 = load ptr, ptr %skb.045, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.045, i32 0, i32 15, i32 0, i32 6
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priority, align 4
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.045, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %queue_mapping1.i, align 8
  %13 = ptrtoint ptr %qlen.i36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i36, align 4
  %sub.i = add i32 %14, -1
  store volatile i32 %sub.i, ptr %qlen.i36, align 4
  %15 = ptrtoint ptr %skb.045 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb.045, align 8
  %prev9.i = getelementptr inbounds %struct.anon.42, ptr %skb.045, i32 0, i32 1
  %17 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.045, align 8
  %prev17.i = getelementptr inbounds %struct.anon.42, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %prev17.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %18, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.045, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %22, i32 32
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %25 = or i16 %24, 32
  store i16 %25, ptr %arrayidx.i, align 2
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  store volatile ptr %list, ptr %skb.045, align 8
  store volatile ptr %27, ptr %prev9.i, align 4
  store volatile ptr %skb.045, ptr %prev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %skb.045, ptr %27, align 4
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %dec = add i32 %nframes.addr.044, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.end.for.inc_crit_edge
  %nframes.addr.1 = phi i32 [ %dec, %if.end5 ], [ %nframes.addr.044, %if.end.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %tmp.046, %psq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes.addr.1)
  %tobool.not = icmp eq i32 %nframes.addr.1, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %nframes.addr.0.lcssa = phi i32 [ %nframes, %entry.for.end_crit_edge ], [ %nframes.addr.1, %for.inc.for.end_crit_edge ]
  %tobool.not.lcssa = phi i1 [ %tobool.not42, %entry.for.end_crit_edge ], [ %tobool.not, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %ps_lock) #7
  %31 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %32, %list
  br i1 %cmp.i.not, label %for.end.if.end11_crit_edge, label %if.then10

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_sta_eosp(ptr noundef %sta) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end.if.end11_crit_edge
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list, align 4
  %cmp.i.i7.i = icmp eq ptr %34, %list
  %tobool.not.i68.i = icmp eq ptr %34, null
  %tobool.not.i9.i = or i1 %cmp.i.i7.i, %tobool.not.i68.i
  br i1 %tobool.not.i9.i, label %if.end11.mt7603_ps_tx_list.exit_crit_edge, label %while.body.lr.ph.i

if.end11.mt7603_ps_tx_list.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_ps_tx_list.exit

while.body.lr.ph.i:                               ; preds = %if.end11
  %queue_ops.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %35 = phi ptr [ %34, %while.body.lr.ph.i ], [ %53, %while.body.i.while.body.i_crit_edge ]
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.42, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %35, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.42, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %prev17.i.i.i, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %39, ptr %41, align 8
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 10
  %44 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i38 = zext i16 %45 to i32
  %46 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %queue_ops.i, align 4
  %tx_queue_skb_raw.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %tx_queue_skb_raw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_queue_skb_raw.i, align 4
  %arrayidx.i39 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 %conv.i38
  %50 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i39, align 4
  %call2.i = call i32 %49(ptr noundef %1, ptr noundef %51, ptr noundef nonnull %35, i32 noundef 0) #7
  %52 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list, align 4
  %cmp.i.i.i = icmp eq ptr %53, %list
  %tobool.not.i6.i = icmp eq ptr %53, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i6.i
  br i1 %tobool.not.i.i, label %while.body.i.mt7603_ps_tx_list.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.mt7603_ps_tx_list.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_ps_tx_list.exit

mt7603_ps_tx_list.exit:                           ; preds = %while.body.i.mt7603_ps_tx_list.exit_crit_edge, %if.end11.mt7603_ps_tx_list.exit_crit_edge
  br i1 %tobool.not.lcssa, label %mt7603_ps_tx_list.exit.if.end15_crit_edge, label %if.then13

mt7603_ps_tx_list.exit.if.end15_crit_edge:        ; preds = %mt7603_ps_tx_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %mt7603_ps_tx_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @mt76_release_buffered_frames(ptr noundef %hw, ptr noundef %sta, i16 noundef zeroext %tids, i32 noundef %nframes.addr.0.lcssa, i32 noundef %reason, i1 noundef zeroext %more_data) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %mt7603_ps_tx_list.exit.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_txpower(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wake_tx_queue(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_set_sar_specs(ptr noundef %hw, ptr noundef %sar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 5
  %call = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %chandef) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt76_init_sar_power(ptr noundef %hw, ptr noundef %sar) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @mt7603_set_channel(ptr noundef %hw, ptr noundef %chandef)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @mt7603_pci_driver) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt76_wmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt76_wmac_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mt7603_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt76_wmac_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_reset_counters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_beacon_set_timer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_tx_status_skb_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_unlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7603_set_channel(ptr noundef %hw, ptr nocapture noundef readonly %def) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom, align 16
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #7
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #7
  %pre_tbtt_tasklet = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41
  %count.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @tasklet_unlock_wait(ptr noundef %pre_tbtt_tasklet) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #7
  tail call void @mt7603_beacon_set_timer(ptr noundef %1, i32 noundef -1, i32 noundef 0) #7
  tail call void @mt76_set_channel(ptr noundef %1) #7
  tail call void @mt7603_mac_stop(ptr noundef %1) #7
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %def, i32 0, i32 1
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 5
  %7 = call ptr @memcpy(ptr %chandef, ptr %def, i32 28)
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %shl = select i1 %cmp, i32 4, i32 0
  %call17 = tail call i32 %11(ptr noundef %1, i32 noundef 135916, i32 noundef 12, i32 noundef %shl) #7
  %call18 = tail call i32 @mt7603_mcu_set_channel(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end21:                                         ; preds = %entry
  %12 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %def, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp22 = icmp eq i32 %15, 1
  %rssi_data.0.v = select i1 %cmp22, i32 74, i32 70
  %rssi_data.0 = getelementptr i8, ptr %3, i32 %rssi_data.0.v
  %idx.0 = zext i1 %cmp22 to i32
  %rssi_offset = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 13
  %16 = call ptr @memcpy(ptr %rssi_offset, ptr %rssi_data.0, i32 3)
  %17 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %def, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy, align 8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %18, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %22, i32 0, i32 53, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 56
  %shl31 = shl nsw i32 %sub.ptr.div, 1
  %or = or i32 %shl31, %idx.0
  %29 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr, align 4
  tail call void %32(ptr noundef %1, i32 noundef 137360, i32 noundef %or) #7
  tail call void @mt7603_mac_set_timing(ptr noundef %1) #7
  tail call void @mt7603_mac_start(ptr noundef %1) #7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #7
  tail call void @mt76_txq_schedule_all(ptr noundef %1) #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 128
  tail call void @ieee80211_queue_delayed_work(ptr noundef %34, ptr noundef %mac_work, i32 noundef 10) #7
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %rmw38 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %rmw38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw38, align 4
  %call39 = tail call i32 %38(ptr noundef %1, i32 noundef 180224, i32 noundef -2147483648, i32 noundef 0) #7
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %rmw41 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rmw41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw41, align 4
  %call42 = tail call i32 %42(ptr noundef %1, i32 noundef 180224, i32 noundef 0, i32 noundef 129024) #7
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call44 = tail call i32 %46(ptr noundef %1, i32 noundef 180268) #7
  tail call void @mt7603_cca_stats_reset(ptr noundef %1) #7
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %survey_time = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %survey_time to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %call.i, ptr %survey_time, align 16
  %48 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw.i, align 4
  %call.i105 = tail call i32 %51(ptr noundef %1, i32 noundef 67104, i32 noundef 63, i32 noundef 35) #7
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call10.i = tail call i32 %55(ptr noundef %1, i32 noundef 180304) #7
  %ed_monitor.i = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 21
  %56 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ed_monitor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus, align 4
  %rmw15.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %rmw15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmw15.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 %61(ptr noundef %1, i32 noundef 180224, i32 noundef 0, i32 noundef 1879048192) #7
  br label %mt7603_init_edcca.exit

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = tail call i32 %61(ptr noundef %1, i32 noundef 180224, i32 noundef 1879048192, i32 noundef 0) #7
  br label %mt7603_init_edcca.exit

mt7603_init_edcca.exit:                           ; preds = %if.else.i, %if.then.i
  %ed_strict_mode.i = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 23
  %62 = ptrtoint ptr %ed_strict_mode.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %ed_strict_mode.i, align 8
  %ed_strong_signal.i = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 24
  %63 = ptrtoint ptr %ed_strong_signal.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ed_strong_signal.i, align 1
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %ed_time.i = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 17
  %64 = ptrtoint ptr %ed_time.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call.i.i, ptr %ed_time.i, align 128
  tail call void @mt7603_edcca_set_strict(ptr noundef %1, i1 noundef zeroext false) #7
  br label %out

out:                                              ; preds = %mt7603_init_edcca.exit, %entry.out_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 128
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %and47 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then49, label %out.if.end50_crit_edge

out.if.end50_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %beacon_int = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 42
  %69 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %beacon_int, align 8
  tail call void @mt7603_beacon_set_timer(ptr noundef %1, i32 noundef -1, i32 noundef %70) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %out.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !34
  br i1 %tobool19.not, label %if.end50.if.end56_crit_edge, label %if.then54

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt7603_mac_work(ptr noundef %mac_work) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end50.if.end56_crit_edge
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #7
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_mcu_set_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_set_timing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_cca_stats_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wcid_key_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_wtbl_set_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_set_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_set_smps(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_rx_aggr_start(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_rx_ba_reset(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx_aggr_stop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_tx_ba_reset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_eosp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_init_sar_power(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @mt7603_ops, !1, !"mt7603_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/main.c", i32 696, i32 28}
!2 = !{ptr @__UNIQUE_ID_file393, !3, !"__UNIQUE_ID_file393", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/main.c", i32 724, i32 1}
!4 = !{ptr @__UNIQUE_ID_license394, !3, !"__UNIQUE_ID_license394", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_mt7603e__395_750_mt7603_init6, !6, !"__initcall__kmod_mt7603e__395_750_mt7603_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/main.c", i32 750, i32 1}
!7 = !{ptr @__exitcall_mt7603_exit, !8, !"__exitcall_mt7603_exit", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/main.c", i32 751, i32 1}
!9 = !{ptr @xa_init_flags.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/main.c", i32 641, i32 42}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/main.c", i32 735, i32 8}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i32 0, i32 33}
!28 = !{i64 2158111634}
!29 = !{i8 0, i8 2}
!30 = !{i64 2148385295, i64 2148385321, i64 2148385350, i64 2148385384, i64 2148385415, i64 2148385438}
!31 = !{i64 2155274838}
!32 = !{i64 2155275480}
!33 = !{i64 2155275827}
!34 = !{i64 2148387760, i64 2148387786, i64 2148387815, i64 2148387849, i64 2148387880, i64 2148387903}
