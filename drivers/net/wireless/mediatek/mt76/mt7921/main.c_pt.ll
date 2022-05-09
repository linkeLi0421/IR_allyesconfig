; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/main.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__mt7921_start\22, \22a\22\09"
module asm "\09.weak\09__crc___mt7921_start\09\09\09\09"
module asm "\09.long\09__crc___mt7921_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mt7921_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__mt7921_start\22\09\09\09\09\09"
module asm "__kstrtabns___mt7921_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_mac_sta_add\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_mac_sta_add\09\09\09\09"
module asm "\09.long\09__crc_mt7921_mac_sta_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_mac_sta_add:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_mac_sta_add\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_mac_sta_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_mac_sta_assoc\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_mac_sta_assoc\09\09\09\09"
module asm "\09.long\09__crc_mt7921_mac_sta_assoc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_mac_sta_assoc:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_mac_sta_assoc\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_mac_sta_assoc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_mac_sta_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_mac_sta_remove\09\09\09\09"
module asm "\09.long\09__crc_mt7921_mac_sta_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_mac_sta_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_mac_sta_remove\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_mac_sta_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_ops\09\09\09\09"
module asm "\09.long\09__crc_mt7921_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
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
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }
%struct.mt7921_dev = type { %union.anon.135, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.135 = type { %struct.mt76_dev }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
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
%struct.mt7921_mcu_rxd = type { [6 x i32], i16, i16, i8, i8, i16, i8, [2 x i8], i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.mt76_txq = type { ptr, i16, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.mt76_ethtool_worker_info = type { ptr, i32, i32, i32, i32 }

@__kstrtab___mt7921_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___mt7921_start = external dso_local constant [0 x i8], align 1
@__ksymtab___mt7921_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mt7921_start to i32), ptr @__kstrtab___mt7921_start, ptr @__kstrtabns___mt7921_start }, section "___ksymtab_gpl+__mt7921_start", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_mt7921_mac_sta_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_mac_sta_add = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_mac_sta_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_mac_sta_add to i32), ptr @__kstrtab_mt7921_mac_sta_add, ptr @__kstrtabns_mt7921_mac_sta_add }, section "___ksymtab_gpl+mt7921_mac_sta_add", align 4
@__kstrtab_mt7921_mac_sta_assoc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_mac_sta_assoc = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_mac_sta_assoc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_mac_sta_assoc to i32), ptr @__kstrtab_mt7921_mac_sta_assoc, ptr @__kstrtabns_mt7921_mac_sta_assoc }, section "___ksymtab_gpl+mt7921_mac_sta_assoc", align 4
@__kstrtab_mt7921_mac_sta_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_mac_sta_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_mac_sta_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_mac_sta_remove to i32), ptr @__kstrtab_mt7921_mac_sta_remove, ptr @__kstrtabns_mt7921_mac_sta_remove }, section "___ksymtab_gpl+mt7921_mac_sta_remove", align 4
@mt7921_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt7921_tx, ptr @mt7921_start, ptr @mt7921_stop, ptr @mt7921_suspend, ptr @mt7921_resume, ptr @mt7921_set_wakeup, ptr @mt7921_add_interface, ptr null, ptr @mt7921_remove_interface, ptr @mt7921_config, ptr @mt7921_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt7921_configure_filter, ptr null, ptr null, ptr @mt7921_set_key, ptr null, ptr @mt7921_set_rekey_data, ptr null, ptr @mt7921_hw_scan, ptr @mt7921_cancel_hw_scan, ptr @mt7921_start_sched_scan, ptr @mt7921_stop_sched_scan, ptr null, ptr null, ptr @mt7921_get_stats, ptr null, ptr null, ptr @mt7921_set_rts_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7921_sta_state, ptr @mt76_sta_pre_rcu_remove, ptr null, ptr null, ptr @mt7921_sta_statistics, ptr @mt7921_conf_tx, ptr @mt7921_get_tsf, ptr @mt7921_set_tsf, ptr null, ptr null, ptr null, ptr @mt7921_ampdu_action, ptr @mt76_get_survey, ptr null, ptr @mt7921_set_coverage_class, ptr @mt7921_testmode_cmd, ptr @mt7921_testmode_dump, ptr @mt7921_flush, ptr null, ptr @mt7921_set_antenna, ptr @mt76_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_release_buffered_frames, ptr @mt7921_get_et_sset_count, ptr @mt7921_get_et_stats, ptr @mt7921_get_et_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_txpower, ptr null, ptr null, ptr null, ptr @mt76_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7921_set_sar_specs, ptr @mt7921_sta_set_decap_offload, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@__kstrtab_mt7921_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_ops to i32), ptr @__kstrtab_mt7921_ops, ptr @__kstrtabns_mt7921_ops }, section "___ksymtab_gpl+mt7921_ops", align 4
@__UNIQUE_ID_file475 = internal constant [75 x i8] c"mt7921_common.file=drivers/net/wireless/mediatek/mt76/mt7921/mt7921-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license476 = internal constant [35 x i8] c"mt7921_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author477 = internal constant [56 x i8] c"mt7921_common.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__const.mt7921_gen_ppe_thresh.ppet16_ppet8_ru3_ru0 = private unnamed_addr constant [3 x i8] c"\1C\C7q", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/main.c\00", [47 x i8] zeroinitializer }, align 32
@mt7921_get_et_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 1036, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ei: %d  SSTATS_LEN: %zu\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt7921_get_et_stats\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7921_get_et_stats._entry_ptr = internal global ptr @mt7921_get_et_stats._entry, section ".printk_index", align 4
@mt7921_gstrings_stats = internal constant { [64 x [32 x i8]], [512 x i8] } { [64 x [32 x i8]] [[32 x i8] c"tx_ampdu_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mpdu_attempts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mpdu_success\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pkt_ebf_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pkt_ibf_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:0-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:2-10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:11-19\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:20-28\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:29-37\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:38-46\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:47-55\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:56-79\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:80-103\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:104-127\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:128-151\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:152-175\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:176-199\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:200-223\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ampdu_len:224-247\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ba_miss_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_beamformer_ppdu_iBF\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_beamformer_ppdu_eBF\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_all\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_he\00\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_vht\00\00\00", [32 x i8] c"tx_beamformer_rx_feedback_ht\00\00\00\00", [32 x i8] c"tx_msdu_pack_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_msdu_pack_8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_mpdu_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ampdu_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ampdu_bytes_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ba_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_cck\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_ofdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_ht\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_ht_gf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_vht\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_su\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_ext_su\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_tb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mode_he_mu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_bw_160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"v_tx_mcs_11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [512 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.7 = internal global [11 x i64] [i64 9, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1339905]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"mt7921_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1358, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 378, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1318, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1035, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"mt7921_gstrings_stats\00", align 1
@___asan_gen_.38 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/main.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 875, i32 19 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author477, ptr @__UNIQUE_ID_file475, ptr @__UNIQUE_ID_license476, ptr @__ksymtab___mt7921_start, ptr @__ksymtab_mt7921_mac_sta_add, ptr @__ksymtab_mt7921_mac_sta_assoc, ptr @__ksymtab_mt7921_mac_sta_remove, ptr @__ksymtab_mt7921_ops, ptr @mt7921_get_et_stats._entry, ptr @mt7921_get_et_stats._entry_ptr, ptr @mt7921_ops, ptr @xa_init_flags.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt7921_gstrings_stats], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_get_et_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_gstrings_stats to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_set_stream_he_caps(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cap, align 8, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iftype = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 2
  %call = tail call fastcc i32 @mt7921_init_he_caps(ptr noundef %phy, i32 noundef 0, ptr noundef %iftype)
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %iftype_data = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 10, i32 0, i32 10
  %6 = ptrtoint ptr %iftype_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iftype, ptr %iftype_data, align 4
  %conv = trunc i32 %call to i16
  %n_iftype_data = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 10, i32 0, i32 9
  %7 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %n_iftype_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 8
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_5ghz, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.if.end29_crit_edge, label %if.then5

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then5:                                         ; preds = %if.end
  %arrayidx7 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 2, i32 1
  %call9 = tail call fastcc i32 @mt7921_init_he_caps(ptr noundef %phy, i32 noundef 1, ptr noundef %arrayidx7)
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 8
  %iftype_data12 = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 11, i32 0, i32 10
  %14 = ptrtoint ptr %iftype_data12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx7, ptr %iftype_data12, align 4
  %conv13 = trunc i32 %call9 to i16
  %n_iftype_data14 = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 11, i32 0, i32 9
  %15 = ptrtoint ptr %n_iftype_data14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv13, ptr %n_iftype_data14, align 4
  %16 = load ptr, ptr %phy, align 8
  %has_6ghz = getelementptr inbounds %struct.mt76_phy, ptr %16, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %has_6ghz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_6ghz, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.then5.if.end29_crit_edge, label %if.then18

if.then5.if.end29_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then18:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 2, i32 3
  %call22 = tail call fastcc i32 @mt7921_init_he_caps(ptr noundef %phy, i32 noundef 3, ptr noundef %arrayidx20)
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 8
  %iftype_data25 = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 12, i32 0, i32 10
  %21 = ptrtoint ptr %iftype_data25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx20, ptr %iftype_data25, align 4
  %conv26 = trunc i32 %call22 to i16
  %n_iftype_data27 = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 12, i32 0, i32 9
  %22 = ptrtoint ptr %n_iftype_data27 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv26, ptr %n_iftype_data27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %if.then5.if.end29_crit_edge, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7921_init_he_caps(ptr nocapture noundef readonly %phy, i32 noundef %band, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chainmask, align 2
  %conv75 = zext i16 %3 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp77 = icmp sgt i32 %call.i, 0
  %.pn = select i1 %cmp77, i16 2, i16 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp77.1.inv = icmp slt i32 %call.i, 2
  %.pn.1 = select i1 %cmp77.1.inv, i16 12, i16 8
  %mcs_map.1.1 = or i16 %.pn, %.pn.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp77.2 = icmp sgt i32 %call.i, 2
  %.pn.2 = select i1 %cmp77.2, i16 32, i16 48
  %mcs_map.1.2 = or i16 %mcs_map.1.1, %.pn.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp77.3 = icmp sgt i32 %call.i, 3
  %.pn.3 = select i1 %cmp77.3, i16 128, i16 192
  %mcs_map.1.3 = or i16 %mcs_map.1.2, %.pn.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp77.4 = icmp sgt i32 %call.i, 4
  %.pn.4 = select i1 %cmp77.4, i16 512, i16 768
  %mcs_map.1.4 = or i16 %mcs_map.1.3, %.pn.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp77.5 = icmp sgt i32 %call.i, 5
  %.pn.5 = select i1 %cmp77.5, i16 2048, i16 3072
  %mcs_map.1.5 = or i16 %mcs_map.1.4, %.pn.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp77.6 = icmp sgt i32 %call.i, 6
  %.pn.6 = select i1 %cmp77.6, i16 8192, i16 12288
  %mcs_map.1.6 = or i16 %mcs_map.1.5, %.pn.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp77.7 = icmp sgt i32 %call.i, 7
  %.pn.7 = select i1 %cmp77.7, i16 -32768, i16 -16384
  %mcs_map.1.7 = or i16 %mcs_map.1.6, %.pn.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp100 = icmp eq i32 %band, 0
  %4 = tail call i16 @llvm.bswap.i16(i16 %mcs_map.1.7)
  %5 = trunc i32 %call.i to i8
  %6 = add i8 %5, 7
  %7 = and i8 %6, 7
  %conv41.i = or i8 %7, 56
  %conv106.i = mul i32 %call.i, 18
  %conv107.i = and i32 %conv106.i, 254
  %sub109.i = add nuw nsw i32 %conv107.i, 7
  %div156.i = lshr i32 %sub109.i, 3
  %sub113.i = add nsw i32 %div156.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv107.i)
  %cmp159.i = icmp ugt i32 %conv107.i, 8
  %8 = trunc i32 %conv107.i to i16
  %rem126.i.lhs.trunc = add nsw i16 %8, -1
  %rem126.i383 = srem i16 %rem126.i.lhs.trunc, 8
  %narrow385 = sub nsw i16 8, %rem126.i383
  %sub127.i386 = zext i16 %narrow385 to i32
  %shr.i = lshr i32 255, %sub127.i386
  %9 = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %band)
  %cmp209 = icmp eq i32 %band, 3
  %spec.select = select i1 %cmp100, i8 2, i8 4
  %. = select i1 %cmp100, i8 32, i8 64
  br label %for.body89

for.body89:                                       ; preds = %cleanup.for.body89_crit_edge, %entry
  %i.1382 = phi i32 [ 0, %entry ], [ %inc256, %cleanup.for.body89_crit_edge ]
  %idx.0378 = phi i32 [ 0, %entry ], [ %idx.1, %cleanup.for.body89_crit_edge ]
  %he_mcs_nss_supp = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1382)
  %cond262 = icmp eq i32 %i.1382, 2
  br i1 %cond262, label %sw.epilog, label %for.body89.cleanup_crit_edge

for.body89.cleanup_crit_edge:                     ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %for.body89
  %he_cap_elem91 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1
  %arrayidx = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378
  %he_cap90 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %he_cap90 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %he_cap90, align 1
  %12 = ptrtoint ptr %he_cap_elem91 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %he_cap_elem91, align 1
  %arrayidx97 = getelementptr [6 x i8], ptr %he_cap_elem91, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 26, ptr %arrayidx97, align 1
  %arrayidx99 = getelementptr [6 x i8], ptr %he_cap_elem91, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %arrayidx99, align 1
  %15 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 1
  %arrayidx109 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 1
  %arrayidx111 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -50, ptr %arrayidx111, align 1
  %arrayidx113 = getelementptr [6 x i8], ptr %he_cap_elem91, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx113, align 1
  %20 = or i8 %19, 8
  store i8 %20, ptr %arrayidx113, align 1
  %21 = load i8, ptr %15, align 1
  %22 = or i8 %21, %.
  store i8 %22, ptr %15, align 1
  %23 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %arrayidx109, align 1
  %arrayidx138 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx138, align 1
  %26 = or i8 %25, 18
  store i8 %26, ptr %arrayidx138, align 1
  %arrayidx143 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx143, align 1
  %29 = or i8 %28, 13
  store i8 %29, ptr %arrayidx143, align 1
  %arrayidx148 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx148, align 1
  %32 = or i8 %31, -64
  store i8 %32, ptr %arrayidx148, align 1
  %arrayidx153 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 6
  %33 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx153, align 1
  %35 = or i8 %34, -77
  store i8 %35, ptr %arrayidx153, align 1
  %arrayidx158 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 7
  %36 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx158, align 1
  %38 = or i8 %37, 6
  store i8 %38, ptr %arrayidx158, align 1
  %arrayidx163 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 8
  %39 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx163, align 1
  %41 = or i8 %40, 66
  store i8 %41, ptr %arrayidx163, align 1
  %arrayidx168 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 1, i32 1, i32 9
  %42 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx168, align 1
  %44 = or i8 %43, 63
  store i8 %44, ptr %arrayidx168, align 1
  %45 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy, align 8
  %dev = getelementptr inbounds %struct.mt76_phy, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %48, i32 0, i32 39
  %49 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %50, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2032271360, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 2032271360
  br i1 %cmp.i, label %if.then174, label %sw.epilog.sw.epilog186_crit_edge

sw.epilog.sw.epilog186_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog186

if.then174:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %51 = or i8 %22, 8
  %52 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %15, align 1
  %53 = or i8 %40, 78
  %54 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx163, align 1
  br label %sw.epilog186

sw.epilog186:                                     ; preds = %if.then174, %sw.epilog.sw.epilog186_crit_edge
  %55 = ptrtoint ptr %he_mcs_nss_supp to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %4, ptr %he_mcs_nss_supp, align 1
  %tx_mcs_80 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 2, i32 1
  %56 = ptrtoint ptr %tx_mcs_80 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %4, ptr %tx_mcs_80, align 1
  %57 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy, align 8
  %dev188 = getelementptr inbounds %struct.mt76_phy, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev188, align 4
  %rev.i.i368 = getelementptr inbounds %struct.mt76_dev, ptr %60, i32 0, i32 39
  %61 = ptrtoint ptr %rev.i.i368 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rev.i.i368, align 4
  %shr.i.mask.i369 = and i32 %62, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2032271360, i32 %shr.i.mask.i369)
  %cmp.i370 = icmp eq i32 %shr.i.mask.i369, 2032271360
  br i1 %cmp.i370, label %if.then190, label %sw.epilog186.if.end191_crit_edge

