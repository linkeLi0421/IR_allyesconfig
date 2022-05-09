; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_tx_complete_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_tx_complete_skb\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_tx_complete_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_tx_complete_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_tx_complete_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_tx_complete_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_mac_start\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_mac_start\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_mac_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_mac_start:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_mac_start\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_mac_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_tx_prepare_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_tx_prepare_skb\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_tx_prepare_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_tx_prepare_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_init_beacon_config\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_init_beacon_config\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_init_beacon_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_init_beacon_config:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_init_beacon_config\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_init_beacon_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_exit_beacon_config\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_exit_beacon_config\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_exit_beacon_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_exit_beacon_config:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_exit_beacon_config\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_exit_beacon_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76x02_beacon_ops = type { i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt76x02_dev = type { %union.anon.145, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mac_address = type { [6 x i8] }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.mt76x02_tx_status] }
%union.anon.147 = type { %struct.__kfifo }
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
%struct.beacon_bc_data = type { ptr, %struct.sk_buff_head, [8 x ptr] }

@__kstrtab_mt76x02u_tx_complete_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_tx_complete_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_tx_complete_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_tx_complete_skb to i32), ptr @__kstrtab_mt76x02u_tx_complete_skb, ptr @__kstrtabns_mt76x02u_tx_complete_skb }, section "___ksymtab_gpl+mt76x02u_tx_complete_skb", align 4
@__kstrtab_mt76x02u_mac_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_mac_start = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_mac_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_mac_start to i32), ptr @__kstrtab_mt76x02u_mac_start, ptr @__kstrtabns_mt76x02u_mac_start }, section "___ksymtab_gpl+mt76x02u_mac_start", align 4
@__kstrtab_mt76x02u_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_tx_prepare_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_tx_prepare_skb to i32), ptr @__kstrtab_mt76x02u_tx_prepare_skb, ptr @__kstrtabns_mt76x02u_tx_prepare_skb }, section "___ksymtab_gpl+mt76x02u_tx_prepare_skb", align 4
@mt76x02u_init_beacon_config.beacon_ops = internal constant { %struct.mt76x02_beacon_ops, [16 x i8] } { %struct.mt76x02_beacon_ops { i32 5, i32 1600, ptr @mt76x02u_pre_tbtt_enable, ptr @mt76x02u_beacon_enable }, [16 x i8] zeroinitializer }, align 32
@mt76x02u_init_beacon_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&dev->pre_tbtt_work)\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_mt76x02u_init_beacon_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_init_beacon_config = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_init_beacon_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_init_beacon_config to i32), ptr @__kstrtab_mt76x02u_init_beacon_config, ptr @__kstrtabns_mt76x02u_init_beacon_config }, section "___ksymtab_gpl+mt76x02u_init_beacon_config", align 4
@__kstrtab_mt76x02u_exit_beacon_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_exit_beacon_config = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_exit_beacon_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_exit_beacon_config to i32), ptr @__kstrtab_mt76x02u_exit_beacon_config, ptr @__kstrtabns_mt76x02u_exit_beacon_config }, section "___ksymtab_gpl+mt76x02u_exit_beacon_config", align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@mt76x02u_beacon_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c\00", [42 x i8] zeroinitializer }, align 32
@mt76x02u_restart_pre_tbtt_timer.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt76x02_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mt76x02u_restart_pre_tbtt_timer\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TSF: %llu us TBTT %u us\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"beacon_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 255, i32 41 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 265, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 246, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [57 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 158, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_mt76x02u_exit_beacon_config, ptr @__ksymtab_mt76x02u_init_beacon_config, ptr @__ksymtab_mt76x02u_mac_start, ptr @__ksymtab_mt76x02u_tx_complete_skb, ptr @__ksymtab_mt76x02u_tx_prepare_skb, ptr @mt76x02u_init_beacon_config.beacon_ops, ptr @mt76x02u_init_beacon_config.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x02u_init_beacon_config.beacon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x02u_init_beacon_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02u_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef readonly %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %call.i = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 24) #4
  %call1.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %1) #4
  %2 = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.mt76x02u_remove_dma_hdr.exit_crit_edge, label %if.then.i

