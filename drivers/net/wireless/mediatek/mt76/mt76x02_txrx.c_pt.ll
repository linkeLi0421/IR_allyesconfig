; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x02_tx\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_tx\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_tx\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_queue_rx_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_queue_rx_skb\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_queue_rx_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_queue_rx_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_queue_rx_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_queue_rx_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_tx_set_txpwr_auto\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_tx_set_txpwr_auto\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_tx_set_txpwr_auto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_tx_set_txpwr_auto:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_tx_set_txpwr_auto\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_tx_set_txpwr_auto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_tx_status_data\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_tx_status_data\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_tx_status_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_tx_status_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_tx_status_data\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_tx_status_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_tx_prepare_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_tx_prepare_skb\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_tx_prepare_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_tx_prepare_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.150, ptr, %union.anon.151, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.145], ptr }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.144 }
%struct.anon.144 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.145 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.146, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.146 = type { ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.147, i32 }
%union.anon.147 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.148 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.150 = type { ptr, i32 }
%union.anon.151 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.132, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.132 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.133] }
%struct.anon.133 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt76x02_dev = type { %union.anon.141, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.153, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon.141 = type { %struct.mt76_dev }
%struct.mac_address = type { [6 x i8] }
%struct.anon.153 = type { %union.anon.154, [0 x %struct.mt76x02_tx_status] }
%union.anon.154 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.mt76x02_txwi = type { i16, i16, i8, i8, i16, i32, i32, i8, i8, i8, i8 }

@__kstrtab_mt76x02_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_tx to i32), ptr @__kstrtab_mt76x02_tx, ptr @__kstrtabns_mt76x02_tx }, section "___ksymtab_gpl+mt76x02_tx", align 4
@__kstrtab_mt76x02_queue_rx_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_queue_rx_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_queue_rx_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_queue_rx_skb to i32), ptr @__kstrtab_mt76x02_queue_rx_skb, ptr @__kstrtabns_mt76x02_queue_rx_skb }, section "___ksymtab_gpl+mt76x02_queue_rx_skb", align 4
@__kstrtab_mt76x02_tx_set_txpwr_auto = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_tx_set_txpwr_auto = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_tx_set_txpwr_auto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_tx_set_txpwr_auto to i32), ptr @__kstrtab_mt76x02_tx_set_txpwr_auto, ptr @__kstrtabns_mt76x02_tx_set_txpwr_auto }, section "___ksymtab_gpl+mt76x02_tx_set_txpwr_auto", align 4
@__kstrtab_mt76x02_tx_status_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_tx_status_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_tx_status_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_tx_status_data to i32), ptr @__kstrtab_mt76x02_tx_status_data, ptr @__kstrtabns_mt76x02_tx_status_data }, section "___ksymtab_gpl+mt76x02_tx_status_data", align 4
@__kstrtab_mt76x02_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_tx_prepare_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_tx_prepare_skb to i32), ptr @__kstrtab_mt76x02_tx_prepare_skb, ptr @__kstrtabns_mt76x02_tx_prepare_skb }, section "___ksymtab_gpl+mt76x02_tx_prepare_skb", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mt76x02_queue_rx_skb, ptr @__ksymtab_mt76x02_tx, ptr @__ksymtab_mt76x02_tx_prepare_skb, ptr @__ksymtab_mt76x02_tx_set_txpwr_auto, ptr @__ksymtab_mt76x02_tx_status_data], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
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
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif1, align 8
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 36
  %tobool4.not = icmp eq ptr %5, null
  %drv_priv6 = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  %spec.select = select i1 %tobool4.not, ptr %global_wcid, ptr %drv_priv6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then
  %wcid.0 = phi ptr [ %drv_priv, %if.then ], [ %spec.select, %if.else ]
  tail call void @mt76_tx(ptr noundef %1, ptr noundef %3, ptr noundef %wcid.0, ptr noundef %skb) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_queue_rx_skb(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %q)
  %cmp = icmp eq i32 %q, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt76_mcu_rx_event(ptr noundef %mdev, ptr noundef %skb) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 32) #7
  %call1 = tail call i32 @mt76x02_mac_process_rx(ptr noundef %mdev, ptr noundef %skb, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt76_rx(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mcu_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mac_process_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @mt76x02_tx_get_max_txpwr_adj(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rate, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.clear = and i16 %bf.load, 2047
  %conv = zext i16 %bf.clear to i32
  %and = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else15, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rate, align 1
  %3 = and i8 %2, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %switch = icmp eq i8 %3, 8
  br i1 %switch, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 4, i32 8
  br label %if.end61

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = lshr i8 %2, 1
  %shl = and i8 %4, 8
  %add = add i8 %shl, %2
  %5 = and i8 %add, 15
  %and13 = zext i8 %5 to i32
  %arrayidx14 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 3, i32 %and13
  br label %if.end61

if.else15:                                        ; preds = %entry
  %and20 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else29, label %if.then22

if.then22:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rate, align 1
  %8 = and i8 %7, 15
  %and27 = zext i8 %8 to i32
  %arrayidx28 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 3, i32 %and27
  br label %if.end61

if.else29:                                        ; preds = %if.else15
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31 = icmp eq i32 %12, 0
  br i1 %cmp31, label %if.then33, label %if.else52

if.then33:                                        ; preds = %if.else29
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %wiphy34 = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy34, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bands, align 4
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bitrates, align 4
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rate, align 1
  %idxprom = sext i8 %22 to i32
  %arrayidx38 = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx38, align 4
  %and40 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else46, label %if.then42

if.then42:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %rate_power35 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 46
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom, i32 2
  %25 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hw_value, align 2
  %27 = and i16 %26, 3
  %and44 = zext i16 %27 to i32
  %arrayidx45 = getelementptr [4 x i8], ptr %rate_power35, i32 0, i32 %and44
  br label %if.end61

if.else46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %hw_value47 = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %hw_value47 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value47, align 2
  %30 = and i16 %29, 7
  %and49 = zext i16 %30 to i32
  %arrayidx50 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 1, i32 %and49
  br label %if.end61

if.else52:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rate, align 1
  %33 = and i8 %32, 7
  %and57 = zext i8 %33 to i32
  %arrayidx58 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 1, i32 %and57
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.else46, %if.then42, %if.then22, %if.else, %if.then6
  %max_txpwr.3.in = phi ptr [ %arrayidx28, %if.then22 ], [ %arrayidx, %if.then6 ], [ %arrayidx14, %if.else ], [ %arrayidx58, %if.else52 ], [ %arrayidx45, %if.then42 ], [ %arrayidx50, %if.else46 ]
  %34 = ptrtoint ptr %max_txpwr.3.in to i32
  call void @__asan_load1_noabort(i32 %34)
  %max_txpwr.3 = load i8, ptr %max_txpwr.3.in, align 1
  ret i8 %max_txpwr.3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @mt76x02_tx_get_txpwr_adj(ptr nocapture noundef readonly %dev, i8 noundef signext %txpwr, i8 noundef signext %max_txpwr_adj) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %txpower_conf = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %txpower_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txpower_conf, align 64
  %conv1 = sext i8 %txpwr to i32
  %sext = shl i32 %1, 24
  %conv2 = ashr exact i32 %sext, 24
  %2 = tail call i32 @llvm.smin.i32(i32 %conv2, i32 %conv1)
  %target_power = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %target_power to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %target_power, align 4
  %conv765 = zext i8 %4 to i32
  %target_power_delta = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 22
  %5 = ptrtoint ptr %target_power_delta to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %target_power_delta, align 1
  %conv866 = zext i8 %6 to i32
  %7 = add nuw nsw i32 %conv866, %conv765
  %sub = sub nsw i32 %2, %7
  %sext67 = shl i32 %sub, 24
  %conv12 = ashr exact i32 %sext67, 24
  %conv13 = sext i8 %max_txpwr_adj to i32
  %8 = tail call i32 @llvm.smin.i32(i32 %conv12, i32 %conv13)
  %enable_tpc = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %enable_tpc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_tpc, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp24 = icmp sgt i32 %8, -1
  br i1 %cmp24, label %if.then26, label %if.else39

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 7)
  %conv38 = trunc i32 %11 to i8
  br label %return

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %8)
  %cmp41 = icmp ult i32 %8, -16
  %12 = trunc i32 %8 to i8
  %div.lhs.trunc = add nsw i8 %12, 32
  %div68 = sdiv i8 %div.lhs.trunc, 2
  %cond48 = select i1 %cmp41, i8 8, i8 %div68
  br label %return

return:                                           ; preds = %if.else39, %if.then26, %entry.return_crit_edge
  %retval.0 = phi i8 [ %conv38, %if.then26 ], [ %cond48, %if.else39 ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_tx_set_txpwr_auto(ptr noundef %dev, i8 noundef signext %txpwr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  %txpower_conf.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %txpower_conf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txpower_conf.i, align 64
  %conv1.i = sext i8 %txpwr to i32
  %sext.i = shl i32 %3, 24
  %conv2.i = ashr exact i32 %sext.i, 24
  %4 = tail call i32 @llvm.smin.i32(i32 %conv2.i, i32 %conv1.i) #7
  %target_power.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %target_power.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %target_power.i, align 4
  %conv765.i = zext i8 %6 to i32
  %target_power_delta.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 22
  %7 = ptrtoint ptr %target_power_delta.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %target_power_delta.i, align 1
  %conv866.i = zext i8 %8 to i32
  %9 = add nuw nsw i32 %conv866.i, %conv765.i
  %sub.i = sub nsw i32 %4, %9
  %sext67.i = shl i32 %sub.i, 24
  %conv12.i = ashr exact i32 %sext67.i, 24
  %conv13.i = sext i8 %1 to i32
  %10 = tail call i32 @llvm.smin.i32(i32 %conv12.i, i32 %conv13.i) #7
  %enable_tpc.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %enable_tpc.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_tpc.i, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.do.end12_crit_edge, label %if.else.i

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp24.i = icmp sgt i32 %10, -1
  br i1 %cmp24.i, label %if.then26.i, label %if.else39.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 7) #7
  %conv38.i = trunc i32 %13 to i8
  br label %do.end12

if.else39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %10)
  %cmp41.i = icmp ult i32 %10, -16
  %14 = trunc i32 %10 to i8
  %div.lhs.trunc.i = add nsw i8 %14, 32
  %div68.i = sdiv i8 %div.lhs.trunc.i, 2
  %cond48.i = select i1 %cmp41.i, i8 8, i8 %div68.i
  br label %do.end12

do.end12:                                         ; preds = %if.else39.i, %if.then26.i, %entry.do.end12_crit_edge
  %retval.0.i = phi i8 [ %conv38.i, %if.then26.i ], [ %cond48.i, %if.else39.i ], [ 0, %entry.do.end12_crit_edge ]
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw, align 4
  %19 = zext i8 %retval.0.i to i32
  %shl = shl nuw nsw i32 %19, 8
  %and14 = and i32 %shl, 3840
  %call15 = tail call i32 %18(ptr noundef %dev, i32 noundef 5704, i32 noundef 3840, i32 noundef %and14) #7
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw17 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw17, align 4
  %shl42 = shl nuw i32 %19, 24
  %and43 = and i32 %shl42, 251658240
  %call44 = tail call i32 %23(ptr noundef %dev, i32 noundef 5704, i32 noundef 251658240, i32 noundef %and43) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt76x02_tx_status_data(ptr noundef %mdev, ptr noundef %update) #0 align 64 {
entry:
  %stat = alloca %struct.mt76x02_tx_status, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %stat) #7
  %0 = call ptr @memset(ptr %stat, i32 255, i32 6)
  %call = call zeroext i1 @mt76x02_mac_load_tx_status(ptr noundef %mdev, ptr noundef nonnull %stat) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @mt76x02_send_tx_status(ptr noundef %mdev, ptr noundef nonnull %stat, ptr noundef %update) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %stat) #7
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76x02_mac_load_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_send_tx_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x02_tx_prepare_skb(ptr noundef %mdev, ptr noundef %txwi_ptr, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef %tx_info) #0 align 64 {
entry:
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
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %qid)
  %cmp = icmp ne i32 %qid, 4
  %tobool2.not = icmp eq ptr %wcid, null
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %idx = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 6
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %7)
  %cmp4 = icmp ult i16 %7, 128
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = trunc i16 %7 to i8
  tail call void @mt76x02_mac_wcid_set_drop(ptr noundef %mdev, i8 noundef zeroext %conv7, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 2
  %call8 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %9) #10
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len10, align 4
  %and11 = and i32 %call8, 2
  %sub = sub i32 %13, %and11
  tail call void @mt76x02_mac_write_txwi(ptr noundef %mdev, ptr noundef %txwi_ptr, ptr noundef %11, ptr noundef %wcid, ptr noundef %sta, i32 noundef %sub) #7
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %call14 = tail call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %wcid, ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.then17, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rate = getelementptr inbounds %struct.mt76x02_txwi, ptr %txwi_ptr, i32 0, i32 1
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rate, align 2
  %18 = lshr i16 %17, 8
  %19 = and i16 %18, 63
  %20 = or i16 %19, 128
  %or = zext i16 %20 to i32
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %queue_mapping.i, align 8
  %conv35 = zext i16 %24 to i32
  %shl = shl nuw nsw i32 %conv35, 5
  %and36 = and i32 %shl, 96
  %or37 = or i32 %and36, %or
  br label %if.end38