sw.epilog186.if.end191_crit_edge:                 ; preds = %sw.epilog186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then190:                                       ; preds = %sw.epilog186
  call void @__sanitizer_cov_trace_pc() #11
  %rx_mcs_160 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 2, i32 2
  %63 = ptrtoint ptr %rx_mcs_160 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %4, ptr %rx_mcs_160, align 1
  %tx_mcs_160 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 2, i32 3
  %64 = ptrtoint ptr %tx_mcs_160 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %4, ptr %tx_mcs_160, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %sw.epilog186.if.end191_crit_edge
  %ppe_thres = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 1, i32 3
  %65 = call ptr @memset(ptr %ppe_thres, i32 0, i32 25)
  %66 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %tobool196.not = icmp sgt i8 %67, -1
  br i1 %tobool196.not, label %if.else200, label %do.end36.i

do.end36.i:                                       ; preds = %if.end191
  %68 = ptrtoint ptr %ppe_thres to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv41.i, ptr %ppe_thres, align 1
  br i1 %cmp159.i, label %do.end36.i.for.body.i_crit_edge, label %do.end36.i.mt7921_gen_ppe_thresh.exit_crit_edge

do.end36.i.mt7921_gen_ppe_thresh.exit_crit_edge:  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7921_gen_ppe_thresh.exit

do.end36.i.for.body.i_crit_edge:                  ; preds = %do.end36.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end36.i.for.body.i_crit_edge
  %conv111161.i = phi i32 [ %conv111.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end36.i.for.body.i_crit_edge ]
  %i.0160.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end36.i.for.body.i_crit_edge ]
  %rem157.i = urem i8 %i.0160.i, 3
  %rem.zext.i = zext i8 %rem157.i to i32
  %arrayidx116.i = getelementptr [3 x i8], ptr @__const.mt7921_gen_ppe_thresh.ppet16_ppet8_ru3_ru0, i32 0, i32 %rem.zext.i
  %69 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx116.i, align 1
  %add118.i = add nuw nsw i32 %conv111161.i, 1
  %arrayidx119.i = getelementptr i8, ptr %ppe_thres, i32 %add118.i
  %71 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx119.i, align 1
  %inc.i = add i8 %i.0160.i, 1
  %conv111.i = zext i8 %inc.i to i32
  %cmp.i373 = icmp sgt i32 %sub113.i, %conv111.i
  br i1 %cmp.i373, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = urem i8 %inc.i, 3
  %phi.cast.i = zext i8 %phi.bo.i to i32
  %phi.bo164.i = add nuw nsw i32 %conv111.i, 1
  br label %mt7921_gen_ppe_thresh.exit

