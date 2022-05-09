; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/main.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7615_mac_sta_add\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7615_mac_sta_add\09\09\09\09"
module asm "\09.long\09__crc_mt7615_mac_sta_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7615_mac_sta_add:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7615_mac_sta_add\22\09\09\09\09\09"
module asm "__kstrtabns_mt7615_mac_sta_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7615_mac_sta_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7615_mac_sta_remove\09\09\09\09"
module asm "\09.long\09__crc_mt7615_mac_sta_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7615_mac_sta_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7615_mac_sta_remove\22\09\09\09\09\09"
module asm "__kstrtabns_mt7615_mac_sta_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7615_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7615_ops\09\09\09\09"
module asm "\09.long\09__crc_mt7615_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7615_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7615_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mt7615_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.138 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.138 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.mt7615_dev = type { %union.anon.139, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon.139 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.144, ptr, %union.anon.145, [20 x i8] }
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
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.140, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.140 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }
%struct.mt7615_mcu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
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
%struct.mt7615_mcu_rxd = type { [4 x i32], i16, i16, i8, i8, i16, i8, [2 x i8], i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.137] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.137 = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7615_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [8 x i32], [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7615_rate_set], i32, i8, i8, i8 }
%struct.mt7615_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.mt76_txq = type { ptr, i16, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_mt7615_mac_sta_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7615_mac_sta_add = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7615_mac_sta_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7615_mac_sta_add to i32), ptr @__kstrtab_mt7615_mac_sta_add, ptr @__kstrtabns_mt7615_mac_sta_add }, section "___ksymtab_gpl+mt7615_mac_sta_add", align 4
@__kstrtab_mt7615_mac_sta_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7615_mac_sta_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7615_mac_sta_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7615_mac_sta_remove to i32), ptr @__kstrtab_mt7615_mac_sta_remove, ptr @__kstrtabns_mt7615_mac_sta_remove }, section "___ksymtab_gpl+mt7615_mac_sta_remove", align 4
@mt7615_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt7615_tx, ptr @mt7615_start, ptr @mt7615_stop, ptr @mt7615_suspend, ptr @mt7615_resume, ptr @mt7615_set_wakeup, ptr @mt7615_add_interface, ptr null, ptr @mt7615_remove_interface, ptr @mt7615_config, ptr @mt7615_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt7615_configure_filter, ptr null, ptr null, ptr @mt7615_set_key, ptr null, ptr @mt7615_set_rekey_data, ptr null, ptr @mt7615_hw_scan, ptr @mt7615_cancel_hw_scan, ptr @mt7615_start_sched_scan, ptr @mt7615_stop_sched_scan, ptr @mt76_sw_scan, ptr @mt76_sw_scan_complete, ptr @mt7615_get_stats, ptr null, ptr null, ptr @mt7615_set_rts_threshold, ptr @mt7615_sta_add, ptr @mt7615_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sta_pre_rcu_remove, ptr null, ptr @mt7615_sta_rate_tbl_update, ptr null, ptr @mt7615_conf_tx, ptr @mt7615_get_tsf, ptr @mt7615_set_tsf, ptr @mt7615_offset_tsf, ptr null, ptr null, ptr @mt7615_ampdu_action, ptr @mt76_get_survey, ptr null, ptr @mt7615_set_coverage_class, ptr @mt76_testmode_cmd, ptr @mt76_testmode_dump, ptr null, ptr null, ptr @mt7615_set_antenna, ptr @mt76_get_antenna, ptr @mt7615_remain_on_channel, ptr @mt7615_cancel_remain_on_channel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_release_buffered_frames, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7615_channel_switch_beacon, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_txpower, ptr null, ptr null, ptr null, ptr @mt76_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7615_sta_set_decap_offload, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@__kstrtab_mt7615_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7615_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7615_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7615_ops to i32), ptr @__kstrtab_mt7615_ops, ptr @__kstrtabns_mt7615_ops }, section "___ksymtab_gpl+mt7615_ops", align 4
@__UNIQUE_ID_file411 = internal constant [75 x i8] c"mt7615_common.file=drivers/net/wireless/mediatek/mt76/mt7615/mt7615-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license412 = internal constant [35 x i8] c"mt7615_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/main.c\00", [47 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mt7615_sta_rate_tbl_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mt7615_lmac_mapping.lmac_queue_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@mt7615_lmac_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 32, i64 1027074, i64 1027076, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1339905]
@__sancov_gen_cov_switch_values.7 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"mt7615_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1280, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 172, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 378, i32 2 }
@___asan_gen_.21 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/main.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 683, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"lmac_queue_map\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 457, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 464, i32 6 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file411, ptr @__UNIQUE_ID_license412, ptr @__ksymtab_mt7615_mac_sta_add, ptr @__ksymtab_mt7615_mac_sta_remove, ptr @__ksymtab_mt7615_ops, ptr @mt7615_ops, ptr @.str, ptr @xa_init_flags.__key, ptr @.str.1, ptr @.str.2, ptr @mt7615_lmac_mapping.lmac_queue_map, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_lmac_mapping.lmac_queue_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_set_channel(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %phy2 = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 3
  %cmp.not = icmp eq ptr %phy2, %phy
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %1, ptr noundef %pm) #4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #4
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
  br i1 %tobool.not.i, label %if.end.i, label %entry.mt7615_init_dfs_state.exit_crit_edge

entry.mt7615_init_dfs_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_init_dfs_state.exit

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
  br i1 %tobool6.not.i, label %if.end.i.mt7615_init_dfs_state.exit_crit_edge, label %if.end8.i

if.end.i.mt7615_init_dfs_state.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_init_dfs_state.exit

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
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp15.i, label %land.lhs.true.i.mt7615_init_dfs_state.exit_crit_edge, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

land.lhs.true.i.mt7615_init_dfs_state.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_init_dfs_state.exit

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %dfs_state.i = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 17
  %26 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dfs_state.i, align 8
  br label %mt7615_init_dfs_state.exit

mt7615_init_dfs_state.exit:                       ; preds = %if.end17.i, %land.lhs.true.i.mt7615_init_dfs_state.exit_crit_edge, %if.end.i.mt7615_init_dfs_state.exit_crit_edge, %entry.mt7615_init_dfs_state.exit_crit_edge
  tail call void @mt76_set_channel(ptr noundef %7) #4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 39
  %27 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rev.i.i, align 4
  %29 = and i32 %28, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %29)
  %30 = icmp eq i32 %29, 1980825600
  br i1 %30, label %land.lhs.true, label %mt7615_init_dfs_state.exit.if.end13_crit_edge

mt7615_init_dfs_state.exit.if.end13_crit_edge:    ; preds = %mt7615_init_dfs_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %mt7615_init_dfs_state.exit
  %flash_eeprom = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %flash_eeprom to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flash_eeprom, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %land.lhs.true.if.end13_crit_edge, label %if.then

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call i32 @mt7615_mcu_apply_rx_dcoc(ptr noundef %phy) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %if.then
  %call9 = tail call i32 @mt7615_mcu_apply_tx_dpd(ptr noundef %phy) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %mt7615_init_dfs_state.exit.if.end13_crit_edge
  %call42 = tail call i32 @mt7615_mcu_set_chan_info(ptr noundef %phy, i32 noundef 2285) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end45:                                         ; preds = %if.end13
  tail call void @mt7615_mac_set_timing(ptr noundef %phy) #4
  %call46 = tail call i32 @mt7615_dfs_init_radar_detector(ptr noundef %phy) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end49:                                         ; preds = %if.end45
  tail call void @mt7615_mac_cca_stats_reset(ptr noundef %phy) #4
  %call50 = tail call i32 @mt7615_mcu_set_sku_en(ptr noundef %phy, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7615_mac_reset_counters(ptr noundef %1) #4
  %noise = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 6
  %33 = ptrtoint ptr %noise to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %noise, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %39, i32 12
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %cond = select i1 %cmp.not, i32 48, i32 304
  %add = add i32 %41, %cond
  %call55 = tail call i32 %37(ptr noundef %1, i32 noundef %add) #4
  %conv = trunc i32 %call55 to i8
  %chfreq = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 15
  %42 = ptrtoint ptr %chfreq to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv, ptr %chfreq, align 1
  br label %out

out:                                              ; preds = %if.end53, %if.end49.out_crit_edge, %if.end45.out_crit_edge, %if.end13.out_crit_edge, %if.end.out_crit_edge, %if.then.out_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then.out_crit_edge ], [ %call9, %if.end.out_crit_edge ], [ %call42, %if.end13.out_crit_edge ], [ %call46, %if.end45.out_crit_edge ], [ %call50, %if.end49.out_crit_edge ], [ 0, %if.end53 ]
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 8
  %state57 = getelementptr inbounds %struct.mt76_phy, ptr %44, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state57) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %1, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %45 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i103 = icmp eq ptr %46, null
  br i1 %tobool.not.i103, label %out.mt76_worker_schedule.exit_crit_edge, label %if.end.i105

out.mt76_worker_schedule.exit_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_schedule.exit

if.end.i105:                                      ; preds = %out
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i104 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool1.not.i = icmp eq i32 %call.i104, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i106, label %if.end.i105.mt76_worker_schedule.exit_crit_edge

if.end.i105.mt76_worker_schedule.exit_crit_edge:  ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_schedule.exit

land.lhs.true.i106:                               ; preds = %if.end.i105
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i, align 4
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i = icmp eq i32 %49, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i106.mt76_worker_schedule.exit_crit_edge

land.lhs.true.i106.mt76_worker_schedule.exit_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_schedule.exit

if.then5.i:                                       ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_worker, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %51) #4
  br label %mt76_worker_schedule.exit

mt76_worker_schedule.exit:                        ; preds = %if.then5.i, %land.lhs.true.i106.mt76_worker_schedule.exit_crit_edge, %if.end.i105.mt76_worker_schedule.exit_crit_edge, %out.mt76_worker_schedule.exit_crit_edge
  %52 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy, align 8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i108.not = icmp eq i32 %55, 0
  br i1 %cmp.i108.not, label %if.then61, label %mt76_worker_schedule.exit.if.end66_crit_edge

