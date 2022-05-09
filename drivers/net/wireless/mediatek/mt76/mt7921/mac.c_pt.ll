; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7921_sta_ps\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_sta_ps\09\09\09\09"
module asm "\09.long\09__crc_mt7921_sta_ps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_sta_ps:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_sta_ps\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_sta_ps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_mac_sta_poll\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_mac_sta_poll\09\09\09\09"
module asm "\09.long\09__crc_mt7921_mac_sta_poll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_mac_sta_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_mac_sta_poll\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_mac_sta_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_mac_write_txwi\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_mac_write_txwi\09\09\09\09"
module asm "\09.long\09__crc_mt7921_mac_write_txwi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_mac_write_txwi:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_mac_write_txwi\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_mac_write_txwi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_tx_check_aggr\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_tx_check_aggr\09\09\09\09"
module asm "\09.long\09__crc_mt7921_tx_check_aggr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_tx_check_aggr:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_tx_check_aggr\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_tx_check_aggr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_queue_rx_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_queue_rx_skb\09\09\09\09"
module asm "\09.long\09__crc_mt7921_queue_rx_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_queue_rx_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_queue_rx_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_queue_rx_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_update_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_update_channel\09\09\09\09"
module asm "\09.long\09__crc_mt7921_update_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_update_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_update_channel\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_update_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_radiotap_he = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_radiotap_he_mu = type { i16, i16, [4 x i8], [4 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt7921_dev = type { %union.anon.145, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt7921_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [8 x i32], i32, i32, %struct.mt76_sta_stats, %struct.mt7921_sta_key_conf }
%struct.mt76_sta_stats = type { [12 x i64], [4 x i64], [4 x i64], [16 x i64] }
%struct.mt7921_sta_key_conf = type { i8, [16 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt7921_vif = type { %struct.mt76_vif, %struct.mt7921_sta, ptr, ptr, %struct.ewma_rssi, [4 x %struct.ieee80211_tx_queue_params] }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mt7921_hif_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_mt7921_sta_ps = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_sta_ps = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_sta_ps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_sta_ps to i32), ptr @__kstrtab_mt7921_sta_ps, ptr @__kstrtabns_mt7921_sta_ps }, section "___ksymtab_gpl+mt7921_sta_ps", align 4
@__kstrtab_mt7921_mac_sta_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_mac_sta_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_mac_sta_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_mac_sta_poll to i32), ptr @__kstrtab_mt7921_mac_sta_poll, ptr @__kstrtabns_mt7921_mac_sta_poll }, section "___ksymtab_gpl+mt7921_mac_sta_poll", align 4
@__kstrtab_mt7921_mac_write_txwi = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_mac_write_txwi = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_mac_write_txwi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_mac_write_txwi to i32), ptr @__kstrtab_mt7921_mac_write_txwi, ptr @__kstrtabns_mt7921_mac_write_txwi }, section "___ksymtab_gpl+mt7921_mac_write_txwi", align 4
@__kstrtab_mt7921_tx_check_aggr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_tx_check_aggr = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_tx_check_aggr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_tx_check_aggr to i32), ptr @__kstrtab_mt7921_tx_check_aggr, ptr @__kstrtabns_mt7921_tx_check_aggr }, section "___ksymtab_gpl+mt7921_tx_check_aggr", align 4
@mt7921_mac_add_txs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/mac.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_mt7921_queue_rx_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_queue_rx_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_queue_rx_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_queue_rx_skb to i32), ptr @__kstrtab_mt7921_queue_rx_skb, ptr @__kstrtabns_mt7921_queue_rx_skb }, section "___ksymtab_gpl+mt7921_queue_rx_skb", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_mt7921_update_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_update_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_update_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_update_channel to i32), ptr @__kstrtab_mt7921_update_channel, ptr @__kstrtabns_mt7921_update_channel }, section "___ksymtab_gpl+mt7921_update_channel", align 4
@mt7921_mac_reset_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip reset\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7921_mac_reset_work\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7921_mac_reset_work._entry_ptr = internal global ptr @mt7921_mac_reset_work._entry, section ".printk_index", align 4
@mt7921_mac_reset_work._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 1391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chip reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7921_mac_reset_work._entry_ptr.8 = internal global ptr @mt7921_mac_reset_work._entry.6, section ".printk_index", align 4
@__const.mt7921_mac_reset_work.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mt7921_rx_get_wcid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bridge_tunnel_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@mt7921_mac_decode_he_radiotap.known = internal constant { %struct.ieee80211_radiotap_he, [20 x i8] } { %struct.ieee80211_radiotap_he { i16 -7033, i16 29184, i16 0, i16 0, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@mt7921_mac_decode_he_mu_radiotap.mu_known = internal constant { %struct.ieee80211_radiotap_he_mu, [20 x i8] } { %struct.ieee80211_radiotap_he_mu { i16 20673, i16 1028, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33792, i64 53248]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 7, i64 11, i64 15, i64 20, i64 21, i64 127]
@__sancov_gen_cov_switch_values.14 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 45056]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.25 = internal global [71 x i64] [i64 69, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1180, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1376, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1391, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 723, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"known\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 270, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"mu_known\00", align 1
@___asan_gen_.66 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 224, i32 47 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_mt7921_mac_sta_poll, ptr @__ksymtab_mt7921_mac_write_txwi, ptr @__ksymtab_mt7921_queue_rx_skb, ptr @__ksymtab_mt7921_sta_ps, ptr @__ksymtab_mt7921_tx_check_aggr, ptr @__ksymtab_mt7921_update_channel, ptr @mt7921_mac_reset_work._entry, ptr @mt7921_mac_reset_work._entry.6, ptr @mt7921_mac_reset_work._entry_ptr, ptr @mt7921_mac_reset_work._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mt7921_mac_decode_he_radiotap.known, ptr @mt7921_mac_decode_he_mu_radiotap.mu_known], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_mac_reset_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_mac_reset_work._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_mac_decode_he_radiotap.known to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_mac_decode_he_mu_radiotap.mu_known to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mt7921_sta_ps(ptr nocapture %mdev, ptr nocapture %sta, i1 zeroext %ps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef %idx, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef -2113060304, i32 noundef 1023, i32 noundef %or) #10
  %call10 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef -2113060304, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #10
  ret i1 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_sta_poll(ptr noundef %dev) #1 align 64 {
entry:
  %sta_poll_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sta_poll_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %sta_poll_list, i32 0, i32 1
  %1 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sta_poll_list, ptr %sta_poll_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sta_poll_list, ptr %0, align 4
  %sta_poll_lock = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #10
  %sta_poll_list1 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %sta_poll_list1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sta_poll_list1, align 4
  %cmp.i.not.i = icmp eq ptr %4, %sta_poll_list1
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sta_poll_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sta_poll_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %sta_poll_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %sta_poll_list1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sta_poll_list1, ptr %sta_poll_list1, align 4
  store ptr %sta_poll_list1, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #10
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #10
  %13 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %sta_poll_list, align 4
  %cmp.i.not196 = icmp eq ptr %14, %sta_poll_list
  br i1 %cmp.i.not196, label %list_splice_init.exit.while.end_crit_edge, label %if.end.lr.ph

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.lr.ph:                                     ; preds = %list_splice_init.exit
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %if.end

if.end:                                           ; preds = %cleanup113.if.end_crit_edge, %if.end.lr.ph
  %15 = phi ptr [ %14, %if.end.lr.ph ], [ %112, %cleanup113.if.end_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #10
  %idx7 = getelementptr i8, ptr %15, i32 -190
  %24 = ptrtoint ptr %idx7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %idx7, align 2
  %conv = zext i16 %25 to i32
  %shl.i = shl nuw nsw i32 %conv, 8
  %and9.i = and i32 %shl.i, 32512
  %add.i = or i32 %and9.i, -2113044400
  %airtime_ac = getelementptr i8, ptr %15, i32 8
  %26 = ptrtoint ptr %airtime_ac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %airtime_ac, align 4
  %arrayidx11 = getelementptr i8, ptr %15, i32 24
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11, align 4
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call12 = call i32 %33(ptr noundef %dev, i32 noundef %add.i) #10
  %34 = ptrtoint ptr %airtime_ac to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call12, ptr %airtime_ac, align 4
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %add17 = or i32 %and9.i, -2113044396
  %call18 = call i32 %38(ptr noundef %dev, i32 noundef %add17) #10
  %39 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call18, ptr %arrayidx11, align 4
  %40 = ptrtoint ptr %airtime_ac to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %airtime_ac, align 4
  %sub = sub i32 %41, %27
  %sub28 = sub i32 %call18, %29
  %or = or i32 %29, %27
  %and = and i32 %or, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp ne i32 %and, 0
  %add33 = or i32 %and9.i, -2113044392
  %arrayidx.1 = getelementptr i8, ptr %15, i32 12
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1, align 4
  %arrayidx11.1 = getelementptr i8, ptr %15, i32 28
  %44 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.1, align 4
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call12.1 = call i32 %49(ptr noundef %dev, i32 noundef %add33) #10
  %50 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call12.1, ptr %arrayidx.1, align 4
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %add17.1 = or i32 %and9.i, -2113044388
  %call18.1 = call i32 %54(ptr noundef %dev, i32 noundef %add17.1) #10
  %55 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call18.1, ptr %arrayidx11.1, align 4
  %56 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1, align 4
  %sub.1 = sub i32 %57, %43
  %sub28.1 = sub i32 %call18.1, %45
  %or.1 = or i32 %45, %43
  %and.1 = and i32 %or.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool30.not.1 = icmp ne i32 %and.1, 0
  %add33.1 = or i32 %and9.i, -2113044384
  %arrayidx.2 = getelementptr i8, ptr %15, i32 16
  %58 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.2, align 4
  %arrayidx11.2 = getelementptr i8, ptr %15, i32 32
  %60 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx11.2, align 4
  %62 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call12.2 = call i32 %65(ptr noundef %dev, i32 noundef %add33.1) #10
  %66 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call12.2, ptr %arrayidx.2, align 4
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %add17.2 = or i32 %and9.i, -2113044380
  %call18.2 = call i32 %70(ptr noundef %dev, i32 noundef %add17.2) #10
  %71 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call18.2, ptr %arrayidx11.2, align 4
  %72 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.2, align 4
  %sub.2 = sub i32 %73, %59
  %sub28.2 = sub i32 %call18.2, %61
  %or.2 = or i32 %61, %59
  %and.2 = and i32 %or.2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool30.not.2 = icmp ne i32 %and.2, 0
  %add33.2 = or i32 %and9.i, -2113044376
  %arrayidx.3 = getelementptr i8, ptr %15, i32 20
  %74 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.3, align 4
  %arrayidx11.3 = getelementptr i8, ptr %15, i32 36
  %76 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx11.3, align 4
  %78 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %call12.3 = call i32 %81(ptr noundef %dev, i32 noundef %add33.2) #10
  %82 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call12.3, ptr %arrayidx.3, align 4
  %83 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %add17.3 = or i32 %and9.i, -2113044372
  %call18.3 = call i32 %86(ptr noundef %dev, i32 noundef %add17.3) #10
  %87 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call18.3, ptr %arrayidx11.3, align 4
  %88 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.3, align 4
  %sub.3 = sub i32 %89, %75
  %sub28.3 = sub i32 %call18.3, %77
  %or.3 = or i32 %77, %75
  %and.3 = and i32 %or.3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool30.not.3 = icmp ne i32 %and.3, 0
  %90 = select i1 %tobool30.not.3, i1 true, i1 %tobool30.not.2
  %91 = select i1 %90, i1 true, i1 %tobool30.not.1
  %spec.select.3 = select i1 %91, i1 true, i1 %tobool30.not
  br i1 %spec.select.3, label %mt7921_mac_wtbl_update.exit, label %list_del_init.exit.if.end39_crit_edge

list_del_init.exit.if.end39_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

mt7921_mac_wtbl_update.exit:                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmw.i, align 4
  %and9.i179 = and i32 %conv, 1023
  %or.i180 = or i32 %and9.i179, 4096
  %call.i = call i32 %95(ptr noundef %dev, i32 noundef -2113060304, i32 noundef 1023, i32 noundef %or.i180) #10
  %call10.i = call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef -2113060304, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #10
  %96 = call ptr @memset(ptr %airtime_ac, i32 0, i32 32)
  br label %if.end39

if.end39:                                         ; preds = %mt7921_mac_wtbl_update.exit, %list_del_init.exit.if.end39_crit_edge
  %sta41 = getelementptr i8, ptr %15, i32 -186
  %97 = ptrtoint ptr %sta41 to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load = load i8, ptr %sta41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool42.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool42.not, label %if.end39.cleanup113_crit_edge, label %if.end44

if.end39.cleanup113_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.end44:                                         ; preds = %if.end39
  %add.ptr47 = getelementptr i8, ptr %15, i32 -548
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %75)
  %tobool58.not = icmp eq i32 %89, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.3, i32 %77)
  %tobool59.not = icmp eq i32 %call18.3, %77
  %or.cond = select i1 %tobool58.not, i1 %tobool59.not, i1 false
  br i1 %or.cond, label %if.end44.cleanup_crit_edge, label %if.end61

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr47, i8 noundef zeroext 6, i32 noundef %sub.3, i32 noundef %sub28.3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end44.cleanup_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %59)
  %tobool58.not.1 = icmp eq i32 %73, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.2, i32 %61)
  %tobool59.not.1 = icmp eq i32 %call18.2, %61
  %or.cond.1 = select i1 %tobool58.not.1, i1 %tobool59.not.1, i1 false
  br i1 %or.cond.1, label %cleanup.cleanup.1_crit_edge, label %if.end61.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.1

if.end61.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr47, i8 noundef zeroext 4, i32 noundef %sub.2, i32 noundef %sub28.2) #10
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end61.1, %cleanup.cleanup.1_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %43)
  %tobool58.not.2 = icmp eq i32 %57, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.1, i32 %45)
  %tobool59.not.2 = icmp eq i32 %call18.1, %45
  %or.cond.2 = select i1 %tobool58.not.2, i1 %tobool59.not.2, i1 false
  br i1 %or.cond.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end61.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.2

if.end61.2:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr47, i8 noundef zeroext 0, i32 noundef %sub.1, i32 noundef %sub28.1) #10
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end61.2, %cleanup.1.cleanup.2_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %27)
  %tobool58.not.3 = icmp eq i32 %41, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %29)
  %tobool59.not.3 = icmp eq i32 %call18, %29
  %or.cond.3 = select i1 %tobool58.not.3, i1 %tobool59.not.3, i1 false
  br i1 %or.cond.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end61.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.3

if.end61.3:                                       ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr47, i8 noundef zeroext 1, i32 noundef %sub, i32 noundef %sub28) #10
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end61.3, %cleanup.2.cleanup.3_crit_edge
  %rate69 = getelementptr i8, ptr %15, i32 -200
  %add.i186 = or i32 %and9.i, -2113044452
  %98 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call74 = call i32 %101(ptr noundef %dev, i32 noundef %add.i186) #10
  %bw75 = getelementptr i8, ptr %15, i32 -195
  %102 = ptrtoint ptr %bw75 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bw75, align 1
  %switch.tableidx = add i8 %103, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %104 = icmp ult i8 %switch.tableidx, 3
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %bw.0 = select i1 %104, i32 %switch.offset, i32 0
  %105 = ptrtoint ptr %rate69 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %rate69, align 2
  %conv79 = zext i8 %106 to i32
  %and80 = and i32 %conv79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #12
  %107 = shl nuw nsw i32 %bw.0, 1
  %conv85 = or i32 %107, 24
  %shl = shl i32 3, %conv85
  %and87 = and i32 %shl, %call74
  %shr = lshr i32 %and87, %conv85
  %conv89 = trunc i32 %shr to i8
  %he_gi = getelementptr i8, ptr %15, i32 -194
  %108 = ptrtoint ptr %he_gi to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv89, ptr %he_gi, align 2
  br label %cleanup113

if.else:                                          ; preds = %cleanup.3
  %and92 = and i32 %conv79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.else.cleanup113_crit_edge, label %if.then94

if.else.cleanup113_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.then94:                                        ; preds = %if.else
  %add96 = or i32 %bw.0, 12
  %shl97 = shl nuw i32 1, %add96
  %and98 = and i32 %shl97, %call74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else105, label %if.then100

if.then100:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  %or103 = or i8 %106, 4
  %109 = ptrtoint ptr %rate69 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %or103, ptr %rate69, align 2
  br label %cleanup113

if.else105:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  %and108 = and i8 %106, -5
  %110 = ptrtoint ptr %rate69 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %and108, ptr %rate69, align 2
  br label %cleanup113

cleanup113:                                       ; preds = %if.else105, %if.then100, %if.else.cleanup113_crit_edge, %if.then82, %if.end39.cleanup113_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #10
  %111 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %sta_poll_list, align 4
  %cmp.i.not = icmp eq ptr %112, %sta_poll_list
  br i1 %cmp.i.not, label %cleanup113.while.end_crit_edge, label %cleanup113.if.end_crit_edge

