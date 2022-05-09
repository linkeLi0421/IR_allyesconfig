; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x02_mac_set_beacon\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_mac_set_beacon\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_mac_set_beacon\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_mac_set_beacon:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_mac_set_beacon\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_mac_set_beacon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_resync_beacon_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_resync_beacon_timer\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_resync_beacon_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_resync_beacon_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_resync_beacon_timer\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_resync_beacon_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_update_beacon_iter\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_update_beacon_iter\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_update_beacon_iter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_update_beacon_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_update_beacon_iter\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_update_beacon_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_enqueue_buffered_bc\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_enqueue_buffered_bc\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_enqueue_buffered_bc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_enqueue_buffered_bc:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_enqueue_buffered_bc\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_enqueue_buffered_bc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_init_beacon_config\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_init_beacon_config\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_init_beacon_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_init_beacon_config:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_init_beacon_config\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_init_beacon_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76x02_txwi = type { i16, i16, i8, i8, i16, i32, i32, i8, i8, i8, i8 }
%struct.mt76x02_dev = type { %union.anon, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon = type { %struct.mt76_dev }
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
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.mt76x02_tx_status] }
%union.anon.147 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.mt76x02_beacon_ops = type { i32, i32, ptr, ptr }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mt76x02_vif = type { %struct.mt76_wcid, i8 }
%struct.beacon_bc_data = type { ptr, %struct.sk_buff_head, [8 x ptr] }

@__kstrtab_mt76x02_mac_set_beacon = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_mac_set_beacon = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_mac_set_beacon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_mac_set_beacon to i32), ptr @__kstrtab_mt76x02_mac_set_beacon, ptr @__kstrtabns_mt76x02_mac_set_beacon }, section "___ksymtab_gpl+mt76x02_mac_set_beacon", align 4
@__kstrtab_mt76x02_resync_beacon_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_resync_beacon_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_resync_beacon_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_resync_beacon_timer to i32), ptr @__kstrtab_mt76x02_resync_beacon_timer, ptr @__kstrtabns_mt76x02_resync_beacon_timer }, section "___ksymtab_gpl+mt76x02_resync_beacon_timer", align 4
@__kstrtab_mt76x02_update_beacon_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_update_beacon_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_update_beacon_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_update_beacon_iter to i32), ptr @__kstrtab_mt76x02_update_beacon_iter, ptr @__kstrtabns_mt76x02_update_beacon_iter }, section "___ksymtab_gpl+mt76x02_update_beacon_iter", align 4
@__kstrtab_mt76x02_enqueue_buffered_bc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_enqueue_buffered_bc = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_enqueue_buffered_bc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_enqueue_buffered_bc to i32), ptr @__kstrtab_mt76x02_enqueue_buffered_bc, ptr @__kstrtabns_mt76x02_enqueue_buffered_bc }, section "___ksymtab_gpl+mt76x02_enqueue_buffered_bc", align 4
@__kstrtab_mt76x02_init_beacon_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_init_beacon_config = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_init_beacon_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_init_beacon_config to i32), ptr @__kstrtab_mt76x02_init_beacon_config, ptr @__kstrtabns_mt76x02_init_beacon_config }, section "___ksymtab_gpl+mt76x02_init_beacon_config", align 4
@mt76x02_write_beacon.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 30, i32 6 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_mt76x02_enqueue_buffered_bc, ptr @__ksymtab_mt76x02_init_beacon_config, ptr @__ksymtab_mt76x02_mac_set_beacon, ptr @__ksymtab_mt76x02_resync_beacon_timer, ptr @__ksymtab_mt76x02_update_beacon_iter, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_mac_set_beacon(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  %txwi41.i = alloca %struct.mt76x02_txwi, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_ops = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %beacon_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %beacon_ops, align 4
  %slot_size = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %slot_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_size, align 4
  %beacon_data_count = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %beacon_data_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %beacon_data_count, align 8
  %conv = zext i8 %5 to i32
  %mul = mul i32 %3, %conv
  %add = add i32 %mul, 49152
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp.i = icmp ult i32 %3, %add.i
  br i1 %cmp.i, label %land.rhs.i, label %if.end37.i

land.rhs.i:                                       ; preds = %entry
  %.b69.i = load i1, ptr @mt76x02_write_beacon.__already_done, align 1
  br i1 %.b69.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !22

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @mt76x02_write_beacon.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end37.i:                                       ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %type.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp38.i = icmp eq i32 %11, 1
  br i1 %cmp38.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 -20
  tail call void @mt76x02_mac_write_txwi(ptr noundef %dev, ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef null, ptr noundef null, i32 noundef %7) #3
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #3
  br label %if.then

if.else.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %txwi41.i) #3
  %14 = call ptr @memset(ptr %txwi41.i, i32 255, i32 20)
  call void @mt76x02_mac_write_txwi(ptr noundef %dev, ptr noundef nonnull %txwi41.i, ptr noundef %skb, ptr noundef null, ptr noundef null, i32 noundef %7) #3
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %write_copy.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write_copy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_copy.i, align 4
  call void %18(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %txwi41.i, i32 noundef 20) #3
  %add44.i = add i32 %mul, 49172
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %txwi41.i) #3
  br label %if.then