mt7921_gen_ppe_thresh.exit:                       ; preds = %for.end.loopexit.i, %do.end36.i.mt7921_gen_ppe_thresh.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end36.i.mt7921_gen_ppe_thresh.exit_crit_edge ], [ %phi.cast.i, %for.end.loopexit.i ]
  %conv111.lcssa.i = phi i32 [ 1, %do.end36.i.mt7921_gen_ppe_thresh.exit_crit_edge ], [ %phi.bo164.i, %for.end.loopexit.i ]
  %arrayidx122.i = getelementptr [3 x i8], ptr @__const.mt7921_gen_ppe_thresh.ppet16_ppet8_ru3_ru0, i32 0, i32 %i.0.lcssa.i
  %72 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx122.i, align 1
  %conv129.i = and i8 %73, %9
  %arrayidx132.i = getelementptr i8, ptr %ppe_thres, i32 %conv111.lcssa.i
  %74 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv129.i, ptr %arrayidx132.i, align 1
  br label %if.end208

if.else200:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx168, align 1
  %or206336 = or i8 %76, -128
  store i8 %or206336, ptr %arrayidx168, align 1
  br label %if.end208

if.end208:                                        ; preds = %if.else200, %mt7921_gen_ppe_thresh.exit
  br i1 %cmp209, label %u16_encode_bits.exit, label %if.end208.if.end251_crit_edge

if.end208.if.end251_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251

u16_encode_bits.exit:                             ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy, align 8
  %ampdu_density = getelementptr inbounds %struct.mt76_phy, ptr %78, i32 0, i32 11, i32 0, i32 5, i32 3
  %79 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ampdu_density, align 2
  %81 = and i8 %80, 7
  %conv8.i = zext i8 %81 to i16
  %cap218 = getelementptr inbounds %struct.mt76_phy, ptr %78, i32 0, i32 11, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %cap218 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cap218, align 4
  %84 = lshr i32 %83, 20
  %85 = trunc i32 %84 to i16
  %conv8.i354 = and i16 %85, 56
  %or224337 = or i16 %conv8.i354, %conv8.i
  %.tr = trunc i32 %83 to i16
  %86 = shl i16 %.tr, 6
  %conv8.i366 = and i16 %86, 192
  %or232338 = or i16 %or224337, %conv8.i366
  %and235 = lshr i32 %83, 16
  %87 = trunc i32 %and235 to i16
  %88 = and i16 %87, 8192
  %89 = or i16 %or232338, %88
  %90 = and i16 %87, 4096
  %91 = or i16 %89, %90
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %he_6ghz_capa = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0378, i32 2
  %93 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %92, ptr %he_6ghz_capa, align 1
  br label %if.end251

if.end251:                                        ; preds = %u16_encode_bits.exit, %if.end208.if.end251_crit_edge
  %inc252 = add i32 %idx.0378, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end251, %for.body89.cleanup_crit_edge
  %idx.1 = phi i32 [ %inc252, %if.end251 ], [ %idx.0378, %for.body89.cleanup_crit_edge ]
  %inc256 = add nuw nsw i32 %i.1382, 1
  %exitcond.not = icmp eq i32 %inc256, 13
  br i1 %exitcond.not, label %for.end257, label %cleanup.for.body89_crit_edge

cleanup.for.body89_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89