cleanup113.if.end_crit_edge:                      ; preds = %cleanup113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup113.while.end_crit_edge:                   ; preds = %cleanup113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup113.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sta_poll_list) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_write_txwi(ptr noundef %dev, ptr nocapture noundef %txwi, ptr noundef %skb, ptr nocapture noundef readonly %wcid, ptr noundef readonly %key, i32 noundef %pid, i1 noundef zeroext %beacon) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 32, i32 64
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb.i, align 8
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %omac_idx6 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %8 = ptrtoint ptr %omac_idx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %omac_idx6, align 1
  %wmm_idx7 = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 3
  %10 = ptrtoint ptr %wmm_idx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wmm_idx7, align 1
  %phi.cast404 = zext i8 %9 to i32
  %phi.bo405 = shl nuw i32 %phi.cast404, 24
  %phi.bo406 = and i32 %phi.bo405, 1056964608
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wmm_idx.0 = phi i8 [ %11, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %omac_idx.0 = phi i32 [ %phi.bo406, %if.then ], [ 0, %entry.if.end_crit_edge ]
  br i1 %beacon, label %if.end.do.body34_crit_edge, label %if.else

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

if.else:                                          ; preds = %if.end
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp11 = icmp ugt i16 %13, 3
  %not.cmp383 = xor i1 %cmp, true
  %conv17 = zext i1 %not.cmp383 to i32
  br i1 %cmp11, label %if.else.do.body34_crit_edge, label %if.else18

if.else.do.body34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i8 %wmm_idx.0, 2
  %conv25 = trunc i16 %13 to i8
  %sub.i = or i8 %mul, 3
  %add = sub nuw i8 %sub.i, %conv25
  %phi.cast = zext i8 %add to i32
  %phi.bo = shl i32 %phi.cast, 25
  br label %do.body34

do.body34:                                        ; preds = %if.else18, %if.else.do.body34_crit_edge, %if.end.do.body34_crit_edge
  %q_idx.0 = phi i32 [ %phi.bo, %if.else18 ], [ 603979776, %if.end.do.body34_crit_edge ], [ 536870912, %if.else.do.body34_crit_edge ]
  %p_fmt.0 = phi i32 [ %conv17, %if.else18 ], [ 3, %if.end.do.body34_crit_edge ], [ %conv17, %if.else.do.body34_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %add35 = add i32 %15, %cond
  %and52 = and i32 %add35, 65535
  %shl77 = shl nuw nsw i32 %p_fmt.0, 23
  %or = or i32 %and52, %shl77
  %or105 = or i32 %or, %q_idx.0
  %16 = tail call i32 @llvm.bswap.i32(i32 %or105)
  %17 = ptrtoint ptr %txwi to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %txwi, align 4
  %idx = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 6
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idx, align 2
  %20 = and i16 %19, 1023
  %and133 = zext i16 %20 to i32
  %or134 = or i32 %omac_idx.0, %and133
  %or161 = or i32 %or134, -2147483648
  %21 = tail call i32 @llvm.bswap.i32(i32 %or161)
  %arrayidx162 = getelementptr i32, ptr %txwi, i32 1
  %22 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx162, align 4
  %arrayidx163 = getelementptr i32, ptr %txwi, i32 2
  %23 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx163, align 4
  %tobool190.not = icmp eq ptr %key, null
  %val.0 = select i1 %tobool190.not, i32 30720, i32 30722
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i, align 8
  %and195 = lshr i32 %25, 2
  %26 = and i32 %and195, 1
  %27 = or i32 %26, %val.0
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx200 = getelementptr i32, ptr %txwi, i32 3
  %29 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx200, align 4
  %arrayidx201 = getelementptr i32, ptr %txwi, i32 4
  %30 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx201, align 4
  %and225 = and i32 %pid, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pid)
  %cmp226 = icmp sgt i32 %pid, 1
  %or229 = or i32 %and225, 1024
  %spec.select = select i1 %cmp226, i32 %or229, i32 %and225
  %31 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %arrayidx231 = getelementptr i32, ptr %txwi, i32 5
  %32 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx231, align 4
  %arrayidx232 = getelementptr i32, ptr %txwi, i32 6
  %33 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx232, align 4
  %amsdu = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 9
  %34 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %amsdu, align 2
  %35 = and i8 %bf.load, 32
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 13
  %arrayidx236 = getelementptr i32, ptr %txwi, i32 7
  %38 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx236, align 4
  br i1 %tobool3.not, label %if.else239, label %if.then238

if.then238:                                       ; preds = %do.body34
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %39 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %priority.i, align 4
  %41 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %amsdu, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then238.mt7921_mac_write_txwi_8023.exit_crit_edge, label %if.then.i

if.then238.mt7921_mac_write_txwi_8023.exit_crit_edge: ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_mac_write_txwi_8023.exit

if.then.i:                                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #12
  %wme.i = getelementptr i8, ptr %wcid, i32 -136
  %42 = ptrtoint ptr %wme.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wme.i, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i = icmp eq i8 %43, 0
  %phi.cast.i = select i1 %tobool2.not.i, i32 0, i32 8
  br label %mt7921_mac_write_txwi_8023.exit

mt7921_mac_write_txwi_8023.exit:                  ; preds = %if.then.i, %if.then238.mt7921_mac_write_txwi_8023.exit_crit_edge
  %wmm.0.off0.i = phi i32 [ %phi.cast.i, %if.then.i ], [ 0, %if.then238.mt7921_mac_write_txwi_8023.exit_crit_edge ]
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
  %46 = or i32 %spec.select.i, %or161
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx162, align 4
  %or100.i = shl nuw nsw i32 %wmm.0.off0.i, 24
  %49 = or i32 %or100.i, 536870912
  %50 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx163, align 4
  %shl153.i = shl nuw nsw i32 %wmm.0.off0.i, 8
  %or155.i = or i32 %shl153.i, %37
  %or157.i = or i32 %or155.i, 8192
  br label %if.end240

if.else239:                                       ; preds = %do.body34
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr1.i, align 4
  %55 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.i = icmp ne i32 %55, 0
  %priority.i395 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %56 = ptrtoint ptr %priority.i395 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %priority.i395, align 4
  %58 = trunc i32 %57 to i8
  %conv.i396 = and i8 %58, 15
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %52, align 2
  %61 = and i16 %60, -1024
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i16 %61, label %if.else239.do.end54.i_crit_edge [
    i16 -12288, label %land.lhs.true.i
    i16 -31744, label %if.then21.i
  ]

if.else239.do.end54.i_crit_edge:                  ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54.i

land.lhs.true.i:                                  ; preds = %if.else239
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 6
  %63 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp.i397 = icmp eq i8 %64, 3
  br i1 %cmp.i397, label %land.lhs.true7.i, label %land.lhs.true.i.do.end54.i_crit_edge

land.lhs.true.i.do.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %u9.i = getelementptr inbounds %struct.anon.169, ptr %u.i, i32 0, i32 1
  %65 = ptrtoint ptr %u9.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %u9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp11.i = icmp eq i8 %66, 0
  br i1 %cmp11.i, label %if.then.i399, label %land.lhs.true7.i.do.end54.i_crit_edge

land.lhs.true7.i.do.end54.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54.i

if.then.i399:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  %capab15.i = getelementptr inbounds %struct.anon.169, ptr %u.i, i32 0, i32 1, i32 0, i32 2
  %67 = ptrtoint ptr %capab15.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %capab15.i, align 1
  %69 = lshr i16 %68, 10
  %or.i = or i32 %31, 4194304
  %70 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i, ptr %arrayidx231, align 4
  %71 = trunc i16 %69 to i8
  %conv18.i = and i8 %71, 15
  br label %do.end54.i

if.then21.i:                                      ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #12
  %control22.i = getelementptr inbounds %struct.ieee80211_bar, ptr %52, i32 0, i32 4
  %72 = ptrtoint ptr %control22.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %control22.i, align 1
  %74 = trunc i16 %73 to i8
  %75 = lshr i8 %74, 4
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then21.i, %if.then.i399, %land.lhs.true7.i.do.end54.i_crit_edge, %land.lhs.true.i.do.end54.i_crit_edge, %if.else239.do.end54.i_crit_edge
  %tid.0.i = phi i8 [ %conv18.i, %if.then.i399 ], [ %75, %if.then21.i ], [ %conv.i396, %land.lhs.true7.i.do.end54.i_crit_edge ], [ %conv.i396, %land.lhs.true.i.do.end54.i_crit_edge ], [ %conv.i396, %if.else239.do.end54.i_crit_edge ]
  %call72.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #10
  %76 = shl i32 %call72.i, 10
  %and73.i = and i32 %76, 63488
  %conv95.i = zext i8 %tid.0.i to i32
  %shl96.i = shl nuw nsw i32 %conv95.i, 20
  %and97.i = and i32 %shl96.i, 7340032
  %or74.i = or i32 %and73.i, %and97.i
  %or98.i = or i32 %or74.i, 131072
  %77 = tail call i32 @llvm.bswap.i32(i32 %or98.i) #10
  %78 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx162, align 4
  %or100.i403 = or i32 %79, %77
  store i32 %or100.i403, ptr %arrayidx162, align 4
  %80 = lshr i16 %60, 8
  %81 = trunc i16 %80 to i8
  %82 = lshr i8 %81, 2
  %conv104.i = and i8 %82, 3
  %83 = lshr i8 %81, 4
  %conv132.i = zext i8 %conv104.i to i32
  %shl133.i = shl nuw nsw i32 %conv132.i, 4
  %conv158.i = zext i8 %83 to i32
  %or161.i = or i32 %shl133.i, %conv158.i
  %84 = lshr exact i32 %55, 14
  %or191.i = or i32 %or161.i, %84
  %call2.not.i = xor i1 %tobool.i.i, true
  %brmerge.i = select i1 %tobool190.not, i1 true, i1 %call2.not.i
  br i1 %brmerge.i, label %do.end54.i.if.end206.i_crit_edge, label %land.lhs.true196.i

do.end54.i.if.end206.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

land.lhs.true196.i:                               ; preds = %do.end54.i
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %86)
  %cmp.i4.i = icmp ult i32 %86, 25
  br i1 %cmp.i4.i, label %land.lhs.true196.i.if.end206.i_crit_edge, label %if.end.i.i

land.lhs.true196.i.if.end206.i_crit_edge:         ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end.i.i:                                       ; preds = %land.lhs.true196.i
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %88, align 2
  %91 = and i16 %90, -1024
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %91, label %if.end.i.i.if.end206.i_crit_edge [
    i16 -24576, label %if.end.i.i.land.lhs.true199.i_crit_edge
    i16 -16384, label %if.end.i.i.land.lhs.true199.i_crit_edge407
    i16 -12288, label %if.then5.i.i.i
  ]

if.end.i.i.land.lhs.true199.i_crit_edge407:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true199.i

if.end.i.i.land.lhs.true199.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true199.i

if.end.i.i.if.end206.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i
  %93 = and i16 %90, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp.i46.not.i.i.i = icmp eq i16 %93, 0
  br i1 %cmp.i46.not.i.i.i, label %if.end9.i.i.i, label %if.then5.i.i.i.land.lhs.true199.i_crit_edge

if.then5.i.i.i.land.lhs.true199.i_crit_edge:      ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true199.i

if.end9.i.i.i:                                    ; preds = %if.then5.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %88, i32 24
  %94 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr.i.i.i, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %95, label %if.end9.i.i.i.land.lhs.true199.i_crit_edge [
    i8 4, label %if.end9.i.i.i.if.end206.i_crit_edge
    i8 7, label %if.end9.i.i.i.if.end206.i_crit_edge408
    i8 11, label %if.end9.i.i.i.if.end206.i_crit_edge409
    i8 15, label %if.end9.i.i.i.if.end206.i_crit_edge410
    i8 20, label %if.end9.i.i.i.if.end206.i_crit_edge411
    i8 21, label %if.end9.i.i.i.if.end206.i_crit_edge412
    i8 127, label %if.end9.i.i.i.if.end206.i_crit_edge413
  ]

if.end9.i.i.i.if.end206.i_crit_edge413:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge412:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge411:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge410:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge409:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge408:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.if.end206.i_crit_edge:              ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end9.i.i.i.land.lhs.true199.i_crit_edge:       ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true199.i

land.lhs.true199.i:                               ; preds = %if.end9.i.i.i.land.lhs.true199.i_crit_edge, %if.then5.i.i.i.land.lhs.true199.i_crit_edge, %if.end.i.i.land.lhs.true199.i_crit_edge, %if.end.i.i.land.lhs.true199.i_crit_edge407
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %97 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027078, i32 %98)
  %cmp200.i = icmp eq i32 %98, 1027078
  br i1 %cmp200.i, label %if.then202.i, label %land.lhs.true199.i.if.end206.i_crit_edge

land.lhs.true199.i.if.end206.i_crit_edge:         ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.then202.i:                                     ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #12
  %or203.i = or i32 %or191.i, 2048
  %99 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx200, align 4
  %and205.i = and i32 %100, -33554433
  store i32 %and205.i, ptr %arrayidx200, align 4
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then202.i, %land.lhs.true199.i.if.end206.i_crit_edge, %if.end9.i.i.i.if.end206.i_crit_edge, %if.end9.i.i.i.if.end206.i_crit_edge408, %if.end9.i.i.i.if.end206.i_crit_edge409, %if.end9.i.i.i.if.end206.i_crit_edge410, %if.end9.i.i.i.if.end206.i_crit_edge411, %if.end9.i.i.i.if.end206.i_crit_edge412, %if.end9.i.i.i.if.end206.i_crit_edge413, %if.end.i.i.if.end206.i_crit_edge, %land.lhs.true196.i.if.end206.i_crit_edge, %do.end54.i.if.end206.i_crit_edge
  %val.0.i = phi i32 [ %or203.i, %if.then202.i ], [ %or191.i, %land.lhs.true199.i.if.end206.i_crit_edge ], [ %or191.i, %do.end54.i.if.end206.i_crit_edge ], [ %or191.i, %land.lhs.true196.i.if.end206.i_crit_edge ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge408 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge409 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge410 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge411 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge412 ], [ %or191.i, %if.end9.i.i.i.if.end206.i_crit_edge413 ], [ %or191.i, %if.end.i.i.if.end206.i_crit_edge ]
  %101 = and i16 %60, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %101)
  %cmp.i5.i = icmp ne i16 %101, 2048
  %brmerge2.i = select i1 %cmp.i5.i, i1 true, i1 %tobool.i.i
  br i1 %brmerge2.i, label %if.end206.i.if.then213.i_crit_edge, label %lor.lhs.false210.i

if.end206.i.if.then213.i_crit_edge:               ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then213.i

lor.lhs.false210.i:                               ; preds = %if.end206.i
  %102 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cb.i, align 8
  %and211.i = and i32 %103, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %lor.lhs.false210.i.if.end215.i_crit_edge, label %lor.lhs.false210.i.if.then213.i_crit_edge

lor.lhs.false210.i.if.then213.i_crit_edge:        ; preds = %lor.lhs.false210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then213.i

lor.lhs.false210.i.if.end215.i_crit_edge:         ; preds = %lor.lhs.false210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215.i

if.then213.i:                                     ; preds = %lor.lhs.false210.i.if.then213.i_crit_edge, %if.end206.i.if.then213.i_crit_edge
  %or214.i = or i32 %val.0.i, -2147483648
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then213.i, %lor.lhs.false210.i.if.end215.i_crit_edge
  %val.1.i = phi i32 [ %or214.i, %if.then213.i ], [ %val.0.i, %lor.lhs.false210.i.if.end215.i_crit_edge ]
  %104 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #10
  %105 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx163, align 4
  %or217.i = or i32 %106, %104
  store i32 %or217.i, ptr %arrayidx163, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %61)
  %cmp.i6.i = icmp eq i16 %61, -32768
  br i1 %cmp.i6.i, label %if.then219.i, label %if.end215.i.if.end224.i_crit_edge

if.end215.i.if.end224.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224.i

if.then219.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx200, align 4
  %and221.i = and i32 %108, -16252961
  %or223.i = or i32 %and221.i, 16252928
  store i32 %or223.i, ptr %arrayidx200, align 4
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.then219.i, %if.end215.i.if.end224.i_crit_edge
  %109 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cb.i, align 8
  %and226.i = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226.i)
  %tobool227.not.i = icmp eq i32 %and226.i, 0
  br i1 %tobool227.not.i, label %if.end224.i.mt7921_mac_write_txwi_80211.exit_crit_edge, label %if.then228.i

if.end224.i.mt7921_mac_write_txwi_80211.exit_crit_edge: ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_mac_write_txwi_80211.exit

if.then228.i:                                     ; preds = %if.end224.i
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %52, i32 0, i32 5
  %111 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %seq_ctrl.i, align 2
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #10
  %114 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %52, align 2
  %116 = and i16 %115, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %116)
  %cmp.i7.i = icmp eq i16 %116, -31744
  br i1 %cmp.i7.i, label %if.then231.i, label %if.then228.i.do.body241.i_crit_edge

if.then228.i.do.body241.i_crit_edge:              ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body241.i

if.then231.i:                                     ; preds = %if.then228.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i, align 4
  %start_seq_num.i = getelementptr inbounds %struct.ieee80211_bar, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %start_seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %start_seq_num.i, align 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #10
  br label %do.body241.i

do.body241.i:                                     ; preds = %if.then231.i, %if.then228.i.do.body241.i_crit_edge
  %seqno.0.i = phi i16 [ %121, %if.then231.i ], [ %113, %if.then228.i.do.body241.i_crit_edge ]
  %122 = lshr i16 %seqno.0.i, 4
  %123 = zext i16 %122 to i32
  %shl266.i = shl nuw nsw i32 %123, 16
  %or268.i = or i32 %shl266.i, -2147483648
  %124 = tail call i32 @llvm.bswap.i32(i32 %or268.i) #10
  %125 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx200, align 4
  %or270.i = or i32 %124, %126
  store i32 %or270.i, ptr %arrayidx200, align 4
  br label %mt7921_mac_write_txwi_80211.exit

mt7921_mac_write_txwi_80211.exit:                 ; preds = %do.body241.i, %if.end224.i.mt7921_mac_write_txwi_80211.exit_crit_edge
  %shl296.i = shl nuw nsw i32 %conv132.i, 12
  %shl322.i = shl nuw nsw i32 %conv158.i, 8
  %or324.i = or i32 %shl296.i, %shl322.i
  %127 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx236, align 4
  %or326.i = or i32 %128, %or324.i
  br label %if.end240

if.end240:                                        ; preds = %mt7921_mac_write_txwi_80211.exit, %mt7921_mac_write_txwi_8023.exit
  %storemerge = phi i32 [ %or157.i, %mt7921_mac_write_txwi_8023.exit ], [ %or326.i, %mt7921_mac_write_txwi_80211.exit ]
  %129 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %storemerge, ptr %arrayidx236, align 4
  %130 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx163, align 4
  %and242 = and i32 %131, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.end240.if.end317_crit_edge, label %if.then244

if.end240.if.end317_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317

if.then244:                                       ; preds = %if.end240
  br i1 %tobool5.not, label %if.then244.cond.end_crit_edge, label %cond.true246

if.then244.cond.end_crit_edge:                    ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true246:                                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  %basic_rates = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 24
  %132 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %basic_rates, align 8
  %134 = tail call i32 @llvm.cttz.i32(i32 %133, i1 true), !range !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %iszero = icmp eq i32 %133, 0
  %sub = select i1 %iszero, i32 -1, i32 %134
  br label %cond.end

cond.end:                                         ; preds = %cond.true246, %if.then244.cond.end_crit_edge
  %cond248 = phi i32 [ %sub, %cond.true246 ], [ 0, %if.then244.cond.end_crit_edge ]
  %or250 = or i32 %131, 2097152
  %135 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or250, ptr %arrayidx163, align 4
  %call251 = tail call zeroext i16 @mt76_calculate_default_rate(ptr noundef %dev, i32 noundef %cond248) #10
  %136 = and i16 %call251, 255
  %137 = lshr i16 %call251, 2
  %138 = and i16 %137, 960
  %or284382 = or i16 %138, %136
  %conv309 = zext i16 %or284382 to i32
  %shl310 = shl nuw nsw i32 %conv309, 16
  %or312 = or i32 %shl310, 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %or312)
  %140 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx232, align 4
  %or314 = or i32 %141, %139
  store i32 %or314, ptr %arrayidx232, align 4
  %142 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx200, align 4
  %or316 = or i32 %143, 16
  store i32 %or316, ptr %arrayidx200, align 4
  br label %if.end317

if.end317:                                        ; preds = %cond.end, %if.end240.if.end317_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mt76_calculate_default_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_tx_check_aggr(ptr noundef %sta, ptr nocapture noundef readonly %txwi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ht_supported, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %2 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %he_cap, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false2.do.end15_crit_edge

lor.lhs.false2.do.end15_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end15:                                         ; preds = %lor.lhs.false2.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge
  %arrayidx = getelementptr i32, ptr %txwi, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = trunc i32 %5 to i16
  %7 = lshr i16 %6, 12
  %conv = and i16 %7, 7
  %conv16 = zext i16 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv)
  %cmp = icmp ugt i16 %conv, 5
  br i1 %cmp, label %do.end15.cleanup_crit_edge, label %if.end19

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  %arrayidx20 = getelementptr i32, ptr %txwi, i32 2
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx20, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = lshr i32 %10, 2
  %shl = and i32 %11, 12
  %and55 = shl i32 %10, 4
  %shl57 = and i32 %and55, 240
  %or = or i32 %shl, %shl57
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %or)
  %cmp60.not = icmp eq i32 %or, 136
  br i1 %cmp60.not, label %if.end65, label %if.end19.cleanup_crit_edge, !prof !54

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.end19
  %ampdu_state = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 5
  %call = tail call i32 @_test_and_set_bit(i32 noundef %conv16, ptr noundef %ampdu_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool67.not = icmp eq i32 %call, 0
  br i1 %tobool67.not, label %if.then68, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef nonnull %sta, i16 noundef zeroext %conv, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end65.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_add_txs(ptr noundef %dev, ptr nocapture noundef readonly %data) local_unnamed_addr #1 align 64 {
entry:
  %list.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.end
  %arrayidx13 = getelementptr i32, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 4
  %8 = and i32 %7, 65283
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245184, i32 %9)
  %cmp58 = icmp ugt i32 %9, 1245184
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %shr31 = lshr exact i32 %9, 16
  %10 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end61.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end61.rcu_read_lock.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end61
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end61.rcu_read_lock.exit_crit_edge
  %arrayidx67 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 %shr31
  %14 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx67, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end76_crit_edge

rcu_read_lock.exit.do.end76_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true.do.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true
  %.b113 = load i1, ptr @mt7921_mac_add_txs.__warned, align 1
  br i1 %.b113, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mt7921_mac_add_txs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1180, ptr noundef nonnull @.str.1) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true.do.end76_crit_edge, %rcu_read_lock.exit.do.end76_crit_edge
  %tobool78.not = icmp eq ptr %15, null
  br i1 %tobool78.not, label %do.end76.out_crit_edge, label %if.end80

do.end76.out_crit_edge:                           ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end80:                                         ; preds = %do.end76
  %stats1.i = getelementptr inbounds %struct.mt7921_sta, ptr %15, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #10
  %16 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @mt76_tx_status_lock(ptr noundef %dev, ptr noundef nonnull %list.i) #10
  %call.i114 = call ptr @mt76_tx_status_skb_get(ptr noundef %dev, ptr noundef nonnull %15, i32 noundef %conv52, ptr noundef nonnull %list.i) #10
  %tobool.not.i115 = icmp eq ptr %call.i114, null
  br i1 %tobool.not.i115, label %if.end80.mt7921_mac_add_txs_skb.exit_crit_edge, label %if.end.i

if.end80.mt7921_mac_add_txs_skb.exit_crit_edge:   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_mac_add_txs_skb.exit

if.end.i:                                         ; preds = %if.end80
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i114, i32 0, i32 3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #10
  %and.i = and i32 %19, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %21, 512
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %22 = getelementptr inbounds %struct.sk_buff, ptr %call.i114, i32 0, i32 3, i32 8
  %ampdu_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i114, i32 0, i32 3, i32 25
  %23 = ptrtoint ptr %ampdu_len.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ampdu_len.i, align 1
  %24 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i.i, align 8
  %and7.i = lshr i32 %25, 9
  %26 = trunc i32 %and7.i to i8
  %27 = and i8 %26, 1
  %ampdu_ack_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i114, i32 0, i32 3, i32 24
  %28 = ptrtoint ptr %ampdu_ack_len.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ampdu_ack_len.i, align 8
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %22, align 8
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 9
  %30 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %if.end5.i.if.then223.i_crit_edge, label %do.end25.i

if.end5.i.if.then223.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