mt76_worker_schedule.exit.if.end66_crit_edge:     ; preds = %mt76_worker_schedule.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then61:                                        ; preds = %mt76_worker_schedule.exit
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pm, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i109 = icmp eq i8 %57, 0
  %cond.i = select i1 %tobool.not.i109, i32 10, i32 33
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 8
  %mac_work65 = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %59, ptr noundef %mac_work65, i32 noundef %cond.i) #4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %mt76_worker_schedule.exit.if.end66_crit_edge
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_apply_rx_dcoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_apply_tx_dpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_chan_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_set_timing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_dfs_init_radar_detector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_cca_stats_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_sku_en(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_reset_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_mac_sta_add(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wcid_mask = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 33
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1986199552
  br i1 %cmp.i.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %fw_ver.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 21
  %2 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i3.i = icmp ugt i8 %3, 2
  br i1 %cmp.i3.i, label %land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_wtbl_size.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %mt7615_wtbl_size.exit

mt7615_wtbl_size.exit:                            ; preds = %if.else.i, %land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge
  %retval.0.i = phi i32 [ 110, %if.else.i ], [ 14, %land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge ]
  %call6 = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask, i32 noundef %retval.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %mt7615_wtbl_size.exit.cleanup_crit_edge, label %if.end

mt7615_wtbl_size.exit.cleanup_crit_edge:          ; preds = %mt7615_wtbl_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %mt7615_wtbl_size.exit
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %poll_list, ptr %prev.i, align 4
  %vif8 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %vif8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %drv_priv1, ptr %vif8, align 4
  %sta9 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %7 = ptrtoint ptr %sta9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %sta9, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %sta9, align 2
  %conv10 = trunc i32 %call6 to i16
  %idx12 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %8 = ptrtoint ptr %idx12 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv10, ptr %idx12, align 2
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv1, i32 0, i32 2
  %9 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %band_idx, align 2
  %bf.value = shl i8 %10, 6
  %bf.clear15 = and i8 %bf.set, -65
  %bf.set16 = or i8 %bf.value, %bf.clear15
  store i8 %bf.set16, ptr %sta9, align 2
  %11 = load i8, ptr %band_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 1
  %12 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %cond.true.cond.end_crit_edge, label %if.end.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %phy21 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.i, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %phy21, %cond.false ], [ %15, %if.end.i ], [ null, %cond.true.cond.end_crit_edge ]
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cond, align 8
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 27
  %call23 = tail call i32 @mt76_connac_pm_wake(ptr noundef %17, ptr noundef %pm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %cond.end
  %18 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp27 = icmp eq i32 %19, 2
  br i1 %cmp27, label %land.lhs.true, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end26
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %20 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tdls, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then30:                                        ; preds = %land.lhs.true
  %dev31 = getelementptr inbounds %struct.mt7615_phy, ptr %cond, i32 0, i32 1
  %22 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev31, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcu_ops, align 16
  %add_bss_info = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %add_bss_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add_bss_info, align 4
  %call32 = tail call i32 %27(ptr noundef %cond, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end36_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %call37 = tail call zeroext i1 @mt7615_mac_wtbl_update(ptr noundef %mdev, i32 noundef %call6, i32 noundef 4096) #4
  %phy38 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3
  %dev39 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev39, align 4
  %mcu_ops40 = getelementptr inbounds %struct.mt7615_dev, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %mcu_ops40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcu_ops40, align 16
  %sta_add = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %sta_add to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sta_add, align 4
  %call42 = tail call i32 %33(ptr noundef %phy38, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cond, align 8
  tail call void @mt76_connac_power_save_sched(ptr noundef %35, ptr noundef %pm) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end36.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %mt7615_wtbl_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -28, %mt7615_wtbl_size.exit.cleanup_crit_edge ], [ %call23, %cond.end.cleanup_crit_edge ], [ %call32, %if.then30.cleanup_crit_edge ], [ %call42, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7615_mac_wtbl_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_mac_sta_remove(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 27
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef %drv_priv) #4
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv1, i32 0, i32 2
  %0 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %band_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 1
  %2 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.true.cond.end_crit_edge, label %if.end.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %phy3 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.i, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %phy3, %cond.false ], [ %5, %if.end.i ], [ null, %cond.true.cond.end_crit_edge ]
  %6 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cond, align 8
  %call6 = tail call i32 @mt76_connac_pm_wake(ptr noundef %7, ptr noundef %pm) #4
  %phy7 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3
  %dev8 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcu_ops, align 16
  %sta_add = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sta_add to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sta_add, align 4
  %call10 = tail call i32 %13(ptr noundef %phy7, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext false) #4
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx, align 2
  %conv12 = zext i16 %15 to i32
  %call13 = tail call zeroext i1 @mt7615_mac_wtbl_update(ptr noundef %mdev, i32 noundef %conv12, i32 noundef 4096) #4
  %16 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %land.lhs.true, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %18 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tdls, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %dev16 = getelementptr inbounds %struct.mt7615_phy, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev16, align 4
  %mcu_ops17 = getelementptr inbounds %struct.mt7615_dev, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %mcu_ops17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mcu_ops17, align 16
  %add_bss_info = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %add_bss_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add_bss_info, align 4
  %call18 = tail call i32 %25(ptr noundef %cond, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %sta_poll_lock = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #4
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %27, %poll_list
  br i1 %cmp.i.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del_init.exit_crit_edge

if.then21.list_del_init.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then21.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %list_del_init.exit, %if.end.if.end23_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #4
  %36 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond, align 8
  tail call void @mt76_connac_power_save_sched(ptr noundef %37, ptr noundef %pm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_free_pending_tx_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_tx_worker(ptr noundef %w) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -8136
  %pm = getelementptr i8, ptr %w, i32 3628
  %wake.i = getelementptr i8, ptr %w, i32 3804
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  %state.i = getelementptr i8, ptr %w, i32 -8124
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %wq = getelementptr i8, ptr %w, i32 2648
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %w, i32 3708
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wake_work) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %w, i32 3848
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  tail call void @mt76_tx_worker_run(ptr noundef %add.ptr) #4
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %w, i32 4044
  %8 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_activity.i, align 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.mt76_connac_pm_unref.exit_crit_edge

if.end.mt76_connac_pm_unref.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.end
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i13 = icmp eq i32 %13, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #4
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_worker_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_roc_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -248
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr i8, ptr %work, i32 -244
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void @ieee80211_iterate_interfaces(ptr noundef %7, i32 noundef 3, ptr noundef nonnull @mt7615_roc_iter, ptr noundef %add.ptr) #4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %pm5 = getelementptr inbounds %struct.mt7615_dev, ptr %9, i32 0, i32 27
  tail call void @mt76_connac_power_save_sched(ptr noundef %9, ptr noundef %pm5) #4
  %mutex.i15 = getelementptr inbounds %struct.mt76_dev, ptr %9, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i15) #4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %13) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_roc_iter(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7615_mcu_set_roc(ptr noundef %priv, ptr noundef %vif, ptr noundef null, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remain_on_channel_expired(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_roc_timer(ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -292
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %roc_work = getelementptr i8, ptr %timer, i32 -44
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %roc_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_scan_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -148
  %dev = getelementptr i8, ptr %work, i32 -144
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %lock25 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock25) #4
  %scan_event_list = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %scan_event_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_event_list, align 4
  %cmp.i.i26 = icmp eq ptr %3, %scan_event_list
  %tobool.not.i2427 = icmp eq ptr %3, null
  %tobool.not.i28 = or i1 %cmp.i.i26, %tobool.not.i2427
  br i1 %tobool.not.i28, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %qlen.i.i = getelementptr i8, ptr %work, i32 -48
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %4 = phi ptr [ %3, %if.end.lr.ph ], [ %31, %cleanup.if.end_crit_edge ]
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %4, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %lock2 = getelementptr inbounds %struct.mt76_dev, ptr %14, i32 0, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock2) #4
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %eid = getelementptr inbounds %struct.mt7615_mcu_rxd, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %18)
  %cmp = icmp eq i8 %18, 35
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  call void @ieee80211_sched_scan_results(ptr noundef %22) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 3
  %call6 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.then8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #4
  %23 = call ptr @memset(ptr %info, i32 0, i32 16)
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  call void @ieee80211_scan_completed(ptr noundef %27, ptr noundef nonnull %info) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.else.cleanup_crit_edge, %if.then4
  call void @consume_skb(ptr noundef nonnull %4) #4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %29, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock) #4
  %30 = ptrtoint ptr %scan_event_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scan_event_list, align 4
  %cmp.i.i = icmp eq ptr %31, %scan_event_list
  %tobool.not.i24 = icmp eq ptr %31, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i24
  br i1 %tobool.not.i, label %cleanup.while.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %lock221 = getelementptr inbounds %struct.mt76_dev, ptr %33, i32 0, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock221) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_results(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_tx(ptr noundef %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %tobool5.not = icmp eq ptr %5, null
  %sta11 = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 1, i32 1
  %spec.select50 = select i1 %tobool.not, ptr %sta11, ptr %drv_priv
  %wcid.1 = select i1 %tobool5.not, ptr %spec.select, ptr %spec.select50
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %wake.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %entry
  %count.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 7, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %13 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control, align 4
  tail call void @mt76_tx(ptr noundef %1, ptr noundef %14, ptr noundef %wcid.1, ptr noundef %skb) #4
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 10
  %16 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_activity.i, align 4
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then15.mt76_connac_pm_unref.exit_crit_edge

if.then15.mt76_connac_pm_unref.exit_crit_edge:    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.then15
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i54 = icmp eq i32 %21, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %1, ptr noundef %pm) #4
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.then15.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  br label %cleanup

if.end18:                                         ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp = icmp ugt i16 %23, 3
  br i1 %cmp, label %if.then21, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %queue_mapping.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  tail call void @mt76_connac_pm_queue_skb(ptr noundef %hw, ptr noundef %pm, ptr noundef %wcid.1, ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %mt76_connac_pm_unref.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_start(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call2 = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %3) #4
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end.i:                                         ; preds = %if.end
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then4_crit_edge, label %mt7615_ext_phy.exit.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

mt7615_ext_phy.exit.i:                            ; preds = %if.end.i
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i.i, align 8
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %mt7615_ext_phy.exit.i.if.then4_crit_edge, label %mt7615_dev_running.exit

mt7615_ext_phy.exit.i.if.then4_crit_edge:         ; preds = %mt7615_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

mt7615_dev_running.exit:                          ; preds = %mt7615_ext_phy.exit.i
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
  br i1 %tobool5.i.not, label %mt7615_dev_running.exit.if.then4_crit_edge, label %mt7615_dev_running.exit.if.end13_crit_edge

mt7615_dev_running.exit.if.end13_crit_edge:       ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

mt7615_dev_running.exit.if.then4_crit_edge:       ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %mt7615_dev_running.exit.if.then4_crit_edge, %mt7615_ext_phy.exit.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mcu_ops, align 16
  %set_pm_state = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %set_pm_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_pm_state, align 4
  %call5 = tail call i32 %21(ptr noundef %3, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.out_crit_edge

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.then4
  %call9 = tail call i32 @mt76_connac_mcu_set_mac_enable(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7615_mac_enable_nf(ptr noundef %3, i1 noundef zeroext false) #4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %mt7615_dev_running.exit.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %retval.0.i119 = phi i1 [ false, %if.end12 ], [ true, %mt7615_dev_running.exit.if.end13_crit_edge ], [ true, %if.end.if.end13_crit_edge ]
  %phy14 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp.not = icmp eq ptr %5, %phy14
  br i1 %cmp.not, label %if.end13.if.end26_crit_edge, label %if.then15

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then15:                                        ; preds = %if.end13
  %mcu_ops16 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %mcu_ops16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mcu_ops16, align 16
  %set_pm_state17 = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %set_pm_state17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_pm_state17, align 4
  %call18 = tail call i32 %25(ptr noundef %3, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end21:                                         ; preds = %if.then15
  %call22 = tail call i32 @mt76_connac_mcu_set_mac_enable(ptr noundef %3, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7615_mac_enable_nf(ptr noundef %3, i1 noundef zeroext true) #4
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end13.if.end26_crit_edge
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %26 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.i = icmp ugt i8 %27, 2
  br i1 %cmp.i, label %if.then28, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then28:                                        ; preds = %if.end26
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 8
  %call29 = tail call i32 @mt76_connac_mcu_set_channel_domain(ptr noundef %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end32:                                         ; preds = %if.then28
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 8
  %call34 = tail call i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.if.end38_crit_edge, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end38:                                         ; preds = %if.end32.if.end38_crit_edge, %if.end26.if.end38_crit_edge
  %call67 = tail call i32 @mt7615_mcu_set_chan_info(ptr noundef %5, i32 noundef 20205) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end70:                                         ; preds = %if.end38
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %33, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #4
  %34 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pm, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i115 = icmp eq i8 %35, 0
  %cond.i = select i1 %tobool.not.i115, i32 10, i32 33
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %37, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %mac_work, i32 noundef %cond.i) #4
  br i1 %retval.0.i119, label %if.end70.out_crit_edge, label %if.then75

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7615_mac_reset_counters(ptr noundef %3) #4
  br label %out

out:                                              ; preds = %if.then75, %if.end70.out_crit_edge, %if.end38.out_crit_edge, %if.end32.out_crit_edge, %if.then28.out_crit_edge, %if.end21.out_crit_edge, %if.then15.out_crit_edge, %if.end8.out_crit_edge, %if.then4.out_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then15.out_crit_edge ], [ %call22, %if.end21.out_crit_edge ], [ %call29, %if.then28.out_crit_edge ], [ %call34, %if.end32.out_crit_edge ], [ %call67, %if.end38.out_crit_edge ], [ 0, %if.end70.out_crit_edge ], [ 0, %if.then75 ], [ %call5, %if.then4.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #4
  %roc_timer = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 24
  %call3 = tail call i32 @del_timer_sync(ptr noundef %roc_timer) #4
  %roc_work = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 23
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %roc_work) #4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %ps_work = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 9
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #4
  %wake_work = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 5
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work) #4
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef null) #4
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %call.i46 = tail call i32 @mt76_testmode_set_state(ptr noundef %9, i32 noundef 0) #4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #4
  %scan_work = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 22
  %call12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #4
  %phy13 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp.not = icmp eq ptr %5, %phy13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcu_ops, align 16
  %set_pm_state = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %set_pm_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_pm_state, align 4
  %call14 = tail call i32 %15(ptr noundef %3, i32 noundef 1, i32 noundef 1) #4
  %call15 = tail call i32 @mt76_connac_mcu_set_mac_enable(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end.i:                                         ; preds = %if.end
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then17_crit_edge, label %mt7615_ext_phy.exit.i

if.end.i.if.then17_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

mt7615_ext_phy.exit.i:                            ; preds = %if.end.i
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i.i, align 8
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %mt7615_ext_phy.exit.i.if.then17_crit_edge, label %mt7615_dev_running.exit

mt7615_ext_phy.exit.i.if.then17_crit_edge:        ; preds = %mt7615_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

mt7615_dev_running.exit:                          ; preds = %mt7615_ext_phy.exit.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %state3.i = getelementptr inbounds %struct.mt76_phy, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state3.i, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool5.i.not = icmp eq i32 %27, 0
  br i1 %tobool5.i.not, label %mt7615_dev_running.exit.if.then17_crit_edge, label %mt7615_dev_running.exit.if.end22_crit_edge

mt7615_dev_running.exit.if.end22_crit_edge:       ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

mt7615_dev_running.exit.if.then17_crit_edge:      ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.then17:                                        ; preds = %mt7615_dev_running.exit.if.then17_crit_edge, %mt7615_ext_phy.exit.i.if.then17_crit_edge, %if.end.i.if.then17_crit_edge
  %mcu_ops18 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %mcu_ops18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mcu_ops18, align 16
  %set_pm_state19 = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %set_pm_state19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_pm_state19, align 4
  %call20 = tail call i32 %31(ptr noundef %3, i32 noundef 0, i32 noundef 1) #4
  %call21 = tail call i32 @mt76_connac_mcu_set_mac_enable(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %mt7615_dev_running.exit.if.end22_crit_edge, %if.end.if.end22_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_suspend(ptr noundef %hw, ptr nocapture noundef readnone %wowlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %5, i32 0, i32 27
  %ps_work = getelementptr inbounds %struct.mt7615_dev, ptr %5, i32 0, i32 27, i32 9
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #4
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef null) #4
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #4
  %scan_work = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 22
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 18
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %state9 = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state9) #4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void @ieee80211_iterate_interfaces(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull @mt76_connac_mcu_set_suspend_iter, ptr noundef %13) #4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then_crit_edge, label %mt7615_ext_phy.exit.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

mt7615_ext_phy.exit.i:                            ; preds = %if.end.i
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.i, align 8
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %mt7615_ext_phy.exit.i.if.then_crit_edge, label %mt7615_dev_running.exit

mt7615_ext_phy.exit.i.if.then_crit_edge:          ; preds = %mt7615_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

mt7615_dev_running.exit:                          ; preds = %mt7615_ext_phy.exit.i
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %state3.i = getelementptr inbounds %struct.mt76_phy, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state3.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.i.not = icmp eq i32 %25, 0
  br i1 %tobool5.i.not, label %mt7615_dev_running.exit.if.then_crit_edge, label %mt7615_dev_running.exit.if.end_crit_edge

mt7615_dev_running.exit.if.end_crit_edge:         ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

mt7615_dev_running.exit.if.then_crit_edge:        ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %mt7615_dev_running.exit.if.then_crit_edge, %mt7615_ext_phy.exit.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %call12 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %5, i1 noundef zeroext true) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %mt7615_dev_running.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %mt7615_dev_running.exit.if.end_crit_edge ], [ %call12, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %5, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_resume(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %5, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %mt7615_dev_running.exit.thread38

mt7615_dev_running.exit.thread38:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %state40 = getelementptr inbounds %struct.mt76_phy, ptr %10, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state40) #4
  br label %if.end6

if.end.i:                                         ; preds = %entry
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.mt7615_dev_running.exit.thread_crit_edge, label %mt7615_ext_phy.exit.i

if.end.i.mt7615_dev_running.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_dev_running.exit.thread

mt7615_ext_phy.exit.i:                            ; preds = %if.end.i
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i.i, align 8
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %mt7615_ext_phy.exit.i.mt7615_dev_running.exit.thread_crit_edge, label %mt7615_dev_running.exit

mt7615_ext_phy.exit.i.mt7615_dev_running.exit.thread_crit_edge: ; preds = %mt7615_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_dev_running.exit.thread

mt7615_dev_running.exit.thread:                   ; preds = %mt7615_ext_phy.exit.i.mt7615_dev_running.exit.thread_crit_edge, %if.end.i.mt7615_dev_running.exit.thread_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %state37 = getelementptr inbounds %struct.mt76_phy, ptr %16, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state37) #4
  br label %if.then

mt7615_dev_running.exit:                          ; preds = %mt7615_ext_phy.exit.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %state3.i = getelementptr inbounds %struct.mt76_phy, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state3.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.i.not = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %23, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #4
  br i1 %tobool5.i.not, label %mt7615_dev_running.exit.if.then_crit_edge, label %mt7615_dev_running.exit.if.end6_crit_edge

mt7615_dev_running.exit.if.end6_crit_edge:        ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

mt7615_dev_running.exit.if.then_crit_edge:        ; preds = %mt7615_dev_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %mt7615_dev_running.exit.if.then_crit_edge, %mt7615_dev_running.exit.thread
  %call3 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %5, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup13_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then.cleanup13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup13

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %mt7615_dev_running.exit.if.end6_crit_edge, %mt7615_dev_running.exit.thread38
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %state8 = getelementptr inbounds %struct.mt76_phy, ptr %25, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %state8) #4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  tail call void @ieee80211_iterate_interfaces(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull @mt76_connac_mcu_set_suspend_iter, ptr noundef %27) #4
  %28 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pm, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i34 = icmp eq i8 %29, 0
  %cond.i = select i1 %tobool.not.i34, i32 10, i32 33
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %31, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %mac_work, i32 noundef %cond.i) #4
  br label %cleanup13