if.then:                                          ; preds = %if.else.i, %if.then39.i
  %offset.addr.0.i = phi i32 [ %add, %if.then39.i ], [ %add44.i, %if.else.i ]
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 4
  %write_copy47.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_copy47.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_copy47.i, align 4
  %data48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data48.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data48.i, align 4
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void %22(ptr noundef %dev, i32 noundef %offset.addr.0.i, ptr noundef %24, i32 noundef %26) #3
  %27 = ptrtoint ptr %beacon_data_count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %beacon_data_count, align 8
  %inc = add i8 %28, 1
  store i8 %inc, ptr %beacon_data_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then.i, %land.rhs.i.if.end_crit_edge
  call void @consume_skb(ptr noundef %skb) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_mac_set_beacon_enable(ptr noundef %dev, ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %beacon_mask = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beacon_mask, align 4
  %beacon_ops = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %beacon_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beacon_ops, align 4
  %pre_tbtt_enable = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pre_tbtt_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pre_tbtt_enable, align 4
  tail call void %5(ptr noundef %dev, i1 noundef zeroext false) #3
  %6 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %beacon_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %tbtt_count = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %tbtt_count to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tbtt_count, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idx = getelementptr inbounds %struct.mt76x02_vif, ptr %drv_priv, i32 0, i32 1
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %idx, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv
  %11 = trunc i32 %shl to i8
  %12 = xor i8 %11, -1
  %conv12 = and i8 %7, %12
  %conv6 = or i8 %7, %11
  %storemerge = select i1 %enable, i8 %conv6, i8 %conv12
  %13 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %beacon_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool14 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %storemerge)
  %tobool17 = icmp ne i8 %storemerge, 0
  %cmp = xor i1 %tobool14, %tobool17
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end24

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end24:                                         ; preds = %if.end
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  br i1 %tobool17, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %17(ptr noundef %dev, i32 noundef 4372, i32 noundef 0, i32 noundef 1638400) #3
  br label %if.end32

if.else28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %call31 = tail call i32 %17(ptr noundef %dev, i32 noundef 4372, i32 noundef 1638400, i32 noundef 0) #3
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then27
  %18 = ptrtoint ptr %beacon_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %beacon_ops, align 4
  %beacon_enable = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %beacon_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %beacon_enable, align 4
  %22 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %beacon_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool35 = icmp ne i8 %23, 0
  tail call void %21(ptr noundef %dev, i1 noundef zeroext %tobool35) #3
  br label %out