do.end25.i:                                       ; preds = %if.end5.i
  %31 = trunc i32 %19 to i8
  %conv46.i = and i8 %31, 15
  %and63.i = lshr i32 %19, 10
  %32 = trunc i32 %and63.i to i8
  %33 = and i8 %32, 7
  %conv65.i = add nuw nsw i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp.i = icmp ult i8 %33, 4
  br i1 %cmp.i, label %if.then69.i, label %do.end25.i.if.end74.i_crit_edge

do.end25.i.if.end74.i_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then69.i:                                      ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = zext i8 %33 to i32
  %arrayidx73.i = getelementptr %struct.mt7921_sta, ptr %15, i32 0, i32 6, i32 2, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx73.i, align 8
  %inc.i = add i64 %35, 1
  store i64 %inc.i, ptr %arrayidx73.i, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then69.i, %do.end25.i.if.end74.i_crit_edge
  %conv76.i = zext i8 %conv46.i to i32
  %arrayidx81.i = getelementptr %struct.mt7921_sta, ptr %15, i32 0, i32 6, i32 3, i32 %conv76.i
  %36 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx81.i, align 8
  %inc82.i = add i64 %37, 1
  store i64 %inc82.i, ptr %arrayidx81.i, align 8
  %and100.i = lshr i32 %19, 6
  %shr101.i = and i32 %and100.i, 15
  %38 = zext i32 %shr101.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr101.i, label %if.end74.i.if.then223.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end74.i.sw.bb102.i_crit_edge
    i32 2, label %if.end74.i.sw.bb119.i_crit_edge
    i32 3, label %if.end74.i.sw.bb119.i_crit_edge126
    i32 4, label %sw.bb145.i
    i32 8, label %if.end74.i.sw.bb153.i_crit_edge
    i32 9, label %if.end74.i.sw.bb153.i_crit_edge127
    i32 10, label %if.end74.i.sw.bb153.i_crit_edge128
    i32 11, label %if.end74.i.sw.bb153.i_crit_edge129
  ]

if.end74.i.sw.bb153.i_crit_edge129:               ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb153.i

if.end74.i.sw.bb153.i_crit_edge128:               ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb153.i

if.end74.i.sw.bb153.i_crit_edge127:               ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb153.i

if.end74.i.sw.bb153.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb153.i

if.end74.i.sw.bb119.i_crit_edge126:               ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb119.i

if.end74.i.sw.bb119.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb119.i

if.end74.i.sw.bb102.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb102.i

if.end74.i.if.then223.i_crit_edge:                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

sw.bb.i:                                          ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb102.i

sw.bb102.i:                                       ; preds = %sw.bb.i, %if.end74.i.sw.bb102.i_crit_edge
  %cck.0.off0.i = phi i1 [ false, %if.end74.i.sw.bb102.i_crit_edge ], [ true, %sw.bb.i ]
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %39 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chandef.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp103.i = icmp eq i32 %42, 1
  %sband_5g.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  %sband_2g.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  %sband.0.i = select i1 %cmp103.i, ptr %sband_5g.i, ptr %sband_2g.i
  %dev109.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 1
  %43 = ptrtoint ptr %dev109.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev109.i, align 4
  %call113.i = call i32 @mt76_get_rate(ptr noundef %44, ptr noundef %sband.0.i, i32 noundef %conv76.i, i1 noundef zeroext %cck.0.off0.i) #10
  %conv114.i = trunc i32 %call113.i to i8
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bitrates.i, align 4
  %idxprom117.i = and i32 %call113.i, 255
  %bitrate.i = getelementptr %struct.ieee80211_rate, ptr %46, i32 %idxprom117.i, i32 1
  %47 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %bitrate.i, align 4
  br label %sw.epilog.i

sw.bb119.i:                                       ; preds = %if.end74.i.sw.bb119.i_crit_edge, %if.end74.i.sw.bb119.i_crit_edge126
  %mul.i = shl nuw nsw i8 %33, 3
  %add125.i = add nuw nsw i8 %mul.i, %conv46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %add125.i)
  %cmp129.i = icmp ugt i8 %add125.i, 31
  br i1 %cmp129.i, label %sw.bb119.i.if.then223.i_crit_edge, label %if.end132.i

sw.bb119.i.if.then223.i_crit_edge:                ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

if.end132.i:                                      ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #12
  %rate134.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5
  %49 = ptrtoint ptr %rate134.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rate134.i, align 4
  %51 = and i8 %50, 4
  %52 = or i8 %51, 1
  br label %sw.epilog.i

sw.bb145.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv46.i)
  %cmp148.i = icmp ugt i8 %conv46.i, 9
  br i1 %cmp148.i, label %sw.bb145.i.if.then223.i_crit_edge, label %sw.bb145.i.sw.epilog.i_crit_edge

sw.bb145.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb145.i.if.then223.i_crit_edge:                ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

sw.bb153.i:                                       ; preds = %if.end74.i.sw.bb153.i_crit_edge, %if.end74.i.sw.bb153.i_crit_edge127, %if.end74.i.sw.bb153.i_crit_edge128, %if.end74.i.sw.bb153.i_crit_edge129
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv46.i)
  %cmp156.i = icmp ugt i8 %conv46.i, 11
  br i1 %cmp156.i, label %sw.bb153.i.if.then223.i_crit_edge, label %if.end159.i

sw.bb153.i.if.then223.i_crit_edge:                ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

if.end159.i:                                      ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_pc() #12
  %he_gi.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 5
  %53 = ptrtoint ptr %he_gi.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %he_gi.i, align 2
  %55 = lshr i8 %31, 4
  %conv180.i = and i8 %55, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end159.i, %sw.bb145.i.sw.epilog.i_crit_edge, %if.end132.i, %sw.bb102.i
  %rate.sroa.20.0.i = phi i16 [ 0, %if.end159.i ], [ %48, %sw.bb102.i ], [ 0, %if.end132.i ], [ 0, %sw.bb145.i.sw.epilog.i_crit_edge ]
  %rate.sroa.29.0.i = phi i8 [ %54, %if.end159.i ], [ 0, %sw.bb102.i ], [ 0, %if.end132.i ], [ 0, %sw.bb145.i.sw.epilog.i_crit_edge ]
  %rate.sroa.30.0.i = phi i8 [ %conv180.i, %if.end159.i ], [ 0, %sw.bb102.i ], [ 0, %if.end132.i ], [ 0, %sw.bb145.i.sw.epilog.i_crit_edge ]
  %rate.sroa.9.0.i = phi i8 [ %conv46.i, %if.end159.i ], [ %conv114.i, %sw.bb102.i ], [ %add125.i, %if.end132.i ], [ %conv46.i, %sw.bb145.i.sw.epilog.i_crit_edge ]
  %rate.sroa.0.0.i = phi i8 [ 16, %if.end159.i ], [ 0, %sw.bb102.i ], [ %52, %if.end132.i ], [ 2, %sw.bb145.i.sw.epilog.i_crit_edge ]
  %arrayidx182.i = getelementptr [12 x i64], ptr %stats1.i, i32 0, i32 %shr101.i
  %56 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx182.i, align 8
  %inc183.i = add i64 %57, 1
  store i64 %inc183.i, ptr %arrayidx182.i, align 8
  %and200.i = lshr i32 %19, 29
  %shr201.i = and i32 %and200.i, 3
  %58 = zext i32 %shr201.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr201.i, label %sw.default215.i [
    i32 3, label %sw.bb202.i
    i32 2, label %sw.bb205.i
    i32 1, label %sw.bb210.i
  ]

sw.bb202.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx203.i = getelementptr %struct.mt7921_sta, ptr %15, i32 0, i32 6, i32 1, i32 3
  br label %sw.epilog220.i

sw.bb205.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx208.i = getelementptr %struct.mt7921_sta, ptr %15, i32 0, i32 6, i32 1, i32 2
  br label %sw.epilog220.i

sw.bb210.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx213.i = getelementptr %struct.mt7921_sta, ptr %15, i32 0, i32 6, i32 1, i32 1
  br label %sw.epilog220.i

sw.default215.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_bw217.i = getelementptr inbounds %struct.mt7921_sta, ptr %15, i32 0, i32 6, i32 1
  br label %sw.epilog220.i

sw.epilog220.i:                                   ; preds = %sw.default215.i, %sw.bb210.i, %sw.bb205.i, %sw.bb202.i
  %tx_bw217.sink1.i = phi ptr [ %tx_bw217.i, %sw.default215.i ], [ %arrayidx213.i, %sw.bb210.i ], [ %arrayidx208.i, %sw.bb205.i ], [ %arrayidx203.i, %sw.bb202.i ]
  %rate.sroa.25.0.i = phi i8 [ 0, %sw.default215.i ], [ 3, %sw.bb210.i ], [ 4, %sw.bb205.i ], [ 5, %sw.bb202.i ]
  %59 = ptrtoint ptr %tx_bw217.sink1.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tx_bw217.sink1.i, align 8
  %inc219.i = add i64 %60, 1
  store i64 %inc219.i, ptr %tx_bw217.sink1.i, align 8
  %rate221.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5
  %61 = ptrtoint ptr %rate221.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %rate.sroa.0.0.i, ptr %rate221.i, align 4
  %rate.sroa.9.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %rate.sroa.9.0.rate221.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %rate.sroa.9.0.i, ptr %rate.sroa.9.0.rate221.sroa_idx.i, align 1
  %rate.sroa.20.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 2
  %63 = ptrtoint ptr %rate.sroa.20.0.rate221.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %rate.sroa.20.0.i, ptr %rate.sroa.20.0.rate221.sroa_idx.i, align 2
  %rate.sroa.21.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %rate.sroa.21.0.rate221.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv65.i, ptr %rate.sroa.21.0.rate221.sroa_idx.i, align 4
  %rate.sroa.25.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 4
  %65 = ptrtoint ptr %rate.sroa.25.0.rate221.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %rate.sroa.25.0.i, ptr %rate.sroa.25.0.rate221.sroa_idx.i, align 1
  %rate.sroa.29.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 5
  %66 = ptrtoint ptr %rate.sroa.29.0.rate221.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %rate.sroa.29.0.i, ptr %rate.sroa.29.0.rate221.sroa_idx.i, align 2
  %rate.sroa.30.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 6
  %67 = ptrtoint ptr %rate.sroa.30.0.rate221.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %rate.sroa.30.0.i, ptr %rate.sroa.30.0.rate221.sroa_idx.i, align 1
  %rate.sroa.31.0.rate221.sroa_idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 5, i32 7
  %68 = ptrtoint ptr %rate.sroa.31.0.rate221.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %rate.sroa.31.0.rate221.sroa_idx.i, align 4
  br label %if.then223.i

if.then223.i:                                     ; preds = %sw.epilog220.i, %sw.bb153.i.if.then223.i_crit_edge, %sw.bb145.i.if.then223.i_crit_edge, %sw.bb119.i.if.then223.i_crit_edge, %if.end74.i.if.then223.i_crit_edge, %if.end5.i.if.then223.i_crit_edge
  call void @mt76_tx_status_skb_done(ptr noundef %dev, ptr noundef nonnull %call.i114, ptr noundef nonnull %list.i) #10
  br label %mt7921_mac_add_txs_skb.exit

mt7921_mac_add_txs_skb.exit:                      ; preds = %if.then223.i, %if.end80.mt7921_mac_add_txs_skb.exit_crit_edge
  call void @mt76_tx_status_unlock(ptr noundef %dev, ptr noundef nonnull %list.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #10
  %sta = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 9
  %69 = ptrtoint ptr %sta to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load = load i8, ptr %sta, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool83.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool83.not, label %mt7921_mac_add_txs_skb.exit.out_crit_edge, label %if.end85

mt7921_mac_add_txs_skb.exit.out_crit_edge:        ; preds = %mt7921_mac_add_txs_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end85:                                         ; preds = %mt7921_mac_add_txs_skb.exit
  %sta_poll_lock = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #10
  %poll_list = getelementptr inbounds %struct.mt7921_sta, ptr %15, i32 0, i32 2
  %70 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i116.not = icmp eq ptr %71, %poll_list
  br i1 %cmp.i116.not, label %if.then89, label %if.end85.if.end91_crit_edge

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then89:                                        ; preds = %if.end85
  %sta_poll_list = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %poll_list, ptr noundef %73, ptr noundef %sta_poll_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then89.if.end91_crit_edge

if.then89.if.end91_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.end.i.i:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %poll_list, ptr %prev.i, align 4
  %75 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %sta_poll_list, ptr %poll_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mt7921_sta, ptr %15, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev3.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %poll_list, ptr %73, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end.i.i, %if.then89.if.end91_crit_edge, %if.end85.if.end91_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #10
  br label %out

out:                                              ; preds = %if.end91, %mt7921_mac_add_txs_skb.exit.out_crit_edge, %do.end76.out_crit_edge
  %call.i117 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i117, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i120

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i120:                               ; preds = %out
  %call1.i118 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %land.lhs.true.i120.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i122

land.lhs.true.i120.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i122:                              ; preds = %land.lhs.true.i120
  %.b4.i121 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i121, label %land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge, label %if.then.i123

land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i123:                                     ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i123, %land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i120.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !56
  %78 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i124 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i124 to ptr
  %preempt_count.i.i.i.i125 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i125, align 4
  %sub.i.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i125, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end56.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_queue_rx_skb(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr = lshr i32 %6, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp eq i32 %shr, 7
  %7 = and i32 %6, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp37 = icmp eq i32 %7, 65536
  %spec.select = select i1 %cmp37, i32 8, i32 7
  %type.0 = select i1 %cmp, i32 %spec.select, i32 %shr
  %8 = zext i32 %type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %type.0, label %entry.sw.default_crit_edge [
    i32 7, label %sw.bb
    i32 0, label %sw.bb39
    i32 8, label %entry.sw.bb45_crit_edge
    i32 2, label %entry.sw.bb45_crit_edge74
  ]

entry.sw.bb45_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

entry.sw.bb45_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mt7921_mcu_rx_event(ptr noundef %mdev, ptr noundef %skb) #10
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %add.ptr4170 = getelementptr i32, ptr %1, i32 10
  %cmp42.not71 = icmp ugt ptr %add.ptr4170, %arrayidx
  br i1 %cmp42.not71, label %sw.bb39.for.end_crit_edge, label %for.body.preheader

sw.bb39.for.end_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %sw.bb39
  %add.ptr40 = getelementptr i32, ptr %1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %add.ptr4173 = phi ptr [ %add.ptr41, %for.body.for.body_crit_edge ], [ %add.ptr4170, %for.body.preheader ]
  %rxd.072 = phi ptr [ %add.ptr4173, %for.body.for.body_crit_edge ], [ %add.ptr40, %for.body.preheader ]
  tail call void @mt7921_mac_add_txs(ptr noundef %mdev, ptr noundef %rxd.072)
  %add.ptr41 = getelementptr i32, ptr %add.ptr4173, i32 8
  %cmp42.not = icmp ugt ptr %add.ptr41, %arrayidx
  br i1 %cmp42.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb39.for.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

sw.bb45:                                          ; preds = %entry.sw.bb45_crit_edge, %entry.sw.bb45_crit_edge74
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %arrayidx3.i = getelementptr i32, ptr %1, i32 1
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %arrayidx4.i = getelementptr i32, ptr %1, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %arrayidx5.i = getelementptr i32, ptr %1, i32 3
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %arrayidx6.i = getelementptr i32, ptr %1, i32 4
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  %20 = lshr i32 %19, 24
  %21 = call ptr @memset(ptr %cb.i, i32 0, i32 44)
  %and.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb45.sw.default_crit_edge

sw.bb45.sw.default_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end.i:                                         ; preds = %sw.bb45
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 3
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not.i = icmp ne i32 %24, 0
  %and10.i = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond1246.i = select i1 %tobool7.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond1246.i, label %if.end13.i, label %if.end.i.sw.default_crit_edge

if.end.i.sw.default_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end13.i:                                       ; preds = %if.end.i
  %and14.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %and17.i = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %or.cond.i = select i1 %tobool15.not.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond.i, label %if.end20.i, label %if.end13.i.sw.default_crit_edge

if.end13.i.sw.default_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end20.i:                                       ; preds = %if.end13.i
  %and21.i = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.do.end36.i_crit_edge, label %if.then23.i

if.end20.i.do.end36.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %25 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flag.i, align 4
  %or.i = or i32 %26, 131072
  store i32 %or.i, ptr %flag.i, align 4
  br label %do.end36.i

do.end36.i:                                       ; preds = %if.then23.i, %if.end20.i.do.end36.i_crit_edge
  %and37.i = lshr i32 %17, 8
  %conv.i = trunc i32 %and37.i to i8
  %27 = and i32 %17, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %27)
  %cmp.i = icmp eq i32 %27, 65536
  %28 = trunc i32 %11 to i16
  %conv76.i = and i16 %28, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 287, i16 %conv76.i)
  %cmp.i.i = icmp ugt i16 %conv76.i, 287
  br i1 %cmp.i.i, label %do.end36.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge, label %if.end.i.i

do.end36.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge: ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_rx_get_wcid.exit.thread.i

if.end.i.i:                                       ; preds = %do.end36.i
  %conv.i.i = zext i16 %conv76.i to i32
  %arrayidx.i.i = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 37, i32 %conv.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.do.end11.i.i_crit_edge

if.end.i.i.do.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end11.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b36.i.i = load i1, ptr @mt7921_rx_get_wcid.__warned, align 1
  br i1 %.b36.i.i, label %land.lhs.true6.i.i.do.end11.i.i_crit_edge, label %if.then8.i.i

land.lhs.true6.i.i.do.end11.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mt7921_rx_get_wcid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 25, ptr noundef nonnull @.str.1) #10
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true6.i.i.do.end11.i.i_crit_edge, %land.lhs.true.i.i.do.end11.i.i_crit_edge, %if.end.i.i.do.end11.i.i_crit_edge
  %tobool15.not.i.i = icmp eq ptr %30, null
  %or.cond.i.i = select i1 %cmp.i, i1 true, i1 %tobool15.not.i.i
  br i1 %or.cond.i.i, label %do.end11.i.i.mt7921_rx_get_wcid.exit.i_crit_edge, label %if.end17.i.i

do.end11.i.i.mt7921_rx_get_wcid.exit.i_crit_edge: ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_rx_get_wcid.exit.i

if.end17.i.i:                                     ; preds = %do.end11.i.i
  %sta18.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %sta18.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %sta18.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool19.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool19.not.i.i, label %if.end17.i.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge, label %if.end21.i.i

if.end17.i.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_rx_get_wcid.exit.thread.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  %vif.i.i = getelementptr inbounds %struct.mt7921_sta, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vif.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %33, null
  %sta27.i.i = getelementptr inbounds %struct.mt7921_vif, ptr %33, i32 0, i32 1
  br i1 %tobool23.not.i.i, label %if.end21.i.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge, label %if.end21.i.i.mt7921_rx_get_wcid.exit.i_crit_edge

if.end21.i.i.mt7921_rx_get_wcid.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_rx_get_wcid.exit.i

if.end21.i.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_rx_get_wcid.exit.thread.i

mt7921_rx_get_wcid.exit.thread.i:                 ; preds = %if.end21.i.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge, %if.end17.i.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge, %do.end36.i.mt7921_rx_get_wcid.exit.thread.i_crit_edge
  %34 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cb.i, align 4
  br label %if.end88.i

mt7921_rx_get_wcid.exit.i:                        ; preds = %if.end21.i.i.mt7921_rx_get_wcid.exit.i_crit_edge, %do.end11.i.i.mt7921_rx_get_wcid.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %do.end11.i.i.mt7921_rx_get_wcid.exit.i_crit_edge ], [ %sta27.i.i, %if.end21.i.i.mt7921_rx_get_wcid.exit.i_crit_edge ]
  %35 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i.i, ptr %cb.i, align 4
  %tobool79.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool79.not.i, label %mt7921_rx_get_wcid.exit.i.if.end88.i_crit_edge, label %if.then80.i

mt7921_rx_get_wcid.exit.i.if.end88.i_crit_edge:   ; preds = %mt7921_rx_get_wcid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.then80.i:                                      ; preds = %mt7921_rx_get_wcid.exit.i
  %sta_poll_lock.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #10
  %poll_list.i = getelementptr inbounds %struct.mt7921_sta, ptr %retval.0.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %poll_list.i, align 4
  %cmp.i1247.not.i = icmp eq ptr %37, %poll_list.i
  br i1 %cmp.i1247.not.i, label %if.then84.i, label %if.then80.i.if.end86.i_crit_edge

if.then80.i.if.end86.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.then84.i:                                      ; preds = %if.then80.i
  %sta_poll_list.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %poll_list.i, ptr noundef %39, ptr noundef %sta_poll_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then84.i.if.end86.i_crit_edge

if.then84.i.if.end86.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.end.i.i.i:                                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %poll_list.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sta_poll_list.i, ptr %poll_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mt7921_sta, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %poll_list.i, ptr %39, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.end.i.i.i, %if.then84.i.if.end86.i_crit_edge, %if.then80.i.if.end86.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #10
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end86.i, %mt7921_rx_get_wcid.exit.i.if.end88.i_crit_edge, %mt7921_rx_get_wcid.exit.thread.i
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %46 = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i1249.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i1249.i, label %land.lhs.true.i1250.i, label %if.end88.i.if.end.i1253.i_crit_edge