entry.mt76x02u_remove_dma_hdr.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02u_remove_dma_hdr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76x02_remove_hdr_pad(ptr noundef %1, i32 noundef 2) #4
  br label %mt76x02u_remove_dma_hdr.exit

mt76x02u_remove_dma_hdr.exit:                     ; preds = %if.then.i, %entry.mt76x02u_remove_dma_hdr.exit_crit_edge
  %wcid = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %3 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wcid, align 4
  %5 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %4, ptr noundef %6, ptr noundef null) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x02u_mac_start(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76x02_mac_reset_counters(ptr noundef %dev) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 4100, i32 noundef 4) #4
  %call.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 200000) #4
  br i1 %call.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr2, align 4
  %rxfilter = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 55
  %8 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxfilter, align 16
  tail call void %7(ptr noundef %dev, i32 noundef 5120, i32 noundef %9) #4
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr4, align 4
  tail call void %13(ptr noundef %dev, i32 noundef 4100, i32 noundef 12) #4
  %call.i17 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 50) #4
  %. = select i1 %call.i17, i32 0, i32 -110
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -110, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_reset_counters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x02u_skb_dma_info(ptr noundef %skb, i32 noundef %port, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub18 = add i32 %1, 65535
  %or19 = or i32 %sub18, 3
  %add20 = add i32 %or19, 1
  %and21 = and i32 %add20, 65532
  %shl44 = shl i32 %port, 27
  %and45 = and i32 %shl44, 939524096
  %or46 = or i32 %and45, %flags
  %or47 = or i32 %or46, %and21
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or47) #4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %call, align 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub49 = add i32 %5, -1
  %or50 = or i32 %sub49, 3
  %add52 = sub i32 5, %5
  %sub54 = add i32 %add52, %or50
  %call55 = tail call i32 @mt76_skb_adjust_pad(ptr noundef %skb, i32 noundef %sub54) #4
  ret i32 %call55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_skb_adjust_pad(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x02u_tx_prepare_skb(ptr noundef %mdev, ptr nocapture readnone %data, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef readonly %tx_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %arrayidx = getelementptr %struct.mt76_phy, ptr %mdev, i32 0, i32 4, i32 %qid
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %hw_idx = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %hw_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_idx, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i, align 8
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %call.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %1) #4
  %10 = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %entry.mt76_insert_hdr_pad.exit_crit_edge, label %if.end.i

entry.mt76_insert_hdr_pad.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_insert_hdr_pad.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call ptr @skb_push(ptr noundef %1, i32 noundef 2) #4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 2
  %13 = call ptr @memmove(ptr %12, ptr %add.ptr.i, i32 %call.i)
  %14 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %14, i32 %call.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i, align 1
  %16 = load ptr, ptr %data.i, align 4
  %add.i122 = add i32 %call.i, 1
  %arrayidx5.i = getelementptr i8, ptr %16, i32 %add.i122
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx5.i, align 1
  br label %mt76_insert_hdr_pad.exit

mt76_insert_hdr_pad.exit:                         ; preds = %if.end.i, %entry.mt76_insert_hdr_pad.exit_crit_edge
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data7, align 4
  %add.ptr8 = getelementptr i8, ptr %21, i32 -20
  tail call void @mt76x02_mac_write_txwi(ptr noundef %mdev, ptr noundef %add.ptr8, ptr noundef %19, ptr noundef %wcid, ptr noundef %sta, i32 noundef %3) #4
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  %call11 = tail call ptr @skb_push(ptr noundef %23, i32 noundef 20) #4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %call13 = tail call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %wcid, ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp = icmp eq i32 %call13, 1
  br i1 %cmp, label %if.then, label %mt76_insert_hdr_pad.exit.if.end_crit_edge

mt76_insert_hdr_pad.exit.if.end_crit_edge:        ; preds = %mt76_insert_hdr_pad.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %mt76_insert_hdr_pad.exit
  call void @__sanitizer_cov_trace_pc() #6
  %rate = getelementptr i8, ptr %21, i32 -18
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rate, align 2
  %28 = lshr i16 %27, 8
  %29 = and i16 %28, 31
  %30 = or i16 %29, 128
  %or = zext i16 %30 to i32
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %queue_mapping.i, align 8
  %conv32 = zext i16 %34 to i32
  %shl = shl nuw nsw i32 %conv32, 5
  %and33 = and i32 %shl, 96
  %or34 = or i32 %and33, %or
  br label %if.end

if.end:                                           ; preds = %if.then, %mt76_insert_hdr_pad.exit.if.end_crit_edge
  %pid.0 = phi i32 [ %or34, %if.then ], [ %call13, %mt76_insert_hdr_pad.exit.if.end_crit_edge ]
  %conv35 = trunc i32 %pid.0 to i8
  %pktid = getelementptr i8, ptr %21, i32 -1
  %35 = ptrtoint ptr %pktid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv35, ptr %pktid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv35)
  %36 = icmp sgt i8 %conv35, 1
  %brmerge = select i1 %36, i1 %tobool.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp41 = icmp eq i8 %7, 4
  %or.cond = select i1 %brmerge, i1 true, i1 %cmp41
  %qsel.0 = select i1 %or.cond, i32 0, i32 67108864
  %or67 = or i32 %qsel.0, 524288
  %tobool68.not = icmp eq ptr %wcid, null
  br i1 %tobool68.not, label %if.end.if.then76_crit_edge, label %lor.lhs.false69