for.end257:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 %idx.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mt7921_start(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %dev = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @mt76_connac_mcu_set_mac_enable(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt76_connac_mcu_set_channel_domain(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call33 = tail call i32 @mt7921_mcu_set_chan_info(ptr noundef %phy, i32 noundef 20205) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %call38 = tail call i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt7921_mac_reset_counters(ptr noundef %phy) #9
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %7, ptr noundef %mac_work, i32 noundef 25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end36.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call33, %if.end4.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_mac_enable(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_channel_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_chan_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_reset_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_mac_sta_add(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wcid_mask = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 33
  %call = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask, i32 noundef 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %0 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %poll_list, ptr %prev.i, align 4
  %vif4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %vif4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %drv_priv1, ptr %vif4, align 4
  %sta5 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2, i32 2
  %3 = ptrtoint ptr %sta5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %sta5, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %sta5, align 2
  %conv = trunc i32 %call to i16
  %idx7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %4 = ptrtoint ptr %idx7 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %idx7, align 2
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv1, i32 0, i32 2
  %5 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %band_idx, align 2
  %bf.value = shl i8 %6, 6
  %bf.clear10 = and i8 %bf.set, -65
  %bf.set11 = or i8 %bf.value, %bf.clear10
  store i8 %bf.set11, ptr %sta5, align 2
  %tx_info = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 28
  %7 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_info, align 8
  %or = or i32 %8, -2147483648
  store i32 %or, ptr %tx_info, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_txs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 3, i32 2
  %10 = ptrtoint ptr %last_txs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_txs, align 8
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 9
  %call13 = tail call i32 @mt76_connac_pm_wake(ptr noundef %mdev, ptr noundef %pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp16 = icmp eq i32 %12, 2
  br i1 %cmp16, label %if.then18, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %wep_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 5
  %13 = ptrtoint ptr %wep_sta to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %drv_priv, ptr %wep_sta, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %call20 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %mdev, i32 noundef %call, i32 noundef 4096) #9
  %call21 = tail call i32 @mt7921_mcu_sta_update(ptr noundef %mdev, ptr noundef %sta, ptr noundef %vif, i1 noundef zeroext true, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt76_connac_power_save_sched(ptr noundef %mdev, ptr noundef %pm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -28, %entry.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7921_mac_wtbl_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_sta_update(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_sta_assoc(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %mdev, ptr noundef %pm) #9
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %2 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tdls, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sta3 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %call = tail call i32 @mt76_connac_mcu_uni_add_bss(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta3, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idx, align 2
  %conv = zext i16 %5 to i32
  %call5 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %mdev, i32 noundef %conv, i32 noundef 4096) #9
  %call6 = tail call i32 @mt7921_mcu_sta_update(ptr noundef %mdev, ptr noundef %sta, ptr noundef %vif, i1 noundef zeroext true, i32 noundef 2) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %mdev, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_uni_add_bss(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_sta_remove(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 9
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef %drv_priv) #9
  %call = tail call i32 @mt76_connac_pm_wake(ptr noundef %mdev, ptr noundef %pm) #9
  %call2 = tail call i32 @mt7921_mcu_sta_update(ptr noundef %mdev, ptr noundef %sta, ptr noundef %vif, i1 noundef zeroext false, i32 noundef 0) #9
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %conv = zext i16 %1 to i32
  %call4 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %mdev, i32 noundef %conv, i32 noundef 4096) #9
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %wep_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %wep_sta to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %wep_sta, align 8
  %rssi = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5
  %5 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rssi, align 4
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %6 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tdls, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then8, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sta9 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %call11 = tail call i32 @mt76_connac_mcu_uni_add_bss(ptr noundef %mdev, ptr noundef %vif, ptr noundef %sta9, i1 noundef zeroext false) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %sta_poll_lock = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #9
  %poll_list = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %9, %poll_list
  br i1 %cmp.i.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_del_init.exit_crit_edge

if.then15.list_del_init.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then15.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %list_del_init.exit, %if.end12.if.end17_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %mdev, ptr noundef %pm) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_free_pending_tx_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_tx_worker(ptr noundef %w) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -8136
  %pm = getelementptr i8, ptr %w, i32 8632
  %wake.i = getelementptr i8, ptr %w, i32 8808
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #9
  %state.i = getelementptr i8, ptr %w, i32 -8124
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #9
  %wq = getelementptr i8, ptr %w, i32 2648
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %w, i32 8712
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wake_work) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %w, i32 8852
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #9
  tail call void @mt76_txq_schedule_all(ptr noundef %add.ptr) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %w, i32 9048
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #9
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_scan_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5520
  %dev = getelementptr i8, ptr %work, i32 -5516
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %lock25 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock25) #9
  %scan_event_list = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %scan_event_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_event_list, align 4
  %cmp.i.i26 = icmp eq ptr %3, %scan_event_list
  %tobool.not.i2427 = icmp eq ptr %3, null
  %tobool.not.i28 = or i1 %cmp.i.i26, %tobool.not.i2427
  br i1 %tobool.not.i28, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @_raw_spin_unlock_bh(ptr noundef %lock2) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %eid = getelementptr inbounds %struct.mt7921_mcu_rxd, ptr %16, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  call void @ieee80211_sched_scan_results(ptr noundef %22) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 3
  %call6 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.then8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %23 = call ptr @memset(ptr %info, i32 0, i32 16)
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  call void @ieee80211_scan_completed(ptr noundef %27, ptr noundef nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.else.cleanup_crit_edge, %if.then4
  call void @consume_skb(ptr noundef nonnull %4) #9
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %29, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %30 = ptrtoint ptr %scan_event_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scan_event_list, align 4
  %cmp.i.i = icmp eq ptr %31, %scan_event_list
  %tobool.not.i24 = icmp eq ptr %31, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i24
  br i1 %tobool.not.i, label %cleanup.while.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %lock221 = getelementptr inbounds %struct.mt76_dev, ptr %33, i32 0, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock221) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_results(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_tx(ptr noundef %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %spec.select49 = select i1 %tobool.not, ptr %sta12, ptr %drv_priv
  %wcid.1 = select i1 %tobool6.not, ptr %spec.select, ptr %spec.select49
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %wake.i = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #9
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %entry
  %count.i = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 7, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #9
  %13 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control, align 4
  tail call void @mt76_tx(ptr noundef %1, ptr noundef %14, ptr noundef %wcid.1, ptr noundef %skb) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 10
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
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then16.mt76_connac_pm_unref.exit_crit_edge

if.then16.mt76_connac_pm_unref.exit_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.then16
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i53 = icmp eq i32 %21, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt76_connac_power_save_sched(ptr noundef %1, ptr noundef %pm) #9
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.then16.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #9
  br label %cleanup

if.end19:                                         ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #9
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp = icmp ugt i16 %23, 3
  br i1 %cmp, label %if.then22, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %queue_mapping.i, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  tail call void @mt76_connac_pm_queue_skb(ptr noundef %hw, ptr noundef %pm, ptr noundef %wcid.1, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %mt76_connac_pm_unref.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %5, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #9
  %call2 = tail call i32 @__mt7921_start(ptr noundef %3)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %pm5 = getelementptr inbounds %struct.mt7921_dev, ptr %7, i32 0, i32 9
  tail call void @mt76_connac_power_save_sched(ptr noundef %7, ptr noundef %pm5) #9
  %mutex.i10 = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i10) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #9
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %ps_work = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 9
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #9
  %wake_work = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 5
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work) #9
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef null) #9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #9
  %call9 = tail call i32 @mt76_connac_mcu_set_mac_enable(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_suspend(ptr noundef %hw, ptr nocapture noundef readnone %wowlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %scan_work = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 13
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 18
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #9
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %ps_work = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 9
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #9
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef null) #9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #9
  tail call void @ieee80211_iterate_interfaces(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull @mt76_connac_mcu_set_suspend_iter, ptr noundef %3) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_resume(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #9
  tail call void @ieee80211_iterate_interfaces(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull @mt76_connac_mcu_set_suspend_iter, ptr noundef %3) #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %mac_work, i32 noundef 25) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext %enabled) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif_mask, align 4
  %neg = xor i32 %7, -1
  %8 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %iszero = icmp eq i32 %7, -1
  %9 = trunc i32 %8 to i8
  %conv = select i1 %iszero, i8 -1, i8 %9
  %10 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %drv_priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %cmp = icmp ugt i8 %conv, 3
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %11 = ptrtoint ptr %omac_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %omac_idx, align 1
  %phy10 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %phy10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %phy10, align 4
  %band_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 2
  %13 = ptrtoint ptr %band_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %band_idx, align 2
  %wmm_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %14 = ptrtoint ptr %wmm_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %wmm_idx, align 1
  %sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %call17 = tail call i32 @mt76_connac_mcu_uni_add_dev(ptr noundef %3, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end19, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %if.end
  %15 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %drv_priv, align 8
  %conv22 = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv22
  %17 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vif_mask, align 4
  %or = or i32 %shl, %18
  store i32 %or, ptr %vif_mask, align 4
  %19 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %omac_idx, align 1
  %sh_prom = zext i8 %20 to i64
  %shl27 = shl nuw i64 1, %sh_prom
  %omac_mask = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %omac_mask, align 8
  %or28 = or i64 %shl27, %22
  store i64 %or28, ptr %omac_mask, align 8
  %23 = load i8, ptr %drv_priv, align 8
  %conv31 = zext i8 %23 to i32
  %sub32 = sub nsw i32 19, %conv31
  %poll_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %24 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %poll_list, ptr %prev.i, align 4
  %conv34 = trunc i32 %sub32 to i16
  %idx37 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %26 = ptrtoint ptr %idx37 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv34, ptr %idx37, align 2
  %27 = ptrtoint ptr %band_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %band_idx, align 2
  %ext_phy = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 9
  %29 = ptrtoint ptr %ext_phy to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %ext_phy, align 2
  %bf.value = shl i8 %28, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ext_phy, align 2
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 30
  %30 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %hw_key_idx, align 4
  %tx_info = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 25
  %31 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_info, align 8
  %or46 = or i32 %32, -2147483648
  store i32 %or46, ptr %tx_info, align 8
  %list.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 41
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i, ptr %prev.i.i, align 4
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  tail call void @__raw_spin_lock_init(ptr noundef %pktid.i, ptr noundef nonnull @.str, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 0, i32 1
  %35 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 0, i32 2
  %36 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 16, i32 2
  %38 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %idr_next.i.i.i, align 4
  %call49 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %3, i32 noundef %sub32, i32 noundef 4096) #9
  %rssi = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5
  %39 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rssi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %arrayidx77 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 37, i32 %sub32
  %40 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %sta, ptr %arrayidx77, align 4
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %41 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %txq, align 8
  %tobool89.not = icmp eq ptr %42, null
  br i1 %tobool89.not, label %if.end19.out_crit_edge, label %if.then90

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then90:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv92 = getelementptr inbounds %struct.ieee80211_txq, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %drv_priv92 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %sta, ptr %drv_priv92, align 4
  br label %out

out:                                              ; preds = %if.then90, %if.end19.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end.out_crit_edge ], [ 0, %if.then90 ], [ 0, %if.end19.out_crit_edge ], [ -28, %entry.out_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef %sta) #9
  %call7 = tail call i32 @mt76_connac_mcu_uni_add_dev(ptr noundef %3, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext false) #9
  %conv = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 37, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drv_priv, align 8
  %conv43 = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv43
  %neg = xor i32 %shl, -1
  %vif_mask = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 35
  %11 = ptrtoint ptr %vif_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif_mask, align 4
  %and = and i32 %12, %neg
  store i32 %and, ptr %vif_mask, align 4
  %omac_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %13 = ptrtoint ptr %omac_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %omac_idx, align 1
  %sh_prom = zext i8 %14 to i64
  %shl46 = shl nuw i64 1, %sh_prom
  %neg47 = xor i64 %shl46, -1
  %omac_mask = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %omac_mask to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %omac_mask, align 8
  %and48 = and i64 %16, %neg47
  store i64 %and48, ptr %omac_mask, align 8
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %sta_poll_lock = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #9
  %poll_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %17 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %18, %poll_list
  br i1 %cmp.i.not, label %entry.if.end53_crit_edge, label %if.then51

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %poll_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then51.list_del_init.exit_crit_edge

if.then51.list_del_init.exit_crit_edge:           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %poll_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then51.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 49
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %poll_list, ptr %prev.i3.i, align 4
  br label %if.end53

if.end53:                                         ; preds = %list_del_init.exit, %entry.if.end53_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #9
  %27 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @mt76_tx_status_lock(ptr noundef %3, ptr noundef nonnull %list.i) #9
  %call.i81 = call ptr @mt76_tx_status_skb_get(ptr noundef %3, ptr noundef %sta, i32 noundef -1, ptr noundef nonnull %list.i) #9
  call void @mt76_tx_status_unlock(ptr noundef %3, ptr noundef nonnull %list.i) #9
  %pktid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  call void @idr_destroy(ptr noundef %pktid.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_config(ptr noundef %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %and = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #9
  %dev1.i = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %mac_work.i = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 18
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work.i) #9
  %pm.i = getelementptr inbounds %struct.mt7921_dev, ptr %7, i32 0, i32 9
  %mutex.i.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %7, ptr noundef %pm.i) #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state.i) #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  tail call void @mt76_set_channel(ptr noundef %13) #9
  %call32.i = tail call i32 @mt7921_mcu_set_chan_info(ptr noundef %5, i32 noundef 2285) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.out.i_crit_edge

if.then.out.i_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt7921_mac_set_timing(ptr noundef %5) #9
  tail call void @mt7921_mac_reset_counters(ptr noundef %5) #9
  %noise.i = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %noise.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %noise.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end.i, %if.then.out.i_crit_edge
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 8
  %state34.i = getelementptr inbounds %struct.mt76_phy, ptr %16, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state34.i) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %7, ptr noundef %pm.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #9
  %tx_worker.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 26
  %17 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_worker.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %out.i.mt7921_set_channel.exit_crit_edge, label %if.end.i.i

out.i.mt7921_set_channel.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7921_set_channel.exit

if.end.i.i:                                       ; preds = %out.i
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 26, i32 2
  %call.i55.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool1.not.i.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt7921_set_channel.exit_crit_edge

if.end.i.i.mt7921_set_channel.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7921_set_channel.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt7921_set_channel.exit_crit_edge

land.lhs.true.i.i.mt7921_set_channel.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7921_set_channel.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_worker.i, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %23) #9
  br label %mt7921_set_channel.exit

mt7921_set_channel.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt7921_set_channel.exit_crit_edge, %if.end.i.i.mt7921_set_channel.exit_crit_edge, %out.i.mt7921_set_channel.exit_crit_edge
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %mac_work38.i = getelementptr inbounds %struct.mt76_phy, ptr %25, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %27, ptr noundef %mac_work38.i, i32 noundef 25) #9
  br i1 %tobool.not.i, label %if.end, label %mt7921_set_channel.exit.cleanup_crit_edge

mt7921_set_channel.exit.cleanup_crit_edge:        ; preds = %mt7921_set_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mt7921_set_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i77 = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %and6 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 8
  %call9 = tail call i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %and14 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.then16

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw, align 8
  %and17 = and i32 %31, 1
  %rxfilter = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxfilter, align 8
  %and23 = and i32 %33, -262145
  %34 = shl nuw nsw i32 %and17, 18
  %35 = or i32 %34, %and23
  %and23.sink = xor i32 %35, 262144
  store i32 %and23.sink, ptr %rxfilter, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw, align 4
  %shl = shl nuw nsw i32 %and17, 23
  %call46 = tail call i32 %39(ptr noundef %3, i32 noundef -2112983040, i32 noundef 8388608, i32 noundef %shl) #9
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr, align 4
  %rxfilter48 = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %rxfilter48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rxfilter48, align 8
  tail call void %43(ptr noundef %3, i32 noundef -2112991232, i32 noundef %45) #9
  br label %out

out:                                              ; preds = %if.then16, %if.end13.out_crit_edge, %if.then8.out_crit_edge
  %ret.2 = phi i32 [ %call9, %if.then8.out_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end13.out_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %mt7921_set_channel.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ %call32.i, %mt7921_set_channel.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %info, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %5, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #9
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %6 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_short_slot, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool2.not, i32 20, i32 9
  %slottime3 = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %slottime3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slottime3, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp.not = icmp eq i32 %cond, %conv
  br i1 %cmp.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = trunc i32 %cond to i8
  %10 = ptrtoint ptr %slottime3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %slottime3, align 4
  tail call void @mt7921_mac_set_timing(ptr noundef %3) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %and9 = and i32 %changed, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @mt7921_mcu_set_tx(ptr noundef %5, ptr noundef %vif) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %and14 = and i32 %changed, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @mt7921_mcu_uni_bss_ps(ptr noundef %5, ptr noundef %vif) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %and19 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end29_crit_edge, label %if.then21

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @mt7921_mcu_sta_update(ptr noundef %5, ptr noundef null, ptr noundef %vif, i1 noundef zeroext true, i32 noundef 2) #9
  %11 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm, align 128, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %if.then21.if.end29_crit_edge, label %if.then25

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %13 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %assoc, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool26 = icmp ne i8 %14, 0
  %call27 = tail call i32 @mt7921_mcu_set_beacon_filter(ptr noundef %5, ptr noundef %vif, i1 noundef zeroext %tobool26) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then21.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  %and30 = and i32 %changed, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %call33 = tail call i32 @mt76_connac_mcu_update_arp_filter(ptr noundef %5, ptr noundef %drv_priv, ptr noundef %info) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %5, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %rxfilter = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxfilter, align 8
  %and = and i32 %7, -2301170
  store i32 %and, ptr %rxfilter, align 8
  %8 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_flags, align 4
  %and2 = and i32 %9, 64
  %and4 = and i32 %7, -2826226
  %and2.lobit = lshr exact i32 %and2, 6
  %10 = xor i32 %and2.lobit, 1
  %mul = mul nuw nsw i32 %10, 525056
  %or7 = or i32 %mul, %and4
  store i32 %or7, ptr %rxfilter, align 8
  %11 = load i32, ptr %total_flags, align 4
  %and9 = and i32 %11, 4
  %or10 = or i32 %and9, %and2
  %and12 = and i32 %or7, -2097396
  %and9.lobit = lshr exact i32 %and9, 1
  %12 = or i32 %and12, %and9.lobit
  %or19 = xor i32 %12, 2
  store i32 %or19, ptr %rxfilter, align 8
  %13 = load i32, ptr %total_flags, align 4
  %and23 = and i32 %13, 32
  %or24 = or i32 %or10, %and23
  %and26 = and i32 %or19, -3203314
  %and23.lobit = lshr exact i32 %and23, 5
  %14 = xor i32 %and23.lobit, 1
  %mul31 = mul nuw nsw i32 %14, 1105920
  %or33 = or i32 %and26, %mul31
  store i32 %or33, ptr %rxfilter, align 8
  store i32 %or24, ptr %total_flags, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr, align 4
  %19 = load i32, ptr %rxfilter, align 8
  tail call void %18(ptr noundef %3, i32 noundef -2112991232, i32 noundef %19) #9
  %20 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_flags, align 4
  %and37 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %rmw42 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw42, align 4
  br i1 %tobool38.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 %25(ptr noundef %3, i32 noundef -2112991228, i32 noundef 496, i32 noundef 0) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 %25(ptr noundef %3, i32 noundef -2112991228, i32 noundef 0, i32 noundef 496) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 1, label %entry.land.lhs.true_crit_edge
    i32 7, label %entry.land.lhs.true_crit_edge102
  ]

entry.land.lhs.true_crit_edge102:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge102
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %10, label %land.lhs.true.if.end_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true15_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true15_crit_edge103
  ]

land.lhs.true.land.lhs.true15_crit_edge103:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

land.lhs.true.land.lhs.true15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true.land.lhs.true15_crit_edge, %land.lhs.true.land.lhs.true15_crit_edge103
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 8
  %14 = and i16 %13, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cipher18 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %cipher18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cipher18, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %16, label %if.end.cleanup_crit_edge [
    i32 1027078, label %sw.bb
    i32 1027073, label %if.end.sw.bb22_crit_edge
    i32 1027077, label %if.end.sw.bb22_crit_edge104
    i32 1027074, label %if.end.sw.epilog_crit_edge
    i32 1027076, label %if.end.sw.epilog_crit_edge105
    i32 1027082, label %if.end.sw.epilog_crit_edge106
    i32 1027080, label %if.end.sw.epilog_crit_edge107
    i32 1027081, label %if.end.sw.epilog_crit_edge108
    i32 1339905, label %if.end.sw.epilog_crit_edge109
  ]

if.end.sw.epilog_crit_edge109:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge108:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge107:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge106:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge105:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.bb22_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22

if.end.sw.bb22_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags19 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %18 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags19, align 8
  %20 = or i16 %19, 1024
  store i16 %20, ptr %flags19, align 8
  %hw_key_idx2 = getelementptr inbounds %struct.mt76_wcid, ptr %cond, i32 0, i32 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end.sw.bb22_crit_edge, %if.end.sw.bb22_crit_edge104
  %wep_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 5
  %21 = ptrtoint ptr %wep_sta to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wep_sta, align 8
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %sw.bb22.cleanup_crit_edge, label %sw.bb22.sw.epilog_crit_edge

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb22.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge105, %if.end.sw.epilog_crit_edge106, %if.end.sw.epilog_crit_edge107, %if.end.sw.epilog_crit_edge108, %if.end.sw.epilog_crit_edge109
  %wcid_keyidx.0 = phi ptr [ %hw_key_idx, %if.end.sw.epilog_crit_edge ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge105 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge106 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge107 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge108 ], [ %hw_key_idx, %if.end.sw.epilog_crit_edge109 ], [ %hw_key_idx, %sw.bb22.sw.epilog_crit_edge ], [ %hw_key_idx2, %sw.bb ]
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp27 = icmp eq i32 %cmd, 0
  br i1 %cmp27, label %sw.epilog.if.end37_crit_edge, label %if.else

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.else:                                          ; preds = %sw.epilog
  %23 = ptrtoint ptr %wcid_keyidx.0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wcid_keyidx.0, align 1
  %conv31 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv31)
  %cmp32 = icmp eq i32 %conv, %conv31
  br i1 %cmp32, label %if.else.if.end37_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %sw.epilog.if.end37_crit_edge
  %spec.select = phi ptr [ null, %if.else.if.end37_crit_edge ], [ %key, %sw.epilog.if.end37_crit_edge ]
  %storemerge = phi i8 [ -1, %if.else.if.end37_crit_edge ], [ %5, %sw.epilog.if.end37_crit_edge ]
  %25 = ptrtoint ptr %wcid_keyidx.0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %wcid_keyidx.0, align 1
  tail call void @mt76_wcid_key_setup(ptr noundef %3, ptr noundef %cond, ptr noundef %spec.select) #9
  %call44 = tail call i32 @mt7921_mcu_add_key(ptr noundef %3, ptr noundef %vif, ptr noundef %cond, ptr noundef %key, i32 noundef %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end47:                                         ; preds = %if.end37
  %26 = ptrtoint ptr %cipher18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher18, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %27, label %if.end47.out_crit_edge [
    i32 1027077, label %if.end47.if.then55_crit_edge
    i32 1027073, label %if.end47.if.then55_crit_edge110
  ]

if.end47.if.then55_crit_edge110:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.end47.if.then55_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then55:                                        ; preds = %if.end47.if.then55_crit_edge, %if.end47.if.then55_crit_edge110
  %wep_sta56 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 5
  %29 = ptrtoint ptr %wep_sta56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wep_sta56, align 8
  %call57 = tail call i32 @mt7921_mcu_add_key(ptr noundef %3, ptr noundef %vif, ptr noundef %30, ptr noundef %key, i32 noundef %cmd) #9
  br label %out

out:                                              ; preds = %if.then55, %if.end47.out_crit_edge, %if.end37.out_crit_edge, %if.else.out_crit_edge
  %err.0 = phi i32 [ %call44, %if.end37.out_crit_edge ], [ %call57, %if.then55 ], [ 0, %if.else.out_crit_edge ], [ 0, %if.end47.out_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.bb22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %land.lhs.true15.cleanup_crit_edge ], [ -95, %sw.bb22.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_set_rekey_data(ptr noundef %hw, ptr noundef %vif, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_connac_mcu_update_gtk_rekey(ptr noundef %hw, ptr noundef %vif, ptr noundef %data) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_connac_mcu_hw_scan(ptr noundef %1, ptr noundef %vif, ptr noundef %req) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_cancel_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_connac_mcu_cancel_hw_scan(ptr noundef %1, ptr noundef %vif) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_start_sched_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %req, ptr nocapture noundef readnone %ies) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_connac_mcu_sched_scan_req(ptr noundef %1, ptr noundef %vif, ptr noundef %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @mt76_connac_mcu_sched_scan_enable(ptr noundef %1, ptr noundef %vif, i1 noundef zeroext true) #9
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call2, %if.end ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_stop_sched_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_connac_mcu_sched_scan_enable(ptr noundef %1, ptr noundef %vif, i1 noundef zeroext false) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %mib1 = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10
  %dev = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %5, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #9
  %rts_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %rts_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rts_cnt, align 4
  %dot11RTSSuccessCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 3
  %8 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dot11RTSSuccessCount, align 4
  %rts_retries_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %rts_retries_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rts_retries_cnt, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dot11RTSFailureCount, align 4
  %fcs_err_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 1
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
  %pm5 = getelementptr inbounds %struct.mt7921_dev, ptr %19, i32 0, i32 9
  tail call void @mt76_connac_power_save_sched(ptr noundef %19, ptr noundef %pm5) #9
  %mutex.i16 = getelementptr inbounds %struct.mt76_dev, ptr %19, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i16) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_connac_mcu_set_rts_thresh(ptr noundef %3, i32 noundef %val, i8 noundef zeroext 0) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_sta_state(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef %old_state, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ds_enable, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call2 = tail call i32 @mt76_connac_sta_state_dp(ptr noundef %3, i32 noundef %old_state, i32 noundef %new_state) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @mt76_sta_state(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef %old_state, i32 noundef %new_state) #9
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7921_sta_statistics(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %sta, ptr nocapture noundef %sinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 1
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 3
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %legacy, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %legacy7 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %legacy7 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %1, ptr %legacy7, align 2
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mcs, align 1
  %mcs9 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %mcs9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %mcs9, align 1
  %nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 5
  %8 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nss, align 2
  %nss11 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 3
  %10 = ptrtoint ptr %nss11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %nss11, align 4
  %bw = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 6
  %11 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bw, align 1
  %bw13 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 4
  %13 = ptrtoint ptr %bw13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %bw13, align 1
  %he_gi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 7
  %14 = ptrtoint ptr %he_gi to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %he_gi, align 2
  %he_gi15 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 5
  %16 = ptrtoint ptr %he_gi15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %he_gi15, align 2
  %he_dcm = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 8
  %17 = ptrtoint ptr %he_dcm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %he_dcm, align 1
  %he_dcm17 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 6
  %19 = ptrtoint ptr %he_dcm17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %he_dcm17, align 1
  %he_ru_alloc = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 9
  %20 = ptrtoint ptr %he_ru_alloc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %he_ru_alloc, align 2
  %he_ru_alloc19 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 7
  %22 = ptrtoint ptr %he_ru_alloc19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %he_ru_alloc19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then4
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rate, align 2
  %txrate22 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %25 = ptrtoint ptr %txrate22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %txrate22, align 8
  %26 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sinfo, align 8
  %or = or i64 %27, 256
  store i64 %or, ptr %sinfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7921_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_params = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1
  %0 = sub i16 3, %queue
  %1 = and i16 %0, 255
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %queue_params, i32 0, i32 %idxprom
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %params, i32 14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mt7921_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %omac_idx1 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %omac_idx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %omac_idx1, align 1
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  %phi.cast25 = zext i8 %5 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast25, 2
  %phi.bo27 = add nuw nsw i32 %phi.bo, -2112966488
  %cond = select i1 %cmp, i32 -2112966488, i32 %phi.bo27
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw, align 4
  %call7 = tail call i32 %9(ptr noundef %3, i32 noundef %cond, i32 noundef 0, i32 noundef 3) #9
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call9 = tail call i32 %13(ptr noundef %3, i32 noundef -2112966528) #9
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call12 = tail call i32 %17(ptr noundef %3, i32 noundef -2112966524) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %tsf.sroa.5.0.insert.ext = zext i32 %call12 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call9 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  ret i64 %tsf.sroa.0.0.insert.insert
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %omac_idx1 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %omac_idx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %omac_idx1, align 1
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ugt i8 %5, 3
  %phi.cast23 = zext i8 %5 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast23, 2
  %phi.bo25 = add nuw nsw i32 %phi.bo, -2112966488
  %cond = select i1 %cmp, i32 -2112966488, i32 %phi.bo25
  %tsf.sroa.5.0.extract.trunc = trunc i64 %timestamp to i32
  %tsf.sroa.0.0.extract.shift = lshr i64 %timestamp, 32
  %tsf.sroa.0.0.extract.trunc = trunc i64 %tsf.sroa.0.0.extract.shift to i32
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  tail call void %9(ptr noundef %3, i32 noundef -2112966528, i32 noundef %tsf.sroa.0.0.extract.trunc) #9
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr6, align 4
  tail call void %13(ptr noundef %3, i32 noundef -2112966524, i32 noundef %tsf.sroa.5.0.extract.trunc) #9
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  %call11 = tail call i32 %17(ptr noundef %3, i32 noundef %cond, i32 noundef 0, i32 noundef 1) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  %drv_priv7 = getelementptr inbounds %struct.ieee80211_txq, ptr %9, i32 0, i32 5
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %13, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 6, label %sw.bb15
    i32 4, label %if.end.sw.bb17_crit_edge
    i32 5, label %if.end.sw.bb17_crit_edge75
    i32 2, label %sw.bb21
    i32 3, label %sw.bb24
  ]

if.end.sw.bb17_crit_edge75:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i16 %7 to i8
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf_size, align 4
  %call9 = tail call i32 @mt76_rx_aggr_start(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %conv, i16 noundef zeroext %11, i16 noundef zeroext %16) #9
  %call10 = tail call i32 @mt7921_mcu_uni_rx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext true) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = trunc i16 %7 to i8
  tail call void @mt76_rx_aggr_stop(ptr noundef %3, ptr noundef %drv_priv, i8 noundef zeroext %conv13) #9
  %call14 = tail call i32 @mt7921_mcu_uni_rx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %aggr = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %17 = ptrtoint ptr %aggr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %aggr, align 1
  %send_bar = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 2
  %18 = ptrtoint ptr %send_bar to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %send_bar, align 2
  %call16 = tail call i32 @mt7921_mcu_uni_tx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext true) #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge75
  %aggr18 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %19 = ptrtoint ptr %aggr18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %aggr18, align 1
  %ampdu_state = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 2, i32 5
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %ampdu_state) #9
  %call20 = tail call i32 @mt7921_mcu_uni_tx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ampdu_state23 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 2, i32 5
  tail call void @_set_bit(i32 noundef %idxprom, ptr noundef %ampdu_state23) #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %aggr25 = getelementptr inbounds %struct.mt76_txq, ptr %drv_priv7, i32 0, i32 3
  %20 = ptrtoint ptr %aggr25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %aggr25, align 1
  %ampdu_state27 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 2, i32 5
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %ampdu_state27) #9
  %call28 = tail call i32 @mt7921_mcu_uni_tx_ba(ptr noundef %3, ptr noundef %params, i1 noundef zeroext false) #9
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %sw.bb17, %sw.bb15, %sw.bb11, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb24 ], [ 1, %sw.bb21 ], [ 0, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_survey(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_set_coverage_class(ptr nocapture noundef readonly %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev1 = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %5, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #9
  %6 = tail call i16 @llvm.smax.i16(i16 %coverage_class, i16 0)
  %coverage_class7 = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %coverage_class7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %coverage_class7, align 2
  tail call void @mt7921_mac_set_timing(ptr noundef %3) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %5, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_testmode_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_testmode_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1319) #9
  %call4 = tail call zeroext i1 @mt76_has_tx_pending(ptr noundef %3) #9
  br i1 %call4, label %if.then11, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then11:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %tx_wait = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 31
  %call1352 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call1553 = call zeroext i1 @mt76_has_tx_pending(ptr noundef %3) #9
  br i1 %call1553, label %if.then11.cleanup_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %__ret12.155 = phi i32 [ %__ret12.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then11.cleanup_crit_edge ]
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret12.155) #9
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call15 = call zeroext i1 @mt76_has_tx_pending(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool20.not = icmp eq i32 %call33, 0
  %spec.store.select38 = select i1 %tobool20.not, i32 1, i32 %call33
  %__ret12.1 = select i1 %call15, i32 %call33, i32 %spec.store.select38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1)
  %tobool26.not = icmp eq i32 %__ret12.1, 0
  %not.call15 = xor i1 %call15, true
  %5 = select i1 %not.call15, i1 true, i1 %tobool26.not
  br i1 %5, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end36

if.end36:                                         ; preds = %for.end, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ant)
  %tobool77.not = icmp ne i32 %tx_ant, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_ant, i32 %rx_ant)
  %cmp.not = icmp eq i32 %tx_ant, %rx_ant
  %or.cond = and i1 %tobool77.not, %cmp.not
  br i1 %or.cond, label %lor.lhs.false79, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false79:                                  ; preds = %entry
  %10 = tail call i32 @llvm.cttz.i32(i32 %tx_ant, i1 true), !range !41
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call.i)
  %cmp80.not = icmp slt i32 %10, %call.i
  br i1 %cmp80.not, label %cond.false146, label %lor.lhs.false79.cleanup_crit_edge