if.end88.i.if.end.i1253.i_crit_edge:              ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i1253.i

land.lhs.true.i1250.i:                            ; preds = %if.end88.i
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i, align 4
  %49 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool3.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i1250.i.if.end.i1253.i_crit_edge

land.lhs.true.i1250.i.if.end.i1253.i_crit_edge:   ; preds = %land.lhs.true.i1250.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i1253.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i1250.i
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i, align 4
  %52 = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool7.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i, label %land.lhs.true4.i.i.if.end.i1253.i_crit_edge

land.lhs.true4.i.i.if.end.i1253.i_crit_edge:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i1253.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %chandef.i.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 5
  %53 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chandef.i.i, align 4
  %center_freq.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %center_freq.i.i, align 4
  %conv.i1251.i = trunc i32 %56 to i16
  %freq.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %57 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i1251.i, ptr %freq.i.i, align 2
  %58 = load ptr, ptr %chandef.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %conv10.i.i = trunc i32 %60 to i8
  %band11.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %61 = ptrtoint ptr %band11.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv10.i.i, ptr %band11.i.i, align 1
  br label %mt7921_get_status_freq_info.exit.i

if.end.i1253.i:                                   ; preds = %land.lhs.true4.i.i.if.end.i1253.i_crit_edge, %land.lhs.true.i1250.i.if.end.i1253.i_crit_edge, %if.end88.i.if.end.i1253.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -76, i8 %conv.i)
  %cmp.i1252.i = icmp ugt i8 %conv.i, -76
  br i1 %cmp.i1252.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.end.i1253.i
  call void @__sanitizer_cov_trace_pc() #12
  %band15.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %62 = ptrtoint ptr %band15.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %band15.i.i, align 1
  %sub.i.i = shl nuw nsw i32 %and37.i, 2
  %add.i.i = add nuw nsw i32 %sub.i.i, 45
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %if.end.i1253.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %conv.i)
  %cmp19.i.i = icmp ugt i8 %conv.i, 14
  %band22.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.else23.i.i

if.then21.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %band22.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %band22.i.i, align 1
  br label %if.end26.i.i

if.else23.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %band22.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %band22.i.i, align 1
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.else23.i.i, %if.then21.i.i, %if.then14.i.i
  %chfreq.addr.0.i.i = phi i32 [ %add.i.i, %if.then14.i.i ], [ %and37.i, %if.then21.i.i ], [ %and37.i, %if.else23.i.i ]
  %conv27.i.i = and i32 %chfreq.addr.0.i.i, 255
  %band28.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %65 = ptrtoint ptr %band28.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %band28.i.i, align 1
  %conv29.i.i = zext i8 %66 to i32
  %call.i.i1254.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv27.i.i, i32 noundef %conv29.i.i) #10
  %div.i.i.i = udiv i32 %call.i.i1254.i, 1000
  %conv31.i.i = trunc i32 %div.i.i.i to i16
  %freq32.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %67 = ptrtoint ptr %freq32.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv31.i.i, ptr %freq32.i.i, align 2
  br label %mt7921_get_status_freq_info.exit.i

mt7921_get_status_freq_info.exit.i:               ; preds = %if.end26.i.i, %if.then.i.i
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %68 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %band.i, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %69, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 3, label %sw.bb91.i
  ]

sw.bb.i:                                          ; preds = %mt7921_get_status_freq_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sband_5g.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 11
  br label %sw.epilog.i

sw.bb91.i:                                        ; preds = %mt7921_get_status_freq_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sband_6g.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 12
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %mt7921_get_status_freq_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sband_2g.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb91.i, %sw.bb.i
  %sband.0.i = phi ptr [ %sband_2g.i, %sw.default.i ], [ %sband_6g.i, %sw.bb91.i ], [ %sband_5g.i, %sw.bb.i ]
  %71 = ptrtoint ptr %sband.0.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sband.0.i, align 4
  %tobool94.not.i = icmp eq ptr %72, null
  br i1 %tobool94.not.i, label %sw.epilog.i.sw.default_crit_edge, label %if.end96.i

sw.epilog.i.sw.default_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end96.i:                                       ; preds = %sw.epilog.i
  %73 = and i32 %5, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %73)
  %cmp98.i = icmp eq i32 %73, 32769
  br i1 %cmp98.i, label %if.then100.i, label %if.end96.i.if.end101.i_crit_edge

if.end96.i.if.end101.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %74 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %if.end96.i.if.end101.i_crit_edge
  %and102.i = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end107.i_crit_edge, label %if.then104.i

if.end101.i.if.end107.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  %flag105.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %75 = ptrtoint ptr %flag105.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flag105.i, align 4
  %or106.i = or i32 %76, 32
  store i32 %or106.i, ptr %flag105.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then104.i, %if.end101.i.if.end107.i_crit_edge
  %and108.i = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %if.end107.i.do.end128.i_crit_edge, label %if.then110.i

if.end107.i.do.end128.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end128.i

if.then110.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  %flag111.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %77 = ptrtoint ptr %flag111.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flag111.i, align 4
  %or112.i = or i32 %78, 1
  store i32 %or112.i, ptr %flag111.i, align 4
  br label %do.end128.i

do.end128.i:                                      ; preds = %if.then110.i, %if.end107.i.do.end128.i_crit_edge
  %and130.i = lshr i32 %11, 16
  %shr131.i = and i32 %and130.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr131.i)
  %cmp132.not.i = icmp ne i32 %shr131.i, 0
  %and135.i = and i32 %11, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  %or.cond1241.i = select i1 %cmp132.not.i, i1 %tobool136.not.i, i1 false
  br i1 %or.cond1241.i, label %if.then137.i, label %do.end128.i.do.end159.i_crit_edge

do.end128.i.do.end159.i_crit_edge:                ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159.i

if.then137.i:                                     ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #12
  %flag138.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %79 = ptrtoint ptr %flag138.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flag138.i, align 4
  %or143.i = or i32 %80, 2097178
  store i32 %or143.i, ptr %flag138.i, align 4
  br label %do.end159.i

do.end159.i:                                      ; preds = %if.then137.i, %do.end128.i.do.end159.i_crit_edge
  %and164.i = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %if.end167.i, label %do.end159.i.sw.default_crit_edge

do.end159.i.sw.default_crit_edge:                 ; preds = %do.end159.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end167.i:                                      ; preds = %do.end159.i
  %add.ptr168.i = getelementptr i32, ptr %1, i32 6
  %and169.i = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.i)
  %tobool170.not.i = icmp eq i32 %and169.i, 0
  br i1 %tobool170.not.i, label %if.end167.i.if.end238.i_crit_edge, label %if.then171.i

if.end167.i.if.end238.i_crit_edge:                ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.i

if.then171.i:                                     ; preds = %if.end167.i
  %81 = ptrtoint ptr %add.ptr168.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr168.i, align 4
  %arrayidx173.i = getelementptr i32, ptr %1, i32 8
  %83 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx173.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  %86 = lshr i32 %82, 16
  %87 = trunc i32 %86 to i16
  %conv211.i = trunc i32 %85 to i16
  %shr229.i = lshr i32 %85, 16
  %conv230.i = trunc i32 %shr229.i to i8
  %add.ptr231.i = getelementptr i32, ptr %1, i32 10
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr231.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %91)
  %cmp233.not.i = icmp ult i32 %sub.ptr.sub.i, %91
  br i1 %cmp233.not.i, label %if.then171.i.if.end238.i_crit_edge, label %if.then171.i.sw.default_crit_edge

if.then171.i.sw.default_crit_edge:                ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then171.i.if.end238.i_crit_edge:               ; preds = %if.then171.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.i

if.end238.i:                                      ; preds = %if.then171.i.if.end238.i_crit_edge, %if.end167.i.if.end238.i_crit_edge
  %fc.0.i = phi i16 [ %87, %if.then171.i.if.end238.i_crit_edge ], [ 0, %if.end167.i.if.end238.i_crit_edge ]
  %seq_ctrl.0.i = phi i16 [ %conv211.i, %if.then171.i.if.end238.i_crit_edge ], [ 0, %if.end167.i.if.end238.i_crit_edge ]
  %rxd.0.i = phi ptr [ %add.ptr231.i, %if.then171.i.if.end238.i_crit_edge ], [ %add.ptr168.i, %if.end167.i.if.end238.i_crit_edge ]
  %qos_ctl.0.i = phi i8 [ %conv230.i, %if.then171.i.if.end238.i_crit_edge ], [ 0, %if.end167.i.if.end238.i_crit_edge ]
  %and239.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.i)
  %tobool240.not.i = icmp eq i32 %and239.i, 0
  br i1 %tobool240.not.i, label %if.end238.i.if.end320.i_crit_edge, label %if.then241.i

if.end238.i.if.end320.i_crit_edge:                ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end320.i

if.then241.i:                                     ; preds = %if.end238.i
  %flag243.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %92 = ptrtoint ptr %flag243.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flag243.i, align 4
  %and244.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool245.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool245.not.i, label %if.then241.i.if.end306.i_crit_edge, label %do.end261.i

if.then241.i.if.end306.i_crit_edge:               ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end306.i

do.end261.i:                                      ; preds = %if.then241.i
  %94 = zext i32 %shr131.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr131.i, label %do.end261.i.if.end306.i_crit_edge [
    i32 4, label %do.end261.i.do.end280.i_crit_edge
    i32 9, label %do.end261.i.do.end280.i_crit_edge75
    i32 10, label %do.end261.i.do.end280.i_crit_edge76
    i32 2, label %do.end261.i.sw.bb286.i_crit_edge
    i32 3, label %do.end261.i.sw.bb286.i_crit_edge77
    i32 11, label %do.end261.i.sw.bb286.i_crit_edge78
    i32 12, label %do.end261.i.sw.bb286.i_crit_edge79
  ]

do.end261.i.sw.bb286.i_crit_edge79:               ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb286.i

do.end261.i.sw.bb286.i_crit_edge78:               ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb286.i

do.end261.i.sw.bb286.i_crit_edge77:               ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb286.i

do.end261.i.sw.bb286.i_crit_edge:                 ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb286.i

do.end261.i.do.end280.i_crit_edge76:              ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end280.i

do.end261.i.do.end280.i_crit_edge75:              ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end280.i

do.end261.i.do.end280.i_crit_edge:                ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end280.i

do.end261.i.if.end306.i_crit_edge:                ; preds = %do.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end306.i

do.end280.i:                                      ; preds = %do.end261.i.do.end280.i_crit_edge, %do.end261.i.do.end280.i_crit_edge75, %do.end261.i.do.end280.i_crit_edge76
  %95 = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool284.i = icmp ne i32 %95, 0
  br label %sw.bb286.i

sw.bb286.i:                                       ; preds = %do.end280.i, %do.end261.i.sw.bb286.i_crit_edge, %do.end261.i.sw.bb286.i_crit_edge77, %do.end261.i.sw.bb286.i_crit_edge78, %do.end261.i.sw.bb286.i_crit_edge79
  %insert_ccmp_hdr.0.i = phi i1 [ false, %do.end261.i.sw.bb286.i_crit_edge ], [ false, %do.end261.i.sw.bb286.i_crit_edge77 ], [ false, %do.end261.i.sw.bb286.i_crit_edge78 ], [ false, %do.end261.i.sw.bb286.i_crit_edge79 ], [ %tobool284.i, %do.end280.i ]
  %arrayidx287.i = getelementptr i8, ptr %rxd.0.i, i32 5
  %96 = ptrtoint ptr %arrayidx287.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx287.i, align 1
  %iv.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %98 = ptrtoint ptr %iv.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %iv.i, align 4
  %arrayidx289.i = getelementptr i8, ptr %rxd.0.i, i32 4
  %99 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx289.i, align 1
  %arrayidx291.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %101 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx291.i, align 1
  %arrayidx292.i = getelementptr i8, ptr %rxd.0.i, i32 3
  %102 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx292.i, align 1
  %arrayidx294.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %104 = ptrtoint ptr %arrayidx294.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx294.i, align 2
  %arrayidx295.i = getelementptr i8, ptr %rxd.0.i, i32 2
  %105 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx295.i, align 1
  %arrayidx297.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 19
  %107 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx297.i, align 1
  %arrayidx298.i = getelementptr i8, ptr %rxd.0.i, i32 1
  %108 = ptrtoint ptr %arrayidx298.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx298.i, align 1
  %arrayidx300.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %110 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx300.i, align 4
  %111 = ptrtoint ptr %rxd.0.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rxd.0.i, align 1
  %arrayidx303.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %113 = ptrtoint ptr %arrayidx303.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx303.i, align 1
  br label %if.end306.i

if.end306.i:                                      ; preds = %sw.bb286.i, %do.end261.i.if.end306.i_crit_edge, %if.then241.i.if.end306.i_crit_edge
  %insert_ccmp_hdr.1.i = phi i1 [ false, %do.end261.i.if.end306.i_crit_edge ], [ %insert_ccmp_hdr.0.i, %sw.bb286.i ], [ false, %if.then241.i.if.end306.i_crit_edge ]
  %add.ptr307.i = getelementptr i32, ptr %rxd.0.i, i32 4
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast309.i = ptrtoint ptr %add.ptr307.i to i32
  %sub.ptr.rhs.cast310.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub311.i = sub i32 %sub.ptr.lhs.cast309.i, %sub.ptr.rhs.cast310.i
  %116 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub311.i, i32 %117)
  %cmp313.not.i = icmp ult i32 %sub.ptr.sub311.i, %117
  br i1 %cmp313.not.i, label %if.end306.i.if.end320.i_crit_edge, label %if.end306.i.sw.default_crit_edge

if.end306.i.sw.default_crit_edge:                 ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end306.i.if.end320.i_crit_edge:                ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end320.i

if.end320.i:                                      ; preds = %if.end306.i.if.end320.i_crit_edge, %if.end238.i.if.end320.i_crit_edge
  %rxd.1.i = phi ptr [ %add.ptr307.i, %if.end306.i.if.end320.i_crit_edge ], [ %rxd.0.i, %if.end238.i.if.end320.i_crit_edge ]
  %insert_ccmp_hdr.2.off0.i = phi i1 [ %insert_ccmp_hdr.1.i, %if.end306.i.if.end320.i_crit_edge ], [ false, %if.end238.i.if.end320.i_crit_edge ]
  %and321.i = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321.i)
  %tobool322.not.i = icmp eq i32 %and321.i, 0
  br i1 %tobool322.not.i, label %if.end320.i.if.end357.i_crit_edge, label %if.then323.i

if.end320.i.if.end357.i_crit_edge:                ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end357.i

if.then323.i:                                     ; preds = %if.end320.i
  %118 = ptrtoint ptr %rxd.1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rxd.1.i, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #10
  %timestamp.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %121 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %timestamp.i, align 4
  %flag325.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %122 = ptrtoint ptr %flag325.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flag325.i, align 4
  %or326.i = or i32 %123, 128
  store i32 %or326.i, ptr %flag325.i, align 4
  %and327.i = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327.i)
  %tobool328.not.i = icmp eq i32 %and327.i, 0
  br i1 %tobool328.not.i, label %if.then329.i, label %if.then323.i.if.end346.i_crit_edge

if.then323.i.if.end346.i_crit_edge:               ; preds = %if.then323.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end346.i

if.then329.i:                                     ; preds = %if.then323.i
  %or331.i = or i32 %123, 640
  %124 = ptrtoint ptr %flag325.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or331.i, ptr %flag325.i, align 4
  %rx_ampdu_ts.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 2, i32 8
  %125 = ptrtoint ptr %rx_ampdu_ts.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rx_ampdu_ts.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %120)
  %cmp333.not.i = icmp eq i32 %126, %120
  br i1 %cmp333.not.i, label %if.then329.i.if.end341.i_crit_edge, label %if.then335.i

if.then329.i.if.end341.i_crit_edge:               ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end341.i

if.then335.i:                                     ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_ref.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 2, i32 9
  %127 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ampdu_ref.i, align 4
  %inc.i = add i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool336.not.i = icmp eq i32 %inc.i, 0
  %spec.store.select.i = select i1 %tobool336.not.i, i32 1, i32 %inc.i
  %129 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %spec.store.select.i, ptr %ampdu_ref.i, align 4
  br label %if.end341.i

if.end341.i:                                      ; preds = %if.then335.i, %if.then329.i.if.end341.i_crit_edge
  %130 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %timestamp.i, align 4
  %132 = ptrtoint ptr %rx_ampdu_ts.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %rx_ampdu_ts.i, align 8
  %ampdu_ref344.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 2, i32 9
  %133 = ptrtoint ptr %ampdu_ref344.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ampdu_ref344.i, align 4
  %ampdu_ref345.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %135 = ptrtoint ptr %ampdu_ref345.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %ampdu_ref345.i, align 4
  br label %if.end346.i

if.end346.i:                                      ; preds = %if.end341.i, %if.then323.i.if.end346.i_crit_edge
  %add.ptr347.i = getelementptr i32, ptr %rxd.1.i, i32 2
  %136 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast349.i = ptrtoint ptr %add.ptr347.i to i32
  %sub.ptr.rhs.cast350.i = ptrtoint ptr %137 to i32
  %sub.ptr.sub351.i = sub i32 %sub.ptr.lhs.cast349.i, %sub.ptr.rhs.cast350.i
  %138 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub351.i, i32 %139)
  %cmp353.not.i = icmp ult i32 %sub.ptr.sub351.i, %139
  br i1 %cmp353.not.i, label %if.end346.i.if.end357.i_crit_edge, label %if.end346.i.sw.default_crit_edge

if.end346.i.sw.default_crit_edge:                 ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end346.i.if.end357.i_crit_edge:                ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end357.i

if.end357.i:                                      ; preds = %if.end346.i.if.end357.i_crit_edge, %if.end320.i.if.end357.i_crit_edge
  %rxd.2.i = phi ptr [ %add.ptr347.i, %if.end346.i.if.end357.i_crit_edge ], [ %rxd.1.i, %if.end320.i.if.end357.i_crit_edge ]
  %and358.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358.i)
  %tobool359.not.i = icmp eq i32 %and358.i, 0
  br i1 %tobool359.not.i, label %if.end357.i.do.end845.i_crit_edge, label %if.then360.i

if.end357.i.do.end845.i_crit_edge:                ; preds = %if.end357.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end845.i

if.then360.i:                                     ; preds = %if.end357.i
  %add.ptr362.i = getelementptr i32, ptr %rxd.2.i, i32 2
  %140 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast364.i = ptrtoint ptr %add.ptr362.i to i32
  %sub.ptr.rhs.cast365.i = ptrtoint ptr %141 to i32
  %sub.ptr.sub366.i = sub i32 %sub.ptr.lhs.cast364.i, %sub.ptr.rhs.cast365.i
  %142 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub366.i, i32 %143)
  %cmp368.not.i = icmp ult i32 %sub.ptr.sub366.i, %143
  br i1 %cmp368.not.i, label %if.end371.i, label %if.then360.i.sw.default_crit_edge

if.then360.i.sw.default_crit_edge:                ; preds = %if.then360.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end371.i:                                      ; preds = %if.then360.i
  %144 = ptrtoint ptr %rxd.2.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rxd.2.i, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  %arrayidx373.i = getelementptr i32, ptr %rxd.2.i, i32 1
  %147 = ptrtoint ptr %arrayidx373.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx373.i, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  %and374.i = and i32 %146, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374.i)
  %tobool375.not.i = icmp eq i32 %and374.i, 0
  br i1 %tobool375.not.i, label %if.end371.i.if.end380.i_crit_edge, label %if.then376.i

if.end371.i.if.end380.i_crit_edge:                ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end380.i

if.then376.i:                                     ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #12
  %enc_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %150 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %enc_flags.i, align 4
  %152 = or i8 %151, 64
  store i8 %152, ptr %enc_flags.i, align 4
  br label %if.end380.i

if.end380.i:                                      ; preds = %if.then376.i, %if.end371.i.if.end380.i_crit_edge
  %antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 15
  %153 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %antenna_mask.i, align 8
  %chains.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %155 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %chains.i, align 1
  %and397.i = and i32 %149, 255
  %sub.i = add nuw nsw i32 %and397.i, 292
  %div1231.i = lshr i32 %sub.i, 1
  %conv399.i = trunc i32 %div1231.i to i8
  %chain_signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %156 = ptrtoint ptr %chain_signal.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv399.i, ptr %chain_signal.i, align 4
  %and417.i = lshr i32 %149, 8
  %shr418.i = and i32 %and417.i, 255
  %sub419.i = add nuw nsw i32 %shr418.i, 292
  %div4201232.i = lshr i32 %sub419.i, 1
  %conv421.i = trunc i32 %div4201232.i to i8
  %arrayidx423.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 41
  %157 = ptrtoint ptr %arrayidx423.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv421.i, ptr %arrayidx423.i, align 1
  %and440.i = lshr i32 %149, 16
  %shr441.i = and i32 %and440.i, 255
  %sub442.i = add nuw nsw i32 %shr441.i, 292
  %div4431233.i = lshr i32 %sub442.i, 1
  %conv444.i = trunc i32 %div4431233.i to i8
  %arrayidx446.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 42
  %158 = ptrtoint ptr %arrayidx446.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv444.i, ptr %arrayidx446.i, align 2
  %shr464.i = lshr i32 %149, 24
  %sub465.i = add nuw nsw i32 %shr464.i, 292
  %div4661234.i = lshr i32 %sub465.i, 1
  %conv467.i = trunc i32 %div4661234.i to i8
  %arrayidx469.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 43
  %159 = ptrtoint ptr %arrayidx469.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv467.i, ptr %arrayidx469.i, align 1
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %160 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -128, ptr %signal.i, align 2
  br label %cond.false.i