if.end.if.then76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then76

lor.lhs.false69:                                  ; preds = %if.end
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 7
  %37 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hw_key_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp71 = icmp eq i8 %38, -1
  br i1 %cmp71, label %lor.lhs.false69.if.then76_crit_edge, label %lor.lhs.false73

lor.lhs.false69.if.then76_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then76

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %sw_iv = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 14
  %39 = ptrtoint ptr %sw_iv to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sw_iv, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool74.not = icmp eq i8 %40, 0
  br i1 %tobool74.not, label %lor.lhs.false73.if.end78_crit_edge, label %lor.lhs.false73.if.then76_crit_edge

lor.lhs.false73.if.then76_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then76

lor.lhs.false73.if.end78_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then76:                                        ; preds = %lor.lhs.false73.if.then76_crit_edge, %lor.lhs.false69.if.then76_crit_edge, %if.end.if.then76_crit_edge
  %or77 = or i32 %qsel.0, 17301504
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %lor.lhs.false73.if.end78_crit_edge
  %flags4.0 = phi i32 [ %or77, %if.then76 ], [ %or67, %lor.lhs.false73.if.end78_crit_edge ]
  %tobool79.not = icmp eq ptr %sta, null
  br i1 %tobool79.not, label %if.end78.mt76x02u_skb_dma_info.exit_crit_edge, label %if.then80

if.end78.mt76x02u_skb_dma_info.exit_crit_edge:    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02u_skb_dma_info.exit

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  %pktlen = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 1
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb, align 4
  %len82 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %len82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len82, align 4
  %45 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %pktlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  %sub.i = mul i32 %46, 7
  %shl19.i = shl i32 %44, 8
  %add.i123 = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i123, 3
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %47 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %cond.i, ptr %pktlen, align 4
  br label %mt76x02u_skb_dma_info.exit