cleanup13:                                        ; preds = %if.end6, %if.then.cleanup13_crit_edge
  %retval.1 = phi i32 [ 0, %if.end6 ], [ %call3, %if.then.cleanup13_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %5, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %call2 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext %enabled) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %phy2 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp = icmp ne ptr %5, %phy2
  %frombool = zext i1 %cmp to i8
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i180 = tail call i32 @mt76_testmode_set_state(ptr noundef %7, i32 noundef 0) #4
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp3 = icmp eq i32 %9, 6
  br i1 %cmp3, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %monitor_vif = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 2
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
  %17 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %iszero = icmp eq i32 %16, -1
  %18 = trunc i32 %17 to i8
  %conv = select i1 %iszero, i8 -1, i8 %18
  %19 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %drv_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv)
  %cmp11 = icmp ugt i8 %conv, 15
  br i1 %cmp11, label %if.end.out_crit_edge, label %if.end14

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end14:                                         ; preds = %if.end
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  %omac_mask = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %omac_mask, align 64
  %24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %if.end14.sw.bb16.i_crit_edge
    i32 7, label %if.end14.sw.bb16.i_crit_edge187
    i32 6, label %if.end14.sw.bb16.i_crit_edge188
    i32 3, label %if.end14.sw.bb16.i_crit_edge189
  ]