cond.false.i:                                     ; preds = %for.inc.i, %if.end380.i
  %i.0.i = phi i32 [ 0, %if.end380.i ], [ %inc570.i, %for.inc.i ]
  %161 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %antenna_mask.i, align 8
  %conv539.i = zext i8 %162 to i32
  %call.i1255.i = tail call i32 @__sw_hweight8(i32 noundef %conv539.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %call.i1255.i)
  %cmp541.i = icmp ult i32 %i.0.i, %call.i1255.i
  br i1 %cmp541.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %cond.false.i
  %163 = ptrtoint ptr %chains.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %chains.i, align 1
  %conv544.i = zext i8 %164 to i32
  %shl.i = shl nuw i32 1, %i.0.i
  %and545.i = and i32 %shl.i, %conv544.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and545.i)
  %tobool546.not.i = icmp eq i32 %and545.i, 0
  br i1 %tobool546.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx548.i = getelementptr [4 x i8], ptr %chain_signal.i, i32 0, i32 %i.0.i
  %165 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx548.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %166)
  %cmp550.i = icmp sgt i8 %166, -1
  br i1 %cmp550.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end553.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end553.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %signal.i, align 2
  %169 = tail call i8 @llvm.smax.i8(i8 %168, i8 %166) #10
  %170 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %signal.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end553.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc570.i = add nuw i32 %i.0.i, 1
  br label %cond.false.i

for.end.i:                                        ; preds = %cond.false.i
  %171 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %signal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %172)
  %cmp573.i = icmp eq i8 %172, -128
  br i1 %cmp573.i, label %if.then575.i, label %for.end.i.do.end593.i_crit_edge

for.end.i.do.end593.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end593.i

if.then575.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %flag576.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %173 = ptrtoint ptr %flag576.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flag576.i, align 4
  %or577.i = or i32 %174, 256
  store i32 %or577.i, ptr %flag576.i, align 4
  br label %do.end593.i

do.end593.i:                                      ; preds = %if.then575.i, %for.end.i.do.end593.i_crit_edge
  %and595.i = lshr i32 %146, 22
  %and614.i = lshr i32 %146, 15
  %175 = trunc i32 %and614.i to i8
  %conv616.i = and i8 %175, 3
  %and633.i = and i32 %146, 127
  %and651.i = lshr i32 %146, 24
  %shr652.i = and i32 %and651.i, 15
  %176 = zext i32 %shr652.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr652.i, label %do.end593.i.sw.default_crit_edge [
    i32 0, label %sw.bb653.i
    i32 1, label %do.end593.i.sw.bb654.i_crit_edge
    i32 3, label %do.end593.i.sw.bb657.i_crit_edge
    i32 2, label %do.end593.i.sw.bb657.i_crit_edge80
    i32 4, label %do.end680.i
    i32 11, label %do.end593.i.do.end709.i_crit_edge
    i32 8, label %do.end593.i.do.end709.i_crit_edge81
    i32 9, label %do.end593.i.do.end709.i_crit_edge82
    i32 10, label %do.end593.i.do.end709.i_crit_edge83
  ]

do.end593.i.do.end709.i_crit_edge83:              ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end709.i

do.end593.i.do.end709.i_crit_edge82:              ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end709.i

do.end593.i.do.end709.i_crit_edge81:              ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end709.i

do.end593.i.do.end709.i_crit_edge:                ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end709.i

do.end593.i.sw.bb657.i_crit_edge80:               ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb657.i

do.end593.i.sw.bb657.i_crit_edge:                 ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb657.i

do.end593.i.sw.bb654.i_crit_edge:                 ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb654.i

do.end593.i.sw.default_crit_edge:                 ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb653.i:                                       ; preds = %do.end593.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb654.i

sw.bb654.i:                                       ; preds = %sw.bb653.i, %do.end593.i.sw.bb654.i_crit_edge
  %cck.0.off0.i = phi i1 [ false, %do.end593.i.sw.bb654.i_crit_edge ], [ true, %sw.bb653.i ]
  %call656.i = tail call i32 @mt76_get_rate(ptr noundef %mdev, ptr noundef %sband.0.i, i32 noundef %and633.i, i1 noundef zeroext %cck.0.off0.i) #10
  br label %sw.epilog743.i

sw.bb657.i:                                       ; preds = %do.end593.i.sw.bb657.i_crit_edge, %do.end593.i.sw.bb657.i_crit_edge80
  %encoding.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %177 = ptrtoint ptr %encoding.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 2)
  %bf.load658.i = load i16, ptr %encoding.i, align 1
  %bf.clear659.i = and i16 %bf.load658.i, 16383
  %bf.set660.i = or i16 %bf.clear659.i, 16384
  store i16 %bf.set660.i, ptr %encoding.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and633.i)
  %cmp661.i = icmp ugt i32 %and633.i, 31
  br i1 %cmp661.i, label %sw.bb657.i.sw.default_crit_edge, label %sw.bb657.i.sw.epilog743.i_crit_edge

sw.bb657.i.sw.epilog743.i_crit_edge:              ; preds = %sw.bb657.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog743.i

sw.bb657.i.sw.default_crit_edge:                  ; preds = %sw.bb657.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

do.end680.i:                                      ; preds = %do.end593.i
  %and682.i = lshr i32 %146, 7
  %178 = trunc i32 %and682.i to i8
  %179 = and i8 %178, 7
  %conv685.i = add nuw nsw i8 %179, 1
  %nss.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %180 = ptrtoint ptr %nss.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv685.i, ptr %nss.i, align 4
  %encoding686.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %181 = ptrtoint ptr %encoding686.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %bf.load687.i = load i16, ptr %encoding686.i, align 1
  %bf.clear688.i = and i16 %bf.load687.i, 16383
  %bf.set689.i = or i16 %bf.clear688.i, -32768
  store i16 %bf.set689.i, ptr %encoding686.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and633.i)
  %cmp690.i = icmp ugt i32 %and633.i, 9
  br i1 %cmp690.i, label %do.end680.i.sw.default_crit_edge, label %do.end680.i.sw.epilog743.i_crit_edge

do.end680.i.sw.epilog743.i_crit_edge:             ; preds = %do.end680.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog743.i

do.end680.i.sw.default_crit_edge:                 ; preds = %do.end680.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

do.end709.i:                                      ; preds = %do.end593.i.do.end709.i_crit_edge, %do.end593.i.do.end709.i_crit_edge81, %do.end593.i.do.end709.i_crit_edge82, %do.end593.i.do.end709.i_crit_edge83
  %and711.i = lshr i32 %146, 7
  %182 = trunc i32 %and711.i to i8
  %183 = and i8 %182, 7
  %conv714.i = add nuw nsw i8 %183, 1
  %nss715.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %184 = ptrtoint ptr %nss715.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv714.i, ptr %nss715.i, align 4
  %encoding716.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %185 = ptrtoint ptr %encoding716.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %bf.load717.i = load i16, ptr %encoding716.i, align 1
  %bf.set719.i = or i16 %bf.load717.i, -16384
  %and720.i = and i32 %146, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv616.i)
  %cmp722.not.i = icmp eq i8 %conv616.i, 3
  %186 = trunc i32 %and614.i to i16
  %bf.value.i = shl i16 %186, 6
  %bf.shl.i = and i16 %bf.value.i, 192
  %bf.clear726.i = and i16 %bf.set719.i, -225
  %bf.set727.i = or i16 %bf.clear726.i, %bf.shl.i
  %storemerge1235.i = select i1 %cmp722.not.i, i16 %bf.set719.i, i16 %bf.set727.i
  %187 = trunc i32 %146 to i8
  %188 = shl i8 %187, 1
  %189 = and i8 %188, 32
  %bf.shl738.i = zext i8 %189 to i16
  %bf.clear739.i = and i16 %storemerge1235.i, -33
  %bf.set740.i = or i16 %bf.clear739.i, %bf.shl738.i
  %190 = ptrtoint ptr %encoding716.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 %bf.set740.i, ptr %encoding716.i, align 1
  br label %sw.epilog743.i

sw.epilog743.i:                                   ; preds = %do.end709.i, %do.end680.i.sw.epilog743.i_crit_edge, %sw.bb657.i.sw.epilog743.i_crit_edge, %sw.bb654.i
  %i.1.i = phi i32 [ %and720.i, %do.end709.i ], [ %and633.i, %do.end680.i.sw.epilog743.i_crit_edge ], [ %and633.i, %sw.bb657.i.sw.epilog743.i_crit_edge ], [ %call656.i, %sw.bb654.i ]
  %conv744.i = trunc i32 %i.1.i to i8
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %191 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv744.i, ptr %rate_idx.i, align 1
  %and761.i = lshr i32 %146, 12
  %shr762.i = and i32 %and761.i, 7
  %192 = zext i32 %shr762.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr762.i, label %sw.epilog743.i.sw.default_crit_edge [
    i32 0, label %sw.epilog743.i.sw.epilog792.i_crit_edge
    i32 1, label %sw.bb763.i
    i32 2, label %sw.bb781.i
    i32 3, label %sw.bb786.i
  ]

sw.epilog743.i.sw.epilog792.i_crit_edge:          ; preds = %sw.epilog743.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog792.i

sw.epilog743.i.sw.default_crit_edge:              ; preds = %sw.epilog743.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb763.i:                                       ; preds = %sw.epilog743.i
  %193 = and i32 %146, 150994944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool765.not.i = icmp eq i32 %193, 0
  %and767.i = and i32 %146, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and767.i)
  %tobool768.not.i = icmp eq i32 %and767.i, 0
  %or.cond1242.i = or i1 %tobool765.not.i, %tobool768.not.i
  %bw776.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %194 = ptrtoint ptr %bw776.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 2)
  %bf.load777.i = load i16, ptr %bw776.i, align 1
  br i1 %or.cond1242.i, label %if.else.i, label %if.then769.i

if.then769.i:                                     ; preds = %sw.bb763.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear771.i = and i16 %bf.load777.i, -16129
  %bf.set775.i = or i16 %bf.clear771.i, 12800
  %195 = ptrtoint ptr %bw776.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 %bf.set775.i, ptr %bw776.i, align 1
  br label %sw.epilog792.i

if.else.i:                                        ; preds = %sw.bb763.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear778.i = and i16 %bf.load777.i, -14337
  %bf.set779.i = or i16 %bf.clear778.i, 6144
  %196 = ptrtoint ptr %bw776.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 2)
  store i16 %bf.set779.i, ptr %bw776.i, align 1
  br label %sw.epilog792.i

sw.bb781.i:                                       ; preds = %sw.epilog743.i
  call void @__sanitizer_cov_trace_pc() #12
  %bw782.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %197 = ptrtoint ptr %bw782.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %bf.load783.i = load i16, ptr %bw782.i, align 1
  %bf.clear784.i = and i16 %bf.load783.i, -14337
  %bf.set785.i = or i16 %bf.clear784.i, 8192
  store i16 %bf.set785.i, ptr %bw782.i, align 1
  br label %sw.epilog792.i

sw.bb786.i:                                       ; preds = %sw.epilog743.i
  call void @__sanitizer_cov_trace_pc() #12
  %bw787.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %198 = ptrtoint ptr %bw787.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 2)
  %bf.load788.i = load i16, ptr %bw787.i, align 1
  %bf.clear789.i = and i16 %bf.load788.i, -14337
  %bf.set790.i = or i16 %bf.clear789.i, 10240
  store i16 %bf.set790.i, ptr %bw787.i, align 1
  br label %sw.epilog792.i

sw.epilog792.i:                                   ; preds = %sw.bb786.i, %sw.bb781.i, %if.else.i, %if.then769.i, %sw.epilog743.i.sw.epilog792.i_crit_edge
  %enc_flags794.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %199 = ptrtoint ptr %enc_flags794.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %enc_flags794.i, align 4
  %201 = trunc i32 %and595.i to i8
  %202 = and i8 %201, 3
  %203 = mul nuw i8 %202, 48
  %conv797.i = or i8 %200, %203
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr652.i)
  %cmp798.i = icmp ugt i32 %shr652.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv616.i)
  %tobool802.not.i = icmp eq i8 %conv616.i, 0
  %or.cond1243.i = select i1 %cmp798.i, i1 true, i1 %tobool802.not.i
  %204 = or i8 %conv797.i, 4
  %spec.select.i = select i1 %or.cond1243.i, i8 %conv797.i, i8 %204
  %205 = ptrtoint ptr %enc_flags794.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %spec.select.i, ptr %enc_flags794.i, align 4
  %and809.i = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and809.i)
  %tobool810.not.i = icmp eq i32 %and809.i, 0
  br i1 %tobool810.not.i, label %sw.epilog792.i.do.end845.i_crit_edge, label %if.then811.i

sw.epilog792.i.do.end845.i_crit_edge:             ; preds = %sw.epilog792.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end845.i

if.then811.i:                                     ; preds = %sw.epilog792.i
  %add.ptr812.i = getelementptr i32, ptr %rxd.2.i, i32 20
  %206 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast814.i = ptrtoint ptr %add.ptr812.i to i32
  %sub.ptr.rhs.cast815.i = ptrtoint ptr %207 to i32
  %sub.ptr.sub816.i = sub i32 %sub.ptr.lhs.cast814.i, %sub.ptr.rhs.cast815.i
  %208 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub816.i, i32 %209)
  %cmp818.not.i = icmp ult i32 %sub.ptr.sub816.i, %209
  br i1 %cmp818.not.i, label %if.then811.i.do.end845.i_crit_edge, label %if.then811.i.sw.default_crit_edge

if.then811.i.sw.default_crit_edge:                ; preds = %if.then811.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then811.i.do.end845.i_crit_edge:               ; preds = %if.then811.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end845.i

do.end845.i:                                      ; preds = %if.then811.i.do.end845.i_crit_edge, %sw.epilog792.i.do.end845.i_crit_edge, %if.end357.i.do.end845.i_crit_edge
  %mode.1.i = phi i32 [ 0, %if.end357.i.do.end845.i_crit_edge ], [ %shr652.i, %sw.epilog792.i.do.end845.i_crit_edge ], [ %shr652.i, %if.then811.i.do.end845.i_crit_edge ]
  %rxd.5.i = phi ptr [ %rxd.2.i, %if.end357.i.do.end845.i_crit_edge ], [ %add.ptr362.i, %sw.epilog792.i.do.end845.i_crit_edge ], [ %add.ptr812.i, %if.then811.i.do.end845.i_crit_edge ]
  %rxv.0.i = phi ptr [ null, %if.end357.i.do.end845.i_crit_edge ], [ %rxd.2.i, %sw.epilog792.i.do.end845.i_crit_edge ], [ %rxd.2.i, %if.then811.i.do.end845.i_crit_edge ]
  %210 = trunc i32 %20 to i8
  %conv849.i = and i8 %210, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv849.i)
  %tobool850.not.i = icmp eq i8 %conv849.i, 0
  %amsdu.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %211 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %bf.load856.i = load i16, ptr %amsdu.i, align 1
  %bf.shl858.i = select i1 %tobool850.not.i, i16 0, i16 16
  %bf.clear859.i = and i16 %bf.load856.i, -17
  %bf.set860.i = or i16 %bf.clear859.i, %bf.shl858.i
  br i1 %tobool850.not.i, label %do.end845.i.if.end887.i_crit_edge, label %if.then866.i

do.end845.i.if.end887.i_crit_edge:                ; preds = %do.end845.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end887.i

if.then866.i:                                     ; preds = %do.end845.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv849.i)
  %cmp868.i = icmp eq i8 %conv849.i, 3
  %bf.shl873.i = select i1 %cmp868.i, i16 8, i16 0
  %bf.clear874.i = and i16 %bf.set860.i, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv849.i)
  %cmp878.i = icmp eq i8 %conv849.i, 1
  %bf.shl883.i = select i1 %cmp878.i, i16 4, i16 0
  %bf.set875.i = or i16 %bf.shl883.i, %bf.shl873.i
  %bf.set885.i = or i16 %bf.set875.i, %bf.clear874.i
  br label %if.end887.i

if.end887.i:                                      ; preds = %if.then866.i, %do.end845.i.if.end887.i_crit_edge
  %storemerge.i = phi i16 [ %bf.set885.i, %if.then866.i ], [ %bf.set860.i, %do.end845.i.if.end887.i_crit_edge ]
  %212 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_storeN_noabort(i32 %212, i32 2)
  store i16 %storemerge.i, ptr %amsdu.i, align 1
  %213 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast889.i = ptrtoint ptr %rxd.5.i to i32
  %sub.ptr.rhs.cast890.i = ptrtoint ptr %214 to i32
  %sub.ptr.sub891.i = sub i32 %sub.ptr.lhs.cast889.i, %sub.ptr.rhs.cast890.i
  %215 = lshr i32 %14, 13
  %mul893.i = and i32 %215, 6
  %add894.i = add i32 %sub.ptr.sub891.i, %mul893.i
  %conv895.i = trunc i32 %add894.i to i16
  br i1 %tobool15.not.i, label %land.lhs.true910.i, label %land.lhs.true898.i

land.lhs.true898.i:                               ; preds = %if.end887.i
  %216 = and i16 %fc.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %cmp.i1256.not.i = icmp eq i16 %216, 0
  br i1 %cmp.i1256.not.i, label %if.else956.i, label %if.then901.i

if.then901.i:                                     ; preds = %land.lhs.true898.i
  %call902.i = tail call fastcc i32 @mt7921_reverse_frag0_hdr_trans(ptr noundef %skb, i16 noundef zeroext %conv895.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call902.i)
  %tobool903.not.i = icmp eq i32 %call902.i, 0
  br i1 %tobool903.not.i, label %if.then901.i.if.then927.i_crit_edge, label %if.then901.i.sw.default_crit_edge

if.then901.i.sw.default_crit_edge:                ; preds = %if.then901.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then901.i.if.then927.i_crit_edge:              ; preds = %if.then901.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then927.i

land.lhs.true910.i:                               ; preds = %if.end887.i
  %conv9071269.i = and i32 %add894.i, 65535
  %call9081270.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv9071269.i) #10
  %217 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %bf.load912.i = load i16, ptr %amsdu.i, align 1
  %218 = and i16 %bf.load912.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %tobool917.not.i = icmp eq i16 %218, 0
  br i1 %tobool917.not.i, label %land.lhs.true910.i.if.then927.i_crit_edge, label %if.end925.i

land.lhs.true910.i.if.then927.i_crit_edge:        ; preds = %land.lhs.true910.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then927.i

if.end925.i:                                      ; preds = %land.lhs.true910.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data, align 4
  %add.ptr920.i = getelementptr i8, ptr %220, i32 2
  %call922.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #10
  %221 = call ptr @memmove(ptr %add.ptr920.i, ptr %220, i32 %call922.i)
  %call923.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #10
  br label %if.then927.i

if.then927.i:                                     ; preds = %if.end925.i, %land.lhs.true910.i.if.then927.i_crit_edge, %if.then901.i.if.then927.i_crit_edge
  br i1 %insert_ccmp_hdr.2.off0.i, label %if.then929.i, label %if.then927.i.if.end949.i_crit_edge

if.then927.i.if.end949.i_crit_edge:               ; preds = %if.then927.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end949.i

if.then929.i:                                     ; preds = %if.then927.i
  call void @__sanitizer_cov_trace_pc() #12
  %and946.i = lshr i32 %11, 21
  %222 = trunc i32 %and946.i to i8
  %conv948.i = and i8 %222, 3
  tail call void @mt76_insert_ccmp_hdr(ptr noundef %skb, i8 noundef zeroext %conv948.i) #10
  br label %if.end949.i