mt76x02u_skb_dma_info.exit:                       ; preds = %if.then80, %if.end78.mt76x02u_skb_dma_info.exit_crit_edge
  %48 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %sub18.i = add i32 %51, 65535
  %or19.i = or i32 %sub18.i, 3
  %add20.i = add i32 %or19.i, 1
  %and21.i = and i32 %add20.i, 65532
  %or47.i = or i32 %and21.i, %flags4.0
  %call.i127 = tail call ptr @skb_push(ptr noundef %49, i32 noundef 4) #4
  %52 = tail call i32 @llvm.bswap.i32(i32 %or47.i) #4
  %53 = ptrtoint ptr %call.i127 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %call.i127, align 1
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i, align 4
  %sub49.i = add i32 %55, -1
  %or50.i = or i32 %sub49.i, 3
  %add52.i = sub i32 5, %55
  %sub54.i = add i32 %add52.i, %or50.i
  %call55.i = tail call i32 @mt76_skb_adjust_pad(ptr noundef %49, i32 noundef %sub54.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool86.not = icmp eq i32 %call55.i, 0
  %brmerge121 = or i1 %tobool68.not, %tobool86.not
  br i1 %brmerge121, label %mt76x02u_skb_dma_info.exit.if.end92_crit_edge, label %if.then89

mt76x02u_skb_dma_info.exit.if.end92_crit_edge:    ; preds = %mt76x02u_skb_dma_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then89:                                        ; preds = %mt76x02u_skb_dma_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  %pktid90 = getelementptr inbounds %struct.mt76_wcid, ptr %wcid, i32 0, i32 16
  %call91 = tail call ptr @idr_remove(ptr noundef %pktid90, i32 noundef %pid.0) #4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %mt76x02u_skb_dma_info.exit.if.end92_crit_edge
  ret i32 %call55.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02u_init_beacon_config(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_ops = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %beacon_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt76x02u_init_beacon_config.beacon_ops, ptr %beacon_ops, align 4
  %pre_tbtt_timer = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11
  tail call void @hrtimer_init(ptr noundef %pre_tbtt_timer, i32 noundef 1, i32 noundef 1) #4
  %function = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11, i32 2
  %1 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mt76x02u_pre_tbtt_interrupt, ptr %function, align 8
  %pre_tbtt_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12
  tail call void @__init_work(ptr noundef %pre_tbtt_work, i32 noundef 0) #4
  %2 = ptrtoint ptr %pre_tbtt_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %pre_tbtt_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt76x02u_init_beacon_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry5 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt76x02u_pre_tbtt_work, ptr %func, align 4
  tail call void @mt76x02_init_beacon_config(ptr noundef %dev) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x02u_pre_tbtt_enable(ptr noundef %dev, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %en, label %land.lhs.true, label %if.then4.critedge

land.lhs.true:                                    ; preds = %entry
  %beacon_mask = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beacon_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true2

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pre_tbtt_timer = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11
  %call = tail call zeroext i1 @hrtimer_active(ptr noundef %pre_tbtt_timer) #4
  br i1 %call, label %land.lhs.true2.if.end5_crit_edge, label %if.then

land.lhs.true2.if.end5_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true2
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %dev, i32 noundef 4388) #4
  %and.i = shl i32 %call.i, 5
  %mul.i = and i32 %and.i, 4194272
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 8001
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %6 = load ptr, ptr @system_highpri_wq, align 4
  %pre_tbtt_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %pre_tbtt_work.i) #4
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i32 %mul.i, -8000
  %conv.i = zext i32 %sub.i to i64
  %mul14.i = mul nuw nsw i64 %conv.i, 1000
  tail call void @hrtimer_start_range_ns(ptr noundef %pre_tbtt_timer, i64 noundef %mul14.i, i64 noundef 0, i32 noundef 1) #4
  br label %if.end5

if.then4.critedge:                                ; preds = %entry
  %pre_tbtt_timer.i12 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11
  %pre_tbtt_work.i13 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then4.critedge
  %call.i14 = tail call i32 @hrtimer_cancel(ptr noundef %pre_tbtt_timer.i12) #4
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %pre_tbtt_work.i13) #4
  %call3.i = tail call zeroext i1 @hrtimer_active(ptr noundef %pre_tbtt_timer.i12) #4
  br i1 %call3.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.end5_crit_edge

do.body.i.if.end5_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end5:                                          ; preds = %do.body.i.if.end5_crit_edge, %if.end.i, %if.then.i, %land.lhs.true2.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x02u_beacon_enable(ptr noundef %dev, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_int = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beacon_int, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end40.critedge

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @mt76x02u_beacon_enable.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.end43_crit_edge, label %if.then, !prof !33

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mt76x02u_beacon_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 246, i32 noundef 9, ptr noundef null) #4
  br label %if.end43

if.end40.critedge:                                ; preds = %entry
  br i1 %en, label %if.then42, label %if.end40.critedge.if.end43_crit_edge