if.end14.sw.bb16.i_crit_edge189:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16.i

if.end14.sw.bb16.i_crit_edge188:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16.i

if.end14.sw.bb16.i_crit_edge187:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16.i

if.end14.sw.bb16.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16.i

sw.bb.i:                                          ; preds = %if.end14
  %conv.i181 = trunc i64 %23 to i32
  %neg.i.i = xor i32 %conv.i181, -1
  %and4.i.i = and i32 %neg.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %iszero.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %iszero.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.cttz.i32(i32 %and4.i.i, i1 true) #4, !range !34
  br label %if.end20

if.end.i:                                         ; preds = %sw.bb.i
  %shr.i = lshr i64 %23, 32
  %conv1.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv1.i)
  %iszero.i59.i = icmp eq i32 %conv1.i, -1
  br i1 %iszero.i59.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i58.i = xor i32 %conv1.i, -1
  %26 = tail call i32 @llvm.cttz.i32(i32 %neg.i58.i, i1 true) #4, !range !34
  %sub5.i = or i32 %26, 32
  br label %if.end20

if.end6.i:                                        ; preds = %if.end.i
  %and.i62.i = and i32 %neg.i.i, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62.i)
  %iszero.i63.i = icmp eq i32 %and.i62.i, 0
  br i1 %iszero.i63.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = tail call i32 @llvm.cttz.i32(i32 %and.i62.i, i1 true) #4, !range !34
  br label %if.end20

if.end12.i:                                       ; preds = %if.end6.i
  %neg.i = and i64 %23, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %neg.i)
  %tobool13.not.not.i = icmp eq i64 %neg.i, 0
  br i1 %tobool13.not.not.i, label %if.end12.i.if.end20_crit_edge, label %if.end12.i.out_crit_edge

if.end12.i.out_crit_edge:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12.i.if.end20_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

sw.bb16.i:                                        ; preds = %if.end14.sw.bb16.i_crit_edge, %if.end14.sw.bb16.i_crit_edge187, %if.end14.sw.bb16.i_crit_edge188, %if.end14.sw.bb16.i_crit_edge189
  %neg17.i = and i64 %23, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %neg17.i)
  %tobool19.not.not.i = icmp eq i64 %neg17.i, 0
  br i1 %tobool19.not.not.i, label %sw.bb16.i.if.end20_crit_edge, label %if.end21.i

sw.bb16.i.if.end20_crit_edge:                     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end21.i:                                       ; preds = %sw.bb16.i
  %conv22.i = trunc i64 %23 to i32
  %neg.i65.i = and i32 %conv22.i, -131072
  %and.i66.i = xor i32 %neg.i65.i, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66.i)
  %iszero.i67.i = icmp eq i32 %and.i66.i, 0
  br i1 %iszero.i67.i, label %if.end21.i.out_crit_edge, label %if.then25.i

if.end21.i.out_crit_edge:                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = tail call i32 @llvm.cttz.i32(i32 %and.i66.i, i1 true) #4, !range !34
  br label %if.end20

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef null) #4
  br label %out

