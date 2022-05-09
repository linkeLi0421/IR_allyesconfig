; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x02_phy_dfs_adjust_agc\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_phy_dfs_adjust_agc\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_phy_dfs_adjust_agc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_phy_dfs_adjust_agc:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_phy_dfs_adjust_agc\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_phy_dfs_adjust_agc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02_dfs_init_params\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02_dfs_init_params\09\09\09\09"
module asm "\09.long\09__crc_mt76x02_dfs_init_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02_dfs_init_params:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02_dfs_init_params\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02_dfs_init_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76x02_radar_specs = type { i8, i16, i16, i16, i16, i16, i16, i32, i32, i16, i32, i32, i32, i16 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76x02_dev = type { %union.anon, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon = type { %struct.mt76_dev }
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
%struct.mt76x02_dfs_sequence = type { %struct.list_head, i32, i32, i32, i16, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_mt76x02_phy_dfs_adjust_agc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_phy_dfs_adjust_agc = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_phy_dfs_adjust_agc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_phy_dfs_adjust_agc to i32), ptr @__kstrtab_mt76x02_phy_dfs_adjust_agc, ptr @__kstrtabns_mt76x02_phy_dfs_adjust_agc }, section "___ksymtab_gpl+mt76x02_phy_dfs_adjust_agc", align 4
@__kstrtab_mt76x02_dfs_init_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02_dfs_init_params = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02_dfs_init_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02_dfs_init_params to i32), ptr @__kstrtab_mt76x02_dfs_init_params, ptr @__kstrtabns_mt76x02_dfs_init_params }, section "___ksymtab_gpl+mt76x02_dfs_init_params", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fcc_radar_specs = internal constant { [12 x %struct.mt76x02_radar_specs], [144 x i8] } { [12 x %struct.mt76x02_radar_specs] [%struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 12, i16 106, i16 150, i16 5, i32 2900, i32 80100, i16 5, i32 0, i32 2147483647, i32 1042440, i16 5084 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 140, i16 5, i32 27600, i32 27900, i16 5, i32 0, i32 2147483647, i32 1042440, i16 6621 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 54, i16 96, i16 480, i16 150, i32 2900, i32 80100, i16 40, i32 0, i32 2147483647, i32 1042440, i16 4812 }, %struct.mt76x02_radar_specs { i8 2, i16 60, i16 15, i16 63, i16 640, i16 2080, i16 32, i32 19600, i32 40200, i16 32, i32 0, i32 60000000, i32 92000000, i16 4745 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 12, i16 106, i16 150, i16 5, i32 2900, i32 80100, i16 5, i32 0, i32 2147483647, i32 1042440, i16 5084 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 140, i16 5, i32 27600, i32 27900, i16 5, i32 0, i32 2147483647, i32 1042440, i16 6621 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 54, i16 96, i16 480, i16 150, i32 2900, i32 80100, i16 40, i32 0, i32 2147483647, i32 1042440, i16 4812 }, %struct.mt76x02_radar_specs { i8 2, i16 60, i16 15, i16 63, i16 640, i16 2080, i16 32, i32 19600, i32 40200, i16 32, i32 0, i32 60000000, i32 92000000, i16 4745 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 14, i16 106, i16 150, i16 15, i32 2900, i32 80100, i16 15, i32 0, i32 2147483647, i32 1042440, i16 5836 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 140, i16 5, i32 27600, i32 27900, i16 5, i32 0, i32 2147483647, i32 1042440, i16 6621 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 54, i16 96, i16 480, i16 150, i32 2900, i32 80100, i16 40, i32 0, i32 2147483647, i32 1042440, i16 4812 }, %struct.mt76x02_radar_specs { i8 2, i16 60, i16 15, i16 63, i16 640, i16 2080, i16 32, i32 19600, i32 40200, i16 32, i32 0, i32 60000000, i32 92000000, i16 4745 }], [144 x i8] zeroinitializer }, align 32
@etsi_radar_specs = internal constant { [12 x %struct.mt76x02_radar_specs], [144 x i8] } { [12 x %struct.mt76x02_radar_specs] [%struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 15, i16 106, i16 150, i16 10, i32 4900, i32 100096, i16 10, i32 0, i32 2147483647, i32 1400000, i16 6604 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 59, i16 96, i16 380, i16 150, i32 4900, i32 100096, i16 40, i32 0, i32 2147483647, i32 1400000, i16 6604 }, %struct.mt76x02_radar_specs { i8 3, i16 60, i16 20, i16 46, i16 300, i16 640, i16 80, i32 4900, i32 10100, i16 80, i32 0, i32 2147483647, i32 1400000, i16 6621 }, %struct.mt76x02_radar_specs { i8 8, i16 8, i16 2, i16 9, i16 106, i16 150, i16 32, i32 4900, i32 296704, i16 32, i32 0, i32 2147483647, i32 2200000, i16 5580 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 15, i16 106, i16 150, i16 10, i32 4900, i32 100096, i16 10, i32 0, i32 2147483647, i32 1400000, i16 6604 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 59, i16 96, i16 380, i16 150, i32 4900, i32 100096, i16 40, i32 0, i32 2147483647, i32 1400000, i16 6604 }, %struct.mt76x02_radar_specs { i8 3, i16 60, i16 20, i16 46, i16 300, i16 640, i16 80, i32 4900, i32 10100, i16 80, i32 0, i32 2147483647, i32 1400000, i16 6621 }, %struct.mt76x02_radar_specs { i8 8, i16 8, i16 2, i16 9, i16 106, i16 150, i16 32, i32 4900, i32 296704, i16 32, i32 0, i32 2147483647, i32 2200000, i16 5580 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 15, i16 106, i16 150, i16 10, i32 4900, i32 100096, i16 10, i32 0, i32 2147483647, i32 1400000, i16 6604 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 59, i16 96, i16 380, i16 150, i32 4900, i32 100096, i16 40, i32 0, i32 2147483647, i32 1400000, i16 6604 }, %struct.mt76x02_radar_specs { i8 3, i16 60, i16 20, i16 46, i16 300, i16 640, i16 80, i32 4900, i32 10100, i16 80, i32 0, i32 2147483647, i32 1400000, i16 6621 }, %struct.mt76x02_radar_specs { i8 8, i16 8, i16 2, i16 9, i16 106, i16 150, i16 32, i32 4900, i32 296704, i16 32, i32 0, i32 2147483647, i32 2200000, i16 5580 }], [144 x i8] zeroinitializer }, align 32
@jp_w53_radar_specs = internal constant { [12 x %struct.mt76x02_radar_specs], [144 x i8] } { [12 x %struct.mt76x02_radar_specs] [%struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 9, i16 106, i16 150, i16 20, i32 28400, i32 77000, i16 20, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs zeroinitializer, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 44, i16 96, i16 200, i16 150, i32 28400, i32 77000, i16 60, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs zeroinitializer, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 9, i16 106, i16 150, i16 20, i32 28400, i32 77000, i16 20, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs zeroinitializer, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 44, i16 96, i16 200, i16 150, i32 28400, i32 77000, i16 60, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs zeroinitializer, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 9, i16 106, i16 150, i16 20, i32 28400, i32 77000, i16 20, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs zeroinitializer, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 44, i16 96, i16 200, i16 150, i32 28400, i32 77000, i16 60, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs zeroinitializer], [144 x i8] zeroinitializer }, align 32
@jp_w56_radar_specs = internal constant { [12 x %struct.mt76x02_radar_specs], [144 x i8] } { [12 x %struct.mt76x02_radar_specs] [%struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 150, i16 5, i32 2900, i32 80100, i16 5, i32 0, i32 2147483647, i32 1360000, i16 5084 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 140, i16 5, i32 27600, i32 27900, i16 5, i32 0, i32 2147483647, i32 1360000, i16 6621 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 44, i16 96, i16 480, i16 150, i32 2900, i32 80100, i16 40, i32 0, i32 2147483647, i32 1360000, i16 4812 }, %struct.mt76x02_radar_specs { i8 2, i16 60, i16 15, i16 48, i16 940, i16 2080, i16 32, i32 19600, i32 40200, i16 32, i32 0, i32 60000000, i32 92000000, i16 4745 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 150, i16 5, i32 2900, i32 80100, i16 5, i32 0, i32 2147483647, i32 1360000, i16 5084 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 140, i16 5, i32 27600, i32 27900, i16 5, i32 0, i32 2147483647, i32 1360000, i16 6621 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 44, i16 96, i16 480, i16 150, i32 2900, i32 80100, i16 40, i32 0, i32 2147483647, i32 1360000, i16 4812 }, %struct.mt76x02_radar_specs { i8 2, i16 60, i16 15, i16 48, i16 940, i16 2080, i16 32, i32 19600, i32 40200, i16 32, i32 0, i32 60000000, i32 92000000, i16 4745 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 9, i16 106, i16 150, i16 15, i32 2900, i32 80100, i16 15, i32 0, i32 2147483647, i32 1360000, i16 5836 }, %struct.mt76x02_radar_specs { i8 0, i16 8, i16 2, i16 7, i16 106, i16 140, i16 5, i32 27600, i32 27900, i16 5, i32 0, i32 2147483647, i32 1360000, i16 6621 }, %struct.mt76x02_radar_specs { i8 0, i16 40, i16 4, i16 44, i16 96, i16 480, i16 150, i32 2900, i32 80100, i16 40, i32 0, i32 2147483647, i32 1360000, i16 4812 }, %struct.mt76x02_radar_specs { i8 2, i16 60, i16 15, i16 48, i16 940, i16 2080, i16 32, i32 19600, i32 40200, i16 32, i32 0, i32 60000000, i32 92000000, i16 4745 }], [144 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"fcc_radar_specs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 58, i32 41 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"etsi_radar_specs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 28, i32 41 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"jp_w53_radar_specs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 118, i32 41 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"jp_w56_radar_specs\00", align 1
@___asan_gen_.15 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 88, i32 41 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_mt76x02_dfs_init_params, ptr @__ksymtab_mt76x02_phy_dfs_adjust_agc, ptr @fcc_radar_specs, ptr @etsi_radar_specs, ptr @jp_w53_radar_specs, ptr @jp_w56_radar_specs], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcc_radar_specs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etsi_radar_specs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jp_w53_radar_specs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jp_w56_radar_specs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_phy_dfs_adjust_agc(ptr noundef %dev) #0 align 64 {
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
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 8992) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 %7(ptr noundef %dev, i32 noundef 8976) #4
  %and = lshr i32 %call, 9
  %shr = and i32 %and, 63
  %and4 = and i32 %call3, -520093697
  %add = shl nuw nsw i32 %shr, 23
  %8 = add nuw nsw i32 %add, 8388608
  %shl = and i32 %8, 1056964608
  %add6 = add i32 %shl, %and4
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 8976, i32 noundef %add6) #4
  %and23 = lshr i32 %call, 3
  %shr24 = and i32 %and23, 7
  %add22 = sub nsw i32 %shr, %shr24
  %sub56 = shl nsw i32 %add22, 16
  %add6.mask = and i32 %add6, 4128768
  %shl25 = add nsw i32 %add6.mask, %sub56
  %or = or i32 %shl25, 775
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %wr27 = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr27, align 4
  tail call void %16(ptr noundef %dev, i32 noundef 10876, i32 noundef %or) #4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %17 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rev.i.i, align 4
  %shr.i.i = lshr i32 %18, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %19 = add i16 %conv.i.i, -30210
  %20 = tail call i16 @llvm.fshl.i16(i16 %19, i16 %19, i16 12) #4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %if.else [
    i16 1, label %entry.if.then_crit_edge
    i16 3, label %entry.if.then_crit_edge57
    i16 6, label %entry.if.then_crit_edge58
    i16 0, label %entry.if.then_crit_edge59
  ]