if.end949.i:                                      ; preds = %if.then929.i, %if.then927.i.if.end949.i_crit_edge
  %223 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data, align 4
  %mstat.sroa.4.0.arraydecay.sroa_idx.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %225 = ptrtoint ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %mstat.sroa.4.0.copyload.i.i = load i32, ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i.i, align 4
  %and.i.i = and i32 %mstat.sroa.4.0.copyload.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1257.i = icmp eq i32 %and.i.i, 0
  %spec.select.idx.i.i = select i1 %tobool.not.i1257.i, i32 0, i32 12
  %spec.select.i1258.i = getelementptr i8, ptr %224, i32 %spec.select.idx.i.i
  %and6.i.i = and i32 %mstat.sroa.4.0.copyload.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i1259.i = icmp eq i32 %and6.i.i, 0
  %data.1.idx.i.i = select i1 %tobool7.not.i1259.i, i32 0, i32 12
  %data.1.i.i = getelementptr i8, ptr %spec.select.i1258.i, i32 %data.1.idx.i.i
  %226 = ptrtoint ptr %data.1.i.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %data.1.i.i, align 2
  %228 = and i16 %227, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %228)
  %cmp.i1260.i = icmp eq i16 %228, -30720
  br i1 %cmp.i1260.i, label %if.then952.i, label %if.end949.i.if.end959.i_crit_edge

if.end949.i.if.end959.i_crit_edge:                ; preds = %if.end949.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end959.i

if.then952.i:                                     ; preds = %if.end949.i
  call void @__sanitizer_cov_trace_pc() #12
  %seq_ctrl953.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %data.1.i.i, i32 0, i32 5
  %229 = ptrtoint ptr %seq_ctrl953.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %seq_ctrl953.i, align 2
  %231 = tail call i16 @llvm.bswap.i16(i16 %230) #10
  %232 = and i16 %227, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %232)
  %cmp.i.i.i = icmp eq i16 %232, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i1261.i = getelementptr i8, ptr %data.1.i.i, i32 %retval.0.v.i.i
  %233 = ptrtoint ptr %retval.0.i1261.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %retval.0.i1261.i, align 1
  br label %if.end959.i

if.else956.i:                                     ; preds = %land.lhs.true898.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv907.i = and i32 %add894.i, 65535
  %call908.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv907.i) #10
  %flag957.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %235 = ptrtoint ptr %flag957.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flag957.i, align 4
  %or958.i = or i32 %236, 1073741824
  store i32 %or958.i, ptr %flag957.i, align 4
  br label %if.end959.i

if.end959.i:                                      ; preds = %if.else956.i, %if.then952.i, %if.end949.i.if.end959.i_crit_edge
  %fc.1.i = phi i16 [ %fc.0.i, %if.else956.i ], [ %227, %if.then952.i ], [ %227, %if.end949.i.if.end959.i_crit_edge ]
  %seq_ctrl.2.i = phi i16 [ %seq_ctrl.0.i, %if.else956.i ], [ %231, %if.then952.i ], [ %seq_ctrl.0.i, %if.end949.i.if.end959.i_crit_edge ]
  %qos_ctl.2.i = phi i8 [ %qos_ctl.0.i, %if.else956.i ], [ %234, %if.then952.i ], [ %qos_ctl.0.i, %if.end949.i.if.end959.i_crit_edge ]
  tail call fastcc void @mt7921_mac_assoc_rssi(ptr noundef %mdev, ptr noundef %skb) #10
  %tobool960.not.i = icmp ne ptr %rxv.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mode.1.i)
  %cmp962.i = icmp ugt i32 %mode.1.i, 7
  %or.cond1245.i = select i1 %tobool960.not.i, i1 %cmp962.i, i1 false
  br i1 %or.cond1245.i, label %land.lhs.true964.i, label %if.end959.i.if.end969.i_crit_edge

if.end959.i.if.end969.i_crit_edge:                ; preds = %if.end959.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end969.i

land.lhs.true964.i:                               ; preds = %if.end959.i
  %flag965.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %237 = ptrtoint ptr %flag965.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %flag965.i, align 4
  %and966.i = and i32 %238, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and966.i)
  %tobool967.not.i = icmp eq i32 %and966.i, 0
  br i1 %tobool967.not.i, label %if.then968.i, label %land.lhs.true964.i.if.end969.i_crit_edge

land.lhs.true964.i.if.end969.i_crit_edge:         ; preds = %land.lhs.true964.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end969.i

if.then968.i:                                     ; preds = %land.lhs.true964.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mt7921_mac_decode_he_radiotap(ptr noundef %skb, ptr noundef nonnull %rxv.0.i, i32 noundef %mode.1.i) #10
  br label %if.end969.i

if.end969.i:                                      ; preds = %if.then968.i, %land.lhs.true964.i.if.end969.i_crit_edge, %if.end959.i.if.end969.i_crit_edge
  %239 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %cb.i, align 4
  %tobool970.not.i = icmp ne ptr %240, null
  %241 = and i16 %fc.1.i, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %241)
  %cmp.i1262.i = icmp eq i16 %241, -30720
  %or.cond1274.i = select i1 %tobool970.not.i, i1 %cmp.i1262.i, i1 false
  br i1 %or.cond1274.i, label %if.end974.i, label %if.end969.i.if.then46_crit_edge

if.end969.i.if.then46_crit_edge:                  ; preds = %if.end969.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.end974.i:                                      ; preds = %if.end969.i
  call void @__sanitizer_cov_trace_pc() #12
  %242 = and i16 %fc.1.i, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %242)
  %cmp.i1263.i = icmp eq i16 %242, -14336
  %phi.sel.i = select i1 %cmp.i1263.i, i8 0, i8 64
  %243 = select i1 %cmp.i, i8 %phi.sel.i, i8 0
  %aggr.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %244 = ptrtoint ptr %aggr.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %bf.load981.i = load i8, ptr %aggr.i, align 2
  %bf.clear984.i = and i8 %bf.load981.i, -65
  %bf.set985.i = or i8 %bf.clear984.i, %243
  store i8 %bf.set985.i, ptr %aggr.i, align 2
  %245 = lshr i16 %seq_ctrl.2.i, 4
  %seqno.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %246 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %seqno.i, align 4
  %qos_ctl990.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 23
  %247 = ptrtoint ptr %qos_ctl990.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %qos_ctl.2.i, ptr %qos_ctl990.i, align 1
  br label %if.then46