if.end40.critedge.if.end43_crit_edge:             ; preds = %if.end40.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then42:                                        ; preds = %if.end40.critedge
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %dev, i32 noundef 4388) #4
  %and.i = shl i32 %call.i, 5
  %mul.i = and i32 %and.i, 4194272
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 8001
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %6 = load ptr, ptr @system_highpri_wq, align 4
  %pre_tbtt_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %pre_tbtt_work.i) #4
  br label %if.end43

if.end.i:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i32 %mul.i, -8000
  %conv.i = zext i32 %sub.i to i64
  %mul14.i = mul nuw nsw i64 %conv.i, 1000
  %pre_tbtt_timer.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11
  tail call void @hrtimer_start_range_ns(ptr noundef %pre_tbtt_timer.i, i64 noundef %mul14.i, i64 noundef 0, i32 noundef 1) #4
  br label %if.end43

if.end43:                                         ; preds = %if.end.i, %if.then.i, %if.end40.critedge.if.end43_crit_edge, %if.then, %land.rhs.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x02u_pre_tbtt_interrupt(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %0 = load ptr, ptr @system_highpri_wq, align 4
  %pre_tbtt_work = getelementptr i8, ptr %timer, i32 48
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %pre_tbtt_work) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x02u_pre_tbtt_work(ptr noundef %work) #0 align 64 {
entry:
  %data = alloca %struct.beacon_bc_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11480
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %data) #4
  %0 = call ptr @memset(ptr %data, i32 0, i32 92)
  %beacon_mask = getelementptr i8, ptr %work, i32 -1228
  %1 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %beacon_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 128
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @mt76x02_resync_beacon_timer(ptr noundef %add.ptr) #4
  %bus = getelementptr i8, ptr %work, i32 -10508
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %10(ptr noundef %add.ptr, i32 noundef 4236, i32 noundef 0, i32 noundef 65535) #4
  %beacon_data_count = getelementptr i8, ptr %work, i32 48
  %11 = ptrtoint ptr %beacon_data_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %beacon_data_count, align 8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_iterate_interfaces(ptr noundef %13, i32 noundef 3, ptr noundef nonnull @mt76x02_update_beacon_iter, ptr noundef %add.ptr) #4
  tail call void @mt76_csa_check(ptr noundef %add.ptr) #4
  %csa_complete = getelementptr i8, ptr %work, i32 -714
  %14 = ptrtoint ptr %csa_complete to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %csa_complete, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %cond.false, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_csa_finish(ptr noundef %add.ptr) #4
  br label %out

cond.false:                                       ; preds = %if.end3
  %16 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %beacon_mask, align 4
  %conv76 = zext i8 %17 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv76) #4
  %sub = sub i32 5, %call.i
  call void @mt76x02_enqueue_buffered_bc(ptr noundef %add.ptr, ptr noundef nonnull %data, i32 noundef %sub) #4
  %q = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q, align 4
  %cmp.i.i118 = icmp eq ptr %19, %q
  %tobool.not.i117119 = icmp eq ptr %19, null
  %tobool.not.i120 = or i1 %cmp.i.i118, %tobool.not.i117119
  br i1 %tobool.not.i120, label %cond.false.out_crit_edge, label %while.body.lr.ph