entry.if.then_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge57, %entry.if.then_crit_edge58, %entry.if.then_crit_edge59
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr30 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr30, align 4
  tail call void %25(ptr noundef %dev, i32 noundef 10880, i32 noundef 262257) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %wr32 = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr32, align 4
  tail call void %29(ptr noundef %dev, i32 noundef 10752, i32 noundef 0) #4
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %wr34 = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr34, align 4
  tail call void %33(ptr noundef %dev, i32 noundef 10752, i32 noundef 983040) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_dfs_init_params(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef1 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chandef1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef1, align 4
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %region = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 48
  %4 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %land.lhs.true.mt76x02_dfs_init_sw_detector.exit_crit_edge [
    i32 0, label %land.lhs.true.if.else_crit_edge
    i32 1, label %land.lhs.true.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb11.i
  ]

land.lhs.true.sw.epilog.sink.split.i_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.mt76x02_dfs_init_sw_detector.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_init_sw_detector.exit

sw.bb4.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb11.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb11.i, %sw.bb4.i, %land.lhs.true.sw.epilog.sink.split.i_crit_edge
  %.sink29.i = phi i32 [ 161000, %sw.bb11.i ], [ 376980, %sw.bb4.i ], [ 58140, %land.lhs.true.sw.epilog.sink.split.i_crit_edge ]
  %.sink28.i = phi i32 [ 28498, %sw.bb11.i ], [ 4480, %sw.bb4.i ], [ 2998, %land.lhs.true.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 4, %sw.bb11.i ], [ 16, %sw.bb4.i ], [ 4, %land.lhs.true.sw.epilog.sink.split.i_crit_edge ]
  %sw_dpd_params12.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 2
  %max_pri13.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 2, i32 1
  %7 = ptrtoint ptr %max_pri13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink29.i, ptr %max_pri13.i, align 4
  %8 = ptrtoint ptr %sw_dpd_params12.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink28.i, ptr %sw_dpd_params12.i, align 4
  %pri_margin17.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 2, i32 2
  %9 = ptrtoint ptr %pri_margin17.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i, ptr %pri_margin17.i, align 4
  br label %mt76x02_dfs_init_sw_detector.exit

mt76x02_dfs_init_sw_detector.exit:                ; preds = %sw.epilog.sink.split.i, %land.lhs.true.mt76x02_dfs_init_sw_detector.exit_crit_edge
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %switch.selectcmp.i = icmp eq i32 %11, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch.selectcmp179.i = icmp eq i32 %11, 2
  %switch.select180.i = select i1 %switch.selectcmp179.i, i32 4, i32 %switch.select.i
  %12 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %5, label %mt76x02_dfs_init_sw_detector.exit.mt76x02_dfs_set_bbp_params.exit_crit_edge [
    i32 1, label %mt76x02_dfs_init_sw_detector.exit.sw.epilog18.i_crit_edge
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb6.i
  ]

mt76x02_dfs_init_sw_detector.exit.sw.epilog18.i_crit_edge: ; preds = %mt76x02_dfs_init_sw_detector.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog18.i

mt76x02_dfs_init_sw_detector.exit.mt76x02_dfs_set_bbp_params.exit_crit_edge: ; preds = %mt76x02_dfs_init_sw_detector.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_set_bbp_params.exit

sw.bb3.i:                                         ; preds = %mt76x02_dfs_init_sw_detector.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog18.i

sw.bb6.i:                                         ; preds = %mt76x02_dfs_init_sw_detector.exit
  call void @__sanitizer_cov_trace_pc() #6
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq.i, align 4
  %15 = add i32 %14, -5250
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %15)
  %16 = icmp ult i32 %15, 101
  %jp_w53_radar_specs.jp_w56_radar_specs.i = select i1 %16, ptr @jp_w53_radar_specs, ptr @jp_w56_radar_specs
  br label %sw.epilog18.i

sw.epilog18.i:                                    ; preds = %sw.bb6.i, %sw.bb3.i, %mt76x02_dfs_init_sw_detector.exit.sw.epilog18.i_crit_edge
  %jp_w53_radar_specs.sink.i = phi ptr [ @etsi_radar_specs, %sw.bb3.i ], [ @fcc_radar_specs, %mt76x02_dfs_init_sw_detector.exit.sw.epilog18.i_crit_edge ], [ %jp_w53_radar_specs.jp_w56_radar_specs.i, %sw.bb6.i ]
  %arrayidx13.i = getelementptr [12 x %struct.mt76x02_radar_specs], ptr %jp_w53_radar_specs.sink.i, i32 0, i32 %switch.select180.i
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr.i, align 4
  tail call void %20(ptr noundef %dev, i32 noundef 10760, i32 noundef 16130) #4
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 4
  %wr20.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr20.i, align 4
  tail call void %24(ptr noundef %dev, i32 noundef 10764, i32 noundef 16711680) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog18.i
  %indvars.iv.i = phi i32 [ 0, %sw.epilog18.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 4
  %wr24.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr24.i, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 10752, i32 noundef %indvars.iv.i) #4
  %arrayidx27.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i
  %avg_len.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 1
  %29 = ptrtoint ptr %avg_len.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %avg_len.i, align 2
  %31 = and i16 %30, 511
  %and.i = zext i16 %31 to i32
  %shl.i = shl nuw nsw i32 %and.i, 16
  %32 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx27.i, align 4
  %34 = and i8 %33, 15
  %and32.i = zext i8 %34 to i32
  %or.i = or i32 %shl.i, %and32.i
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 4
  %wr34.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr34.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr34.i, align 4
  tail call void %38(ptr noundef %dev, i32 noundef 10768, i32 noundef %or.i) #4
  %e_high.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 3
  %39 = ptrtoint ptr %e_high.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %e_high.i, align 2
  %41 = and i16 %40, 4095
  %and38.i = zext i16 %41 to i32
  %shl39.i = shl nuw nsw i32 %and38.i, 16
  %e_low.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 2
  %42 = ptrtoint ptr %e_low.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %e_low.i, align 4
  %44 = and i16 %43, 4095
  %and43.i = zext i16 %44 to i32
  %or44.i = or i32 %shl39.i, %and43.i
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 4
  %wr46.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wr46.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wr46.i, align 4
  tail call void %48(ptr noundef %dev, i32 noundef 10772, i32 noundef %or44.i) #4
  %49 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i, align 4
  %wr48.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wr48.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr48.i, align 4
  %t_low.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 7
  %53 = ptrtoint ptr %t_low.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %t_low.i, align 4
  tail call void %52(ptr noundef %dev, i32 noundef 10780, i32 noundef %54) #4
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 4
  %wr52.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr52.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr52.i, align 4
  %t_high.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 8
  %59 = ptrtoint ptr %t_high.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %t_high.i, align 4
  tail call void %58(ptr noundef %dev, i32 noundef 10788, i32 noundef %60) #4
  %61 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i, align 4
  %wr56.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wr56.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wr56.i, align 4
  %b_low.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 10
  %65 = ptrtoint ptr %b_low.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %b_low.i, align 4
  tail call void %64(ptr noundef %dev, i32 noundef 10796, i32 noundef %66) #4
  %67 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i, align 4
  %wr60.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr60.i, align 4
  %b_high.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 11
  %71 = ptrtoint ptr %b_high.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %b_high.i, align 4
  tail call void %70(ptr noundef %dev, i32 noundef 10804, i32 noundef %72) #4
  %w_high.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 5
  %73 = ptrtoint ptr %w_high.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %w_high.i, align 2
  %75 = and i16 %74, 4095
  %and66.i = zext i16 %75 to i32
  %shl67.i = shl nuw nsw i32 %and66.i, 16
  %w_low.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 4
  %76 = ptrtoint ptr %w_low.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %w_low.i, align 4
  %78 = and i16 %77, 4095
  %and71.i = zext i16 %78 to i32
  %or72.i = or i32 %shl67.i, %and71.i
  %79 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i, align 4
  %wr74.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wr74.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr74.i, align 4
  tail call void %82(ptr noundef %dev, i32 noundef 10808, i32 noundef %or72.i) #4
  %w_margin.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 6
  %83 = ptrtoint ptr %w_margin.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %w_margin.i, align 4
  %conv77.i = zext i16 %84 to i32
  %shl78.i = shl nuw i32 %conv77.i, 16
  %t_margin.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 9
  %85 = ptrtoint ptr %t_margin.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %t_margin.i, align 4
  %conv81.i = zext i16 %86 to i32
  %or82.i = or i32 %shl78.i, %conv81.i
  %87 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i, align 4
  %wr84.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %wr84.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wr84.i, align 4
  tail call void %90(ptr noundef %dev, i32 noundef 10812, i32 noundef %or82.i) #4
  %91 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus.i, align 4
  %wr86.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %wr86.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wr86.i, align 4
  %event_expiration.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 12
  %95 = ptrtoint ptr %event_expiration.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %event_expiration.i, align 4
  tail call void %94(ptr noundef %dev, i32 noundef 10820, i32 noundef %96) #4
  %97 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus.i, align 4
  %wr90.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %wr90.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wr90.i, align 4
  %pwr_jmp.i = getelementptr %struct.mt76x02_radar_specs, ptr %arrayidx13.i, i32 %indvars.iv.i, i32 13
  %101 = ptrtoint ptr %pwr_jmp.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pwr_jmp.i, align 4
  %conv93.i = zext i16 %102 to i32
  tail call void %100(ptr noundef %dev, i32 noundef 10872, i32 noundef %conv93.i) #4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %103 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus.i, align 4
  %wr95.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wr95.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wr95.i, align 4
  tail call void %106(ptr noundef %dev, i32 noundef 10756, i32 noundef 15) #4
  %107 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus.i, align 4
  %wr97.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wr97.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wr97.i, align 4
  tail call void %110(ptr noundef %dev, i32 noundef 10896, i32 noundef 3) #4
  %111 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bus.i, align 4
  %wr99.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wr99.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wr99.i, align 4
  tail call void %114(ptr noundef %dev, i32 noundef 10752, i32 noundef 983040) #4
  %115 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus.i, align 4
  %wr101.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wr101.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wr101.i, align 4
  tail call void %118(ptr noundef %dev, i32 noundef 8492, i32 noundef 204800001) #4
  br label %mt76x02_dfs_set_bbp_params.exit

mt76x02_dfs_set_bbp_params.exit:                  ; preds = %for.end.i, %mt76x02_dfs_init_sw_detector.exit.mt76x02_dfs_set_bbp_params.exit_crit_edge
  %bus.i71 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %119 = ptrtoint ptr %bus.i71 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus.i71, align 4
  %wr.i72 = getelementptr inbounds %struct.mt76_bus_ops, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %wr.i72 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wr.i72, align 4
  tail call void %122(ptr noundef %dev, i32 noundef 10896, i32 noundef 3) #4
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 516, i32 noundef 0, i32 noundef 16777216) #4
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %bus14 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %123 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bus14, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr, align 4
  tail call void %126(ptr noundef %dev, i32 noundef 10752, i32 noundef 0) #4
  %127 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus14, align 4
  %wr16 = getelementptr inbounds %struct.mt76_bus_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %wr16 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wr16, align 4
  tail call void %130(ptr noundef %dev, i32 noundef 10756, i32 noundef 15) #4
  %rev.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %131 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rev.i, align 4
  %shr.i = lshr i32 %132, 16
  %conv.i = trunc i32 %shr.i to i16
  %133 = add i16 %conv.i, -30224
  %switch.and = and i16 %133, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %134 = select i1 %switch.selectcmp, i32 266240129, i32 0
  %135 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus14, align 4
  %wr29 = getelementptr inbounds %struct.mt76_bus_ops, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %wr29 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wr29, align 4
  tail call void %138(ptr noundef %dev, i32 noundef 8492, i32 noundef %134) #4
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 516, i32 noundef 16777216, i32 noundef 0) #4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %mt76x02_dfs_set_bbp_params.exit
  %bus14.sink = phi ptr [ %bus14, %if.else ], [ %bus.i71, %mt76x02_dfs_set_bbp_params.exit ]
  %.sink78 = phi i32 [ 0, %if.else ], [ 2, %mt76x02_dfs_set_bbp_params.exit ]
  %139 = ptrtoint ptr %bus14.sink to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bus14.sink, align 4
  %rmw31 = getelementptr inbounds %struct.mt76_bus_ops, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %rmw31 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmw31, align 4
  %call48 = tail call i32 %142(ptr noundef %dev, i32 noundef 4396, i32 noundef 2, i32 noundef %.sink78) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_dfs_init_detector(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sequences = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 4
  %0 = ptrtoint ptr %sequences to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %sequences, ptr %sequences, align 4
  %prev.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sequences, ptr %prev.i, align 4
  %seq_pool = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 5
  %2 = ptrtoint ptr %seq_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %seq_pool, ptr %seq_pool, align 4
  %prev.i6 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %seq_pool, ptr %prev.i6, align 4
  %region = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 48
  %4 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %region, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_sw_check = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 7
  %6 = ptrtoint ptr %last_sw_check to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_sw_check, align 4
  %dfs_tasklet = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 10
  tail call void @tasklet_setup(ptr noundef %dfs_tasklet, ptr noundef nonnull @mt76x02_dfs_tasklet) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x02_dfs_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %t, i32 -17860
  %state = getelementptr i8, ptr %t, i32 -17848
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %last_sw_check = getelementptr i8, ptr %t, i32 -56
  %3 = ptrtoint ptr %last_sw_check to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_sw_check, align 4
  %add = add i32 %4, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %last_sw_check to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_sw_check, align 4
  %bus.i.i = getelementptr i8, ptr %t, i32 -16888
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr.i.i, align 4
  tail call void %11(ptr noundef %add.ptr3, i32 noundef 10896, i32 noundef 2) #4
  %last_event_ts.i = getelementptr i8, ptr %t, i32 -52
  %h_rb.i.i = getelementptr i8, ptr %t, i32 -3168
  %t_rb.i.i = getelementptr i8, ptr %t, i32 -3164
  %h_rb.1.i.i = getelementptr i8, ptr %t, i32 -88
  %t_rb.1.i.i = getelementptr i8, ptr %t, i32 -84
  %sequences.i.i = getelementptr i8, ptr %t, i32 -80
  %seq_pool.i.i.i = getelementptr i8, ptr %t, i32 -72
  %seq_stats.i.i.i = getelementptr i8, ptr %t, i32 -64
  %seq_len.i.i.i = getelementptr i8, ptr %t, i32 -60
  %arrayidx.i.i = getelementptr i8, ptr %t, i32 -3160
  %pri_margin.i.i = getelementptr i8, ptr %t, i32 -6244
  %event_rb4.i.i = getelementptr i8, ptr %t, i32 -6240
  %max_pri.i.i = getelementptr i8, ptr %t, i32 -6248
  %sw_dpd_params.i.i = getelementptr i8, ptr %t, i32 -6252
  %region.i.i = getelementptr i8, ptr %t, i32 -7536
  %dev2.i.i.i = getelementptr i8, ptr %t, i32 -16876
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4
  %i.0127.i = phi i32 [ 0, %if.then4 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i.i = tail call i32 %15(ptr noundef %add.ptr3, i32 noundef 10900) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.not.i.i, label %for.body.i.mt76x02_dfs_add_events.exit_crit_edge, label %if.end.i

for.body.i.mt76x02_dfs_add_events.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_add_events.exit

if.end.i:                                         ; preds = %for.body.i
  %16 = lshr i32 %call.i.i, 30
  %17 = trunc i32 %16 to i8
  %conv.i.i = and i8 %17, 2
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call3.i.i = tail call i32 %21(ptr noundef %add.ptr3, i32 noundef 10900) #4
  %and4.i.i = and i32 %call3.i.i, 4194303
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call7.i.i = tail call i32 %25(ptr noundef %add.ptr3, i32 noundef 10900) #4
  %26 = trunc i32 %call7.i.i to i16
  %conv9.i.i = and i16 %26, 4095
  %27 = ptrtoint ptr %last_event_ts.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_event_ts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and4.i.i)
  %cmp2.i = icmp ugt i32 %28, %and4.i.i
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i.i, align 4
  %wr.i25.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wr.i25.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr.i25.i, align 4
  tail call void %32(ptr noundef %add.ptr3, i32 noundef 10756, i32 noundef 15) #4
  %33 = ptrtoint ptr %h_rb.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %h_rb.i.i, align 4
  %34 = ptrtoint ptr %t_rb.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %t_rb.i.i, align 4
  %35 = ptrtoint ptr %h_rb.1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %h_rb.1.i.i, align 4
  %36 = ptrtoint ptr %t_rb.1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %t_rb.1.i.i, align 4
  %37 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sequences.i.i, align 4
  %cmp11.not36.i.i = icmp eq ptr %38, %sequences.i.i
  br i1 %cmp11.not36.i.i, label %if.then3.i.if.end4.i_crit_edge, label %if.then3.i.for.body12.i.i_crit_edge

if.then3.i.for.body12.i.i_crit_edge:              ; preds = %if.then3.i
  br label %for.body12.i.i

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

for.body12.i.i:                                   ; preds = %mt76x02_dfs_seq_pool_put.exit.i.i.for.body12.i.i_crit_edge, %if.then3.i.for.body12.i.i_crit_edge
  %seq.037.i.i = phi ptr [ %tmp_seq.0.i.i, %mt76x02_dfs_seq_pool_put.exit.i.i.for.body12.i.i_crit_edge ], [ %38, %if.then3.i.for.body12.i.i_crit_edge ]
  %39 = ptrtoint ptr %seq.037.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %tmp_seq.0.i.i = load ptr, ptr %seq.037.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %seq.037.i.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body12.i.i.list_del_init.exit.i.i_crit_edge

for.body12.i.i.list_del_init.exit.i.i_crit_edge:  ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %seq.037.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i.i, align 4
  %42 = ptrtoint ptr %seq.037.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %seq.037.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body12.i.i.list_del_init.exit.i.i_crit_edge
  %46 = ptrtoint ptr %seq.037.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %seq.037.i.i, ptr %seq.037.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %seq.037.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %seq.037.i.i, ptr %prev.i3.i.i.i, align 4
  %48 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %seq_pool.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %seq.037.i.i, ptr noundef %seq_pool.i.i.i, ptr noundef %49) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %list_del_init.exit.i.i.mt76x02_dfs_seq_pool_put.exit.i.i_crit_edge