if.end38:                                         ; preds = %if.then17, %if.end.if.end38_crit_edge
  %pid.0 = phi i32 [ %or37, %if.then17 ], [ %call14, %if.end.if.end38_crit_edge ]
  %conv39 = trunc i32 %pid.0 to i8
  %pktid = getelementptr inbounds %struct.mt76x02_txwi, ptr %txwi_ptr, i32 0, i32 10
  %25 = ptrtoint ptr %pktid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv39, ptr %pktid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv39)
  %26 = icmp sgt i8 %conv39, 1
  %27 = shl i32 %5, 20
  %28 = and i32 %27, 67108864
  %.op.op = xor i32 %28, 67633152
  %or70 = select i1 %26, i32 %.op.op, i32 67633152
  %info = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 3
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or70, ptr %info, align 4
  br i1 %tobool2.not, label %if.end38.if.then78_crit_edge, label %lor.lhs.false

if.end38.if.then78_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

lor.lhs.false:                                    ; preds = %if.end38
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 7
  %30 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hw_key_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp73 = icmp eq i8 %31, -1
  br i1 %cmp73, label %lor.lhs.false.if.then78_crit_edge, label %lor.lhs.false75

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

lor.lhs.false75:                                  ; preds = %lor.lhs.false
  %sw_iv = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 14
  %32 = ptrtoint ptr %sw_iv to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sw_iv, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool76.not = icmp eq i8 %33, 0
  br i1 %tobool76.not, label %lor.lhs.false75.if.end81_crit_edge, label %lor.lhs.false75.if.then78_crit_edge