if.end20:                                         ; preds = %if.then25.i, %sw.bb16.i.if.end20_crit_edge, %if.end12.i.if.end20_crit_edge, %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i.ph = phi i32 [ 0, %sw.bb16.i.if.end20_crit_edge ], [ 0, %if.end12.i.if.end20_crit_edge ], [ %27, %if.then10.i ], [ %sub5.i, %if.then4.i ], [ %25, %if.then.i ], [ %28, %if.then25.i ]
  %conv21 = trunc i32 %retval.0.i.ph to i8
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %29 = ptrtoint ptr %omac_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv21, ptr %omac_idx, align 1
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %30 = ptrtoint ptr %band_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %band_idx, align 2
  %31 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp26 = icmp ne i32 %32, 3
  %conv28 = zext i1 %cmp26 to i8
  %wmm_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %conv35 = select i1 %cmp26, i8 3, i8 2
  %spec.select = select i1 %cmp, i8 %conv35, i8 %conv28
  %33 = ptrtoint ptr %wmm_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select, ptr %wmm_idx, align 1
  %34 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %drv_priv, align 4
  %conv39 = zext i8 %35 to i32
  %shl = shl nuw i32 1, %conv39
  %36 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vif_mask, align 4
  %or = or i32 %shl, %37
  store i32 %or, ptr %vif_mask, align 4
  %38 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %omac_idx, align 1
  %sh_prom = zext i8 %39 to i64
  %shl44 = shl nuw i64 1, %sh_prom
  %40 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %omac_mask, align 64
  %or46 = or i64 %shl44, %41
  store i64 %or46, ptr %omac_mask, align 64
  %42 = load i8, ptr %omac_idx, align 1
  %sh_prom50 = zext i8 %42 to i64
  %shl51 = shl nuw i64 1, %sh_prom50
  %omac_mask52 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 5
  %43 = ptrtoint ptr %omac_mask52 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %omac_mask52, align 8
  %or53 = or i64 %shl51, %44
  store i64 %or53, ptr %omac_mask52, align 8
  %call54 = tail call i32 @mt7615_mcu_set_dbdc(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end57:                                         ; preds = %if.end20
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 39
  %45 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %46, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1986199552
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end57.if.else.i_crit_edge

if.end57.if.else.i_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end57
  %fw_ver.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %47 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fw_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp.i3.i = icmp ugt i8 %48, 2
  br i1 %cmp.i3.i, label %land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_wtbl_size.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end57.if.else.i_crit_edge
  br label %mt7615_wtbl_size.exit

mt7615_wtbl_size.exit:                            ; preds = %if.else.i, %land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge
  %retval.0.i182 = phi i32 [ 128, %if.else.i ], [ 32, %land.lhs.true.i.mt7615_wtbl_size.exit_crit_edge ]
  %49 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %drv_priv, align 4
  %conv63 = zext i8 %50 to i32
  %51 = xor i32 %conv63, -1
  %sub64 = add nsw i32 %retval.0.i182, %51
  %sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %poll_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %52 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %poll_list, ptr %prev.i, align 4
  %conv65 = trunc i32 %sub64 to i16
  %idx67 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %54 = ptrtoint ptr %idx67 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv65, ptr %idx67, align 2
  %55 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %band_idx, align 2
  %ext_phy72 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 9
  %57 = ptrtoint ptr %ext_phy72 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %ext_phy72, align 2
  %bf.value = shl i8 %56, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ext_phy72, align 2
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 30
  %58 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %hw_key_idx, align 4
  %list.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %59 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 41
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list.i, ptr %prev.i.i, align 4
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  tail call void @__raw_spin_lock_init(ptr noundef %pktid.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #4
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 0, i32 1
  %61 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 0, i32 2
  %62 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 1
  %63 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 2
  %64 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %idr_next.i.i.i, align 4
  %call77 = tail call zeroext i1 @mt7615_mac_wtbl_update(ptr noundef %3, i32 noundef %sub64, i32 noundef 4096) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  %arrayidx106 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 37, i32 %sub64
  %65 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %sta, ptr %arrayidx106, align 4
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %66 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txq, align 8
  %tobool118.not = icmp eq ptr %67, null
  br i1 %tobool118.not, label %mt7615_wtbl_size.exit.if.end126_crit_edge, label %if.then119

mt7615_wtbl_size.exit.if.end126_crit_edge:        ; preds = %mt7615_wtbl_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.then119:                                       ; preds = %mt7615_wtbl_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  %drv_priv121 = getelementptr inbounds %struct.ieee80211_txq, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %drv_priv121 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %sta, ptr %drv_priv121, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %mt7615_wtbl_size.exit.if.end126_crit_edge
  %dev127 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 1
  %69 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev127, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mcu_ops, align 16
  %add_dev_info = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %add_dev_info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add_dev_info, align 4
  %call128 = tail call i32 %74(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext true) #4
  br label %out

out:                                              ; preds = %if.end126, %if.end20.out_crit_edge, %do.end.i, %if.end21.i.out_crit_edge, %if.end12.i.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call54, %if.end20.out_crit_edge ], [ %call128, %if.end126 ], [ -28, %if.end.out_crit_edge ], [ -28, %if.end12.i.out_crit_edge ], [ -28, %if.end21.i.out_crit_edge ], [ -28, %do.end.i ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %dev3 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcu_ops, align 16
  %add_bss_info = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %add_bss_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add_bss_info, align 4
  %call4 = tail call i32 %13(ptr noundef %5, ptr noundef %vif, ptr noundef null, i1 noundef zeroext false) #4
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  %mcu_ops6 = getelementptr inbounds %struct.mt7615_dev, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %mcu_ops6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcu_ops6, align 16
  %sta_add = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %sta_add to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sta_add, align 4
  %call7 = tail call i32 %19(ptr noundef %5, ptr noundef %vif, ptr noundef null, i1 noundef zeroext false) #4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %call.i112 = tail call i32 @mt76_testmode_set_state(ptr noundef %21, i32 noundef 0) #4
  %monitor_vif = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %monitor_vif, align 8
  %cmp = icmp eq ptr %23, %vif
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %monitor_vif, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef %sta) #4
  %25 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev3, align 4
  %mcu_ops13 = getelementptr inbounds %struct.mt7615_dev, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %mcu_ops13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcu_ops13, align 16
  %add_dev_info = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %add_dev_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add_dev_info, align 4
  %call14 = tail call i32 %30(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext false) #4
  %arrayidx = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 37, i32 %conv
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %drv_priv, align 4
  %conv54 = zext i8 %33 to i32
  %shl = shl nuw i32 1, %conv54
  %neg = xor i32 %shl, -1
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 35
  %34 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vif_mask, align 4
  %and = and i32 %35, %neg
  store i32 %and, ptr %vif_mask, align 4
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %36 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %omac_idx, align 1
  %sh_prom = zext i8 %37 to i64
  %shl57 = shl nuw i64 1, %sh_prom
  %neg58 = xor i64 %shl57, -1
  %omac_mask = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %omac_mask, align 64
  %and59 = and i64 %39, %neg58
  store i64 %and59, ptr %omac_mask, align 64
  %40 = load i8, ptr %omac_idx, align 1
  %sh_prom63 = zext i8 %40 to i64
  %shl64 = shl nuw i64 1, %sh_prom63
  %neg65 = xor i64 %shl64, -1
  %omac_mask66 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 5
  %41 = ptrtoint ptr %omac_mask66 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %omac_mask66, align 8
  %and67 = and i64 %42, %neg65
  store i64 %and67, ptr %omac_mask66, align 8
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  %sta_poll_lock = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #4
  %poll_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %43 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %44, %poll_list
  br i1 %cmp.i.not, label %if.end.if.end72_crit_edge, label %if.then70

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then70:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then70.list_del_init.exit_crit_edge

if.then70.list_del_init.exit_crit_edge:           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then70.list_del_init.exit_crit_edge
  %51 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %52 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end72

if.end72:                                         ; preds = %list_del_init.exit, %if.end.if.end72_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #4
  %53 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @mt76_tx_status_lock(ptr noundef %3, ptr noundef nonnull %list.i) #4
  %call.i114 = call ptr @mt76_tx_status_skb_get(ptr noundef %3, ptr noundef %sta, i32 noundef -1, ptr noundef nonnull %list.i) #4
  call void @mt76_tx_status_unlock(ptr noundef %3, ptr noundef nonnull %list.i) #4
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  call void @idr_destroy(ptr noundef %pktid.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_config(ptr noundef %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %phy2 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp.not = icmp eq ptr %5, %phy2
  %and = and i32 %changed, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
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
  %call.i48 = tail call i32 @mt76_testmode_set_state(ptr noundef %11, i32 noundef %spec.select) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #4
  %call7 = tail call i32 @mt7615_set_channel(ptr noundef %5)
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.if.end8_crit_edge ]
  %pm9 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i50 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i50, i32 noundef 0) #4
  %call.i51 = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm9) #4
  %and10 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end22_crit_edge, label %if.then12

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %call.i54 = tail call i32 @mt76_testmode_set_state(ptr noundef %15, i32 noundef 0) #4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw, align 8
  %rxfilter = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxfilter, align 8
  %and18 = and i32 %19, -262145
  %and14 = shl i32 %17, 18
  %20 = and i32 %and14, 262144
  %21 = or i32 %20, %and18
  %and18.sink = xor i32 %21, 262144
  store i32 %and18.sink, ptr %rxfilter, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %27, i32 12
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %cond = select i1 %cmp.not, i32 0, i32 256
  %add = add i32 %29, %cond
  %rxfilter21 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %rxfilter21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxfilter21, align 8
  tail call void %25(ptr noundef %3, i32 noundef %add, i32 noundef %31) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.end8.if.end22_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm9) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i50) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr noundef %info, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %6 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_short_slot, align 2, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool2.not, i32 20, i32 9
  %slottime3 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %slottime3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slottime3, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp.not = icmp eq i32 %cond, %conv
  br i1 %cmp.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = trunc i32 %cond to i8
  %10 = ptrtoint ptr %slottime3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %slottime3, align 4
  tail call void @mt7615_mac_set_timing(ptr noundef %5) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %and9 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end27_crit_edge, label %land.lhs.true

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end8
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %11 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_beacon, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end27_crit_edge, label %if.then13

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then13:                                        ; preds = %land.lhs.true
  %dev14 = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mcu_ops, align 16
  %add_bss_info = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %add_bss_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add_bss_info, align 4
  %call15 = tail call i32 %18(ptr noundef %5, ptr noundef %vif, ptr noundef null, i1 noundef zeroext true) #4
  %19 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev14, align 4
  %mcu_ops17 = getelementptr inbounds %struct.mt7615_dev, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %mcu_ops17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mcu_ops17, align 16
  %sta_add = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %sta_add to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sta_add, align 4
  %call18 = tail call i32 %24(ptr noundef %5, ptr noundef %vif, ptr noundef null, i1 noundef zeroext true) #4
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %25 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.i = icmp ugt i8 %26, 2
  br i1 %cmp.i, label %land.lhs.true21, label %if.then13.if.end27_crit_edge

if.then13.if.end27_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.lhs.true21:                                  ; preds = %if.then13
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %27 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p2p, align 2, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool22.not = icmp eq i8 %28, 0
  br i1 %tobool22.not, label %land.lhs.true21.if.end27_crit_edge, label %if.then24

land.lhs.true21.if.end27_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 @mt76_connac_mcu_set_p2p_oppps(ptr noundef %hw, ptr noundef %vif) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %land.lhs.true21.if.end27_crit_edge, %if.then13.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end8.if.end27_crit_edge
  %and28 = and i32 %changed, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %mcu_ops31 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %mcu_ops31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mcu_ops31, align 16
  %add_beacon_offload = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %add_beacon_offload to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add_beacon_offload, align 4
  %enable_beacon32 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %33 = ptrtoint ptr %enable_beacon32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enable_beacon32, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool33 = icmp ne i8 %34, 0
  %call34 = tail call i32 %32(ptr noundef %3, ptr noundef %hw, ptr noundef %vif, i1 noundef zeroext %tobool33) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %and36 = and i32 %changed, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call i32 @mt76_connac_mcu_set_vif_ps(ptr noundef %3, ptr noundef %vif) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  %and41 = and i32 %changed, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %land.lhs.true43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true43:                                  ; preds = %if.end40
  %fw_ver.i93 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %35 = ptrtoint ptr %fw_ver.i93 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fw_ver.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp.i94 = icmp ugt i8 %36, 2
  br i1 %cmp.i94, label %if.then46, label %land.lhs.true43.if.end48_crit_edge

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %call47 = tail call i32 @mt76_connac_mcu_update_arp_filter(ptr noundef %3, ptr noundef %drv_priv, ptr noundef %info) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %land.lhs.true43.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %and49 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %37 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %assoc, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool52 = icmp ne i8 %38, 0
  %call53 = tail call i32 @mt7615_mac_set_beacon_filter(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext %tobool52) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %phy2 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp.not = icmp eq ptr %5, %phy2
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %rxfilter = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxfilter, align 8
  %and = and i32 %7, -2299122
  store i32 %and, ptr %rxfilter, align 8
  %n_beacon_vif = getelementptr inbounds %struct.mt7615_phy, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %n_beacon_vif to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_beacon_vif, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i = icmp ugt i8 %11, 2
  br i1 %cmp.i, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and5 = and i32 %7, -2301170
  %12 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and5, ptr %rxfilter, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %lor.lhs.false.do.body_crit_edge
  %13 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_flags, align 4
  %and6 = and i32 %14, 64
  %15 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxfilter, align 8
  %and8 = and i32 %16, -525057
  store i32 %and8, ptr %rxfilter, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i119.not = icmp eq i32 %20, 0
  br i1 %cmp.i119.not, label %if.then10, label %do.body.do.body16_crit_edge

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %and6.lobit = lshr exact i32 %and6, 6
  %21 = xor i32 %and6.lobit, 1
  %mul = mul nuw nsw i32 %21, 525056
  %or14 = or i32 %mul, %and8
  %22 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or14, ptr %rxfilter, align 8
  br label %do.body16

do.body16:                                        ; preds = %if.then10, %do.body.do.body16_crit_edge
  %23 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_flags, align 4
  %and17 = and i32 %24, 4
  %or18 = or i32 %and17, %and6
  %25 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rxfilter, align 8
  %and20 = and i32 %26, -3
  store i32 %and20, ptr %rxfilter, align 8
  %27 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i121.not = icmp eq i32 %28, 0
  br i1 %cmp.i121.not, label %if.then23, label %do.body16.do.body34_crit_edge

do.body16.do.body34_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

if.then23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %and17.lobit = lshr exact i32 %and17, 1
  %29 = or i32 %and17.lobit, %and20
  %or30 = xor i32 %29, 2
  %30 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or30, ptr %rxfilter, align 8
  br label %do.body34

do.body34:                                        ; preds = %if.then23, %do.body16.do.body34_crit_edge
  %31 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_flags, align 4
  %and35 = and i32 %32, 32
  %or36 = or i32 %or18, %and35
  %33 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rxfilter, align 8
  %and38 = and i32 %34, -1105921
  store i32 %and38, ptr %rxfilter, align 8
  %35 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i123.not = icmp eq i32 %36, 0
  br i1 %cmp.i123.not, label %if.then41, label %do.body34.do.end51_crit_edge

do.body34.do.end51_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end51