list_del_init.exit.i.i.mt76x02_dfs_seq_pool_put.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_seq_pool_put.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i34.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %seq.037.i.i, ptr %prev1.i.i.i34.i.i, align 4
  %51 = ptrtoint ptr %seq.037.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %seq.037.i.i, align 4
  %52 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %seq_pool.i.i.i, ptr %prev.i3.i.i.i, align 4
  %53 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %seq.037.i.i, ptr %seq_pool.i.i.i, align 4
  br label %mt76x02_dfs_seq_pool_put.exit.i.i

mt76x02_dfs_seq_pool_put.exit.i.i:                ; preds = %if.end.i.i.i.i.i, %list_del_init.exit.i.i.mt76x02_dfs_seq_pool_put.exit.i.i_crit_edge
  %54 = ptrtoint ptr %seq_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seq_stats.i.i.i, align 4
  %inc.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i, ptr %seq_stats.i.i.i, align 4
  %56 = ptrtoint ptr %seq_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %seq_len.i.i.i, align 4
  %dec.i.i.i = add i32 %57, -1
  store i32 %dec.i.i.i, ptr %seq_len.i.i.i, align 4
  %cmp11.not.i.i = icmp eq ptr %tmp_seq.0.i.i, %sequences.i.i
  br i1 %cmp11.not.i.i, label %mt76x02_dfs_seq_pool_put.exit.i.i.if.end4.i_crit_edge, label %mt76x02_dfs_seq_pool_put.exit.i.i.for.body12.i.i_crit_edge

mt76x02_dfs_seq_pool_put.exit.i.i.for.body12.i.i_crit_edge: ; preds = %mt76x02_dfs_seq_pool_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12.i.i

mt76x02_dfs_seq_pool_put.exit.i.i.if.end4.i_crit_edge: ; preds = %mt76x02_dfs_seq_pool_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %mt76x02_dfs_seq_pool_put.exit.i.i.if.end4.i_crit_edge, %if.then3.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %58 = ptrtoint ptr %last_event_ts.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and4.i.i, ptr %last_event_ts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp.i.not.i = icmp eq i8 %conv.i.i, 0
  br i1 %cmp.i.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then.i.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then.i.i:                                      ; preds = %if.end4.i
  %59 = ptrtoint ptr %t_rb.1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %t_rb.1.i.i, align 4
  %sub.i.i.i = add i32 %60, 255
  %and.i.i.i = and i32 %sub.i.i.i, 255
  %ts5.i.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %arrayidx.i.i, i32 0, i32 %and.i.i.i, i32 1
  %61 = ptrtoint ptr %ts5.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ts5.i.i, align 4
  %sub.i.i = sub i32 %and4.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %sub.i.i)
  %cmp6.i.i = icmp ult i32 %sub.i.i, 2000
  br i1 %cmp6.i.i, label %land.lhs.true.i.i, label %if.then.i.i.if.end9.i_crit_edge

if.then.i.i.if.end9.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %width.i29.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %arrayidx.i.i, i32 0, i32 %and.i.i.i, i32 2
  %63 = ptrtoint ptr %width.i29.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %width.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 199, i16 %64)
  %cmp12.i.i = icmp ugt i16 %64, 199
  br i1 %cmp12.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %land.lhs.true.i.i.if.end9.i_crit_edge

land.lhs.true.i.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end9.i:                                        ; preds = %land.lhs.true.i.i.if.end9.i_crit_edge, %if.then.i.i.if.end9.i_crit_edge, %if.end4.i.if.end9.i_crit_edge
  %65 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sequences.i.i, align 4
  %cmp.not66.i.i = icmp eq ptr %66, %sequences.i.i
  br i1 %cmp.not66.i.i, label %if.end9.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge, label %if.end9.i.for.body.i.i_crit_edge

if.end9.i.for.body.i.i_crit_edge:                 ; preds = %if.end9.i
  br label %for.body.i.i

if.end9.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_add_event_to_sequence.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.for.body.i.i_crit_edge
  %seq.068.i.i = phi ptr [ %tmp_seq.069.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %66, %if.end9.i.for.body.i.i_crit_edge ]
  %max_seq_len.067.i.i = phi i16 [ %max_seq_len.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.i.for.body.i.i_crit_edge ]
  %67 = ptrtoint ptr %seq.068.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %tmp_seq.069.i.i = load ptr, ptr %seq.068.i.i, align 4
  %first_ts.i.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.068.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %first_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %first_ts.i.i, align 4
  %add.i.i = add i32 %69, 209715200
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.i, i32 %add.i.i)
  %cmp8.i.i = icmp ugt i32 %and4.i.i, %add.i.i
  br i1 %cmp8.i.i, label %if.then.i37.i, label %if.end.i48.i

if.then.i37.i:                                    ; preds = %for.body.i.i
  %call.i.i.i36.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %seq.068.i.i) #4
  br i1 %call.i.i.i36.i, label %if.end.i.i.i40.i, label %if.then.i37.i.list_del_init.exit.i43.i_crit_edge

if.then.i37.i.list_del_init.exit.i43.i_crit_edge: ; preds = %if.then.i37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i43.i

if.end.i.i.i40.i:                                 ; preds = %if.then.i37.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i38.i = getelementptr inbounds %struct.list_head, ptr %seq.068.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i38.i, align 4
  %72 = ptrtoint ptr %seq.068.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %seq.068.i.i, align 4
  %prev1.i.i.i.i39.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i39.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del_init.exit.i43.i

list_del_init.exit.i43.i:                         ; preds = %if.end.i.i.i40.i, %if.then.i37.i.list_del_init.exit.i43.i_crit_edge
  %76 = ptrtoint ptr %seq.068.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %seq.068.i.i, ptr %seq.068.i.i, align 4
  %prev.i3.i.i41.i = getelementptr inbounds %struct.list_head, ptr %seq.068.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i3.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %seq.068.i.i, ptr %prev.i3.i.i41.i, align 4
  %78 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %seq_pool.i.i.i, align 4
  %call.i.i.i.i42.i = tail call zeroext i1 @__list_add_valid(ptr noundef %seq.068.i.i, ptr noundef %seq_pool.i.i.i, ptr noundef %79) #4
  br i1 %call.i.i.i.i42.i, label %if.end.i.i.i.i44.i, label %list_del_init.exit.i43.i.mt76x02_dfs_seq_pool_put.exit.i47.i_crit_edge

list_del_init.exit.i43.i.mt76x02_dfs_seq_pool_put.exit.i47.i_crit_edge: ; preds = %list_del_init.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_seq_pool_put.exit.i47.i

if.end.i.i.i.i44.i:                               ; preds = %list_del_init.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i58.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %seq.068.i.i, ptr %prev1.i.i.i58.i.i, align 4
  %81 = ptrtoint ptr %seq.068.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %seq.068.i.i, align 4
  %82 = ptrtoint ptr %prev.i3.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %seq_pool.i.i.i, ptr %prev.i3.i.i41.i, align 4
  %83 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %seq.068.i.i, ptr %seq_pool.i.i.i, align 4
  br label %mt76x02_dfs_seq_pool_put.exit.i47.i

mt76x02_dfs_seq_pool_put.exit.i47.i:              ; preds = %if.end.i.i.i.i44.i, %list_del_init.exit.i43.i.mt76x02_dfs_seq_pool_put.exit.i47.i_crit_edge
  %84 = ptrtoint ptr %seq_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %seq_stats.i.i.i, align 4
  %inc.i.i45.i = add i32 %85, 1
  store i32 %inc.i.i45.i, ptr %seq_stats.i.i.i, align 4
  %86 = ptrtoint ptr %seq_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %seq_len.i.i.i, align 4
  %dec.i.i46.i = add i32 %87, -1
  store i32 %dec.i.i46.i, ptr %seq_len.i.i.i, align 4
  br label %for.inc.i.i

if.end.i48.i:                                     ; preds = %for.body.i.i
  %engine10.i.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.068.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %engine10.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %engine10.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i.i, i8 %89)
  %cmp12.not.i.i = icmp eq i8 %conv.i.i, %89
  br i1 %cmp12.not.i.i, label %if.end15.i.i, label %if.end.i48.i.for.inc.i.i_crit_edge

if.end.i48.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.end15.i.i:                                     ; preds = %if.end.i48.i
  %last_ts.i.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.068.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %last_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last_ts.i.i, align 4
  %sub.i49.i = sub i32 %and4.i.i, %91
  %pri17.i.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.068.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %pri17.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pri17.i.i, align 4
  %94 = ptrtoint ptr %pri_margin.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pri_margin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i.i, label %if.end15.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i

if.end15.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %if.end15.i.i
  %sub.i.i50.i = sub i32 %sub.i49.i, %93
  %96 = tail call i32 @llvm.abs.i32(i32 %sub.i.i50.i, i1 false) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %95)
  %cmp2.not.i.i.i = icmp sgt i32 %96, %95
  br i1 %cmp2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.if.then20.i.i_crit_edge

if.end.i.i.i.if.then20.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %sub.i49.i.frozen = freeze i32 %sub.i49.i
  %.frozen = freeze i32 %93
  %div.i.i.i = sdiv i32 %sub.i49.i.frozen, %.frozen
  %97 = mul i32 %div.i.i.i, %.frozen
  %rem.i.i.i.decomposed = sub i32 %sub.i49.i.frozen, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i.decomposed, i32 %95)
  %cmp5.i.i.i = icmp sgt i32 %rem.i.i.i.decomposed, %95
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end4.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge

if.end4.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_get_multiple.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end4.i.i.i
  %sub7.i.i.i = sub i32 %93, %rem.i.i.i.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.i.i, i32 %95)
  %cmp8.not.i.i.i = icmp sgt i32 %sub7.i.i.i, %95
  %inc.i59.i.i = add i32 %div.i.i.i, 1
  br i1 %cmp8.not.i.i.i, label %if.then6.i.i.i.for.inc.i.i_crit_edge, label %if.then6.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge

if.then6.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_get_multiple.exit.i.i

if.then6.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

mt76x02_dfs_get_multiple.exit.i.i:                ; preds = %if.then6.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge, %if.end4.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %div.i.i.i, %if.end4.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge ], [ %inc.i59.i.i, %if.then6.i.i.i.mt76x02_dfs_get_multiple.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp18.i.i = icmp sgt i32 %retval.0.i.i.i, 0
  br i1 %cmp18.i.i, label %mt76x02_dfs_get_multiple.exit.i.i.if.then20.i.i_crit_edge, label %mt76x02_dfs_get_multiple.exit.i.i.for.inc.i.i_crit_edge

mt76x02_dfs_get_multiple.exit.i.i.for.inc.i.i_crit_edge: ; preds = %mt76x02_dfs_get_multiple.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

mt76x02_dfs_get_multiple.exit.i.i.if.then20.i.i_crit_edge: ; preds = %mt76x02_dfs_get_multiple.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %mt76x02_dfs_get_multiple.exit.i.i.if.then20.i.i_crit_edge, %if.end.i.i.i.if.then20.i.i_crit_edge
  %98 = ptrtoint ptr %last_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and4.i.i, ptr %last_ts.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.068.i.i, i32 0, i32 4
  %99 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %count.i.i, align 4
  %inc.i.i = add i16 %100, 1
  store i16 %inc.i.i, ptr %count.i.i, align 4
  %101 = tail call i16 @llvm.umax.i16(i16 %max_seq_len.067.i.i, i16 %inc.i.i) #4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then20.i.i, %mt76x02_dfs_get_multiple.exit.i.i.for.inc.i.i_crit_edge, %if.then6.i.i.i.for.inc.i.i_crit_edge, %if.end15.i.i.for.inc.i.i_crit_edge, %if.end.i48.i.for.inc.i.i_crit_edge, %mt76x02_dfs_seq_pool_put.exit.i47.i
  %max_seq_len.1.i.i = phi i16 [ %max_seq_len.067.i.i, %mt76x02_dfs_seq_pool_put.exit.i47.i ], [ %max_seq_len.067.i.i, %if.end.i48.i.for.inc.i.i_crit_edge ], [ %101, %if.then20.i.i ], [ %max_seq_len.067.i.i, %mt76x02_dfs_get_multiple.exit.i.i.for.inc.i.i_crit_edge ], [ %max_seq_len.067.i.i, %if.end15.i.i.for.inc.i.i_crit_edge ], [ %max_seq_len.067.i.i, %if.then6.i.i.i.for.inc.i.i_crit_edge ]
  %cmp.not.i51.i = icmp eq ptr %tmp_seq.069.i.i, %sequences.i.i
  br i1 %cmp.not.i51.i, label %for.inc.i.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_add_event_to_sequence.exit.i

mt76x02_dfs_add_event_to_sequence.exit.i:         ; preds = %for.inc.i.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge, %if.end9.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge
  %max_seq_len.0.lcssa.i.i = phi i16 [ 0, %if.end9.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge ], [ %max_seq_len.1.i.i, %for.inc.i.i.mt76x02_dfs_add_event_to_sequence.exit.i_crit_edge ]
  %cond.i.i = select i1 %cmp.i.not.i, ptr %event_rb4.i.i, ptr %arrayidx.i.i
  %t_rb.i55.i = getelementptr inbounds %struct.mt76x02_dfs_event_rb, ptr %cond.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %t_rb.i55.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %t_rb.i55.i, align 4
  %h_rb.i56.i = getelementptr inbounds %struct.mt76x02_dfs_event_rb, ptr %cond.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %h_rb.i56.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %h_rb.i56.i, align 4
  %sub.i1.i.i = add i32 %105, 255
  %and.i2.i.i = and i32 %sub.i1.i.i, 255
  %i.0.in28.i.i = add i32 %103, 255
  %i.029.i.i = and i32 %i.0.in28.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %i.029.i.i, i32 %and.i2.i.i)
  %cmp7.not30.i.i = icmp eq i32 %i.029.i.i, %and.i2.i.i
  br i1 %cmp7.not30.i.i, label %mt76x02_dfs_add_event_to_sequence.exit.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, label %while.body.lr.ph.i.i

mt76x02_dfs_add_event_to_sequence.exit.i.mt76x02_dfs_create_sequence.exit.i_crit_edge: ; preds = %mt76x02_dfs_add_event_to_sequence.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_create_sequence.exit.i

while.body.lr.ph.i.i:                             ; preds = %mt76x02_dfs_add_event_to_sequence.exit.i
  %conv10.i.i = zext i16 %conv9.i.i to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %next.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %i.032.i.i = phi i32 [ %i.029.i.i, %while.body.lr.ph.i.i ], [ %i.0.i.i, %next.i.i.while.body.i.i_crit_edge ]
  %i.0.in.in31.i.i = phi i32 [ %103, %while.body.lr.ph.i.i ], [ %i.032.i.i, %next.i.i.while.body.i.i_crit_edge ]
  %width11.i.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %cond.i.i, i32 0, i32 %i.032.i.i, i32 2
  %106 = ptrtoint ptr %width11.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %width11.i.i, align 4
  %conv12.i.i = zext i16 %107 to i32
  %add.i64.i = add nuw nsw i32 %conv12.i.i, %conv10.i.i
  %108 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %region.i.i, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %109, label %while.body.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge [
    i32 1, label %while.body.i.i.sw.bb.i.i_crit_edge
    i32 3, label %while.body.i.i.sw.bb.i.i_crit_edge150
    i32 2, label %sw.bb15.i.i
  ]

while.body.i.i.sw.bb.i.i_crit_edge150:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

while.body.i.i.sw.bb.i.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

while.body.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_create_sequence.exit.i

sw.bb.i.i:                                        ; preds = %while.body.i.i.sw.bb.i.i_crit_edge, %while.body.i.i.sw.bb.i.i_crit_edge150
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %add.i64.i)
  %cmp13.i.i = icmp ult i32 %add.i64.i, 600
  %shr.i.i = lshr i32 %add.i64.i, 3
  %spec.select.i.i = select i1 %cmp13.i.i, i32 8, i32 %shr.i.i
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %while.body.i.i
  br i1 %cmp.i.not.i, label %if.else22.i.i, label %if.then20.i66.i

if.then20.i66.i:                                  ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr21.i.i = lshr i32 %add.i64.i, 6
  br label %sw.epilog.i.i

if.else22.i.i:                                    ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 620, i32 %add.i64.i)
  %cmp23.i.i = icmp ult i32 %add.i64.i, 620
  %..i.i = select i1 %cmp23.i.i, i32 24, i32 8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.else22.i.i, %if.then20.i66.i, %sw.bb.i.i
  %width_delta.0.i.i = phi i32 [ %shr21.i.i, %if.then20.i66.i ], [ %..i.i, %if.else22.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  %ts30.i.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %cond.i.i, i32 0, i32 %i.032.i.i, i32 1
  %111 = ptrtoint ptr %ts30.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ts30.i.i, align 4
  %sub.i67.i = sub i32 %and4.i.i, %112
  %sub35.i.i = sub nsw i32 %conv10.i.i, %conv12.i.i
  %113 = tail call i32 @llvm.abs.i32(i32 %sub35.i.i, i1 true) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %width_delta.0.i.i)
  %cmp43.i.i = icmp ugt i32 %113, %width_delta.0.i.i
  br i1 %cmp43.i.i, label %sw.epilog.i.i.next.i.i_crit_edge, label %lor.lhs.false.i.i

sw.epilog.i.i.next.i.i_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next.i.i

lor.lhs.false.i.i:                                ; preds = %sw.epilog.i.i
  %114 = ptrtoint ptr %sw_dpd_params.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sw_dpd_params.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i67.i, i32 %115)
  %cmp45.i.i = icmp ult i32 %sub.i67.i, %115
  br i1 %cmp45.i.i, label %lor.lhs.false.i.i.next.i.i_crit_edge, label %if.end48.i.i

lor.lhs.false.i.i.next.i.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next.i.i

if.end48.i.i:                                     ; preds = %lor.lhs.false.i.i
  %116 = ptrtoint ptr %max_pri.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_pri.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i67.i, i32 %117)
  %cmp49.i.i = icmp ugt i32 %sub.i67.i, %117
  br i1 %cmp49.i.i, label %if.end48.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, label %if.end52.i.i

if.end48.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_create_sequence.exit.i

if.end52.i.i:                                     ; preds = %if.end48.i.i
  %sub.i3.i.i = add i32 %i.0.in.in31.i.i, 254
  %j.019.i.i = and i32 %sub.i3.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %j.019.i.i, i32 %and.i2.i.i)
  %cmp63.not20.i.i = icmp eq i32 %j.019.i.i, %and.i2.i.i
  br i1 %cmp63.not20.i.i, label %if.end52.i.i.while.end.i.i_crit_edge, label %while.body65.lr.ph.i.i

if.end52.i.i.while.end.i.i_crit_edge:             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.body65.lr.ph.i.i:                           ; preds = %if.end52.i.i
  %118 = ptrtoint ptr %pri_margin.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pri_margin.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.i, i32 %112)
  %tobool.not.i.i68.i = icmp eq i32 %and4.i.i, %112
  br label %while.body65.i.i

while.body65.i.i:                                 ; preds = %if.end79.i.i.while.body65.i.i_crit_edge, %while.body65.lr.ph.i.i
  %j.026.i.i = phi i32 [ %j.019.i.i, %while.body65.lr.ph.i.i ], [ %j.0.i.i, %if.end79.i.i.while.body65.i.i_crit_edge ]
  %seq.sroa.4.024.i.i = phi i32 [ %112, %while.body65.lr.ph.i.i ], [ %seq.sroa.4.1.i.i, %if.end79.i.i.while.body65.i.i_crit_edge ]
  %seq.sroa.9.021.i.i = phi i16 [ 2, %while.body65.lr.ph.i.i ], [ %seq.sroa.9.1.i.i, %if.end79.i.i.while.body65.i.i_crit_edge ]
  %ts69.i.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %cond.i.i, i32 0, i32 %j.026.i.i, i32 1
  %120 = ptrtoint ptr %ts69.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ts69.i.i, align 4
  %sub70.i.i = sub i32 %and4.i.i, %121
  br i1 %tobool.not.i.i68.i, label %while.body65.i.i.if.end79.i.i_crit_edge, label %if.end.i.i70.i

while.body65.i.i.if.end79.i.i_crit_edge:          ; preds = %while.body65.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i.i

if.end.i.i70.i:                                   ; preds = %while.body65.i.i
  %sub.i5.i.i = sub i32 %sub70.i.i, %sub.i67.i
  %122 = tail call i32 @llvm.abs.i32(i32 %sub.i5.i.i, i1 false) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %119)
  %cmp2.not.i.i69.i = icmp sgt i32 %122, %119
  br i1 %cmp2.not.i.i69.i, label %if.end4.i.i74.i, label %if.end.i.i70.i.if.then75.i.i_crit_edge

if.end.i.i70.i.if.then75.i.i_crit_edge:           ; preds = %if.end.i.i70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75.i.i

if.end4.i.i74.i:                                  ; preds = %if.end.i.i70.i
  %sub70.i.i.frozen = freeze i32 %sub70.i.i
  %sub.i67.i.frozen = freeze i32 %sub.i67.i
  %div.i.i71.i = sdiv i32 %sub70.i.i.frozen, %sub.i67.i.frozen
  %123 = mul i32 %div.i.i71.i, %sub.i67.i.frozen
  %rem.i.i72.i.decomposed = sub i32 %sub70.i.i.frozen, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i72.i.decomposed, i32 %119)
  %cmp5.i.i73.i = icmp sgt i32 %rem.i.i72.i.decomposed, %119
  br i1 %cmp5.i.i73.i, label %if.then6.i.i78.i, label %if.end4.i.i74.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge

if.end4.i.i74.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge: ; preds = %if.end4.i.i74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_get_multiple.exit.i80.i

if.then6.i.i78.i:                                 ; preds = %if.end4.i.i74.i
  %sub7.i.i75.i = sub i32 %sub.i67.i, %rem.i.i72.i.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.i75.i, i32 %119)
  %cmp8.not.i.i76.i = icmp sgt i32 %sub7.i.i75.i, %119
  %inc.i.i77.i = add i32 %div.i.i71.i, 1
  br i1 %cmp8.not.i.i76.i, label %if.then6.i.i78.i.if.end79.i.i_crit_edge, label %if.then6.i.i78.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge

if.then6.i.i78.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge: ; preds = %if.then6.i.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_get_multiple.exit.i80.i

if.then6.i.i78.i.if.end79.i.i_crit_edge:          ; preds = %if.then6.i.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i.i