lor.lhs.false79.cleanup_crit_edge:                ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false146:                                    ; preds = %lor.lhs.false79
  %call.i202 = tail call i32 @__sw_hweight8(i32 noundef %tx_ant) #9
  %notmask = shl nsw i32 -1, %call.i202
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %tx_ant)
  %cmp150.not = icmp eq i32 %sub, %tx_ant
  %notmask199 = shl nsw i32 -1, %10
  %sub157 = xor i32 %notmask199, -1
  %tx_ant.addr.0 = select i1 %cmp150.not, i32 %tx_ant, i32 %sub157
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i203 = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %conv159 = trunc i32 %tx_ant.addr.0 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv159, ptr %antenna_mask, align 8
  %conv160 = trunc i32 %tx_ant.addr.0 to i16
  %14 = load ptr, ptr %5, align 8
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %chainmask to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv160, ptr %chainmask, align 2
  %16 = load ptr, ptr %5, align 8
  tail call void @mt76_set_stream_caps(ptr noundef %16, i1 noundef zeroext true) #9
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 8
  %cap.i = getelementptr inbounds %struct.mt76_phy, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cap.i, align 8, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %cond.false146.if.end.i_crit_edge, label %if.then.i

cond.false146.if.end.i_crit_edge:                 ; preds = %cond.false146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %cond.false146
  call void @__sanitizer_cov_trace_pc() #11
  %iftype.i = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 2
  %call.i204 = tail call fastcc i32 @mt7921_init_he_caps(ptr noundef %5, i32 noundef 0, ptr noundef %iftype.i) #9
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %iftype_data.i = getelementptr inbounds %struct.mt76_phy, ptr %22, i32 0, i32 10, i32 0, i32 10
  %23 = ptrtoint ptr %iftype_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %iftype.i, ptr %iftype_data.i, align 4
  %conv.i = trunc i32 %call.i204 to i16
  %n_iftype_data.i = getelementptr inbounds %struct.mt76_phy, ptr %22, i32 0, i32 10, i32 0, i32 9
  %24 = ptrtoint ptr %n_iftype_data.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %n_iftype_data.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.false146.if.end.i_crit_edge
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 8
  %has_5ghz.i = getelementptr inbounds %struct.mt76_phy, ptr %26, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %has_5ghz.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_5ghz.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool4.not.i = icmp eq i8 %28, 0
  br i1 %tobool4.not.i, label %if.end.i.mt7921_set_stream_he_caps.exit_crit_edge, label %if.then5.i