if.then41:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %and35.lobit = lshr exact i32 %and35, 5
  %37 = xor i32 %and35.lobit, 1
  %mul46 = mul nuw nsw i32 %37, 1105920
  %or48 = or i32 %mul46, %and38
  %38 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or48, ptr %rxfilter, align 8
  br label %do.end51

do.end51:                                         ; preds = %if.then41, %do.body34.do.end51_crit_edge
  %39 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or36, ptr %total_flags, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %44 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %45, i32 12
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %cond = select i1 %cmp.not, i32 0, i32 256
  %add = add i32 %47, %cond
  %48 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxfilter, align 8
  tail call void %43(ptr noundef %3, i32 noundef %add, i32 noundef %49) #4
  %50 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_flags, align 4
  %and55 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %rmw67 = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %rmw67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmw67, align 4
  %56 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_map, align 8
  %arrayidx69 = getelementptr i32, ptr %57, i32 12
  %58 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx69, align 4
  %cond72 = select i1 %cmp.not, i32 4, i32 260
  %add73 = add i32 %59, %cond72
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call i32 %55(ptr noundef %3, i32 noundef %add73, i32 noundef 496, i32 noundef 0) #4
  br label %if.end75

if.else:                                          ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #6
  %call74 = tail call i32 %55(ptr noundef %3, i32 noundef %add73, i32 noundef 0, i32 noundef 496) #4
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then57
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %4 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %5 to i32
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 7
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 1, label %entry.land.lhs.true_crit_edge
    i32 7, label %entry.land.lhs.true_crit_edge86
  ]

entry.land.lhs.true_crit_edge86:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge86
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %10, label %land.lhs.true.if.end_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true15_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true15_crit_edge87
  ]

land.lhs.true.land.lhs.true15_crit_edge87:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true15

land.lhs.true.land.lhs.true15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true15

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true.land.lhs.true15_crit_edge, %land.lhs.true.land.lhs.true15_crit_edge87
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 8
  %14 = and i16 %13, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cipher18 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %cipher18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cipher18, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %16, label %if.end.cleanup_crit_edge [
    i32 1027078, label %sw.bb
    i32 1027074, label %if.end.sw.epilog_crit_edge
    i32 1027076, label %if.end.sw.epilog_crit_edge88
    i32 1027082, label %if.end.sw.epilog_crit_edge89
    i32 1027080, label %if.end.sw.epilog_crit_edge90
    i32 1027081, label %if.end.sw.epilog_crit_edge91
    i32 1339905, label %if.end.sw.epilog_crit_edge92
  ]

if.end.sw.epilog_crit_edge92:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge91:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge90:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge89:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge88:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %hw_key_idx2 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 8
  %flags19 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %18 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags19, align 8
  %20 = or i16 %19, 1024
  store i16 %20, ptr %flags19, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge88, %if.end.sw.epilog_crit_edge89, %if.end.sw.epilog_crit_edge90, %if.end.sw.epilog_crit_edge91, %if.end.sw.epilog_crit_edge92
  %wcid_keyidx.0 = phi ptr [ %hw_key_idx, %if.end.sw.epilog_crit_edge ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge88 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge89 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge90 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge91 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge92 ], [ %hw_key_idx2, %sw.bb ]
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp24 = icmp eq i32 %cmd, 0
  br i1 %cmp24, label %sw.epilog.if.end34_crit_edge, label %if.else

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %sw.epilog.if.end34_crit_edge
  %spec.select = phi ptr [ null, %if.else.if.end34_crit_edge ], [ %key, %sw.epilog.if.end34_crit_edge ]
  %storemerge = phi i8 [ -1, %if.else.if.end34_crit_edge ], [ %5, %sw.epilog.if.end34_crit_edge ]
  %23 = ptrtoint ptr %wcid_keyidx.0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge, ptr %wcid_keyidx.0, align 1
  tail call void @mt76_wcid_key_setup(ptr noundef %3, ptr noundef %cond, ptr noundef %spec.select) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %type41 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp42 = icmp eq i32 %27, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call45 = tail call i32 @mt7615_mac_wtbl_set_key(ptr noundef %3, ptr noundef %cond, ptr noundef %key, i32 noundef %cmd) #4
  br label %out

if.else46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call i32 @__mt7615_mac_wtbl_set_key(ptr noundef %3, ptr noundef %cond, ptr noundef %key, i32 noundef %cmd) #4
  br label %out

out:                                              ; preds = %if.else46, %if.then44, %if.else.out_crit_edge
  %err.0 = phi i32 [ %call45, %if.then44 ], [ %call47, %if.else46 ], [ 0, %if.else.out_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %land.lhs.true15.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_set_rekey_data(ptr noundef %hw, ptr noundef %vif, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %call1 = tail call i32 @mt76_connac_mcu_update_gtk_rekey(ptr noundef %hw, ptr noundef %vif, ptr noundef %data) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ugt i8 %5, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %call2 = tail call i32 @mt76_connac_mcu_hw_scan(ptr noundef %1, ptr noundef %vif, ptr noundef %req) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_cancel_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %call1 = tail call i32 @mt76_connac_mcu_cancel_hw_scan(ptr noundef %1, ptr noundef %vif) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_start_sched_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %req, ptr nocapture noundef readnone %ies) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ugt i8 %5, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %call2 = tail call i32 @mt76_connac_mcu_sched_scan_req(ptr noundef %1, ptr noundef %vif, ptr noundef %req) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @mt76_connac_mcu_sched_scan_enable(ptr noundef %1, ptr noundef %vif, i1 noundef zeroext true) #4
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call5, %if.end4 ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_stop_sched_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ugt i8 %5, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %call2 = tail call i32 @mt76_connac_mcu_sched_scan_enable(ptr noundef %1, ptr noundef %vif, i1 noundef zeroext false) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan_complete(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %mib1 = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 20
  %dev = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %5, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #4
  %rts_cnt = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %rts_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rts_cnt, align 4
  %dot11RTSSuccessCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 3
  %8 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dot11RTSSuccessCount, align 4
  %rts_retries_cnt = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 20, i32 3
  %9 = ptrtoint ptr %rts_retries_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rts_retries_cnt, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dot11RTSFailureCount, align 4
  %fcs_err_cnt = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %fcs_err_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fcs_err_cnt, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 2
  %14 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dot11FCSErrorCount, align 4
  %15 = ptrtoint ptr %mib1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mib1, align 4
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %stats, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %pm5 = getelementptr inbounds %struct.mt7615_dev, ptr %19, i32 0, i32 27
  tail call void @mt76_connac_power_save_sched(ptr noundef %19, ptr noundef %pm5) #4
  %mutex.i16 = getelementptr inbounds %struct.mt76_dev, ptr %19, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i16) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %phy2 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp = icmp ne ptr %5, %phy2
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %conv3 = zext i1 %cmp to i8
  %call4 = tail call i32 @mt76_connac_mcu_set_rts_thresh(ptr noundef %3, i32 noundef %val, i8 noundef zeroext %conv3) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_sta_add(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76_sta_state(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef 0, i32 noundef 1) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_sta_remove(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76_sta_state(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef 1, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_sta_rate_tbl_update(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %rates = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 16
  %6 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rates, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b76 = load i1, ptr @mt7615_sta_rate_tbl_update.__warned, align 1
  br i1 %.b76, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mt7615_sta_rate_tbl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.2) #4
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #4
  %rates11 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 3, i32 2
  %arrayidx = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 2
  %10 = ptrtoint ptr %rates11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rates11, align 1
  %count = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %count, align 1
  %count18 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 5
  %13 = ptrtoint ptr %count18 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %bf.load = load i16, ptr %count18, align 1
  %bf.value = zext i8 %12 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count18, align 1
  %flags = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %bf.value25 = and i16 %15, 2047
  %bf.set27 = or i16 %bf.value25, %bf.shl
  store i16 %bf.set27, ptr %count18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp32 = icmp slt i8 %9, 0
  %bf.lshr = and i16 %bf.value, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr)
  %tobool38.not = icmp eq i16 %bf.lshr, 0
  %or.cond = select i1 %cmp32, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %do.end9.for.end_crit_edge, label %for.inc

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %do.end9
  %arrayidx.1 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 2
  %arrayidx12.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx12.1, align 1
  %count.1 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %count.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %count.1, align 1
  %count18.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 5
  %21 = ptrtoint ptr %count18.1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load.1 = load i16, ptr %count18.1, align 1
  %bf.value.1 = zext i8 %20 to i16
  %bf.shl.1 = shl i16 %bf.value.1, 11
  %bf.clear.1 = and i16 %bf.load.1, 2047
  %bf.set.1 = or i16 %bf.clear.1, %bf.shl.1
  store i16 %bf.set.1, ptr %count18.1, align 1
  %flags.1 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 1, i32 4
  %22 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.1, align 2
  %bf.value25.1 = and i16 %23, 2047
  %bf.set27.1 = or i16 %bf.value25.1, %bf.shl.1
  store i16 %bf.set27.1, ptr %count18.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp32.1 = icmp slt i8 %17, 0
  %bf.lshr.1 = and i16 %bf.value.1, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr.1)
  %tobool38.not.1 = icmp eq i16 %bf.lshr.1, 0
  %or.cond.1 = select i1 %cmp32.1, i1 true, i1 %tobool38.not.1
  br i1 %or.cond.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2, align 2
  %arrayidx12.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates11, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx12.2, align 1
  %count.2 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 2, i32 1
  %27 = ptrtoint ptr %count.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %count.2, align 1
  %count18.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates11, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %count18.2 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load.2 = load i16, ptr %count18.2, align 1
  %bf.value.2 = zext i8 %28 to i16
  %bf.shl.2 = shl i16 %bf.value.2, 11
  %bf.clear.2 = and i16 %bf.load.2, 2047
  %bf.set.2 = or i16 %bf.clear.2, %bf.shl.2
  store i16 %bf.set.2, ptr %count18.2, align 1
  %flags.2 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 2, i32 4
  %30 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.2, align 2
  %bf.value25.2 = and i16 %31, 2047
  %bf.set27.2 = or i16 %bf.value25.2, %bf.shl.2
  store i16 %bf.set27.2, ptr %count18.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp32.2 = icmp slt i8 %25, 0
  %bf.lshr.2 = and i16 %bf.value.2, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr.2)
  %tobool38.not.2 = icmp eq i16 %bf.lshr.2, 0
  %or.cond.2 = select i1 %cmp32.2, i1 true, i1 %tobool38.not.2
  br i1 %or.cond.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.3 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3, align 2
  %arrayidx12.3 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates11, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx12.3, align 1
  %count.3 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 3, i32 1
  %35 = ptrtoint ptr %count.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %count.3, align 1
  %count18.3 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates11, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %count18.3 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load.3 = load i16, ptr %count18.3, align 1
  %bf.value.3 = zext i8 %36 to i16
  %bf.shl.3 = shl i16 %bf.value.3, 11
  %bf.clear.3 = and i16 %bf.load.3, 2047
  %bf.set.3 = or i16 %bf.clear.3, %bf.shl.3
  store i16 %bf.set.3, ptr %count18.3, align 1
  %flags.3 = getelementptr %struct.ieee80211_sta_rates, ptr %7, i32 0, i32 1, i32 3, i32 4
  %38 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.3, align 2
  %bf.value25.3 = and i16 %39, 2047
  %bf.set27.3 = or i16 %bf.value25.3, %bf.shl.3
  store i16 %bf.set27.3, ptr %count18.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp32.3 = icmp slt i8 %33, 0
  %bf.lshr.3 = and i16 %bf.value.3, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.lshr.3)
  %tobool38.not.3 = icmp eq i16 %bf.lshr.3, 0
  %or.cond.3 = select i1 %cmp32.3, i1 true, i1 %tobool38.not.3
  %spec.select = select i1 %or.cond.3, i8 3, i8 4
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %do.end9.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %do.end9.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ %spec.select, %for.inc.2 ]
  %n_rates = getelementptr inbounds %struct.mt7615_sta, ptr %drv_priv, i32 0, i32 8
  %40 = ptrtoint ptr %n_rates to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %i.0.lcssa, ptr %n_rates, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 8
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %wake.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i, align 4
  %45 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.then43, label %for.end.if.end48_crit_edge

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then43:                                        ; preds = %for.end
  %count.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 7, i32 1
  %46 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  tail call void @mt7615_mac_set_rates(ptr noundef %5, ptr noundef %drv_priv, ptr noundef null, ptr noundef %rates11) #4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 10
  %51 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_activity.i, align 4
  %52 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %53, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then43.if.end48_crit_edge

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true.i:                                  ; preds = %if.then43
  %state.i80 = getelementptr inbounds %struct.mt76_phy, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %state.i80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i80, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i81 = icmp eq i32 %56, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i.if.end48_crit_edge, label %if.then.i