mt76x02_dfs_get_multiple.exit.i80.i:              ; preds = %if.then6.i.i78.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge, %if.end4.i.i74.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge
  %retval.0.i.i79.i = phi i32 [ %div.i.i71.i, %if.end4.i.i74.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge ], [ %inc.i.i77.i, %if.then6.i.i78.i.mt76x02_dfs_get_multiple.exit.i80.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i79.i)
  %cmp73.i.i = icmp sgt i32 %retval.0.i.i79.i, 0
  br i1 %cmp73.i.i, label %mt76x02_dfs_get_multiple.exit.i80.i.if.then75.i.i_crit_edge, label %mt76x02_dfs_get_multiple.exit.i80.i.if.end79.i.i_crit_edge

mt76x02_dfs_get_multiple.exit.i80.i.if.end79.i.i_crit_edge: ; preds = %mt76x02_dfs_get_multiple.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i.i

mt76x02_dfs_get_multiple.exit.i80.i.if.then75.i.i_crit_edge: ; preds = %mt76x02_dfs_get_multiple.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75.i.i

if.then75.i.i:                                    ; preds = %mt76x02_dfs_get_multiple.exit.i80.i.if.then75.i.i_crit_edge, %if.end.i.i70.i.if.then75.i.i_crit_edge
  %inc.i81.i = add i16 %seq.sroa.9.021.i.i, 1
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.then75.i.i, %mt76x02_dfs_get_multiple.exit.i80.i.if.end79.i.i_crit_edge, %if.then6.i.i78.i.if.end79.i.i_crit_edge, %while.body65.i.i.if.end79.i.i_crit_edge
  %seq.sroa.9.1.i.i = phi i16 [ %inc.i81.i, %if.then75.i.i ], [ %seq.sroa.9.021.i.i, %mt76x02_dfs_get_multiple.exit.i80.i.if.end79.i.i_crit_edge ], [ %seq.sroa.9.021.i.i, %while.body65.i.i.if.end79.i.i_crit_edge ], [ %seq.sroa.9.021.i.i, %if.then6.i.i78.i.if.end79.i.i_crit_edge ]
  %seq.sroa.4.1.i.i = phi i32 [ %121, %if.then75.i.i ], [ %seq.sroa.4.024.i.i, %mt76x02_dfs_get_multiple.exit.i80.i.if.end79.i.i_crit_edge ], [ %seq.sroa.4.024.i.i, %while.body65.i.i.if.end79.i.i_crit_edge ], [ %seq.sroa.4.024.i.i, %if.then6.i.i78.i.if.end79.i.i_crit_edge ]
  %sub.i6.i.i = add nuw nsw i32 %j.026.i.i, 255
  %j.0.i.i = and i32 %sub.i6.i.i, 255
  %cmp63.not.i.i = icmp eq i32 %j.0.i.i, %and.i2.i.i
  br i1 %cmp63.not.i.i, label %if.end79.i.i.while.end.i.i_crit_edge, label %if.end79.i.i.while.body65.i.i_crit_edge

if.end79.i.i.while.body65.i.i_crit_edge:          ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body65.i.i

if.end79.i.i.while.end.i.i_crit_edge:             ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end79.i.i.while.end.i.i_crit_edge, %if.end52.i.i.while.end.i.i_crit_edge
  %seq.sroa.9.0.lcssa.i.i = phi i16 [ 2, %if.end52.i.i.while.end.i.i_crit_edge ], [ %seq.sroa.9.1.i.i, %if.end79.i.i.while.end.i.i_crit_edge ]
  %seq.sroa.4.0.lcssa.i.i = phi i32 [ %112, %if.end52.i.i.while.end.i.i_crit_edge ], [ %seq.sroa.4.1.i.i, %if.end79.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %seq.sroa.9.0.lcssa.i.i, i16 %max_seq_len.0.lcssa.i.i)
  %cmp84.not.i.i = icmp ugt i16 %seq.sroa.9.0.lcssa.i.i, %max_seq_len.0.lcssa.i.i
  br i1 %cmp84.not.i.i, label %if.end87.i.i, label %while.end.i.i.next.i.i_crit_edge

while.end.i.i.next.i.i_crit_edge:                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next.i.i

if.end87.i.i:                                     ; preds = %while.end.i.i
  %124 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %seq_pool.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %125, %seq_pool.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %126 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev2.i.i.i, align 8
  %call.i.i.i82.i = tail call noalias ptr @devm_kmalloc(ptr noundef %127, i32 noundef 24, i32 noundef 2848) #4
  br label %if.end.i8.i.i

if.else.i.i.i:                                    ; preds = %if.end87.i.i
  %call.i.i.i.i83.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %125) #4
  br i1 %call.i.i.i.i83.i, label %if.end.i.i.i.i84.i, label %if.else.i.i.i.list_del.exit.i.i.i_crit_edge

if.else.i.i.i.list_del.exit.i.i.i_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i.i.i

if.end.i.i.i.i84.i:                               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %130 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %125, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i84.i, %if.else.i.i.i.list_del.exit.i.i.i_crit_edge
  %134 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 256 to ptr), ptr %125, align 4
  %prev.i.i.i85.i = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i85.i, align 4
  %136 = ptrtoint ptr %seq_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %seq_stats.i.i.i, align 4
  %dec.i.i86.i = add i32 %137, -1
  store i32 %dec.i.i86.i, ptr %seq_stats.i.i.i, align 4
  br label %if.end.i8.i.i

if.end.i8.i.i:                                    ; preds = %list_del.exit.i.i.i, %if.then.i.i.i
  %seq.0.i.i.i = phi ptr [ %call.i.i.i82.i, %if.then.i.i.i ], [ %125, %list_del.exit.i.i.i ]
  %tobool5.not.i.i.i = icmp eq ptr %seq.0.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %if.end.i8.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, label %if.end90.i.i

if.end.i8.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge: ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_create_sequence.exit.i

if.end90.i.i:                                     ; preds = %if.end.i8.i.i
  %138 = ptrtoint ptr %seq_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %seq_len.i.i.i, align 4
  %inc.i9.i.i = add i32 %139, 1
  store i32 %inc.i9.i.i, ptr %seq_len.i.i.i, align 4
  %seq.sroa.4.0.seq_p.0.125.sroa_idx.i.i = getelementptr inbounds i8, ptr %seq.0.i.i.i, i32 8
  %140 = ptrtoint ptr %seq.sroa.4.0.seq_p.0.125.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %seq.sroa.4.0.lcssa.i.i, ptr %seq.sroa.4.0.seq_p.0.125.sroa_idx.i.i, align 4
  %seq.sroa.6.0.seq_p.0.125.sroa_idx.i.i = getelementptr inbounds i8, ptr %seq.0.i.i.i, i32 12
  %141 = ptrtoint ptr %seq.sroa.6.0.seq_p.0.125.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and4.i.i, ptr %seq.sroa.6.0.seq_p.0.125.sroa_idx.i.i, align 4
  %seq.sroa.7.0.seq_p.0.125.sroa_idx.i.i = getelementptr inbounds i8, ptr %seq.0.i.i.i, i32 16
  %142 = ptrtoint ptr %seq.sroa.7.0.seq_p.0.125.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %sub.i67.i, ptr %seq.sroa.7.0.seq_p.0.125.sroa_idx.i.i, align 4
  %seq.sroa.9.0.seq_p.0.125.sroa_idx.i.i = getelementptr inbounds i8, ptr %seq.0.i.i.i, i32 20
  %143 = ptrtoint ptr %seq.sroa.9.0.seq_p.0.125.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %seq.sroa.9.0.lcssa.i.i, ptr %seq.sroa.9.0.seq_p.0.125.sroa_idx.i.i, align 4
  %seq.sroa.13.0.seq_p.0.125.sroa_idx.i.i = getelementptr inbounds i8, ptr %seq.0.i.i.i, i32 22
  %144 = ptrtoint ptr %seq.sroa.13.0.seq_p.0.125.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv.i.i, ptr %seq.sroa.13.0.seq_p.0.125.sroa_idx.i.i, align 2
  %seq.sroa.14.0.seq_p.0.125.sroa_idx.i.i = getelementptr inbounds i8, ptr %seq.0.i.i.i, i32 23
  %145 = ptrtoint ptr %seq.sroa.14.0.seq_p.0.125.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -1, ptr %seq.sroa.14.0.seq_p.0.125.sroa_idx.i.i, align 1
  %146 = ptrtoint ptr %seq.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %seq.0.i.i.i, ptr %seq.0.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %seq.0.i.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %seq.0.i.i.i, ptr %prev.i.i.i, align 4
  %148 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sequences.i.i, align 4
  %call.i.i11.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %seq.0.i.i.i, ptr noundef %sequences.i.i, ptr noundef %149) #4
  br i1 %call.i.i11.i.i, label %if.end.i.i.i87.i, label %if.end90.i.i.next.i.i_crit_edge

if.end90.i.i.next.i.i_crit_edge:                  ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next.i.i

if.end.i.i.i87.i:                                 ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %seq.0.i.i.i, ptr %prev1.i.i.i.i, align 4
  %151 = ptrtoint ptr %seq.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %149, ptr %seq.0.i.i.i, align 4
  %152 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %sequences.i.i, ptr %prev.i.i.i, align 4
  %153 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %seq.0.i.i.i, ptr %sequences.i.i, align 4
  br label %next.i.i

next.i.i:                                         ; preds = %if.end.i.i.i87.i, %if.end90.i.i.next.i.i_crit_edge, %while.end.i.i.next.i.i_crit_edge, %lor.lhs.false.i.i.next.i.i_crit_edge, %sw.epilog.i.i.next.i.i_crit_edge
  %i.0.in.i.i = add nuw nsw i32 %i.032.i.i, 255
  %i.0.i.i = and i32 %i.0.in.i.i, 255
  %cmp7.not.i.i = icmp eq i32 %i.0.i.i, %and.i2.i.i
  br i1 %cmp7.not.i.i, label %next.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, label %next.i.i.while.body.i.i_crit_edge

next.i.i.while.body.i.i_crit_edge:                ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

next.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge: ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_create_sequence.exit.i

mt76x02_dfs_create_sequence.exit.i:               ; preds = %next.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, %if.end.i8.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, %if.end48.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, %while.body.i.i.mt76x02_dfs_create_sequence.exit.i_crit_edge, %mt76x02_dfs_add_event_to_sequence.exit.i.mt76x02_dfs_create_sequence.exit.i_crit_edge
  %154 = ptrtoint ptr %t_rb.i55.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %t_rb.i55.i, align 4
  %arrayidx5.i.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %cond.i.i, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %arrayidx5.i.i, align 4
  %event.sroa.4.0.arrayidx5.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i.i, i32 4
  %157 = ptrtoint ptr %event.sroa.4.0.arrayidx5.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and4.i.i, ptr %event.sroa.4.0.arrayidx5.i.sroa_idx.i, align 4
  %event.sroa.10.0.arrayidx5.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i.i, i32 8
  %158 = ptrtoint ptr %event.sroa.10.0.arrayidx5.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv9.i.i, ptr %event.sroa.10.0.arrayidx5.i.sroa_idx.i, align 4
  %event.sroa.12.0.arrayidx5.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i.i, i32 10
  %159 = ptrtoint ptr %event.sroa.12.0.arrayidx5.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv.i.i, ptr %event.sroa.12.0.arrayidx5.i.sroa_idx.i, align 2
  %event.sroa.19.0.arrayidx5.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i.i, i32 11
  %160 = ptrtoint ptr %event.sroa.19.0.arrayidx5.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %event.sroa.19.0.arrayidx5.i.sroa_idx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %161 = load volatile i32, ptr @jiffies, align 128
  %162 = load i32, ptr %t_rb.i55.i, align 4
  %arrayidx8.i.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %cond.i.i, i32 0, i32 %162
  %163 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %161, ptr %arrayidx8.i.i, align 4
  %164 = load i32, ptr %t_rb.i55.i, align 4
  %add.i.i.i = add i32 %164, 1
  %and.i.i93.i = and i32 %add.i.i.i, 255
  store i32 %and.i.i93.i, ptr %t_rb.i55.i, align 4
  %165 = ptrtoint ptr %h_rb.i56.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %h_rb.i56.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i93.i, i32 %166)
  %cmp12.i95.i = icmp eq i32 %and.i.i93.i, %166
  br i1 %cmp12.i95.i, label %if.then.i96.i, label %mt76x02_dfs_create_sequence.exit.i.for.inc.i_crit_edge

mt76x02_dfs_create_sequence.exit.i.for.inc.i_crit_edge: ; preds = %mt76x02_dfs_create_sequence.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i96.i:                                    ; preds = %mt76x02_dfs_create_sequence.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i28.i.i = add i32 %164, 2
  %and.i29.i.i = and i32 %add.i28.i.i, 255
  %167 = ptrtoint ptr %h_rb.i56.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and.i29.i.i, ptr %h_rb.i56.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i96.i, %mt76x02_dfs_create_sequence.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0127.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.mt76x02_dfs_add_events.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.mt76x02_dfs_add_events.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_add_events.exit