out:                                              ; preds = %if.end32, %if.end.out_crit_edge
  %24 = ptrtoint ptr %beacon_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %beacon_ops, align 4
  %pre_tbtt_enable41 = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %pre_tbtt_enable41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pre_tbtt_enable41, align 4
  tail call void %27(ptr noundef %dev, i1 noundef zeroext true) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_resync_beacon_timer(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_int = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_int, align 8
  %tbtt_count = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %tbtt_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tbtt_count, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr %tbtt_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc)
  %cmp = icmp ult i8 %inc, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end22

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end22:                                         ; preds = %entry
  %shl = shl i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc)
  %cmp5 = icmp eq i8 %inc, 63
  %sub = sext i1 %cmp5 to i32
  %spec.select = add i32 %shl, %sub
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw, align 4
  %and24 = and i32 %spec.select, 65535
  %call = tail call i32 %7(ptr noundef %dev, i32 noundef 4372, i32 noundef 65535, i32 noundef %and24) #3
  %8 = ptrtoint ptr %tbtt_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tbtt_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp27 = icmp ugt i8 %9, 63
  br i1 %cmp27, label %if.then29, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then29:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %tbtt_count to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tbtt_count, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_update_beacon_iter(ptr noundef %priv, ptr nocapture readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %beacon_mask = getelementptr inbounds %struct.mt76_dev, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beacon_mask, align 4
  %conv = zext i8 %1 to i32
  %idx = getelementptr inbounds %struct.mt76x02_vif, ptr %drv_priv, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idx, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 128
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %5, ptr noundef %vif, ptr noundef null, ptr noundef null) #3
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76x02_mac_set_beacon(ptr noundef %priv, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_enqueue_buffered_bc(ptr noundef %dev, ptr noundef %data, i32 noundef %max_nframes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %data, align 4
  %q = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %q, ptr %q, align 4
  %prev.i = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %q, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 128
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @mt76x02_add_buffered_bc, ptr noundef %data) #3
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp ne i32 %5, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %max_nframes)
  %cmp7 = icmp ult i32 %9, %max_nframes
  %or.cond = and i1 %cmp.not, %cmp7
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %for.body.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %do.end
  %arrayidx = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %for.body.preheader.for.inc_crit_edge, label %if.end13

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end13:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %16 = and i16 %15, -33
  store i16 %16, ptr %13, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.1, align 4
  %tobool11.not.1 = icmp eq ptr %18, null
  br i1 %tobool11.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end13.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.end13.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.1 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %23 = and i16 %22, -33
  store i16 %23, ptr %20, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end13.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %tobool11.not.2 = icmp eq ptr %25, null
  br i1 %tobool11.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end13.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.end13.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.2 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.2, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 2
  %30 = and i16 %29, -33
  store i16 %30, ptr %27, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end13.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3, align 4
  %tobool11.not.3 = icmp eq ptr %32, null
  br i1 %tobool11.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end13.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.end13.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.3 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.3, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  %37 = and i16 %36, -33
  store i16 %37, ptr %34, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end13.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.4, align 4
  %tobool11.not.4 = icmp eq ptr %39, null
  br i1 %tobool11.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end13.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

if.end13.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.4 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.4, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  %44 = and i16 %43, -33
  store i16 %44, ptr %41, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end13.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.5, align 4
  %tobool11.not.5 = icmp eq ptr %46, null
  br i1 %tobool11.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end13.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.5

if.end13.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.5 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.5, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 2
  %51 = and i16 %50, -33
  store i16 %51, ptr %48, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end13.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 6
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.6, align 4
  %tobool11.not.6 = icmp eq ptr %53, null
  br i1 %tobool11.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end13.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.6