if.end.i.mt7921_set_stream_he_caps.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7921_set_stream_he_caps.exit

if.then5.i:                                       ; preds = %if.end.i
  %arrayidx7.i = getelementptr %struct.mt7921_phy, ptr %5, i32 0, i32 2, i32 1
  %call9.i = tail call fastcc i32 @mt7921_init_he_caps(ptr noundef %5, i32 noundef 1, ptr noundef %arrayidx7.i) #9
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 8
  %iftype_data12.i = getelementptr inbounds %struct.mt76_phy, ptr %30, i32 0, i32 11, i32 0, i32 10
  %31 = ptrtoint ptr %iftype_data12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx7.i, ptr %iftype_data12.i, align 4
  %conv13.i = trunc i32 %call9.i to i16
  %n_iftype_data14.i = getelementptr inbounds %struct.mt76_phy, ptr %30, i32 0, i32 11, i32 0, i32 9
  %32 = ptrtoint ptr %n_iftype_data14.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv13.i, ptr %n_iftype_data14.i, align 4
  %33 = load ptr, ptr %5, align 8
  %has_6ghz.i = getelementptr inbounds %struct.mt76_phy, ptr %33, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %has_6ghz.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_6ghz.i, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not.i = icmp eq i8 %35, 0
  br i1 %tobool17.not.i, label %if.then5.i.mt7921_set_stream_he_caps.exit_crit_edge, label %if.then18.i