mt76x02_dfs_add_events.exit:                      ; preds = %for.inc.i.mt76x02_dfs_add_events.exit_crit_edge, %for.body.i.mt76x02_dfs_add_events.exit_crit_edge
  %168 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus.i.i, align 4
  %wr.i99.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %wr.i99.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr.i99.i, align 4
  tail call void %171(ptr noundef %add.ptr3, i32 noundef 10896, i32 noundef 3) #4
  %172 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile ptr, ptr %sequences.i.i, align 4
  %cmp.i.not.i64 = icmp eq ptr %173, %sequences.i.i
  br i1 %cmp.i.not.i64, label %mt76x02_dfs_add_events.exit.if.end9_crit_edge, label %mt76x02_dfs_add_events.exit.for.cond.i_crit_edge

mt76x02_dfs_add_events.exit.for.cond.i_crit_edge: ; preds = %mt76x02_dfs_add_events.exit
  br label %for.cond.i

mt76x02_dfs_add_events.exit.if.end9_crit_edge:    ; preds = %mt76x02_dfs_add_events.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.cond.i:                                       ; preds = %for.body.i65.for.cond.i_crit_edge, %mt76x02_dfs_add_events.exit.for.cond.i_crit_edge
  %seq.0.in.i = phi ptr [ %seq.0.i, %for.body.i65.for.cond.i_crit_edge ], [ %sequences.i.i, %mt76x02_dfs_add_events.exit.for.cond.i_crit_edge ]
  %174 = ptrtoint ptr %seq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %seq.0.i = load ptr, ptr %seq.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %seq.0.i, %sequences.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.end9_crit_edge, label %for.body.i65

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.body.i65:                                     ; preds = %for.cond.i
  %count.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.0.i, i32 0, i32 4
  %175 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %count.i, align 4
  %cmp4.i = icmp ugt i16 %176, 6
  br i1 %cmp4.i, label %if.then8, label %for.body.i65.for.cond.i_crit_edge

for.body.i65.for.cond.i_crit_edge:                ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.then8:                                         ; preds = %for.body.i65
  %engine.i = getelementptr inbounds %struct.mt76x02_dfs_sequence, ptr %seq.0.i, i32 0, i32 5
  %177 = ptrtoint ptr %engine.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %engine.i, align 2
  %idxprom.i = zext i8 %178 to i32
  %sw_pattern.i = getelementptr %struct.mt76x02_dev, ptr %add.ptr3, i32 0, i32 27, i32 9, i32 %idxprom.i, i32 2
  %179 = ptrtoint ptr %sw_pattern.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %sw_pattern.i, align 4
  %inc.i66 = add i32 %180, 1
  store i32 %inc.i66, ptr %sw_pattern.i, align 4
  %hw = getelementptr i8, ptr %t, i32 -17128
  %181 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_radar_detected(ptr noundef %182) #4
  %183 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bus.i.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wr.i, align 4
  tail call void %186(ptr noundef %add.ptr3, i32 noundef 10756, i32 noundef 15) #4
  %187 = ptrtoint ptr %h_rb.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %h_rb.i.i, align 4
  %188 = ptrtoint ptr %t_rb.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %t_rb.i.i, align 4
  %189 = ptrtoint ptr %h_rb.1.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %h_rb.1.i.i, align 4
  %190 = ptrtoint ptr %t_rb.1.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %t_rb.1.i.i, align 4
  %191 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sequences.i.i, align 4
  %cmp11.not36.i = icmp eq ptr %192, %sequences.i.i
  br i1 %cmp11.not36.i, label %if.then8.cleanup31_crit_edge, label %if.then8.for.body12.i_crit_edge

if.then8.for.body12.i_crit_edge:                  ; preds = %if.then8
  br label %for.body12.i

if.then8.cleanup31_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

for.body12.i:                                     ; preds = %mt76x02_dfs_seq_pool_put.exit.i.for.body12.i_crit_edge, %if.then8.for.body12.i_crit_edge
  %seq.037.i = phi ptr [ %tmp_seq.0.i, %mt76x02_dfs_seq_pool_put.exit.i.for.body12.i_crit_edge ], [ %192, %if.then8.for.body12.i_crit_edge ]
  %193 = ptrtoint ptr %seq.037.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %tmp_seq.0.i = load ptr, ptr %seq.037.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %seq.037.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i70, label %for.body12.i.list_del_init.exit.i_crit_edge

for.body12.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i

if.end.i.i.i70:                                   ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %seq.037.i, i32 0, i32 1
  %194 = ptrtoint ptr %prev.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %prev.i.i.i68, align 4
  %196 = ptrtoint ptr %seq.037.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %seq.037.i, align 4
  %prev1.i.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %prev1.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %195, ptr %prev1.i.i.i.i69, align 4
  %199 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %197, ptr %195, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i70, %for.body12.i.list_del_init.exit.i_crit_edge
  %200 = ptrtoint ptr %seq.037.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %seq.037.i, ptr %seq.037.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %seq.037.i, i32 0, i32 1
  %201 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %seq.037.i, ptr %prev.i3.i.i, align 4
  %202 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %seq_pool.i.i.i, align 4
  %call.i.i.i.i71 = tail call zeroext i1 @__list_add_valid(ptr noundef %seq.037.i, ptr noundef %seq_pool.i.i.i, ptr noundef %203) #4
  br i1 %call.i.i.i.i71, label %if.end.i.i.i.i72, label %list_del_init.exit.i.mt76x02_dfs_seq_pool_put.exit.i_crit_edge

list_del_init.exit.i.mt76x02_dfs_seq_pool_put.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_seq_pool_put.exit.i

if.end.i.i.i.i72:                                 ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %prev1.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %seq.037.i, ptr %prev1.i.i.i34.i, align 4
  %205 = ptrtoint ptr %seq.037.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %203, ptr %seq.037.i, align 4
  %206 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %seq_pool.i.i.i, ptr %prev.i3.i.i, align 4
  %207 = ptrtoint ptr %seq_pool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %seq.037.i, ptr %seq_pool.i.i.i, align 4
  br label %mt76x02_dfs_seq_pool_put.exit.i

mt76x02_dfs_seq_pool_put.exit.i:                  ; preds = %if.end.i.i.i.i72, %list_del_init.exit.i.mt76x02_dfs_seq_pool_put.exit.i_crit_edge
  %208 = ptrtoint ptr %seq_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %seq_stats.i.i.i, align 4
  %inc.i.i73 = add i32 %209, 1
  store i32 %inc.i.i73, ptr %seq_stats.i.i.i, align 4
  %210 = ptrtoint ptr %seq_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %seq_len.i.i.i, align 4
  %dec.i.i = add i32 %211, -1
  store i32 %dec.i.i, ptr %seq_len.i.i.i, align 4
  %cmp11.not.i = icmp eq ptr %tmp_seq.0.i, %sequences.i.i
  br i1 %cmp11.not.i, label %mt76x02_dfs_seq_pool_put.exit.i.cleanup31_crit_edge, label %mt76x02_dfs_seq_pool_put.exit.i.for.body12.i_crit_edge

mt76x02_dfs_seq_pool_put.exit.i.for.body12.i_crit_edge: ; preds = %mt76x02_dfs_seq_pool_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12.i

mt76x02_dfs_seq_pool_put.exit.i.cleanup31_crit_edge: ; preds = %mt76x02_dfs_seq_pool_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

if.end9:                                          ; preds = %for.cond.i.if.end9_crit_edge, %mt76x02_dfs_add_events.exit.if.end9_crit_edge
  %212 = ptrtoint ptr %h_rb.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %h_rb.i.i, align 4
  %214 = ptrtoint ptr %t_rb.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %t_rb.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %215)
  %cmp2.not15.i = icmp eq i32 %213, %215
  br i1 %cmp2.not15.i, label %if.end9.for.inc.i80_crit_edge, label %if.end9.while.body.i_crit_edge

if.end9.while.body.i_crit_edge:                   ; preds = %if.end9
  br label %while.body.i

if.end9.for.inc.i80_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i80

while.body.i:                                     ; preds = %if.end.i77.while.body.i_crit_edge, %if.end9.while.body.i_crit_edge
  %216 = phi i32 [ %and.i.i, %if.end.i77.while.body.i_crit_edge ], [ %213, %if.end9.while.body.i_crit_edge ]
  %arrayidx4.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %event_rb4.i.i, i32 0, i32 %216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %217 = load volatile i32, ptr @jiffies, align 128
  %218 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx4.i, align 4
  %add.neg.i = add i32 %217, -20
  %sub.i = sub i32 %add.neg.i, %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %while.body.i.for.inc.i80_crit_edge, label %if.end.i77

while.body.i.for.inc.i80_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i80

if.end.i77:                                       ; preds = %while.body.i
  %add.i.i76 = add i32 %216, 1
  %and.i.i = and i32 %add.i.i76, 255
  %220 = ptrtoint ptr %h_rb.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %and.i.i, ptr %h_rb.i.i, align 4
  %221 = ptrtoint ptr %t_rb.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %t_rb.i.i, align 4
  %cmp2.not.i = icmp eq i32 %and.i.i, %222
  br i1 %cmp2.not.i, label %if.end.i77.for.inc.i80_crit_edge, label %if.end.i77.while.body.i_crit_edge

if.end.i77.while.body.i_crit_edge:                ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end.i77.for.inc.i80_crit_edge:                 ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i80

for.inc.i80:                                      ; preds = %if.end.i77.for.inc.i80_crit_edge, %while.body.i.for.inc.i80_crit_edge, %if.end9.for.inc.i80_crit_edge
  %223 = ptrtoint ptr %h_rb.1.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %h_rb.1.i.i, align 4
  %225 = ptrtoint ptr %t_rb.1.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %t_rb.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %226)
  %cmp2.not15.1.i = icmp eq i32 %224, %226
  br i1 %cmp2.not15.1.i, label %for.inc.i80.if.end10_crit_edge, label %for.inc.i80.while.body.1.i_crit_edge

for.inc.i80.while.body.1.i_crit_edge:             ; preds = %for.inc.i80
  br label %while.body.1.i

for.inc.i80.if.end10_crit_edge:                   ; preds = %for.inc.i80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

while.body.1.i:                                   ; preds = %if.end.1.i.while.body.1.i_crit_edge, %for.inc.i80.while.body.1.i_crit_edge
  %227 = phi i32 [ %and.i.1.i, %if.end.1.i.while.body.1.i_crit_edge ], [ %224, %for.inc.i80.while.body.1.i_crit_edge ]
  %arrayidx4.1.i = getelementptr [256 x %struct.mt76x02_dfs_event], ptr %arrayidx.i.i, i32 0, i32 %227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %229 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx4.1.i, align 4
  %add.neg.1.i = add i32 %228, -20
  %sub.1.i = sub i32 %add.neg.1.i, %230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.i)
  %cmp5.1.i = icmp slt i32 %sub.1.i, 0
  br i1 %cmp5.1.i, label %while.body.1.i.if.end10_crit_edge, label %if.end.1.i

while.body.1.i.if.end10_crit_edge:                ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end.1.i:                                       ; preds = %while.body.1.i
  %add.i.1.i = add i32 %227, 1
  %and.i.1.i = and i32 %add.i.1.i, 255
  %231 = ptrtoint ptr %h_rb.1.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %and.i.1.i, ptr %h_rb.1.i.i, align 4
  %232 = ptrtoint ptr %t_rb.1.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %t_rb.1.i.i, align 4
  %cmp2.not.1.i = icmp eq i32 %and.i.1.i, %233
  br i1 %cmp2.not.1.i, label %if.end.1.i.if.end10_crit_edge, label %if.end.1.i.while.body.1.i_crit_edge

if.end.1.i.while.body.1.i_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.1.i

if.end.1.i.if.end10_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %if.end.1.i.if.end10_crit_edge, %while.body.1.i.if.end10_crit_edge, %for.inc.i80.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %bus = getelementptr i8, ptr %t, i32 -16888
  %234 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %bus, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %call11 = tail call i32 %237(ptr noundef %add.ptr3, i32 noundef 10756) #4
  %and = and i32 %call11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %for.cond.preheader

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.cond.preheader:                               ; preds = %if.end10
  %region.i = getelementptr i8, ptr %t, i32 -7536
  %chandef.i = getelementptr i8, ptr %t, i32 -17816
  %dfs_pd1.i310.i = getelementptr i8, ptr %t, i32 -6260
  %chirp_pulse_ts.i313.i = getelementptr i8, ptr %t, i32 -6256
  %stats = getelementptr i8, ptr %t, i32 -48
  br label %for.body