land.lhs.true.i.if.end48_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %49, ptr noundef %pm) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end48_crit_edge, %if.then43.if.end48_crit_edge, %for.end.if.end48_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i16 noundef zeroext %queue, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %4 = and i16 %queue, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i.not = icmp eq i16 %4, 0
  br i1 %cmp.i.not, label %if.end39.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @mt7615_lmac_mapping.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.mt7615_lmac_mapping.exit_crit_edge, label %if.then.i, !prof !36

land.rhs.i.mt7615_lmac_mapping.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_lmac_mapping.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mt7615_lmac_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 464, i32 noundef 9, ptr noundef null) #4
  br label %mt7615_lmac_mapping.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.mask = and i16 %queue, 255
  %conv.i = zext i16 %conv.mask to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @mt7615_lmac_mapping.lmac_queue_map, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  br label %mt7615_lmac_mapping.exit

mt7615_lmac_mapping.exit:                         ; preds = %if.end39.i, %if.then.i, %land.rhs.i.mt7615_lmac_mapping.exit_crit_edge
  %retval.0.i = phi i8 [ %6, %if.end39.i ], [ 1, %if.then.i ], [ 1, %land.rhs.i.mt7615_lmac_mapping.exit_crit_edge ]
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %wmm_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %7 = ptrtoint ptr %wmm_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wmm_idx, align 1
  %mul = shl i8 %8, 2
  %add = add i8 %mul, %retval.0.i
  %call7 = tail call i32 @mt7615_mcu_set_wmm(ptr noundef %3, i8 noundef zeroext %add, ptr noundef %params) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mt7615_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  %narrow = select i1 %cmp, i8 0, i8 %5
  %spec.select = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow)
  %cmp6 = icmp ugt i8 %narrow, 1
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 17
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub = shl nuw nsw i32 %spec.select, 2
  %. = select i1 %cmp6, i32 240, i32 16
  %add16 = add nuw nsw i32 %sub, %.
  %add17 = add i32 %add16, %9
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %call20 = tail call i32 %13(ptr noundef %3, i32 noundef %add17, i32 noundef 3, i32 noundef 3) #4
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %reg_map22 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %reg_map22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_map22, align 8
  %arrayidx23 = getelementptr i32, ptr %19, i32 17
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %21, 24
  %call25 = tail call i32 %17(ptr noundef %3, i32 noundef %add24) #4
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %reg_map22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map22, align 8
  %arrayidx30 = getelementptr i32, ptr %27, i32 17
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %29, 28
  %call32 = tail call i32 %25(ptr noundef %3, i32 noundef %add31) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  %tsf.sroa.5.0.insert.ext = zext i32 %call32 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call25 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  ret i64 %tsf.sroa.0.0.insert.insert
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  %narrow = select i1 %cmp, i8 0, i8 %5
  %spec.select = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow)
  %cmp6 = icmp ugt i8 %narrow, 1
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 17
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub = shl nuw nsw i32 %spec.select, 2
  %. = select i1 %cmp6, i32 240, i32 16
  %add16 = add nuw nsw i32 %sub, %.
  %add17 = add i32 %add16, %9
  %tsf.sroa.5.0.extract.trunc = trunc i64 %timestamp to i32
  %tsf.sroa.0.0.extract.shift = lshr i64 %timestamp, 32
  %tsf.sroa.0.0.extract.trunc = trunc i64 %tsf.sroa.0.0.extract.shift to i32
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr, align 4
  %reg_map20 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %reg_map20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_map20, align 8
  %arrayidx21 = getelementptr i32, ptr %15, i32 17
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %17, 24
  tail call void %13(ptr noundef %3, i32 noundef %add22, i32 noundef %tsf.sroa.0.0.extract.trunc) #4
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr25 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr25, align 4
  %22 = ptrtoint ptr %reg_map20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_map20, align 8
  %arrayidx27 = getelementptr i32, ptr %23, i32 17
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %25, 28
  tail call void %21(ptr noundef %3, i32 noundef %add28, i32 noundef %tsf.sroa.5.0.extract.trunc) #4
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %call31 = tail call i32 %29(ptr noundef %3, i32 noundef %add17, i32 noundef 3, i32 noundef 1) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_offset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %omac_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  %narrow = select i1 %cmp, i8 0, i8 %5
  %spec.select = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow)
  %cmp6 = icmp ugt i8 %narrow, 1
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 17
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub = shl nuw nsw i32 %spec.select, 2
  %. = select i1 %cmp6, i32 240, i32 16
  %add16 = add nuw nsw i32 %sub, %.
  %add17 = add i32 %add16, %9
  %tsf.sroa.5.0.extract.trunc = trunc i64 %timestamp to i32
  %tsf.sroa.0.0.extract.shift = lshr i64 %timestamp, 32
  %tsf.sroa.0.0.extract.trunc = trunc i64 %tsf.sroa.0.0.extract.shift to i32
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr, align 4
  %reg_map20 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %reg_map20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_map20, align 8
  %arrayidx21 = getelementptr i32, ptr %15, i32 17
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %17, 24
  tail call void %13(ptr noundef %3, i32 noundef %add22, i32 noundef %tsf.sroa.0.0.extract.trunc) #4
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr25 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr25, align 4
  %22 = ptrtoint ptr %reg_map20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_map20, align 8
  %arrayidx27 = getelementptr i32, ptr %23, i32 17
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %25, 28
  tail call void %21(ptr noundef %3, i32 noundef %add28, i32 noundef %tsf.sroa.5.0.extract.trunc) #4
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %call31 = tail call i32 %29(ptr noundef %3, i32 noundef %add17, i32 noundef 3, i32 noundef 2) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  %drv_priv7 = getelementptr inbounds %struct.ieee80211_txq, ptr %9, i32 0, i32 5
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %13, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 6, label %sw.bb17
    i32 4, label %if.end.sw.bb28_crit_edge
    i32 5, label %if.end.sw.bb28_crit_edge104
    i32 2, label %sw.bb33
    i32 3, label %sw.bb41
  ]