if.end13.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.6 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.6, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 2
  %58 = and i16 %57, -33
  store i16 %58, ptr %55, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end13.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 7
  %59 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.7, align 4
  %tobool11.not.7 = icmp eq ptr %60, null
  br i1 %tobool11.not.7, label %for.inc.6.cleanup_crit_edge, label %if.end13.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.7 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.7, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 2
  %65 = and i16 %64, -33
  store i16 %65, ptr %62, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13.7, %for.inc.6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x02_add_buffered_bc(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %beacon_mask = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beacon_mask, align 4
  %conv = zext i8 %3 to i32
  %idx = getelementptr inbounds %struct.mt76x02_vif, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idx, align 4
  %conv2 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv2
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %call = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %7, ptr noundef %vif) #3
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %vif7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %vif7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vif, ptr %vif7, align 8
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %or = or i32 %10, 2
  store i32 %or, ptr %cb.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %storemerge.i = or i16 %14, 32
  store i16 %storemerge.i, ptr %12, align 2
  %q = getelementptr inbounds %struct.beacon_bc_data, ptr %priv, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.beacon_bc_data, ptr %priv, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %q, ptr %call, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.42, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %prev10.i.i.i, align 4
  store volatile ptr %call, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call, ptr %16, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.beacon_bc_data, ptr %priv, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %idx, align 4
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr %struct.beacon_bc_data, ptr %priv, i32 0, i32 2, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_init_beacon_config(ptr noundef %dev) #0 align 64 {
entry:
  %regs.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 4372, i32 noundef 1638400, i32 noundef 0) #3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw2, align 4
  %call3 = tail call i32 %7(ptr noundef %dev, i32 noundef 4372, i32 noundef 0, i32 noundef 393216) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 4236, i32 noundef 65535) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %regs.i) #3
  %12 = call ptr @memset(ptr %regs.i, i32 0, i32 16)
  %beacon_ops.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %beacon_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %beacon_ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp26.not.i = icmp eq i32 %16, 0
  br i1 %cmp26.not.i, label %entry.mt76x02_set_beacon_offsets.exit_crit_edge, label %for.body.lr.ph.i

entry.mt76x02_set_beacon_offsets.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76x02_set_beacon_offsets.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %slot_size.i = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %slot_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot_size.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %i.027.i, %18
  %conv2.i = lshr i32 %mul.i, 6
  %div25.i = and i32 %conv2.i, 1023
  %i.027.i.frozen = freeze i32 %i.027.i
  %div4.i = sdiv i32 %i.027.i.frozen, 4
  %19 = mul i32 %div4.i, 4
  %rem.i.decomposed = sub i32 %i.027.i.frozen, %19
  %mul3.i = shl nsw i32 %rem.i.decomposed, 3
  %shl.i = shl i32 %div25.i, %mul3.i
  %arrayidx.i = getelementptr [4 x i32], ptr %regs.i, i32 0, i32 %div4.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %shl.i, %21
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.body.i.mt76x02_set_beacon_offsets.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.mt76x02_set_beacon_offsets.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76x02_set_beacon_offsets.exit

mt76x02_set_beacon_offsets.exit:                  ; preds = %for.body.i.mt76x02_set_beacon_offsets.exit_crit_edge, %entry.mt76x02_set_beacon_offsets.exit_crit_edge
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr.i, align 4
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regs.i, align 4
  tail call void %25(ptr noundef %dev, i32 noundef 1052, i32 noundef %27) #3
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr.1.i, align 4
  %arrayidx10.1.i = getelementptr inbounds [4 x i32], ptr %regs.i, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.1.i, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 1056, i32 noundef %33) #3
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %wr.2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr.2.i, align 4
  %arrayidx10.2.i = getelementptr inbounds [4 x i32], ptr %regs.i, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10.2.i, align 4
  tail call void %37(ptr noundef %dev, i32 noundef 1060, i32 noundef %39) #3
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %wr.3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr.3.i, align 4
  %arrayidx10.3.i = getelementptr inbounds [4 x i32], ptr %regs.i, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx10.3.i, align 4
  tail call void %43(ptr noundef %dev, i32 noundef 1064, i32 noundef %45) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %regs.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_mt76x02_mac_set_beacon, !1, !"__ksymtab_mt76x02_mac_set_beacon", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c", i32 64, i32 1}
!2 = !{ptr @__ksymtab_mt76x02_resync_beacon_timer, !3, !"__ksymtab_mt76x02_resync_beacon_timer", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c", i32 130, i32 1}
!4 = !{ptr @__ksymtab_mt76x02_update_beacon_iter, !5, !"__ksymtab_mt76x02_update_beacon_iter", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c", i32 148, i32 1}
!6 = !{ptr @__ksymtab_mt76x02_enqueue_buffered_bc, !7, !"__ksymtab_mt76x02_enqueue_buffered_bc", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c", i32 201, i32 1}
!8 = !{ptr @__ksymtab_mt76x02_init_beacon_config, !9, !"__ksymtab_mt76x02_init_beacon_config", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c", i32 212, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c", i32 30, i32 6}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