for.body:                                         ; preds = %cleanup27.for.body_crit_edge, %for.cond.preheader
  %i.0133 = phi i32 [ 0, %for.cond.preheader ], [ %inc29, %cleanup27.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0133
  %and16 = and i32 %shl, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.cleanup27_crit_edge, label %if.end19

for.body.cleanup27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

if.end19:                                         ; preds = %for.body
  %or.i = or i32 %i.0133, 983040
  %238 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %bus, align 4
  %wr.i82 = getelementptr inbounds %struct.mt76_bus_ops, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %wr.i82 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %wr.i82, align 4
  tail call void %241(ptr noundef %add.ptr3, i32 noundef 10752, i32 noundef %or.i) #4
  %242 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bus, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %call.i = tail call i32 %245(ptr noundef %add.ptr3, i32 noundef 10828) #4
  %246 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %bus, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 4
  %call4.i = tail call i32 %249(ptr noundef %add.ptr3, i32 noundef 10832) #4
  %250 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %bus, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %call7.i = tail call i32 %253(ptr noundef %add.ptr3, i32 noundef 10844) #4
  %254 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %bus, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %call10.i = tail call i32 %257(ptr noundef %add.ptr3, i32 noundef 10840) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool1.not.i = icmp eq i32 %call4.i, 0
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %if.end19.if.then21_crit_edge, label %if.end.i85

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.i85:                                       ; preds = %if.end19
  %258 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %region.i, align 4
  %260 = zext i32 %259 to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %259, label %if.end.i85.if.then21_crit_edge [
    i32 1, label %if.end4.i86
    i32 2, label %sw.bb62.i
    i32 3, label %sw.bb86.i
  ]

if.end.i85.if.then21_crit_edge:                   ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end4.i86:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0133)
  %261 = icmp eq i32 %i.0133, 3
  br i1 %261, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end4.i86
  %262 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %bus, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %call.i.i88 = tail call i32 %265(ptr noundef %add.ptr3, i32 noundef 4368) #4
  %266 = ptrtoint ptr %chirp_pulse_ts.i313.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %chirp_pulse_ts.i313.i, align 4
  %sub.i.i89 = sub i32 %call.i.i88, %267
  store i32 %call.i.i88, ptr %chirp_pulse_ts.i313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582913, i32 %sub.i.i89)
  %cmp.i.i = icmp ult i32 %sub.i.i89, 12582913
  br i1 %cmp.i.i, label %if.then.i.i91, label %if.then9.i.if.then21.sink.split_crit_edge

if.then9.i.if.then21.sink.split_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.sink.split

if.then.i.i91:                                    ; preds = %if.then9.i
  %268 = ptrtoint ptr %dfs_pd1.i310.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %dfs_pd1.i310.i, align 4
  %inc.i.i90 = add i8 %269, 1
  store i8 %inc.i.i90, ptr %dfs_pd1.i310.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc.i.i90)
  %cmp3.i.i = icmp ugt i8 %inc.i.i90, 8
  br i1 %cmp3.i.i, label %if.then.i.i91.if.end22_crit_edge, label %if.then.i.i91.if.then21_crit_edge

if.then.i.i91.if.then21_crit_edge:                ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then.i.i91.if.end22_crit_edge:                 ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end10.i:                                       ; preds = %if.end4.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %call4.i)
  %cmp12.i = icmp ult i32 %call4.i, 120
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2899, i32 %call.i)
  %cmp16.i = icmp ugt i32 %call.i, 2899
  %270 = add i32 %call.i, -6400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1699, i32 %270)
  %271 = icmp ult i32 %270, -1699
  %or.cond.i = and i1 %cmp16.i, %271
  br i1 %or.cond.i, label %land.lhs.true25.i, label %if.then14.i.if.then21_crit_edge

if.then14.i.if.then21_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true25.i:                                ; preds = %if.then14.i
  %272 = add i32 %call.i, -10200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3399, i32 %272)
  %273 = icmp ult i32 %272, -3399
  call void @__sanitizer_cov_trace_const_cmp4(i32 61601, i32 %call.i)
  %cmp34.i = icmp ult i32 %call.i, 61601
  %spec.select322.i = and i1 %cmp34.i, %273
  br i1 %spec.select322.i, label %land.lhs.true25.i.if.end22_crit_edge, label %land.lhs.true25.i.if.then21_crit_edge

land.lhs.true25.i.if.then21_crit_edge:            ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true25.i.if.end22_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %call4.i)
  %cmp38.i = icmp ult i32 %call4.i, 130
  br i1 %cmp38.i, label %if.then40.i, label %if.else50.i

if.then40.i:                                      ; preds = %if.else.i
  %274 = add i32 %call.i, -2900
  call void @__sanitizer_cov_trace_const_cmp4(i32 58701, i32 %274)
  %275 = icmp ult i32 %274, 58701
  br i1 %275, label %if.then40.i.if.end22_crit_edge, label %if.then40.i.if.then21_crit_edge

if.then40.i.if.then21_crit_edge:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then40.i.if.end22_crit_edge:                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else50.i:                                      ; preds = %if.else.i
  %276 = add i32 %call.i, -3500
  call void @__sanitizer_cov_trace_const_cmp4(i32 6601, i32 %276)
  %277 = icmp ult i32 %276, 6601
  br i1 %277, label %if.else50.i.if.end22_crit_edge, label %if.else50.i.if.then21_crit_edge

if.else50.i.if.then21_crit_edge:                  ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.else50.i.if.end22_crit_edge:                   ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

sw.bb62.i:                                        ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0133)
  %278 = icmp ult i32 %i.0133, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4899, i32 %call.i)
  %cmp70.i = icmp ugt i32 %call.i, 4899
  %or.cond308.i = select i1 %278, i1 %cmp70.i, i1 false
  br i1 %or.cond308.i, label %land.lhs.true72.i, label %sw.bb62.i.if.then21_crit_edge

sw.bb62.i.if.then21_crit_edge:                    ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true72.i:                                ; preds = %sw.bb62.i
  %279 = add i32 %call.i, -12400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2199, i32 %279)
  %280 = icmp ult i32 %279, -2199
  call void @__sanitizer_cov_trace_const_cmp4(i32 100101, i32 %call.i)
  %cmp82.i = icmp ult i32 %call.i, 100101
  %spec.select323.i = and i1 %cmp82.i, %280
  br i1 %spec.select323.i, label %land.lhs.true72.i.if.end22_crit_edge, label %land.lhs.true72.i.if.then21_crit_edge

land.lhs.true72.i.if.then21_crit_edge:            ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true72.i.if.end22_crit_edge:             ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

sw.bb86.i:                                        ; preds = %if.end.i85
  %281 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %center_freq.i, align 4
  %285 = add i32 %284, -5250
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %285)
  %286 = icmp ult i32 %285, 101
  br i1 %286, label %if.then95.i, label %if.end124.i

if.then95.i:                                      ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %call4.i)
  %cmp97.i = icmp ult i32 %call4.i, 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 28359, i32 %call.i)
  %cmp101.i = icmp ugt i32 %call.i, 28359
  %or.cond309.i = select i1 %cmp97.i, i1 %cmp101.i, i1 false
  br i1 %or.cond309.i, label %land.lhs.true103.i, label %if.then95.i.if.then21_crit_edge

if.then95.i.if.then21_crit_edge:                  ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true103.i:                               ; preds = %if.then95.i
  %287 = add i32 %call.i, -76900
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48199, i32 %287)
  %288 = icmp ult i32 %287, -48199
  call void @__sanitizer_cov_trace_const_cmp4(i32 76941, i32 %call.i)
  %cmp113.i = icmp ult i32 %call.i, 76941
  %spec.select324.i = and i1 %cmp113.i, %288
  br i1 %spec.select324.i, label %land.lhs.true103.i.if.end22_crit_edge, label %land.lhs.true103.i.if.then21_crit_edge

land.lhs.true103.i.if.then21_crit_edge:           ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true103.i.if.end22_crit_edge:            ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end124.i:                                      ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0133)
  %289 = icmp eq i32 %i.0133, 3
  br i1 %289, label %if.then129.i, label %if.end132.i

if.then129.i:                                     ; preds = %if.end124.i
  %290 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %bus, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %call.i312.i = tail call i32 %293(ptr noundef %add.ptr3, i32 noundef 4368) #4
  %294 = ptrtoint ptr %chirp_pulse_ts.i313.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %chirp_pulse_ts.i313.i, align 4
  %sub.i314.i = sub i32 %call.i312.i, %295
  store i32 %call.i312.i, ptr %chirp_pulse_ts.i313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582913, i32 %sub.i314.i)
  %cmp.i315.i = icmp ult i32 %sub.i314.i, 12582913
  br i1 %cmp.i315.i, label %if.then.i318.i, label %if.then129.i.if.then21.sink.split_crit_edge

if.then129.i.if.then21.sink.split_crit_edge:      ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.sink.split

if.then.i318.i:                                   ; preds = %if.then129.i
  %296 = ptrtoint ptr %dfs_pd1.i310.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %dfs_pd1.i310.i, align 4
  %inc.i316.i = add i8 %297, 1
  store i8 %inc.i316.i, ptr %dfs_pd1.i310.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc.i316.i)
  %cmp3.i317.i = icmp ugt i8 %inc.i316.i, 8
  br i1 %cmp3.i317.i, label %if.then.i318.i.if.end22_crit_edge, label %if.then.i318.i.if.then21_crit_edge

if.then.i318.i.if.then21_crit_edge:               ; preds = %if.then.i318.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then.i318.i.if.end22_crit_edge:                ; preds = %if.then.i318.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end132.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %call4.i)
  %cmp134.i = icmp ult i32 %call4.i, 120
  br i1 %cmp134.i, label %if.then136.i, label %if.else178.i

if.then136.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2899, i32 %call.i)
  %cmp138.i = icmp ugt i32 %call.i, 2899
  %298 = add i32 %call.i, -6400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1699, i32 %298)
  %299 = icmp ult i32 %298, -1699
  %or.cond329.i = and i1 %cmp138.i, %299
  %300 = add i32 %call.i, -27560
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20759, i32 %300)
  %301 = icmp ult i32 %300, -20759
  %or.cond331.i = and i1 %301, %or.cond329.i
  %302 = add i32 %call.i, -28360
  call void @__sanitizer_cov_trace_const_cmp4(i32 -399, i32 %302)
  %303 = icmp ult i32 %302, -399
  %or.cond333.i = select i1 %or.cond331.i, i1 %303, i1 false
  br i1 %or.cond333.i, label %land.lhs.true164.i, label %if.then136.i.if.then21_crit_edge

if.then136.i.if.then21_crit_edge:                 ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true164.i:                               ; preds = %if.then136.i
  %304 = add i32 %call.i, -79900
  call void @__sanitizer_cov_trace_const_cmp4(i32 -51199, i32 %304)
  %305 = icmp ult i32 %304, -51199
  call void @__sanitizer_cov_trace_const_cmp4(i32 80101, i32 %call.i)
  %cmp174.i = icmp ult i32 %call.i, 80101
  %spec.select325.i = and i1 %cmp174.i, %305
  br i1 %spec.select325.i, label %land.lhs.true164.i.if.end22_crit_edge, label %land.lhs.true164.i.if.then21_crit_edge

land.lhs.true164.i.if.then21_crit_edge:           ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

land.lhs.true164.i.if.end22_crit_edge:            ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else178.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %call4.i)
  %cmp180.i = icmp ult i32 %call4.i, 130
  br i1 %cmp180.i, label %if.then182.i, label %if.else216.i

if.then182.i:                                     ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2899, i32 %call.i)
  %cmp184.i = icmp ugt i32 %call.i, 2899
  %306 = add i32 %call.i, -27560
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17459, i32 %306)
  %307 = icmp ult i32 %306, -17459
  %or.cond335.i = and i1 %cmp184.i, %307
  %308 = add i32 %call.i, -28360
  call void @__sanitizer_cov_trace_const_cmp4(i32 -399, i32 %308)
  %309 = icmp ult i32 %308, -399
  %or.cond337.i = and i1 %309, %or.cond335.i
  br i1 %or.cond337.i, label %mt76x02_dfs_check_hw_pulse.exit, label %if.then182.i.if.then21_crit_edge

if.then182.i.if.then21_crit_edge:                 ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.else216.i:                                     ; preds = %if.else178.i
  %310 = add i32 %call.i, -3900
  call void @__sanitizer_cov_trace_const_cmp4(i32 6201, i32 %310)
  %311 = icmp ult i32 %310, 6201
  br i1 %311, label %if.else216.i.if.end22_crit_edge, label %if.else216.i.if.then21_crit_edge

if.else216.i.if.then21_crit_edge:                 ; preds = %if.else216.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.else216.i.if.end22_crit_edge:                  ; preds = %if.else216.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

mt76x02_dfs_check_hw_pulse.exit:                  ; preds = %if.then182.i
  %312 = add i32 %call.i, -79900
  call void @__sanitizer_cov_trace_const_cmp4(i32 -51199, i32 %312)
  %313 = icmp ult i32 %312, -51199
  call void @__sanitizer_cov_trace_const_cmp4(i32 80101, i32 %call.i)
  %cmp212.i = icmp ult i32 %call.i, 80101
  %spec.select326.i = and i1 %cmp212.i, %313
  br i1 %spec.select326.i, label %mt76x02_dfs_check_hw_pulse.exit.if.end22_crit_edge, label %mt76x02_dfs_check_hw_pulse.exit.if.then21_crit_edge

mt76x02_dfs_check_hw_pulse.exit.if.then21_crit_edge: ; preds = %mt76x02_dfs_check_hw_pulse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

mt76x02_dfs_check_hw_pulse.exit.if.end22_crit_edge: ; preds = %mt76x02_dfs_check_hw_pulse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then21.sink.split:                             ; preds = %if.then129.i.if.then21.sink.split_crit_edge, %if.then9.i.if.then21.sink.split_crit_edge
  %314 = ptrtoint ptr %dfs_pd1.i310.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 1, ptr %dfs_pd1.i310.i, align 4
  br label %if.then21