if.then5.i.mt7921_set_stream_he_caps.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7921_set_stream_he_caps.exit

if.then18.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20.i = getelementptr %struct.mt7921_phy, ptr %5, i32 0, i32 2, i32 3
  %call22.i = tail call fastcc i32 @mt7921_init_he_caps(ptr noundef %5, i32 noundef 3, ptr noundef %arrayidx20.i) #9
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 8
  %iftype_data25.i = getelementptr inbounds %struct.mt76_phy, ptr %37, i32 0, i32 12, i32 0, i32 10
  %38 = ptrtoint ptr %iftype_data25.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx20.i, ptr %iftype_data25.i, align 4
  %conv26.i = trunc i32 %call22.i to i16
  %n_iftype_data27.i = getelementptr inbounds %struct.mt76_phy, ptr %37, i32 0, i32 12, i32 0, i32 9
  %39 = ptrtoint ptr %n_iftype_data27.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv26.i, ptr %n_iftype_data27.i, align 4
  br label %mt7921_set_stream_he_caps.exit

mt7921_set_stream_he_caps.exit:                   ; preds = %if.then18.i, %if.then5.i.mt7921_set_stream_he_caps.exit_crit_edge, %if.end.i.mt7921_set_stream_he_caps.exit_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mt7921_set_stream_he_caps.exit, %lor.lhs.false79.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7921_set_stream_he_caps.exit ], [ -22, %lor.lhs.false79.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_antenna(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7921_get_et_sset_count(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %cond = select i1 %cmp, i32 64, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_get_et_stats(ptr noundef %hw, ptr nocapture noundef readonly %vif, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  %wi = alloca %struct.mt76_ethtool_worker_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %dev1 = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wi) #9
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
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %5, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %5, ptr noundef %pm) #9
  tail call void @mt7921_mac_update_mib_stats(ptr noundef %3) #9
  %tx_ampdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 11
  %16 = ptrtoint ptr %tx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ampdu_cnt, align 4
  %conv5 = zext i32 %17 to i64
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv5, ptr %data, align 8
  %tx_mpdu_attempts_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 12
  %19 = ptrtoint ptr %tx_mpdu_attempts_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_mpdu_attempts_cnt, align 4
  %conv6 = zext i32 %20 to i64
  %arrayidx8 = getelementptr i64, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv6, ptr %arrayidx8, align 8
  %tx_mpdu_success_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 13
  %22 = ptrtoint ptr %tx_mpdu_success_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_mpdu_success_cnt, align 4
  %conv9 = zext i32 %23 to i64
  %arrayidx11 = getelementptr i64, ptr %data, i32 2
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv9, ptr %arrayidx11, align 8
  %tx_pkt_ebf_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 14
  %25 = ptrtoint ptr %tx_pkt_ebf_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_pkt_ebf_cnt, align 4
  %conv12 = zext i32 %26 to i64
  %arrayidx14 = getelementptr i64, ptr %data, i32 3
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv12, ptr %arrayidx14, align 8
  %tx_pkt_ibf_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 15
  %28 = ptrtoint ptr %tx_pkt_ibf_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pkt_ibf_cnt, align 4
  %conv15 = zext i32 %29 to i64
  %arrayidx17 = getelementptr i64, ptr %data, i32 4
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv15, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 0
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19, align 4
  %conv20 = zext i32 %32 to i64
  %arrayidx22 = getelementptr i64, ptr %data, i32 5
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv20, ptr %arrayidx22, align 8
  %arrayidx19.1 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 1
  %34 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx19.1, align 4
  %conv20.1 = zext i32 %35 to i64
  %arrayidx22.1 = getelementptr i64, ptr %data, i32 6
  %36 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv20.1, ptr %arrayidx22.1, align 8
  %arrayidx19.2 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 2
  %37 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19.2, align 4
  %conv20.2 = zext i32 %38 to i64
  %arrayidx22.2 = getelementptr i64, ptr %data, i32 7
  %39 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv20.2, ptr %arrayidx22.2, align 8
  %arrayidx19.3 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 3
  %40 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx19.3, align 4
  %conv20.3 = zext i32 %41 to i64
  %arrayidx22.3 = getelementptr i64, ptr %data, i32 8
  %42 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv20.3, ptr %arrayidx22.3, align 8
  %arrayidx19.4 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 4
  %43 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx19.4, align 4
  %conv20.4 = zext i32 %44 to i64
  %arrayidx22.4 = getelementptr i64, ptr %data, i32 9
  %45 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv20.4, ptr %arrayidx22.4, align 8
  %arrayidx19.5 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 5
  %46 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx19.5, align 4
  %conv20.5 = zext i32 %47 to i64
  %arrayidx22.5 = getelementptr i64, ptr %data, i32 10
  %48 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv20.5, ptr %arrayidx22.5, align 8
  %arrayidx19.6 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 6
  %49 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx19.6, align 4
  %conv20.6 = zext i32 %50 to i64
  %arrayidx22.6 = getelementptr i64, ptr %data, i32 11
  %51 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv20.6, ptr %arrayidx22.6, align 8
  %arrayidx19.7 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 7
  %52 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx19.7, align 4
  %conv20.7 = zext i32 %53 to i64
  %arrayidx22.7 = getelementptr i64, ptr %data, i32 12
  %54 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv20.7, ptr %arrayidx22.7, align 8
  %arrayidx19.8 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 8
  %55 = ptrtoint ptr %arrayidx19.8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx19.8, align 4
  %conv20.8 = zext i32 %56 to i64
  %arrayidx22.8 = getelementptr i64, ptr %data, i32 13
  %57 = ptrtoint ptr %arrayidx22.8 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv20.8, ptr %arrayidx22.8, align 8
  %arrayidx19.9 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 9
  %58 = ptrtoint ptr %arrayidx19.9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx19.9, align 4
  %conv20.9 = zext i32 %59 to i64
  %arrayidx22.9 = getelementptr i64, ptr %data, i32 14
  %60 = ptrtoint ptr %arrayidx22.9 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv20.9, ptr %arrayidx22.9, align 8
  %arrayidx19.10 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 10
  %61 = ptrtoint ptr %arrayidx19.10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx19.10, align 4
  %conv20.10 = zext i32 %62 to i64
  %arrayidx22.10 = getelementptr i64, ptr %data, i32 15
  %63 = ptrtoint ptr %arrayidx22.10 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv20.10, ptr %arrayidx22.10, align 8
  %arrayidx19.11 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 11
  %64 = ptrtoint ptr %arrayidx19.11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx19.11, align 4
  %conv20.11 = zext i32 %65 to i64
  %arrayidx22.11 = getelementptr i64, ptr %data, i32 16
  %66 = ptrtoint ptr %arrayidx22.11 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv20.11, ptr %arrayidx22.11, align 8
  %arrayidx19.12 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 12
  %67 = ptrtoint ptr %arrayidx19.12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx19.12, align 4
  %conv20.12 = zext i32 %68 to i64
  %arrayidx22.12 = getelementptr i64, ptr %data, i32 17
  %69 = ptrtoint ptr %arrayidx22.12 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv20.12, ptr %arrayidx22.12, align 8
  %arrayidx19.13 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 13
  %70 = ptrtoint ptr %arrayidx19.13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx19.13, align 4
  %conv20.13 = zext i32 %71 to i64
  %arrayidx22.13 = getelementptr i64, ptr %data, i32 18
  %72 = ptrtoint ptr %arrayidx22.13 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv20.13, ptr %arrayidx22.13, align 8
  %arrayidx19.14 = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 14
  %73 = ptrtoint ptr %arrayidx19.14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx19.14, align 4
  %conv20.14 = zext i32 %74 to i64
  %arrayidx22.14 = getelementptr i64, ptr %data, i32 19
  %75 = ptrtoint ptr %arrayidx22.14 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv20.14, ptr %arrayidx22.14, align 8
  %ba_miss_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 4
  %76 = ptrtoint ptr %ba_miss_cnt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ba_miss_cnt, align 8
  %conv25 = zext i32 %77 to i64
  %arrayidx27 = getelementptr i64, ptr %data, i32 20
  %78 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv25, ptr %arrayidx27, align 8
  %tx_bf_ibf_ppdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 5
  %79 = ptrtoint ptr %tx_bf_ibf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_bf_ibf_ppdu_cnt, align 4
  %conv28 = zext i32 %80 to i64
  %arrayidx30 = getelementptr i64, ptr %data, i32 21
  %81 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv28, ptr %arrayidx30, align 8
  %tx_bf_ebf_ppdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 6
  %82 = ptrtoint ptr %tx_bf_ebf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_bf_ebf_ppdu_cnt, align 4
  %conv31 = zext i32 %83 to i64
  %arrayidx33 = getelementptr i64, ptr %data, i32 22
  %84 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv31, ptr %arrayidx33, align 8
  %tx_bf_rx_fb_all_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 7
  %85 = ptrtoint ptr %tx_bf_rx_fb_all_cnt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_bf_rx_fb_all_cnt, align 4
  %conv34 = zext i32 %86 to i64
  %arrayidx36 = getelementptr i64, ptr %data, i32 23
  %87 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv34, ptr %arrayidx36, align 8
  %tx_bf_rx_fb_he_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 8
  %88 = ptrtoint ptr %tx_bf_rx_fb_he_cnt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_bf_rx_fb_he_cnt, align 4
  %conv37 = zext i32 %89 to i64
  %arrayidx39 = getelementptr i64, ptr %data, i32 24
  %90 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv37, ptr %arrayidx39, align 8
  %tx_bf_rx_fb_vht_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 9
  %91 = ptrtoint ptr %tx_bf_rx_fb_vht_cnt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_bf_rx_fb_vht_cnt, align 4
  %conv40 = zext i32 %92 to i64
  %arrayidx42 = getelementptr i64, ptr %data, i32 25
  %93 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv40, ptr %arrayidx42, align 8
  %tx_bf_rx_fb_ht_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 10
  %94 = ptrtoint ptr %tx_bf_rx_fb_ht_cnt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_bf_rx_fb_ht_cnt, align 4
  %conv43 = zext i32 %95 to i64
  %arrayidx45 = getelementptr i64, ptr %data, i32 26
  %96 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv43, ptr %arrayidx45, align 8
  %arrayidx50 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 0
  %97 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx50, align 4
  %conv51 = zext i32 %98 to i64
  %arrayidx53 = getelementptr i64, ptr %data, i32 27
  %99 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv51, ptr %arrayidx53, align 8
  %arrayidx50.1 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 1
  %100 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx50.1, align 4
  %conv51.1 = zext i32 %101 to i64
  %arrayidx53.1 = getelementptr i64, ptr %data, i32 28
  %102 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv51.1, ptr %arrayidx53.1, align 8
  %arrayidx50.2 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 2
  %103 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx50.2, align 4
  %conv51.2 = zext i32 %104 to i64
  %arrayidx53.2 = getelementptr i64, ptr %data, i32 29
  %105 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv51.2, ptr %arrayidx53.2, align 8
  %arrayidx50.3 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 3
  %106 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx50.3, align 4
  %conv51.3 = zext i32 %107 to i64
  %arrayidx53.3 = getelementptr i64, ptr %data, i32 30
  %108 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv51.3, ptr %arrayidx53.3, align 8
  %arrayidx50.4 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 4
  %109 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx50.4, align 4
  %conv51.4 = zext i32 %110 to i64
  %arrayidx53.4 = getelementptr i64, ptr %data, i32 31
  %111 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv51.4, ptr %arrayidx53.4, align 8
  %arrayidx50.5 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 5
  %112 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx50.5, align 4
  %conv51.5 = zext i32 %113 to i64
  %arrayidx53.5 = getelementptr i64, ptr %data, i32 32
  %114 = ptrtoint ptr %arrayidx53.5 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv51.5, ptr %arrayidx53.5, align 8
  %arrayidx50.6 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 6
  %115 = ptrtoint ptr %arrayidx50.6 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx50.6, align 4
  %conv51.6 = zext i32 %116 to i64
  %arrayidx53.6 = getelementptr i64, ptr %data, i32 33
  %117 = ptrtoint ptr %arrayidx53.6 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv51.6, ptr %arrayidx53.6, align 8
  %arrayidx50.7 = getelementptr %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 20, i32 7
  %118 = ptrtoint ptr %arrayidx50.7 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx50.7, align 4
  %conv51.7 = zext i32 %119 to i64
  %arrayidx53.7 = getelementptr i64, ptr %data, i32 34
  %120 = ptrtoint ptr %arrayidx53.7 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv51.7, ptr %arrayidx53.7, align 8
  %rx_mpdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 16
  %121 = ptrtoint ptr %rx_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_mpdu_cnt, align 4
  %conv57 = zext i32 %122 to i64
  %arrayidx59 = getelementptr i64, ptr %data, i32 35
  %123 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv57, ptr %arrayidx59, align 8
  %rx_ampdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 17
  %124 = ptrtoint ptr %rx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_ampdu_cnt, align 4
  %conv60 = zext i32 %125 to i64
  %arrayidx62 = getelementptr i64, ptr %data, i32 36
  %126 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv60, ptr %arrayidx62, align 8
  %rx_ampdu_bytes_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 18
  %127 = ptrtoint ptr %rx_ampdu_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_ampdu_bytes_cnt, align 4
  %conv63 = zext i32 %128 to i64
  %arrayidx65 = getelementptr i64, ptr %data, i32 37
  %129 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv63, ptr %arrayidx65, align 8
  %rx_ba_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %3, i32 0, i32 10, i32 19
  %130 = ptrtoint ptr %rx_ba_cnt to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_ba_cnt, align 4
  %conv66 = zext i32 %131 to i64
  %arrayidx68 = getelementptr i64, ptr %data, i32 38
  %132 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv66, ptr %arrayidx68, align 8
  %133 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 39, ptr %7, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %hw, ptr noundef nonnull @mt7921_ethtool_worker, ptr noundef nonnull %wi) #9
  call void @mt76_connac_power_save_sched(ptr noundef %5, ptr noundef %pm) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  %134 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not = icmp eq i32 %135, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %136 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %8, align 4
  %add = add i32 %137, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp73.not = icmp eq i32 %add, 64
  br i1 %cmp73.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev76 = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 13
  %138 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev76, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.2, i32 noundef %add, i32 noundef 64) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wi) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7921_get_et_strings(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memcpy(ptr %data, ptr @mt7921_gstrings_stats, i32 2048)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_txpower(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wake_tx_queue(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_set_sar_specs(ptr noundef %hw, ptr noundef %sar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %call1 = tail call i32 @mt76_init_sar_power(ptr noundef %hw, ptr noundef %sar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call2, %if.end ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_sta_set_decap_offload(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %call16 = tail call i32 @mt76_connac_mcu_sta_update_hdr_trans(ptr noundef %3, ptr noundef %vif, ptr noundef %drv_priv, i32 noundef 131075) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_pm_queue_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_mcu_set_suspend_iter(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_uni_add_dev(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

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
declare dso_local void @mt76_set_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_set_timing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_uni_bss_ps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_beacon_filter(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_update_arp_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wcid_key_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_add_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @mt76_connac_sta_state_dp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_rx_aggr_start(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_uni_rx_ba(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx_aggr_stop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_uni_tx_ba(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76_has_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_stream_caps(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_update_mib_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_ethtool_worker(ptr noundef %wi_data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5, i32 1
  tail call void @mt76_ethtool_worker(ptr noundef %wi_data, ptr noundef %stats) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_ethtool_worker(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_init_sar_power(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_sta_update_hdr_trans(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab___mt7921_start, !1, !"__ksymtab___mt7921_start", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 253, i32 1}
!2 = !{ptr @__ksymtab_mt7921_mac_sta_add, !3, !"__ksymtab_mt7921_mac_sta_add", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 661, i32 1}
!4 = !{ptr @__ksymtab_mt7921_mac_sta_assoc, !5, !"__ksymtab_mt7921_mac_sta_assoc", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 683, i32 1}
!6 = !{ptr @__ksymtab_mt7921_mac_sta_remove, !7, !"__ksymtab_mt7921_mac_sta_remove", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 715, i32 1}
!8 = !{ptr @mt7921_ops, !9, !"mt7921_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 1358, i32 28}
!10 = !{ptr @__ksymtab_mt7921_ops, !11, !"__ksymtab_mt7921_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 1403, i32 1}
!12 = !{ptr @__UNIQUE_ID_file475, !13, !"__UNIQUE_ID_file475", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 1405, i32 1}
!14 = !{ptr @__UNIQUE_ID_license476, !13, !"__UNIQUE_ID_license476", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author477, !16, !"__UNIQUE_ID_author477", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 1406, i32 1}
!17 = !{ptr @xa_init_flags.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 1318, i32 2}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 1035, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mt7921_get_et_stats._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt7921_get_et_stats._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mt7921_gstrings_stats, !30, !"mt7921_gstrings_stats", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/main.c", i32 875, i32 19}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
!41 = !{i32 0, i32 33}
!42 = !{i64 2158619598}