if.then46:                                        ; preds = %if.end974.i, %if.end969.i.if.then46_crit_edge
  tail call void @mt76_rx(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #10
  br label %cleanup

sw.default:                                       ; preds = %if.then901.i.sw.default_crit_edge, %if.then811.i.sw.default_crit_edge, %sw.epilog743.i.sw.default_crit_edge, %do.end680.i.sw.default_crit_edge, %sw.bb657.i.sw.default_crit_edge, %do.end593.i.sw.default_crit_edge, %if.then360.i.sw.default_crit_edge, %if.end346.i.sw.default_crit_edge, %if.end306.i.sw.default_crit_edge, %if.then171.i.sw.default_crit_edge, %do.end159.i.sw.default_crit_edge, %sw.epilog.i.sw.default_crit_edge, %if.end13.i.sw.default_crit_edge, %if.end.i.sw.default_crit_edge, %sw.bb45.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then46, %for.end, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mcu_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_reset_counters(ptr nocapture noundef readonly %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef -2112956452) #10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call8 = tail call i32 %9(ptr noundef %1, i32 noundef -2112956436) #10
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.1 = tail call i32 %13(ptr noundef %1, i32 noundef -2112956448) #10
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call8.1 = tail call i32 %17(ptr noundef %1, i32 noundef -2112956432) #10
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.2 = tail call i32 %21(ptr noundef %1, i32 noundef -2112956444) #10
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call8.2 = tail call i32 %25(ptr noundef %1, i32 noundef -2112956428) #10
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.3 = tail call i32 %29(ptr noundef %1, i32 noundef -2112956440) #10
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call8.3 = tail call i32 %33(ptr noundef %1, i32 noundef -2112956424) #10
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %survey_time = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %survey_time to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call.i, ptr %survey_time, align 16
  %aggr_stats = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 40
  %35 = call ptr @memset(ptr %aggr_stats, i32 0, i32 64)
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call13 = tail call i32 %39(ptr noundef %1, i32 noundef -2112958420) #10
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call16 = tail call i32 %43(ptr noundef %1, i32 noundef -2112958380) #10
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call19 = tail call i32 %47(ptr noundef %1, i32 noundef -2112958376) #10
  %48 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw, align 4
  %call21 = tail call i32 %51(ptr noundef %1, i32 noundef -2112990268, i32 noundef 0, i32 noundef -2147483648) #10
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %rmw23 = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %rmw23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmw23, align 4
  %call24 = tail call i32 %55(ptr noundef %1, i32 noundef -2112990336, i32 noundef 0, i32 noundef -2147483648) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_set_timing(ptr nocapture noundef readonly %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %coverage_class1 = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 6
  %0 = ptrtoint ptr %coverage_class1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coverage_class1, align 2
  %dev2 = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
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
  %state = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool65.not = icmp eq i32 %12, 0
  br i1 %tobool65.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmw, align 4
  %call66 = tail call i32 %16(ptr noundef %3, i32 noundef -2112999296, i32 noundef 0, i32 noundef 768) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  %conv = sext i16 %1 to i32
  %mul = mul nsw i32 %conv, 3
  %and86 = and i32 %mul, 65535
  %shl109 = mul i32 %conv, 196608
  %or111 = or i32 %and86, %shl109
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr, align 4
  %add = add i32 %or111, 3145959
  tail call void %21(ptr noundef %3, i32 noundef -2112995184, i32 noundef %add) #10
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr114 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr114 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr114, align 4
  %add115 = add i32 %or111, 1835068
  tail call void %25(ptr noundef %3, i32 noundef -2112995180, i32 noundef %add115) #10
  %slottime = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 7
  %26 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %slottime, align 4
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr117 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr117 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr117, align 4
  %conv201 = zext i8 %27 to i32
  %shl202 = shl nuw i32 %conv201, 24
  %and203 = and i32 %shl202, 2130706432
  %or175 = select i1 %cmp, i32 657768, i32 1050984
  %or204 = or i32 %or175, %and203
  tail call void %31(ptr noundef %3, i32 noundef -2112995164, i32 noundef %or204) #10
  %32 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %slottime, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %33)
  %cmp207 = icmp ult i8 %33, 20
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp207, i1 true, i1 %cmp.not
  %val.0 = select i1 %brmerge, i32 73, i32 3
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %rmw213 = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %rmw213 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw213, align 4
  %call238 = tail call i32 %37(ptr noundef %3, i32 noundef -2113003388, i32 noundef 16383, i32 noundef %val.0) #10
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %rmw240 = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %rmw240 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmw240, align 4
  %call241 = tail call i32 %41(ptr noundef %3, i32 noundef -2112999296, i32 noundef 768, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_update_channel(ptr noundef %mphy) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9
  %call = tail call i32 @mt76_connac_pm_wake(ptr noundef %mphy, ptr noundef %pm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(ptr noundef %3, i32 noundef -2112958420) #10
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call36.i = tail call i32 %13(ptr noundef %3, i32 noundef -2112958380) #10
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call61.i = tail call i32 %17(ptr noundef %3, i32 noundef -2112958376) #10
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call86.i = tail call i32 %21(ptr noundef %3, i32 noundef -2112990280) #10
  %noise.i = getelementptr inbounds %struct.mt7921_phy, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %noise.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %noise.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool92.not.i = icmp eq i16 %23, 0
  br i1 %tobool92.not.i, label %if.then.i, label %if.end.mt7921_phy_update_channel.exit_crit_edge

if.end.mt7921_phy_update_channel.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt7921_phy_update_channel.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %noise.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %noise.i, align 8
  br label %mt7921_phy_update_channel.exit

mt7921_phy_update_channel.exit:                   ; preds = %if.then.i, %if.end.mt7921_phy_update_channel.exit_crit_edge
  %and87.i = and i32 %call86.i, 16777215
  %and62.i = and i32 %call61.i, 16777215
  %conv64.i = zext i32 %and62.i to i64
  %and37.i = and i32 %call36.i, 16777215
  %conv39.i = zext i32 %and37.i to i64
  %and.i = and i32 %call.i, 16777215
  %conv.i = zext i32 %and.i to i64
  %chan_state.i = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 7
  %25 = ptrtoint ptr %chan_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_state.i, align 4
  %cc_busy.i = getelementptr inbounds %struct.mt76_channel_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %cc_busy.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cc_busy.i, align 8
  %add105.i = add i64 %28, %conv.i
  store i64 %add105.i, ptr %cc_busy.i, align 8
  %cc_tx.i = getelementptr inbounds %struct.mt76_channel_state, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %cc_tx.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cc_tx.i, align 8
  %add106.i = add i64 %30, %conv39.i
  store i64 %add106.i, ptr %cc_tx.i, align 8
  %narrow.i = add nuw nsw i32 %and87.i, %and62.i
  %add107.i = zext i32 %narrow.i to i64
  %cc_rx.i = getelementptr inbounds %struct.mt76_channel_state, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %cc_rx.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cc_rx.i, align 8
  %add108.i = add i64 %32, %add107.i
  store i64 %add108.i, ptr %cc_rx.i, align 8
  %cc_bss_rx.i = getelementptr inbounds %struct.mt76_channel_state, ptr %26, i32 0, i32 3
  %33 = ptrtoint ptr %cc_bss_rx.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cc_bss_rx.i, align 8
  %add109.i = add i64 %34, %conv64.i
  store i64 %add109.i, ptr %cc_bss_rx.i, align 8
  %35 = ptrtoint ptr %noise.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %noise.i, align 8
  %37 = lshr i16 %36, 4
  %38 = trunc i16 %37 to i8
  %sub113.i = sub i8 0, %38
  %noise115.i = getelementptr inbounds %struct.mt76_channel_state, ptr %26, i32 0, i32 5
  %39 = ptrtoint ptr %noise115.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %sub113.i, ptr %noise115.i, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw, align 4
  %call2 = tail call i32 %43(ptr noundef %1, i32 noundef -2112990268, i32 noundef 0, i32 noundef -2147483648) #10
  tail call void @mt76_connac_power_save_sched(ptr noundef %mphy, ptr noundef %pm) #10
  br label %cleanup

cleanup:                                          ; preds = %mt7921_phy_update_channel.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_reset_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16664
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %dev3 = getelementptr i8, ptr %work, i32 -15680
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #13
  %hw_full_reset = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %hw_full_reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %hw_full_reset, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hw_full_reset, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %1) #10
  %mac_work = getelementptr i8, ptr %work, i32 -16104
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #10
  %ps_work = getelementptr i8, ptr %work, i32 420
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #10
  %wake_work = getelementptr i8, ptr %work, i32 184
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work) #10
  %mutex = getelementptr i8, ptr %work, i32 -15784
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %hif_ops = getelementptr i8, ptr %work, i32 708
  %5 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif_ops, align 4
  %reset = getelementptr inbounds %struct.mt7921_hif_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset, align 4
  %call6 = tail call i32 %8(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.for.end.thread_crit_edge, label %for.inc

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.8.for.end.thread_crit_edge, %for.inc.7.for.end.thread_crit_edge, %for.inc.6.for.end.thread_crit_edge, %for.inc.5.for.end.thread_crit_edge, %for.inc.4.for.end.thread_crit_edge, %for.inc.3.for.end.thread_crit_edge, %for.inc.2.for.end.thread_crit_edge, %for.inc.1.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end14

for.inc:                                          ; preds = %entry
  %9 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hif_ops, align 4
  %reset.1 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %reset.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset.1, align 4
  %call6.1 = tail call i32 %12(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool.not.1, label %for.inc.for.end.thread_crit_edge, label %for.inc.1

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.1:                                        ; preds = %for.inc
  %13 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_ops, align 4
  %reset.2 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %reset.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset.2, align 4
  %call6.2 = tail call i32 %16(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.end.thread_crit_edge, label %for.inc.2

for.inc.1.for.end.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.2:                                        ; preds = %for.inc.1
  %17 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hif_ops, align 4
  %reset.3 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %reset.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset.3, align 4
  %call6.3 = tail call i32 %20(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3)
  %tobool.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.end.thread_crit_edge, label %for.inc.3

for.inc.2.for.end.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.3:                                        ; preds = %for.inc.2
  %21 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hif_ops, align 4
  %reset.4 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %reset.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset.4, align 4
  %call6.4 = tail call i32 %24(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.4)
  %tobool.not.4 = icmp eq i32 %call6.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.end.thread_crit_edge, label %for.inc.4

for.inc.3.for.end.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.4:                                        ; preds = %for.inc.3
  %25 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hif_ops, align 4
  %reset.5 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %reset.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset.5, align 4
  %call6.5 = tail call i32 %28(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5)
  %tobool.not.5 = icmp eq i32 %call6.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.end.thread_crit_edge, label %for.inc.5

for.inc.4.for.end.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.5:                                        ; preds = %for.inc.4
  %29 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hif_ops, align 4
  %reset.6 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %reset.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset.6, align 4
  %call6.6 = tail call i32 %32(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.6)
  %tobool.not.6 = icmp eq i32 %call6.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.end.thread_crit_edge, label %for.inc.6

for.inc.5.for.end.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.6:                                        ; preds = %for.inc.5
  %33 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hif_ops, align 4
  %reset.7 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %reset.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset.7, align 4
  %call6.7 = tail call i32 %36(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.7)
  %tobool.not.7 = icmp eq i32 %call6.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.end.thread_crit_edge, label %for.inc.7

for.inc.6.for.end.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.7:                                        ; preds = %for.inc.6
  %37 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hif_ops, align 4
  %reset.8 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %reset.8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reset.8, align 4
  %call6.8 = tail call i32 %40(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.8)
  %tobool.not.8 = icmp eq i32 %call6.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.end.thread_crit_edge, label %for.inc.8

for.inc.7.for.end.thread_crit_edge:               ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.inc.8:                                        ; preds = %for.inc.7
  %41 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hif_ops, align 4
  %reset.9 = getelementptr inbounds %struct.mt7921_hif_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %reset.9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset.9, align 4
  %call6.9 = tail call i32 %44(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.9)
  %tobool.not.9 = icmp eq i32 %call6.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.end.thread_crit_edge, label %do.end12

for.inc.8.for.end.thread_crit_edge:               ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

do.end12:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %45 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.7) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %for.end.thread
  %state = getelementptr i8, ptr %work, i32 -16652
  %call15 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #10
  %47 = call ptr @memcpy(ptr %info, ptr @__const.mt7921_mac_reset_work.info, i32 16)
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 128
  call void @ieee80211_scan_completed(ptr noundef %49, ptr noundef nonnull %info) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %pm2 = getelementptr i8, ptr %work, i32 104
  %50 = ptrtoint ptr %hw_full_reset to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load21 = load i8, ptr %hw_full_reset, align 4
  %bf.clear22 = and i8 %bf.load21, 127
  store i8 %bf.clear22, ptr %hw_full_reset, align 4
  %suspended = getelementptr i8, ptr %work, i32 106
  %51 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %suspended, align 2
  call void @ieee80211_wake_queues(ptr noundef %1) #10
  call void @ieee80211_iterate_interfaces(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @mt7921_vif_connect_iter, ptr noundef null) #10
  call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm2) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_vif_connect_iter(ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %dev1 = getelementptr inbounds %struct.mt7921_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_disconnect(ptr noundef %vif, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %call = tail call i32 @mt76_connac_mcu_uni_add_dev(ptr noundef %3, ptr noundef %vif, ptr noundef %sta, i1 noundef zeroext true) #10
  %call2 = tail call i32 @mt7921_mcu_set_tx(ptr noundef %3, ptr noundef %vif) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_reset(ptr noundef %mdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init_done = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 5
  %0 = ptrtoint ptr %hw_init_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %hw_init_done, align 4
  %1 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %2 = icmp eq i8 %1, 64
  br i1 %2, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wq = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 58
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %reset_work = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %reset_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_update_mib_stats(ptr noundef %phy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mib2 = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef -2112956776) #10
  %shr = lshr i32 %call, 16
  %fcs_err_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %fcs_err_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcs_err_cnt, align 4
  %add = add i32 %7, %shr
  store i32 %add, ptr %fcs_err_cnt, align 4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call33 = tail call i32 %11(ptr noundef %1, i32 noundef -2112957152) #10
  %and34 = and i32 %call33, 65535
  %12 = ptrtoint ptr %mib2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mib2, align 4
  %add36 = add i32 %13, %and34
  store i32 %add36, ptr %mib2, align 4
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call55 = tail call i32 %17(ptr noundef %1, i32 noundef -2112957160) #10
  %and56 = and i32 %call55, 65535
  %ba_miss_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 4
  %18 = ptrtoint ptr %ba_miss_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ba_miss_cnt, align 4
  %add58 = add i32 %19, %and56
  store i32 %add58, ptr %ba_miss_cnt, align 4
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call77 = tail call i32 %23(ptr noundef %1, i32 noundef -2112956792) #10
  %and78 = and i32 %call77, 65535
  %rts_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %rts_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rts_cnt, align 4
  %add80 = add i32 %25, %and78
  store i32 %add80, ptr %rts_cnt, align 4
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call99 = tail call i32 %29(ptr noundef %1, i32 noundef -2112956784) #10
  %and100 = and i32 %call99, 65535
  %rts_retries_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %rts_retries_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rts_retries_cnt, align 4
  %add102 = add i32 %31, %and100
  store i32 %add102, ptr %rts_retries_cnt, align 4
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call105 = tail call i32 %35(ptr noundef %1, i32 noundef -2112957096) #10
  %tx_ampdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 11
  %36 = ptrtoint ptr %tx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_ampdu_cnt, align 4
  %add106 = add i32 %37, %call105
  store i32 %add106, ptr %tx_ampdu_cnt, align 4
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call109 = tail call i32 %41(ptr noundef %1, i32 noundef -2112957084) #10
  %tx_mpdu_attempts_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 12
  %42 = ptrtoint ptr %tx_mpdu_attempts_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_mpdu_attempts_cnt, align 4
  %add110 = add i32 %43, %call109
  store i32 %add110, ptr %tx_mpdu_attempts_cnt, align 4
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call113 = tail call i32 %47(ptr noundef %1, i32 noundef -2112957080) #10
  %tx_mpdu_success_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 13
  %48 = ptrtoint ptr %tx_mpdu_success_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_mpdu_success_cnt, align 4
  %add114 = add i32 %49, %call113
  store i32 %add114, ptr %tx_mpdu_success_cnt, align 4
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call117 = tail call i32 %53(ptr noundef %1, i32 noundef -2112956504) #10
  %and134 = and i32 %call117, 65535
  %tx_pkt_ebf_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 14
  %54 = ptrtoint ptr %tx_pkt_ebf_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_pkt_ebf_cnt, align 4
  %add136 = add i32 %55, %and134
  store i32 %add136, ptr %tx_pkt_ebf_cnt, align 4
  %shr154 = lshr i32 %call117, 16
  %tx_pkt_ibf_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 15
  %56 = ptrtoint ptr %tx_pkt_ibf_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_pkt_ibf_cnt, align 4
  %add155 = add i32 %57, %shr154
  store i32 %add155, ptr %tx_pkt_ibf_cnt, align 4
  %58 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call158 = tail call i32 %61(ptr noundef %1, i32 noundef -2112970416) #10
  %shr176 = lshr i32 %call158, 16
  %tx_bf_ibf_ppdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 5
  %62 = ptrtoint ptr %tx_bf_ibf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_bf_ibf_ppdu_cnt, align 4
  %add177 = add i32 %63, %shr176
  store i32 %add177, ptr %tx_bf_ibf_ppdu_cnt, align 4
  %and194 = and i32 %call158, 65535
  %tx_bf_ebf_ppdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 6
  %64 = ptrtoint ptr %tx_bf_ebf_ppdu_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_bf_ebf_ppdu_cnt, align 4
  %add196 = add i32 %65, %and194
  store i32 %add196, ptr %tx_bf_ebf_ppdu_cnt, align 4
  %66 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call199 = tail call i32 %69(ptr noundef %1, i32 noundef -2112970408) #10
  %shr217 = lshr i32 %call199, 24
  %tx_bf_rx_fb_all_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 7
  %70 = ptrtoint ptr %tx_bf_rx_fb_all_cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_bf_rx_fb_all_cnt, align 4
  %add218 = add i32 %71, %shr217
  store i32 %add218, ptr %tx_bf_rx_fb_all_cnt, align 4
  %and235 = lshr i32 %call199, 16
  %shr236 = and i32 %and235, 255
  %tx_bf_rx_fb_he_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 8
  %72 = ptrtoint ptr %tx_bf_rx_fb_he_cnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_bf_rx_fb_he_cnt, align 4
  %add237 = add i32 %73, %shr236
  store i32 %add237, ptr %tx_bf_rx_fb_he_cnt, align 4
  %and254 = lshr i32 %call199, 8
  %shr255 = and i32 %and254, 255
  %tx_bf_rx_fb_vht_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 9
  %74 = ptrtoint ptr %tx_bf_rx_fb_vht_cnt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_bf_rx_fb_vht_cnt, align 4
  %add256 = add i32 %75, %shr255
  store i32 %add256, ptr %tx_bf_rx_fb_vht_cnt, align 4
  %and273 = and i32 %call199, 255
  %tx_bf_rx_fb_ht_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 10
  %76 = ptrtoint ptr %tx_bf_rx_fb_ht_cnt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_bf_rx_fb_ht_cnt, align 4
  %add275 = add i32 %77, %and273
  store i32 %add275, ptr %tx_bf_rx_fb_ht_cnt, align 4
  %78 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %call278 = tail call i32 %81(ptr noundef %1, i32 noundef -2112956544) #10
  %rx_mpdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 16
  %82 = ptrtoint ptr %rx_mpdu_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_mpdu_cnt, align 4
  %add279 = add i32 %83, %call278
  store i32 %add279, ptr %rx_mpdu_cnt, align 4
  %84 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call282 = tail call i32 %87(ptr noundef %1, i32 noundef -2112956560) #10
  %rx_ampdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 17
  %88 = ptrtoint ptr %rx_ampdu_cnt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_ampdu_cnt, align 4
  %add283 = add i32 %89, %call282
  store i32 %add283, ptr %rx_ampdu_cnt, align 4
  %90 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call286 = tail call i32 %93(ptr noundef %1, i32 noundef -2112956556) #10
  %rx_ampdu_bytes_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 18
  %94 = ptrtoint ptr %rx_ampdu_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_ampdu_bytes_cnt, align 4
  %add287 = add i32 %95, %call286
  store i32 %add287, ptr %rx_ampdu_bytes_cnt, align 4
  %96 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call290 = tail call i32 %99(ptr noundef %1, i32 noundef -2112957092) #10
  %rx_ba_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 19
  %100 = ptrtoint ptr %rx_ba_cnt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_ba_cnt, align 4
  %add291 = add i32 %101, %call290
  store i32 %add291, ptr %rx_ba_cnt, align 4
  %tx_amsdu_cnt = getelementptr inbounds %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 21
  %102 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %call296 = tail call i32 %105(ptr noundef %1, i32 noundef -2113138464) #10
  %arrayidx = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 0
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx, align 4
  %add297 = add i32 %107, %call296
  store i32 %add297, ptr %arrayidx, align 4
  %108 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298 = add i32 %109, %call296
  store i32 %add298, ptr %tx_amsdu_cnt, align 4
  %110 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call296.1 = tail call i32 %113(ptr noundef %1, i32 noundef -2113138460) #10
  %arrayidx.1 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 1
  %114 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.1, align 4
  %add297.1 = add i32 %115, %call296.1
  store i32 %add297.1, ptr %arrayidx.1, align 4
  %116 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.1 = add i32 %117, %call296.1
  store i32 %add298.1, ptr %tx_amsdu_cnt, align 4
  %118 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call296.2 = tail call i32 %121(ptr noundef %1, i32 noundef -2113138456) #10
  %arrayidx.2 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 2
  %122 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.2, align 4
  %add297.2 = add i32 %123, %call296.2
  store i32 %add297.2, ptr %arrayidx.2, align 4
  %124 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.2 = add i32 %125, %call296.2
  store i32 %add298.2, ptr %tx_amsdu_cnt, align 4
  %126 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %call296.3 = tail call i32 %129(ptr noundef %1, i32 noundef -2113138452) #10
  %arrayidx.3 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 3
  %130 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.3, align 4
  %add297.3 = add i32 %131, %call296.3
  store i32 %add297.3, ptr %arrayidx.3, align 4
  %132 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.3 = add i32 %133, %call296.3
  store i32 %add298.3, ptr %tx_amsdu_cnt, align 4
  %134 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %call296.4 = tail call i32 %137(ptr noundef %1, i32 noundef -2113138448) #10
  %arrayidx.4 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 4
  %138 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.4, align 4
  %add297.4 = add i32 %139, %call296.4
  store i32 %add297.4, ptr %arrayidx.4, align 4
  %140 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.4 = add i32 %141, %call296.4
  store i32 %add298.4, ptr %tx_amsdu_cnt, align 4
  %142 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %call296.5 = tail call i32 %145(ptr noundef %1, i32 noundef -2113138444) #10
  %arrayidx.5 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 5
  %146 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.5, align 4
  %add297.5 = add i32 %147, %call296.5
  store i32 %add297.5, ptr %arrayidx.5, align 4
  %148 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.5 = add i32 %149, %call296.5
  store i32 %add298.5, ptr %tx_amsdu_cnt, align 4
  %150 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bus, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %call296.6 = tail call i32 %153(ptr noundef %1, i32 noundef -2113138440) #10
  %arrayidx.6 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 6
  %154 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.6, align 4
  %add297.6 = add i32 %155, %call296.6
  store i32 %add297.6, ptr %arrayidx.6, align 4
  %156 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.6 = add i32 %157, %call296.6
  store i32 %add298.6, ptr %tx_amsdu_cnt, align 4
  %158 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bus, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %call296.7 = tail call i32 %161(ptr noundef %1, i32 noundef -2113138436) #10
  %arrayidx.7 = getelementptr %struct.mt7921_phy, ptr %phy, i32 0, i32 10, i32 20, i32 7
  %162 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.7, align 4
  %add297.7 = add i32 %163, %call296.7
  store i32 %add297.7, ptr %arrayidx.7, align 4
  %164 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_amsdu_cnt, align 4
  %add298.7 = add i32 %165, %call296.7
  store i32 %add298.7, ptr %tx_amsdu_cnt, align 4
  %166 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bus, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %call308 = tail call i32 %169(ptr noundef %1, i32 noundef -2112956452) #10
  %170 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bus, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %call314 = tail call i32 %173(ptr noundef %1, i32 noundef -2112956436) #10
  %and315 = and i32 %call308, 65535
  %arrayidx317 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 0
  %174 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx317, align 4
  %add318 = add i32 %175, %and315
  store i32 %add318, ptr %arrayidx317, align 4
  %shr319 = lshr i32 %call308, 16
  %arrayidx322 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 1
  %176 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx322, align 4
  %add323 = add i32 %177, %shr319
  store i32 %add323, ptr %arrayidx322, align 4
  %and324 = and i32 %call314, 65535
  %arrayidx327 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 4
  %178 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx327, align 4
  %add328 = add i32 %179, %and324
  store i32 %add328, ptr %arrayidx327, align 4
  %shr329 = lshr i32 %call314, 16
  %arrayidx332 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 5
  %180 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx332, align 4
  %add333 = add i32 %181, %shr329
  store i32 %add333, ptr %arrayidx332, align 4
  %182 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bus, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %call308.1 = tail call i32 %185(ptr noundef %1, i32 noundef -2112956448) #10
  %186 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bus, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %call314.1 = tail call i32 %189(ptr noundef %1, i32 noundef -2112956432) #10
  %and315.1 = and i32 %call308.1, 65535
  %arrayidx317.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 2
  %190 = ptrtoint ptr %arrayidx317.1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx317.1, align 4
  %add318.1 = add i32 %191, %and315.1
  store i32 %add318.1, ptr %arrayidx317.1, align 4
  %shr319.1 = lshr i32 %call308.1, 16
  %arrayidx322.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 3
  %192 = ptrtoint ptr %arrayidx322.1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx322.1, align 4
  %add323.1 = add i32 %193, %shr319.1
  store i32 %add323.1, ptr %arrayidx322.1, align 4
  %and324.1 = and i32 %call314.1, 65535
  %arrayidx327.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 6
  %194 = ptrtoint ptr %arrayidx327.1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx327.1, align 4
  %add328.1 = add i32 %195, %and324.1
  store i32 %add328.1, ptr %arrayidx327.1, align 4
  %shr329.1 = lshr i32 %call314.1, 16
  %arrayidx332.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 7
  %196 = ptrtoint ptr %arrayidx332.1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx332.1, align 4
  %add333.1 = add i32 %197, %shr329.1
  store i32 %add333.1, ptr %arrayidx332.1, align 4
  %198 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bus, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %call308.2 = tail call i32 %201(ptr noundef %1, i32 noundef -2112956444) #10
  %202 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bus, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %call314.2 = tail call i32 %205(ptr noundef %1, i32 noundef -2112956428) #10
  %and315.2 = and i32 %call308.2, 65535
  %206 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx327, align 4
  %add318.2 = add i32 %207, %and315.2
  store i32 %add318.2, ptr %arrayidx327, align 4
  %shr319.2 = lshr i32 %call308.2, 16
  %208 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx332, align 4
  %add323.2 = add i32 %209, %shr319.2
  store i32 %add323.2, ptr %arrayidx332, align 4
  %and324.2 = and i32 %call314.2, 65535
  %arrayidx327.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 8
  %210 = ptrtoint ptr %arrayidx327.2 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx327.2, align 4
  %add328.2 = add i32 %211, %and324.2
  store i32 %add328.2, ptr %arrayidx327.2, align 4
  %shr329.2 = lshr i32 %call314.2, 16
  %arrayidx332.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 9
  %212 = ptrtoint ptr %arrayidx332.2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx332.2, align 4
  %add333.2 = add i32 %213, %shr329.2
  store i32 %add333.2, ptr %arrayidx332.2, align 4
  %214 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %bus, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %call308.3 = tail call i32 %217(ptr noundef %1, i32 noundef -2112956440) #10
  %218 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %bus, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %call314.3 = tail call i32 %221(ptr noundef %1, i32 noundef -2112956424) #10
  %and315.3 = and i32 %call308.3, 65535
  %222 = ptrtoint ptr %arrayidx327.1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx327.1, align 4
  %add318.3 = add i32 %223, %and315.3
  store i32 %add318.3, ptr %arrayidx327.1, align 4
  %shr319.3 = lshr i32 %call308.3, 16
  %224 = ptrtoint ptr %arrayidx332.1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx332.1, align 4
  %add323.3 = add i32 %225, %shr319.3
  store i32 %add323.3, ptr %arrayidx332.1, align 4
  %and324.3 = and i32 %call314.3, 65535
  %arrayidx327.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 10
  %226 = ptrtoint ptr %arrayidx327.3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx327.3, align 4
  %add328.3 = add i32 %227, %and324.3
  store i32 %add328.3, ptr %arrayidx327.3, align 4
  %shr329.3 = lshr i32 %call314.3, 16
  %arrayidx332.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 11
  %228 = ptrtoint ptr %arrayidx332.3 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx332.3, align 4
  %add333.3 = add i32 %229, %shr329.3
  store i32 %add333.3, ptr %arrayidx332.3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_mac_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -560
  %priv = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.mt7921_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #10
  tail call void @mt76_update_survey(ptr noundef %add.ptr) #10
  %mac_work_count = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_work_count, align 4
  %inc = add i8 %5, 1
  store i8 %inc, ptr %mac_work_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp = icmp eq i8 %inc, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mac_work_count, align 4
  tail call void @mt7921_mac_update_mib_stats(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %pm6 = getelementptr inbounds %struct.mt7921_dev, ptr %8, i32 0, i32 9
  tail call void @mt76_connac_power_save_sched(ptr noundef %8, ptr noundef %pm6) #10
  %mutex.i18 = getelementptr inbounds %struct.mt76_dev, ptr %8, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i18) #10
  %dev7 = getelementptr i8, ptr %work, i32 -556
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  tail call void @mt76_tx_status_check(ptr noundef %10, i1 noundef zeroext false) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %14, ptr noundef %work, i32 noundef 25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_update_survey(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_pm_wake_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16848
  %phy = getelementptr i8, ptr %work, i32 -5832
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %call = tail call i32 @mt7921_mcu_drv_pmctrl(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %bus = getelementptr i8, ptr %work, i32 -15876
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then1, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %napi = getelementptr i8, ptr %work, i32 -10912
  %ndesc = getelementptr i8, ptr %work, i32 -9384
  %6 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then1:                                         ; preds = %if.then
  %pm = getelementptr i8, ptr %work, i32 -80
  tail call void @mt76_connac_pm_dequeue_skbs(ptr noundef %1, ptr noundef %pm) #10
  %8 = getelementptr i8, ptr %work, i32 -6060
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then1.if.end_crit_edge, label %if.end.i

if.then1.if.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then1
  %state.i = getelementptr i8, ptr %work, i32 -6052
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %15) #10
  br label %if.end

for.body:                                         ; preds = %for.cond.preheader
  %call.i30 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i30, label %if.then.i, label %for.body.napi_schedule.exit_crit_edge

for.body.napi_schedule.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.body.napi_schedule.exit_crit_edge
  %ndesc.1 = getelementptr i8, ptr %work, i32 -9232
  %16 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.1 = icmp eq i32 %17, 0
  br i1 %tobool3.not.1, label %napi_schedule.exit.for.end_crit_edge, label %for.body.1

napi_schedule.exit.for.end_crit_edge:             ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %napi_schedule.exit
  %arrayidx4.1 = getelementptr i8, ptr %work, i32 -10688
  %call.i30.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx4.1) #10
  br i1 %call.i30.1, label %if.then.i.1, label %for.body.1.napi_schedule.exit.1_crit_edge

for.body.1.napi_schedule.exit.1_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %arrayidx4.1) #10
  br label %napi_schedule.exit.1

napi_schedule.exit.1:                             ; preds = %if.then.i.1, %for.body.1.napi_schedule.exit.1_crit_edge
  %ndesc.2 = getelementptr i8, ptr %work, i32 -9080
  %18 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.2 = icmp eq i32 %19, 0
  br i1 %tobool3.not.2, label %napi_schedule.exit.1.for.end_crit_edge, label %for.body.2

napi_schedule.exit.1.for.end_crit_edge:           ; preds = %napi_schedule.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %napi_schedule.exit.1
  %arrayidx4.2 = getelementptr i8, ptr %work, i32 -10464
  %call.i30.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx4.2) #10
  br i1 %call.i30.2, label %if.then.i.2, label %for.body.2.napi_schedule.exit.2_crit_edge

for.body.2.napi_schedule.exit.2_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %arrayidx4.2) #10
  br label %napi_schedule.exit.2

napi_schedule.exit.2:                             ; preds = %if.then.i.2, %for.body.2.napi_schedule.exit.2_crit_edge
  %ndesc.3 = getelementptr i8, ptr %work, i32 -8928
  %20 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.3 = icmp eq i32 %21, 0
  br i1 %tobool3.not.3, label %napi_schedule.exit.2.for.end_crit_edge, label %for.body.3

napi_schedule.exit.2.for.end_crit_edge:           ; preds = %napi_schedule.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %napi_schedule.exit.2
  %arrayidx4.3 = getelementptr i8, ptr %work, i32 -10240
  %call.i30.3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx4.3) #10
  br i1 %call.i30.3, label %if.then.i.3, label %for.body.3.napi_schedule.exit.3_crit_edge

for.body.3.napi_schedule.exit.3_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %arrayidx4.3) #10
  br label %napi_schedule.exit.3

napi_schedule.exit.3:                             ; preds = %if.then.i.3, %for.body.3.napi_schedule.exit.3_crit_edge
  %ndesc.4 = getelementptr i8, ptr %work, i32 -8776
  %22 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.4 = icmp eq i32 %23, 0
  br i1 %tobool3.not.4, label %napi_schedule.exit.3.for.end_crit_edge, label %for.body.4

napi_schedule.exit.3.for.end_crit_edge:           ; preds = %napi_schedule.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.4:                                       ; preds = %napi_schedule.exit.3
  %arrayidx4.4 = getelementptr i8, ptr %work, i32 -10016
  %call.i30.4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx4.4) #10
  br i1 %call.i30.4, label %if.then.i.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.i.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %arrayidx4.4) #10
  br label %for.end

for.end:                                          ; preds = %if.then.i.4, %for.body.4.for.end_crit_edge, %napi_schedule.exit.3.for.end_crit_edge, %napi_schedule.exit.2.for.end_crit_edge, %napi_schedule.exit.1.for.end_crit_edge, %napi_schedule.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pm5 = getelementptr i8, ptr %work, i32 -80
  tail call void @mt76_connac_pm_dequeue_skbs(ptr noundef %1, ptr noundef %pm5) #10
  %queue_ops.i = getelementptr i8, ptr %work, i32 -8732
  %24 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %tx_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_cleanup.i, align 4
  %q_mcu.i = getelementptr i8, ptr %work, i32 -9504
  %28 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q_mcu.i, align 16
  tail call void %27(ptr noundef %add.ptr, ptr noundef %29, i1 noundef zeroext false) #10
  %30 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %tx_cleanup2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_cleanup2.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %work, i32 -9500
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx4.i, align 4
  tail call void %33(ptr noundef %add.ptr, ptr noundef %35, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then5.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then1.if.end_crit_edge
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool7.not = icmp eq i32 %38, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %40, ptr noundef %mac_work, i32 noundef 25) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %42) #10
  %wait = getelementptr i8, ptr %work, i32 44
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_drv_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_pm_dequeue_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_pm_power_save_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -17084
  %phy = getelementptr i8, ptr %work, i32 -6068
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %idle_timeout = getelementptr i8, ptr %work, i32 104
  %2 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idle_timeout, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_activity = getelementptr i8, ptr %work, i32 100
  %11 = ptrtoint ptr %last_activity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_activity, align 32
  %add = add i32 %12, %3
  %sub = sub i32 %10, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub9 = sub i32 %add, %13
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @mt7921_mcu_fw_pmctrl(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  %call14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #10
  br label %cleanup

out:                                              ; preds = %if.end10.out_crit_edge, %if.then5, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %delta.0 = phi i32 [ %3, %entry.out_crit_edge ], [ %3, %lor.lhs.false.out_crit_edge ], [ %sub9, %if.then5 ], [ %3, %if.end10.out_crit_edge ]
  %wq = getelementptr i8, ptr %work, i32 -6300
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 32
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef %delta.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_fw_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_coredump_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %coredump = getelementptr i8, ptr %work, i32 -56
  %last_activity = getelementptr i8, ptr %work, i32 100
  %1 = ptrtoint ptr %last_activity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_activity, align 4
  %add.neg = add i32 %0, -20
  %sub = sub i32 %add.neg, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wq = getelementptr i8, ptr %work, i32 -6484
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 5) #10
  br label %cleanup23