lor.lhs.false75.if.then78_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

lor.lhs.false75.if.end81_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then78:                                        ; preds = %lor.lhs.false75.if.then78_crit_edge, %lor.lhs.false.if.then78_crit_edge, %if.end38.if.then78_crit_edge
  %or80 = or i32 %or70, 16777216
  %34 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or80, ptr %info, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %lor.lhs.false75.if.end81_crit_edge
  %tobool82.not = icmp eq ptr %sta, null
  br i1 %tobool82.not, label %if.end81.if.end86_crit_edge, label %if.then83

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %pktlen = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb, align 4
  %len85 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len85, align 4
  %39 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %pktlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  %sub.i = mul i32 %40, 7
  %shl19.i = shl i32 %38, 8
  %add.i = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i, 3
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %41 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %cond.i, ptr %pktlen, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end81.if.end86_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_wcid_set_drop(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_mt76x02_tx, !1, !"__ksymtab_mt76x02_tx", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c", i32 33, i32 1}
!2 = !{ptr @__ksymtab_mt76x02_queue_rx_skb, !3, !"__ksymtab_mt76x02_queue_rx_skb", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c", i32 54, i32 1}
!4 = !{ptr @__ksymtab_mt76x02_tx_set_txpwr_auto, !5, !"__ksymtab_mt76x02_tx_set_txpwr_auto", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c", i32 121, i32 1}
!6 = !{ptr @__ksymtab_mt76x02_tx_status_data, !7, !"__ksymtab_mt76x02_tx_status_data", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c", i32 135, i32 1}
!8 = !{ptr @__ksymtab_mt76x02_tx_prepare_skb, !9, !"__ksymtab_mt76x02_tx_prepare_skb", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c", i32 183, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