if.end.sw.bb28_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb28

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i16 %7 to i8
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf_size, align 4
  %call9 = tail call i32 @mt76_rx_aggr_start(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %conv, i16 noundef zeroext %11, i16 noundef zeroext %16) #4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcu_ops, align 16
  %add_rx_ba = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %add_rx_ba to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add_rx_ba, align 4
  %call10 = tail call i32 %20(ptr noundef %3, ptr noundef %params, i1 noundef zeroext true) #4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv13 = trunc i16 %7 to i8
  tail call void @mt76_rx_aggr_stop(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %conv13) #4
  %mcu_ops14 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %mcu_ops14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mcu_ops14, align 16
  %add_rx_ba15 = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %add_rx_ba15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add_rx_ba15, align 4
  %call16 = tail call i32 %24(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %aggr = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %25 = ptrtoint ptr %aggr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %aggr, align 1
  %send_bar = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 2
  %26 = ptrtoint ptr %send_bar to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %send_bar, align 2
  %mcu_ops18 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %mcu_ops18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcu_ops18, align 16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call19 = tail call i32 %30(ptr noundef %3, ptr noundef %params, i1 noundef zeroext true) #4
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 1, i32 6, i32 2
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idx, align 2
  %conv21 = zext i16 %32 to i32
  %conv22 = trunc i16 %7 to i8
  %call23 = tail call i32 @mt7615_mac_get_sta_tid_sn(ptr noundef %3, i32 noundef %conv21, i8 noundef zeroext %conv22) #4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  %call23.tr = trunc i32 %call23 to i16
  %conv27 = shl i16 %call23.tr, 4
  tail call void @ieee80211_send_bar(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7, i16 noundef zeroext %conv27) #4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge104
  %aggr29 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %33 = ptrtoint ptr %aggr29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %aggr29, align 1
  %mcu_ops30 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %mcu_ops30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mcu_ops30, align 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call32 = tail call i32 %37(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %idx35 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 1, i32 6, i32 2
  %38 = ptrtoint ptr %idx35 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idx35, align 2
  %conv36 = zext i16 %39 to i32
  %conv37 = trunc i16 %7 to i8
  %call38 = tail call i32 @mt7615_mac_get_sta_tid_sn(ptr noundef %3, i32 noundef %conv36, i8 noundef zeroext %conv37) #4
  %conv39 = trunc i32 %call38 to i16
  %40 = ptrtoint ptr %ssn6 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv39, ptr %ssn6, align 2
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %aggr42 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %41 = ptrtoint ptr %aggr42 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %aggr42, align 1
  %mcu_ops43 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %mcu_ops43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mcu_ops43, align 16
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call45 = tail call i32 %45(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #4
  %addr46 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr46, i16 noundef zeroext %7) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb33, %sw.bb28, %sw.bb17, %sw.bb11, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %call45, %sw.bb41 ], [ 1, %sw.bb33 ], [ %call32, %sw.bb28 ], [ %call19, %sw.bb17 ], [ %call16, %sw.bb11 ], [ %call10, %sw.bb ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_survey(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_set_coverage_class(ptr nocapture noundef readonly %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev1 = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %5, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #4
  %6 = tail call i16 @llvm.smax.i16(i16 %coverage_class, i16 0)
  %coverage_class7 = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %coverage_class7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %coverage_class7, align 2
  tail call void @mt7615_mac_set_timing(ptr noundef %3) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %5, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %9) #4
  %phy77 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %cmp.not = icmp eq ptr %5, %phy77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ant)
  %tobool79.not = icmp ne i32 %tx_ant, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_ant, i32 %rx_ant)
  %cmp80.not = icmp eq i32 %tx_ant, %rx_ant
  %or.cond = and i1 %tobool79.not, %cmp80.not
  br i1 %or.cond, label %lor.lhs.false82, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false82:                                  ; preds = %entry
  %10 = tail call i32 @llvm.cttz.i32(i32 %tx_ant, i1 true), !range !34
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call.i)
  %cmp83.not = icmp slt i32 %10, %call.i
  br i1 %cmp83.not, label %cond.false149, label %lor.lhs.false82.cleanup_crit_edge

lor.lhs.false82.cleanup_crit_edge:                ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false149:                                    ; preds = %lor.lhs.false82
  %call.i221 = tail call i32 @__sw_hweight8(i32 noundef %tx_ant) #4
  %notmask = shl nsw i32 -1, %call.i221
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %tx_ant)
  %cmp153.not = icmp eq i32 %sub, %tx_ant
  %notmask218 = shl nsw i32 -1, %10
  %sub160 = xor i32 %notmask218, -1
  %tx_ant.addr.0 = select i1 %cmp153.not, i32 %tx_ant, i32 %sub160
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i222 = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end172

if.then164:                                       ; preds = %cond.false149
  %chainmask = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chainmask, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %15)
  %cmp166 = icmp eq i16 %15, 15
  br i1 %cmp166, label %if.then168, label %if.else

if.then168:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #6
  %shl169 = shl i32 %tx_ant.addr.0, 2
  br label %if.end172

if.else:                                          ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @mt76_set_stream_caps(ptr noundef %19, i1 noundef zeroext true) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end172, %lor.lhs.false82.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end172 ], [ -22, %lor.lhs.false82.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_antenna(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_remain_on_channel(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %7, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %7, ptr noundef %pm) #4
  %call3 = tail call i32 @mt7615_mcu_set_roc(ptr noundef %3, ptr noundef %vif, ptr noundef %chan, i32 noundef %duration) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %state6 = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %state6) #4
  br label %out

if.end7:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1146) #4
  %roc_grant = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %roc_grant to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %roc_grant, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.then19, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then19:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %roc_wait = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 25
  %call2186 = call i32 @prepare_to_wait_event(ptr noundef %roc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %13 = ptrtoint ptr %roc_grant to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %roc_grant, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not87.not = icmp eq i8 %14, 0
  br i1 %tobool24.not87.not, label %if.then19.cleanup_crit_edge, label %if.end44.thread

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  br label %cleanup

if.end44.thread:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  call void @finish_wait(ptr noundef %roc_wait, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %out

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %__ret20.189 = phi i32 [ %__ret20.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then19.cleanup_crit_edge ]
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret20.189) #4
  %call21 = call i32 @prepare_to_wait_event(ptr noundef %roc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %15 = ptrtoint ptr %roc_grant to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %roc_grant, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool28.not = icmp eq i32 %call41, 0
  %spec.store.select57 = select i1 %tobool28.not, i32 1, i32 %call41
  %__ret20.1 = select i1 %tobool24.not, i32 %call41, i32 %spec.store.select57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1)
  %tobool34.not = icmp eq i32 %__ret20.1, 0
  %not.tobool24.not = xor i1 %tobool24.not, true
  %17 = select i1 %not.tobool24.not, i1 true, i1 %tobool34.not
  br i1 %17, label %if.end44, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1)
  %phi.cmp = icmp eq i32 %__ret20.1, 0
  call void @finish_wait(ptr noundef %roc_wait, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br i1 %phi.cmp, label %if.then47, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = call i32 @mt7615_mcu_set_roc(ptr noundef %3, ptr noundef %vif, ptr noundef null, i32 noundef 0) #4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %state50 = getelementptr inbounds %struct.mt76_phy, ptr %19, i32 0, i32 3
  call void @_clear_bit(i32 noundef 13, ptr noundef %state50) #4
  br label %out

out:                                              ; preds = %if.then47, %if.end44.out_crit_edge, %if.end44.thread, %if.end7.out_crit_edge, %if.then4
  %err.0 = phi i32 [ %call3, %if.then4 ], [ %call3, %if.end44.out_crit_edge ], [ -110, %if.then47 ], [ %call3, %if.end7.out_crit_edge ], [ %call3, %if.end44.thread ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %pm54 = getelementptr inbounds %struct.mt7615_dev, ptr %21, i32 0, i32 27
  call void @mt76_connac_power_save_sched(ptr noundef %21, ptr noundef %pm54) #4
  %mutex.i79 = getelementptr inbounds %struct.mt76_dev, ptr %21, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mutex.i79) #4
  br label %cleanup55

cleanup55:                                        ; preds = %out, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup55_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_cancel_remain_on_channel(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %roc_timer = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 24
  %call2 = tail call i32 @del_timer_sync(ptr noundef %roc_timer) #4
  %roc_work = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 23
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %roc_work) #4
  %dev = getelementptr inbounds %struct.mt7615_phy, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %7, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %7, ptr noundef %pm) #4
  %call5 = tail call i32 @mt7615_mcu_set_roc(ptr noundef %3, ptr noundef %vif, ptr noundef null, i32 noundef 0) #4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %pm8 = getelementptr inbounds %struct.mt7615_dev, ptr %9, i32 0, i32 27
  tail call void @mt76_connac_power_save_sched(ptr noundef %9, ptr noundef %pm8) #4
  %mutex.i17 = getelementptr inbounds %struct.mt76_dev, ptr %9, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_channel_switch_beacon(ptr noundef %hw, ptr noundef %vif, ptr nocapture noundef readnone %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcu_ops, align 16
  %add_beacon_offload = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %add_beacon_offload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add_beacon_offload, align 4
  %call1 = tail call i32 %7(ptr noundef %3, ptr noundef %hw, ptr noundef %vif, i1 noundef zeroext true) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_txpower(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wake_tx_queue(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_sta_set_decap_offload(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcu_ops, align 16
  %set_sta_decap_offload = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %set_sta_decap_offload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_sta_decap_offload, align 4
  %call3 = tail call i32 %7(ptr noundef %3, ptr noundef %vif, ptr noundef %sta) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_roc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_pm_queue_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_mac_enable(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_enable_nf(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_channel_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_mcu_set_suspend_iter(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_dbdc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

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
declare dso_local i32 @mt76_connac_mcu_set_p2p_oppps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_vif_ps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_update_arp_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_set_beacon_filter(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wcid_key_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_wtbl_set_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt7615_mac_wtbl_set_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_update_gtk_rekey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_hw_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_cancel_hw_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_sched_scan_req(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_sched_scan_enable(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_rts_thresh(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_set_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_wmm(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_rx_aggr_start(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx_aggr_stop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_get_sta_tid_sn(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_bar(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_stream_caps(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_mt7615_mac_sta_add, !1, !"__ksymtab_mt7615_mac_sta_add", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 646, i32 1}
!2 = !{ptr @__ksymtab_mt7615_mac_sta_remove, !3, !"__ksymtab_mt7615_mac_sta_remove", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 674, i32 1}
!4 = !{ptr @mt7615_ops, !5, !"mt7615_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 1280, i32 28}
!6 = !{ptr @__ksymtab_mt7615_ops, !7, !"__ksymtab_mt7615_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 1327, i32 1}
!8 = !{ptr @__UNIQUE_ID_file411, !9, !"__UNIQUE_ID_file411", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 1329, i32 1}
!10 = !{ptr @__UNIQUE_ID_license412, !9, !"__UNIQUE_ID_license412", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 172, i32 3}
!13 = !{ptr @xa_init_flags.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/main.c", i32 683, i32 42}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mt7615_lmac_mapping.lmac_queue_map, !20, !"lmac_queue_map", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h", i32 457, i32 18}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h", i32 464, i32 6}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{i32 0, i32 33}
!35 = !{i64 2158093082}
!36 = !{!"branch_weights", i32 2000, i32 1}