if.then21:                                        ; preds = %if.then21.sink.split, %mt76x02_dfs_check_hw_pulse.exit.if.then21_crit_edge, %if.else216.i.if.then21_crit_edge, %if.then182.i.if.then21_crit_edge, %land.lhs.true164.i.if.then21_crit_edge, %if.then136.i.if.then21_crit_edge, %if.then.i318.i.if.then21_crit_edge, %land.lhs.true103.i.if.then21_crit_edge, %if.then95.i.if.then21_crit_edge, %land.lhs.true72.i.if.then21_crit_edge, %sw.bb62.i.if.then21_crit_edge, %if.else50.i.if.then21_crit_edge, %if.then40.i.if.then21_crit_edge, %land.lhs.true25.i.if.then21_crit_edge, %if.then14.i.if.then21_crit_edge, %if.then.i.i91.if.then21_crit_edge, %if.end.i85.if.then21_crit_edge, %if.end19.if.then21_crit_edge
  %arrayidx = getelementptr [4 x %struct.mt76x02_dfs_engine_stats], ptr %stats, i32 0, i32 %i.0133
  %hw_pulse_discarded = getelementptr inbounds %struct.mt76x02_dfs_engine_stats, ptr %arrayidx, i32 0, i32 1
  %315 = ptrtoint ptr %hw_pulse_discarded to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %hw_pulse_discarded, align 4
  %inc = add i32 %316, 1
  store i32 %inc, ptr %hw_pulse_discarded, align 4
  br label %cleanup27

if.end22:                                         ; preds = %mt76x02_dfs_check_hw_pulse.exit.if.end22_crit_edge, %if.else216.i.if.end22_crit_edge, %land.lhs.true164.i.if.end22_crit_edge, %if.then.i318.i.if.end22_crit_edge, %land.lhs.true103.i.if.end22_crit_edge, %land.lhs.true72.i.if.end22_crit_edge, %if.else50.i.if.end22_crit_edge, %if.then40.i.if.end22_crit_edge, %land.lhs.true25.i.if.end22_crit_edge, %if.then.i.i91.if.end22_crit_edge
  %i.0133.lcssa = phi i32 [ %i.0133, %land.lhs.true164.i.if.end22_crit_edge ], [ %i.0133, %land.lhs.true103.i.if.end22_crit_edge ], [ %i.0133, %land.lhs.true72.i.if.end22_crit_edge ], [ %i.0133, %land.lhs.true25.i.if.end22_crit_edge ], [ 3, %if.then.i318.i.if.end22_crit_edge ], [ 3, %if.then.i.i91.if.end22_crit_edge ], [ %i.0133, %if.else50.i.if.end22_crit_edge ], [ %i.0133, %if.then40.i.if.end22_crit_edge ], [ %i.0133, %if.else216.i.if.end22_crit_edge ], [ %i.0133, %mt76x02_dfs_check_hw_pulse.exit.if.end22_crit_edge ]
  %arrayidx24 = getelementptr [4 x %struct.mt76x02_dfs_engine_stats], ptr %stats, i32 0, i32 %i.0133.lcssa
  %317 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx24, align 4
  %inc25 = add i32 %318, 1
  store i32 %inc25, ptr %arrayidx24, align 4
  %hw26 = getelementptr i8, ptr %t, i32 -17128
  %319 = ptrtoint ptr %hw26 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %hw26, align 4
  tail call void @ieee80211_radar_detected(ptr noundef %320) #4
  %321 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %bus, align 4
  %wr.i94 = getelementptr inbounds %struct.mt76_bus_ops, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %wr.i94 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %wr.i94, align 4
  tail call void %324(ptr noundef %add.ptr3, i32 noundef 10756, i32 noundef 15) #4
  %h_rb.i95 = getelementptr i8, ptr %t, i32 -3168
  %325 = ptrtoint ptr %h_rb.i95 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %h_rb.i95, align 4
  %t_rb.i96 = getelementptr i8, ptr %t, i32 -3164
  %326 = ptrtoint ptr %t_rb.i96 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %t_rb.i96, align 4
  %h_rb.1.i97 = getelementptr i8, ptr %t, i32 -88
  %327 = ptrtoint ptr %h_rb.1.i97 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %h_rb.1.i97, align 4
  %t_rb.1.i98 = getelementptr i8, ptr %t, i32 -84
  %328 = ptrtoint ptr %t_rb.1.i98 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %t_rb.1.i98, align 4
  %sequences.i99 = getelementptr i8, ptr %t, i32 -80
  %329 = ptrtoint ptr %sequences.i99 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %sequences.i99, align 4
  %cmp11.not36.i100 = icmp eq ptr %330, %sequences.i99
  br i1 %cmp11.not36.i100, label %if.end22.cleanup31_crit_edge, label %for.body12.lr.ph.i104

if.end22.cleanup31_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

for.body12.lr.ph.i104:                            ; preds = %if.end22
  %seq_pool.i.i101 = getelementptr i8, ptr %t, i32 -72
  %seq_stats.i.i102 = getelementptr i8, ptr %t, i32 -64
  %seq_len.i.i103 = getelementptr i8, ptr %t, i32 -60
  br label %for.body12.i108

for.body12.i108:                                  ; preds = %mt76x02_dfs_seq_pool_put.exit.i120.for.body12.i108_crit_edge, %for.body12.lr.ph.i104
  %seq.037.i105 = phi ptr [ %330, %for.body12.lr.ph.i104 ], [ %tmp_seq.0.i106, %mt76x02_dfs_seq_pool_put.exit.i120.for.body12.i108_crit_edge ]
  %331 = ptrtoint ptr %seq.037.i105 to i32
  call void @__asan_load4_noabort(i32 %331)
  %tmp_seq.0.i106 = load ptr, ptr %seq.037.i105, align 4
  %call.i.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %seq.037.i105) #4
  br i1 %call.i.i.i107, label %if.end.i.i.i111, label %for.body12.i108.list_del_init.exit.i114_crit_edge

for.body12.i108.list_del_init.exit.i114_crit_edge: ; preds = %for.body12.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i114

if.end.i.i.i111:                                  ; preds = %for.body12.i108
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %seq.037.i105, i32 0, i32 1
  %332 = ptrtoint ptr %prev.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %prev.i.i.i109, align 4
  %334 = ptrtoint ptr %seq.037.i105 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %seq.037.i105, align 4
  %prev1.i.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %prev1.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %333, ptr %prev1.i.i.i.i110, align 4
  %337 = ptrtoint ptr %333 to i32
  call void @__asan_store4_noabort(i32 %337)
  store volatile ptr %335, ptr %333, align 4
  br label %list_del_init.exit.i114

list_del_init.exit.i114:                          ; preds = %if.end.i.i.i111, %for.body12.i108.list_del_init.exit.i114_crit_edge
  %338 = ptrtoint ptr %seq.037.i105 to i32
  call void @__asan_store4_noabort(i32 %338)
  store volatile ptr %seq.037.i105, ptr %seq.037.i105, align 4
  %prev.i3.i.i112 = getelementptr inbounds %struct.list_head, ptr %seq.037.i105, i32 0, i32 1
  %339 = ptrtoint ptr %prev.i3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %seq.037.i105, ptr %prev.i3.i.i112, align 4
  %340 = ptrtoint ptr %seq_pool.i.i101 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %seq_pool.i.i101, align 4
  %call.i.i.i.i113 = tail call zeroext i1 @__list_add_valid(ptr noundef %seq.037.i105, ptr noundef %seq_pool.i.i101, ptr noundef %341) #4
  br i1 %call.i.i.i.i113, label %if.end.i.i.i.i116, label %list_del_init.exit.i114.mt76x02_dfs_seq_pool_put.exit.i120_crit_edge

list_del_init.exit.i114.mt76x02_dfs_seq_pool_put.exit.i120_crit_edge: ; preds = %list_del_init.exit.i114
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_seq_pool_put.exit.i120

if.end.i.i.i.i116:                                ; preds = %list_del_init.exit.i114
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i34.i115 = getelementptr inbounds %struct.list_head, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %prev1.i.i.i34.i115 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %seq.037.i105, ptr %prev1.i.i.i34.i115, align 4
  %343 = ptrtoint ptr %seq.037.i105 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %341, ptr %seq.037.i105, align 4
  %344 = ptrtoint ptr %prev.i3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %seq_pool.i.i101, ptr %prev.i3.i.i112, align 4
  %345 = ptrtoint ptr %seq_pool.i.i101 to i32
  call void @__asan_store4_noabort(i32 %345)
  store volatile ptr %seq.037.i105, ptr %seq_pool.i.i101, align 4
  br label %mt76x02_dfs_seq_pool_put.exit.i120

mt76x02_dfs_seq_pool_put.exit.i120:               ; preds = %if.end.i.i.i.i116, %list_del_init.exit.i114.mt76x02_dfs_seq_pool_put.exit.i120_crit_edge
  %346 = ptrtoint ptr %seq_stats.i.i102 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %seq_stats.i.i102, align 4
  %inc.i.i117 = add i32 %347, 1
  store i32 %inc.i.i117, ptr %seq_stats.i.i102, align 4
  %348 = ptrtoint ptr %seq_len.i.i103 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %seq_len.i.i103, align 4
  %dec.i.i118 = add i32 %349, -1
  store i32 %dec.i.i118, ptr %seq_len.i.i103, align 4
  %cmp11.not.i119 = icmp eq ptr %tmp_seq.0.i106, %sequences.i99
  br i1 %cmp11.not.i119, label %mt76x02_dfs_seq_pool_put.exit.i120.cleanup31_crit_edge, label %mt76x02_dfs_seq_pool_put.exit.i120.for.body12.i108_crit_edge

mt76x02_dfs_seq_pool_put.exit.i120.for.body12.i108_crit_edge: ; preds = %mt76x02_dfs_seq_pool_put.exit.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12.i108

mt76x02_dfs_seq_pool_put.exit.i120.cleanup31_crit_edge: ; preds = %mt76x02_dfs_seq_pool_put.exit.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

cleanup27:                                        ; preds = %if.then21, %for.body.cleanup27_crit_edge
  %inc29 = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc29, 4
  br i1 %exitcond.not, label %for.end, label %cleanup27.for.body_crit_edge

cleanup27.for.body_crit_edge:                     ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #6
  %350 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %wr, align 4
  tail call void %353(ptr noundef %add.ptr3, i32 noundef 10756, i32 noundef 15) #4
  br label %out

out:                                              ; preds = %for.end, %if.end10.out_crit_edge, %entry.out_crit_edge
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr3, i32 noundef 516, i32 noundef 0, i32 noundef 16777216) #4
  br label %cleanup31

cleanup31:                                        ; preds = %out, %mt76x02_dfs_seq_pool_put.exit.i120.cleanup31_crit_edge, %if.end22.cleanup31_crit_edge, %mt76x02_dfs_seq_pool_put.exit.i.cleanup31_crit_edge, %if.then8.cleanup31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02_regd_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %2 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dfs_region, align 4
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %region2.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %region2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp eq i32 %5, %3
  br i1 %cmp.not.i, label %entry.mt76x02_dfs_set_domain.exit_crit_edge, label %if.then.i

entry.mt76x02_dfs_set_domain.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x02_dfs_set_domain.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dfs_tasklet.i = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 27, i32 10
  %count.i.i.i = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 27, i32 10, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @tasklet_unlock_wait(ptr noundef %dfs_tasklet.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  %ed_monitor_enabled.i = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %ed_monitor_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ed_monitor_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3.i = icmp eq i32 %3, 2
  %spec.select.i = and i1 %cmp3.i, %tobool.not.i
  %ed_monitor.i = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 30
  %frombool.i = zext i1 %spec.select.i to i8
  %9 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %ed_monitor.i, align 1
  tail call void @mt76x02_edcca_init(ptr noundef %1) #4
  %10 = ptrtoint ptr %region2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %region2.i, align 4
  tail call void @mt76x02_dfs_init_params(ptr noundef %1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #4, !srcloc !25
  br label %mt76x02_dfs_set_domain.exit

mt76x02_dfs_set_domain.exit:                      ; preds = %if.then.i, %entry.mt76x02_dfs_set_domain.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_radar_detected(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_edcca_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_mt76x02_phy_dfs_adjust_agc, !1, !"__ksymtab_mt76x02_phy_dfs_adjust_agc", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c", i32 822, i32 1}
!2 = !{ptr @__ksymtab_mt76x02_dfs_init_params, !3, !"__ksymtab_mt76x02_dfs_init_params", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c", i32 854, i32 1}
!4 = !{ptr @fcc_radar_specs, !5, !"fcc_radar_specs", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c", i32 58, i32 41}
!6 = !{ptr @etsi_radar_specs, !7, !"etsi_radar_specs", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c", i32 28, i32 41}
!8 = !{ptr @jp_w53_radar_specs, !9, !"jp_w53_radar_specs", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c", i32 118, i32 41}
!10 = !{ptr @jp_w56_radar_specs, !11, !"jp_w56_radar_specs", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c", i32 88, i32 41}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148266377, i64 2148266403, i64 2148266432, i64 2148266466, i64 2148266497, i64 2148266520}
!22 = !{i64 2155020106}
!23 = !{i64 2155020748}
!24 = !{i64 2155021095}
!25 = !{i64 2148268842, i64 2148268868, i64 2148268897, i64 2148268931, i64 2148268962, i64 2148268985}