cond.false.out_crit_edge:                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.body.lr.ph:                                 ; preds = %cond.false
  %qlen.i.i = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %20 = phi ptr [ %19, %while.body.lr.ph ], [ %30, %while.body.while.body_crit_edge ]
  %21 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %20, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %prev17.i.i, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %24, ptr %26, align 8
  call void @mt76x02_mac_set_beacon(ptr noundef %add.ptr, ptr noundef nonnull %20) #4
  %29 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %q, align 4
  %cmp.i.i = icmp eq ptr %30, %q
  %tobool.not.i117 = icmp eq ptr %30, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i117
  br i1 %tobool.not.i, label %while.body.out_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %while.body.out_crit_edge, %cond.false.out_crit_edge, %if.then6
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr, align 4
  %35 = ptrtoint ptr %beacon_data_count to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %beacon_data_count, align 8
  %conv82 = zext i8 %36 to i32
  %neg = ashr i32 -65281, %conv82
  %or = or i32 %neg, 65280
  call void %34(ptr noundef %add.ptr, i32 noundef 4236, i32 noundef %or) #4
  call fastcc void @mt76x02u_restart_pre_tbtt_timer(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_beacon_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02u_exit_beacon_config(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %6(ptr noundef %dev, i32 noundef 4372, i32 noundef 2031616, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pre_tbtt_timer.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11
  %pre_tbtt_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %pre_tbtt_timer.i) #4
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %pre_tbtt_work.i) #4
  %call3.i = tail call zeroext i1 @hrtimer_active(ptr noundef %pre_tbtt_timer.i) #4
  br i1 %call3.i, label %do.body.i.do.body.i_crit_edge, label %mt76x02u_stop_pre_tbtt_timer.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

mt76x02u_stop_pre_tbtt_timer.exit:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_remove_hdr_pad(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_resync_beacon_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_update_beacon_iter(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_csa_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_csa_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_enqueue_buffered_bc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_set_beacon(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x02u_restart_pre_tbtt_timer(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 4388) #4
  %and = shl i32 %call, 5
  %mul = and i32 %and, 4194272
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call15 = tail call i32 %7(ptr noundef %dev, i32 noundef 4380) #4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call18 = tail call i32 %11(ptr noundef %dev, i32 noundef 4384) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x02u_restart_pre_tbtt_timer.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x02u_restart_pre_tbtt_timer, %if.then)) #4
          to label %do.end27 [label %if.then], !srcloc !34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i32 %call15 to i64
  %shl = shl nuw i64 %conv, 32
  %conv19 = zext i32 %call18 to i64
  %or = or i64 %shl, %conv19
  %dev25 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x02u_restart_pre_tbtt_timer.__UNIQUE_ID_ddebug417, ptr noundef %13, ptr noundef nonnull @.str.4, i64 noundef %or, i32 noundef %mul) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then, %entry
  %beacon_int = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 42
  %14 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %beacon_int, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %mul)
  %cmp = icmp ult i32 %mul, 8000
  %sub36 = add nsw i32 %mul, -8000
  %sub = sub nuw nsw i32 8000, %mul
  %sub36.sink = select i1 %cmp, i32 %sub, i32 %sub36
  %.sink = select i1 %cmp, i64 -1000, i64 1000
  %conv37 = zext i32 %sub36.sink to i64
  %mul38 = mul nsw i64 %.sink, %conv37
  %conv28 = sext i32 %15 to i64
  %mul29 = mul nsw i64 %conv28, 1000000000
  %shr30 = lshr i64 %mul29, 10
  %time.0 = add nsw i64 %shr30, %mul38
  %pre_tbtt_timer = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 11
  tail call void @hrtimer_start_range_ns(ptr noundef %pre_tbtt_timer, i64 noundef %time.0, i64 noundef 0, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__ksymtab_mt76x02u_tx_complete_skb, !1, !"__ksymtab_mt76x02u_tx_complete_skb", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 23, i32 1}
!2 = !{ptr @__ksymtab_mt76x02u_mac_start, !3, !"__ksymtab_mt76x02u_mac_start", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 44, i32 1}
!4 = !{ptr @__ksymtab_mt76x02u_tx_prepare_skb, !5, !"__ksymtab_mt76x02u_tx_prepare_skb", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 117, i32 1}
!6 = !{ptr @mt76x02u_init_beacon_config.beacon_ops, !7, !"beacon_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 255, i32 41}
!8 = !{ptr @mt76x02u_init_beacon_config.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 265, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mt76x02u_init_beacon_config, !12, !"__ksymtab_mt76x02u_init_beacon_config", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 269, i32 1}
!13 = !{ptr @__ksymtab_mt76x02u_exit_beacon_config, !14, !"__ksymtab_mt76x02u_exit_beacon_config", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 282, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 246, i32 6}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c", i32 158, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt76x02u_restart_pre_tbtt_timer.__UNIQUE_ID_ddebug417, !19, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148732391, i64 2148732396, i64 2148732409, i64 2148732453, i64 2148732487, i64 2148732508}