if.end:                                           ; preds = %entry
  %call3 = tail call noalias ptr @vzalloc(i32 noundef 1331200) #14
  %lock = getelementptr i8, ptr %work, i32 -16532
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %5 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %coredump, align 4
  %cmp.i.i53 = icmp eq ptr %6, %coredump
  %tobool.not.i5254 = icmp eq ptr %6, null
  %tobool.not.i55 = or i1 %cmp.i.i53, %tobool.not.i5254
  br i1 %tobool.not.i55, label %if.end.while.end_crit_edge, label %if.end8.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end8.lr.ph:                                    ; preds = %if.end
  %qlen.i.i = getelementptr i8, ptr %work, i32 -48
  %tobool10.not = icmp eq ptr %call3, null
  %sub.ptr.rhs.cast = ptrtoint ptr %call3 to i32
  br label %if.end8

if.end8:                                          ; preds = %cleanup.if.end8_crit_edge, %if.end8.lr.ph
  %7 = phi ptr [ %6, %if.end8.lr.ph ], [ %24, %cleanup.if.end8_crit_edge ]
  %data.056 = phi ptr [ %call3, %if.end8.lr.ph ], [ %data.1, %cleanup.if.end8_crit_edge ]
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %7, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %call9 = tail call ptr @skb_pull(ptr noundef nonnull %7, i32 noundef 36) #10
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add.ptr11 = getelementptr i8, ptr %data.056, i32 %17
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 1331200, i32 %sub.ptr.sub)
  %cmp12 = icmp sgt i32 %sub.ptr.sub, 1331200
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %data15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %18 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data15, align 4
  %20 = call ptr @memcpy(ptr %data.056, ptr %19, i32 %17)
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add.ptr18 = getelementptr i8, ptr %data.056, i32 %22
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %data.1 = phi ptr [ %add.ptr18, %if.end14 ], [ %data.056, %lor.lhs.false.cleanup_crit_edge ], [ %data.056, %if.end8.cleanup_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %7) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %23 = ptrtoint ptr %coredump to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %coredump, align 4
  %cmp.i.i = icmp eq ptr %24, %coredump
  %tobool.not.i52 = icmp eq ptr %24, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i52
  br i1 %tobool.not.i, label %cleanup.while.end_crit_edge, label %cleanup.if.end8_crit_edge

cleanup.if.end8_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %tobool19.not = icmp eq ptr %call3, null
  br i1 %tobool19.not, label %while.end.if.end22_crit_edge, label %if.then20

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev21 = getelementptr i8, ptr %work, i32 -16284
  %25 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev21, align 8
  tail call void @dev_coredumpv(ptr noundef %26, ptr noundef nonnull %call3, i32 noundef 1331200, i32 noundef 3264) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %while.end.if.end22_crit_edge
  %hw_init_done.i = getelementptr i8, ptr %work, i32 -560
  %27 = ptrtoint ptr %hw_init_done.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %hw_init_done.i, align 4
  %28 = and i8 %bf.load.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %28)
  %29 = icmp eq i8 %28, 64
  br i1 %29, label %if.end5.i, label %if.end22.cleanup23_crit_edge

if.end22.cleanup23_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end5.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %wq.i = getelementptr i8, ptr %work, i32 -6484
  %30 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq.i, align 32
  %reset_work.i = getelementptr i8, ptr %work, i32 -604
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %reset_work.i) #10
  br label %cleanup23

cleanup23:                                        ; preds = %if.end5.i, %if.end22.cleanup23_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7921_reverse_frag0_hdr_trans(ptr noundef %skb, i16 noundef zeroext %hdr_gap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %vif18 = getelementptr inbounds %struct.mt7921_sta, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vif18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif18, align 4
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %32, label %if.end21.unreachabledefault [
    i32 0, label %sw.bb
    i32 2, label %sw.bb116
    i32 1, label %sw.bb120
    i32 3, label %sw.bb124
  ]

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %hdr.sroa.36.sroa.0.0.extract.shift279 = lshr i16 %eth_hdr.sroa.19.0.copyload, 8
  %hdr.sroa.36.sroa.0.0.extract.trunc280 = trunc i16 %hdr.sroa.36.sroa.0.0.extract.shift279 to i8
  %hdr.sroa.36.sroa.9.0.extract.trunc288 = trunc i16 %eth_hdr.sroa.19.0.copyload to i8
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %hdr.sroa.36.sroa.0.0.extract.shift281 = lshr i16 %eth_hdr.sroa.9.0.copyload, 8
  %hdr.sroa.36.sroa.0.0.extract.trunc282 = trunc i16 %hdr.sroa.36.sroa.0.0.extract.shift281 to i8
  %hdr.sroa.36.sroa.9.0.extract.trunc289 = trunc i16 %eth_hdr.sroa.9.0.copyload to i8
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub) #10
  %40 = zext i16 %eth_hdr.sroa.23.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %eth_hdr.sroa.23.0.copyload, label %if.else [
    i16 -32525, label %sw.epilog.if.then141_crit_edge
    i16 -32457, label %sw.epilog.if.then141_crit_edge374
  ]

sw.epilog.if.then141_crit_edge374:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then141

sw.epilog.if.then141_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then141

if.then141:                                       ; preds = %sw.epilog.if.then141_crit_edge, %sw.epilog.if.then141_crit_edge374
  %call142 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  %call148 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  %call150 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #10
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %if.then147, %if.then141
  %49 = and i16 %conv48, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp.i.not = icmp eq i16 %49, 0
  br i1 %cmp.i.not, label %if.end152.if.end157_crit_edge, label %if.then155

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %call156 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  %call161 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #10
  %52 = ptrtoint ptr %call161 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 0, ptr %call161, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.end157.if.end162_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp.i214 = icmp eq i16 %31, 3
  br i1 %cmp.i214, label %if.then165, label %if.else167

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %call166 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  %call168 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 24) #10
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
declare dso_local void @mt76_insert_ccmp_hdr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7921_mac_assoc_rssi(ptr nocapture noundef readonly %dev, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1.i, align 4
  %mstat.sroa.4.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mstat.sroa.4.0.copyload.i = load i32, ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i, align 4
  %and.i = and i32 %mstat.sroa.4.0.copyload.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.idx.i = select i1 %tobool.not.i, i32 0, i32 12
  %spec.select.i = getelementptr i8, ptr %1, i32 %spec.select.idx.i
  %and6.i = and i32 %mstat.sroa.4.0.copyload.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %data.1.idx.i = select i1 %tobool7.not.i, i32 0, i32 12
  %data.1.i = getelementptr i8, ptr %spec.select.i, i32 %data.1.idx.i
  %3 = ptrtoint ptr %data.1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data.1.i, align 2
  %5 = and i16 %4, -1024
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.if.end_crit_edge
    i16 -20480, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 128
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @mt7921_mac_rssi_iter, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7921_mac_decode_he_radiotap(ptr noundef %skb, ptr nocapture noundef readonly %rxv, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #10
  %4 = call ptr @memcpy(ptr %call1, ptr @mt7921_mac_decode_he_radiotap.known, i32 12)
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
  %or11181 = or i16 %12, %7
  %data3 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 2
  %13 = ptrtoint ptr %data3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or11181, ptr %data3, align 2
  %arrayidx13 = getelementptr i32, ptr %rxv, i32 11
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  %sh.diff433 = lshr i32 %15, 8
  %tr.sh.diff434 = trunc i32 %sh.diff433 to i16
  %16 = and i16 %tr.sh.diff434, 3840
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
  %or25182 = or i16 %22, %25
  %data5 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 4
  %26 = ptrtoint ptr %data5 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or25182, ptr %data5, align 2
  %27 = ptrtoint ptr %rxv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxv, align 4
  %29 = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %30 = or i16 %or25182, 64
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
  %div4.i247.lhs.trunc = trunc i32 %35 to i16
  %36 = lshr exact i16 %div4.i247.lhs.trunc, 6
  %37 = trunc i32 %33 to i16
  %38 = shl i16 %37, 4
  %39 = and i16 %38, 4096
  %or42183 = or i16 %39, %36
  %data6 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call1, i32 0, i32 5
  %40 = ptrtoint ptr %data6 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %or42183, ptr %data6, align 2
  %41 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %mode, label %if.end.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb71
    i32 11, label %sw.bb85
    i32 10, label %sw.bb108
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %call1, align 2
  %44 = or i16 %43, 6144
  store i16 %44, ptr %call1, align 2
  %45 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2, align 4
  %sh.diff437 = lshr i32 %46, 7
  %tr.sh.diff438 = trunc i32 %sh.diff437 to i16
  %47 = and i16 %tr.sh.diff438, 16384
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %50 = trunc i32 %49 to i16
  %51 = shl i16 %50, 8
  %52 = and i16 %51, -32768
  %53 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %data3, align 2
  %or57191 = or i16 %52, %54
  %or60192 = or i16 %or57191, %47
  store i16 %or60192, ptr %data3, align 2
  %55 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx13, align 4
  %sh.diff439 = lshr i32 %56, 8
  %tr.sh.diff440 = trunc i32 %sh.diff439 to i16
  %57 = and i16 %tr.sh.diff440, 3840
  %58 = ptrtoint ptr %data4 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %data4, align 2
  %or69193 = or i16 %57, %59
  store i16 %or69193, ptr %data4, align 2
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %call1, align 2
  %62 = or i16 %61, 4352
  store i16 %62, ptr %call1, align 2
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  %65 = trunc i32 %64 to i16
  %66 = shl i16 %65, 8
  %67 = and i16 %66, -32768
  %68 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %data3, align 2
  %or83190 = or i16 %67, %69
  store i16 %or83190, ptr %data3, align 2
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end
  %70 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %call1, align 2
  %72 = or i16 %71, 4608
  store i16 %72, ptr %call1, align 2
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %75 = trunc i32 %74 to i16
  %76 = shl i16 %75, 8
  %77 = and i16 %76, -32768
  %78 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %data3, align 2
  %or97188 = or i16 %77, %79
  store i16 %or97188, ptr %data3, align 2
  %arrayidx99 = getelementptr i32, ptr %rxv, i32 7
  %80 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx99, align 4
  %82 = and i32 %81, 61567
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = lshr exact i32 %83, 16
  %conv8.i348 = trunc i32 %84 to i16
  %85 = tail call i16 @llvm.bswap.i16(i16 %conv8.i348) #10
  %86 = ptrtoint ptr %data4 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %data4, align 2
  %or106189 = or i16 %85, %87
  store i16 %or106189, ptr %data4, align 2
  tail call fastcc void @mt7921_mac_decode_he_radiotap_ru(ptr noundef %cb, ptr noundef %call1, ptr noundef %rxv)
  %88 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flag, align 4
  %or.i = or i32 %89, 134217728
  store i32 %or.i, ptr %flag, align 4
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #10
  %90 = call ptr @memcpy(ptr %call.i, ptr @mt7921_mac_decode_he_mu_radiotap.mu_known, i32 12)
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %91 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rate_idx.i, align 1
  %93 = and i8 %92, 15
  %conv8.i.i = zext i8 %93 to i16
  %94 = shl nuw nsw i16 %conv8.i.i, 8
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %call.i, align 2
  %or4155.i = or i16 %96, %94
  store i16 %or4155.i, ptr %call.i, align 2
  %he_dcm.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %97 = ptrtoint ptr %he_dcm.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %bf.load.i = load i16, ptr %he_dcm.i, align 1
  %98 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool.not.i403 = icmp eq i16 %98, 0
  br i1 %tobool.not.i403, label %sw.bb85.le16_encode_bits.exit185.i_crit_edge, label %if.then.i404

sw.bb85.le16_encode_bits.exit185.i_crit_edge:     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  br label %le16_encode_bits.exit185.i

if.then.i404:                                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  %or16158.i = or i16 %or4155.i, 8192
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %or16158.i, ptr %call.i, align 2
  br label %le16_encode_bits.exit185.i

le16_encode_bits.exit185.i:                       ; preds = %if.then.i404, %sw.bb85.le16_encode_bits.exit185.i_crit_edge
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx, align 4
  %102 = trunc i32 %101 to i16
  %103 = ptrtoint ptr %he_dcm.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %bf.load18.i = load i16, ptr %he_dcm.i, align 1
  %104 = lshr i16 %bf.load18.i, 3
  %105 = and i16 %104, 768
  %106 = shl i16 %102, 12
  %or29156.i = or i16 %106, %105
  %flags2.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 1
  %107 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags2.i, align 2
  %or31157.i = or i16 %108, %or29156.i
  store i16 %or31157.i, ptr %flags2.i, align 2
  %arrayidx45.i = getelementptr i32, ptr %rxv, i32 3
  %109 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx45.i, align 4
  %111 = lshr i32 %110, 24
  %conv46.i = trunc i32 %111 to i8
  %ru_ch1.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 2
  %112 = ptrtoint ptr %ru_ch1.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv46.i, ptr %ru_ch1.i, align 2
  %bf.load49.i = load i16, ptr %he_dcm.i, align 1
  %113 = and i16 %bf.load49.i, 14336
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %113)
  %cmp.i = icmp ugt i16 %113, 4096
  br i1 %cmp.i, label %if.then55.i, label %le16_encode_bits.exit185.i.if.end81.i_crit_edge

le16_encode_bits.exit185.i.if.end81.i_crit_edge:  ; preds = %le16_encode_bits.exit185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then55.i:                                      ; preds = %le16_encode_bits.exit185.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %call.i, align 2
  %116 = or i16 %115, 2
  store i16 %116, ptr %call.i, align 2
  %117 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx45.i, align 4
  %119 = lshr i32 %118, 16
  %conv79.i = trunc i32 %119 to i8
  %ru_ch2.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 3
  %120 = ptrtoint ptr %ru_ch2.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv79.i, ptr %ru_ch2.i, align 2
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then55.i, %le16_encode_bits.exit185.i.if.end81.i_crit_edge
  %121 = ptrtoint ptr %he_dcm.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %bf.load83.i = load i16, ptr %he_dcm.i, align 1
  %122 = and i16 %bf.load83.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %cmp88.not.i = icmp eq i16 %122, 0
  br i1 %cmp88.not.i, label %if.end81.i.sw.epilog_crit_edge, label %do.end105.i

if.end81.i.sw.epilog_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end105.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx45.i, align 4
  %125 = lshr i32 %124, 8
  %conv110.i = trunc i32 %125 to i8
  %arrayidx112.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 2, i32 1
  %126 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv110.i, ptr %arrayidx112.i, align 1
  %127 = load i32, ptr %arrayidx45.i, align 4
  %conv132.i = trunc i32 %127 to i8
  %arrayidx134.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %call.i, i32 0, i32 3, i32 1
  %128 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv132.i, ptr %arrayidx134.i, align 1
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %call1, align 2
  %131 = or i16 %130, 824
  store i16 %131, ptr %call1, align 2
  %132 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx13, align 4
  %134 = and i32 %133, 15728896
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  %sh.diff435 = lshr i32 %133, 8
  %tr.sh.diff436 = trunc i32 %sh.diff435 to i16
  %136 = and i16 %tr.sh.diff436, 3840
  %137 = trunc i32 %135 to i16
  %or123184 = or i16 %136, %137
  %138 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx13, align 4
  %140 = trunc i32 %139 to i16
  %141 = lshr i16 %140, 9
  %142 = and i16 %141, 15
  %or129185 = or i16 %or123184, %142
  %143 = and i32 %139, 57345
  %144 = tail call i32 @llvm.bswap.i32(i32 %143)
  %sum.shift423 = lshr exact i32 %144, 17
  %145 = trunc i32 %sum.shift423 to i16
  %146 = ptrtoint ptr %data4 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %data4, align 2
  %or135186 = or i16 %or129185, %147
  %or138187 = or i16 %or135186, %145
  store i16 %or138187, ptr %data4, align 2
  tail call fastcc void @mt7921_mac_decode_he_radiotap_ru(ptr noundef %cb, ptr noundef %call1, ptr noundef %rxv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb108, %do.end105.i, %if.end81.i.sw.epilog_crit_edge, %sw.bb71, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_mac_rssi_iter(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 3, i32 38
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp sgt i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %mstat.sroa.4.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 3, i32 28
  %4 = ptrtoint ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mstat.sroa.4.0.copyload.i = load i32, ptr %mstat.sroa.4.0.arraydecay.sroa_idx.i, align 4
  %and.i = and i32 %mstat.sroa.4.0.copyload.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.idx.i = select i1 %tobool.not.i, i32 0, i32 12
  %spec.select.i = getelementptr i8, ptr %3, i32 %spec.select.idx.i
  %and6.i = and i32 %mstat.sroa.4.0.copyload.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %data.1.idx.i = select i1 %tobool7.not.i, i32 0, i32 12
  %data.1.i = getelementptr i8, ptr %spec.select.i, i32 %data.1.idx.i
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %data.1.i, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr1, align 4
  %xor.i = xor i32 %8, %6
  %add.ptr.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr1, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rssi = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5
  %conv9 = sext i8 %1 to i32
  %13 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i16 = icmp eq i32 %14, 0
  %sub.i = mul i32 %14, 7
  %.neg = mul nsw i32 %conv9, -1024
  %add.i = add i32 %sub.i, %.neg
  %shr.i = lshr i32 %add.i, 3
  %cond.i = select i1 %tobool.not.i16, i32 %.neg, i32 %shr.i
  %15 = ptrtoint ptr %rssi to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %cond.i, ptr %rssi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7921_mac_decode_he_radiotap_ru(ptr nocapture noundef %status, ptr nocapture noundef %he, ptr nocapture noundef readonly %rxv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

entry.sw.bb59_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

entry.sw.bb51_crit_edge161:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

entry.sw.bb51_crit_edge160:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

entry.sw.bb51_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

entry.sw.bb43_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge157:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge156:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge155:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge154:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge153:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge152:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb43_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

entry.sw.bb36_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge148:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge147:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge146:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

entry.sw.bb_crit_edge136:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge135:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge134:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge133:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge132:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge131:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge130:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge129:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge128:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge127:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge126:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge125:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge124:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge123:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge122:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge120:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge119:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge118:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge117:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge116:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge115:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge114:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge113:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge112:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge111:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge110:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge109:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge108:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge107:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge106:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge105:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge103:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge102:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge101:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.le16_encode_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear70 = and i16 %bf.set, -3841
  %bf.set71 = or i16 %bf.clear70, 1280
  %13 = ptrtoint ptr %bw to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %bf.set71, ptr %bw, align 1
  br label %le16_encode_bits.exit

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_disconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_uni_add_dev(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #4

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_mt7921_sta_ps, !1, !"__ksymtab_mt7921_sta_ps", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 42, i32 1}
!2 = distinct !{null, !3, !"ac_to_tid", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 55, i32 18}
!4 = !{ptr @__ksymtab_mt7921_mac_sta_poll, !5, !"__ksymtab_mt7921_mac_sta_poll", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 169, i32 1}
!6 = !{ptr @__ksymtab_mt7921_mac_write_txwi, !7, !"__ksymtab_mt7921_mac_write_txwi", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1008, i32 1}
!8 = !{ptr @__ksymtab_mt7921_tx_check_aggr, !9, !"__ksymtab_mt7921_tx_check_aggr", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1033, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1180, i32 9}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_mt7921_queue_rx_skb, !15, !"__ksymtab_mt7921_queue_rx_skb", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1235, i32 1}
!16 = !{ptr @__ksymtab_mt7921_update_channel, !17, !"__ksymtab_mt7921_update_channel", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1351, i32 1}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1376, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt7921_mac_reset_work._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt7921_mac_reset_work._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 1391, i32 3}
!27 = !{ptr @mt7921_mac_reset_work._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt7921_mac_reset_work._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 25, i32 9}
!38 = !{ptr @mt7921_mac_decode_he_radiotap.known, !39, !"known", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 270, i32 44}
!40 = !{ptr @mt7921_mac_decode_he_mu_radiotap.mu_known, !41, !"mu_known", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/mac.c", i32 224, i32 47}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{i32 0, i32 33}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2149335353}
!56 = !{i64 2149335619}
