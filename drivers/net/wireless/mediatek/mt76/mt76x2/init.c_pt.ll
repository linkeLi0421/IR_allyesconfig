; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x2_set_sar_specs\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_set_sar_specs\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_set_sar_specs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_set_sar_specs:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_set_sar_specs\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_set_sar_specs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_reset_wlan\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_reset_wlan\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_reset_wlan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_reset_wlan:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_reset_wlan\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_reset_wlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_write_mac_initvals\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_write_mac_initvals\09\09\09\09"
module asm "\09.long\09__crc_mt76_write_mac_initvals\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_write_mac_initvals:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_write_mac_initvals\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_write_mac_initvals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_init_txpower\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_init_txpower\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_init_txpower\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_init_txpower:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_init_txpower\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_init_txpower:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
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
%struct.mt76x02_dev = type { %union.anon.131, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon.131 = type { %struct.mt76_dev }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76x2_tx_power_info = type { i8, i8, i8, [2 x %struct.anon.148] }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@__kstrtab_mt76x2_set_sar_specs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_set_sar_specs = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_set_sar_specs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_set_sar_specs to i32), ptr @__kstrtab_mt76x2_set_sar_specs, ptr @__kstrtabns_mt76x2_set_sar_specs }, section "___ksymtab_gpl+mt76x2_set_sar_specs", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_mt76x2_reset_wlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_reset_wlan = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_reset_wlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_reset_wlan to i32), ptr @__kstrtab_mt76x2_reset_wlan, ptr @__kstrtabns_mt76x2_reset_wlan }, section "___ksymtab_gpl+mt76x2_reset_wlan", align 4
@mt76_write_mac_initvals.vals = internal constant { [54 x %struct.mt76_reg_pair], [112 x i8] } { [54 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 1024, i32 527360 }, %struct.mt76_reg_pair { i32 1028, i32 520011007 }, %struct.mt76_reg_pair { i32 2048, i32 1 }, %struct.mt76_reg_pair { i32 4100, i32 0 }, %struct.mt76_reg_pair { i32 4120, i32 4079360 }, %struct.mt76_reg_pair { i32 4144, i32 -1431725945 }, %struct.mt76_reg_pair { i32 4148, i32 170 }, %struct.mt76_reg_pair { i32 4352, i32 866389258 }, %struct.mt76_reg_pair { i32 4356, i32 521 }, %struct.mt76_reg_pair { i32 4376, i32 4333584 }, %struct.mt76_reg_pair { i32 4612, i32 0 }, %struct.mt76_reg_pair { i32 4664, i32 1507528 }, %struct.mt76_reg_pair { i32 4912, i32 1052673 }, %struct.mt76_reg_pair { i32 4916, i32 65536 }, %struct.mt76_reg_pair { i32 4920, i32 0 }, %struct.mt76_reg_pair { i32 4928, i32 67131455 }, %struct.mt76_reg_pair { i32 4932, i32 16776992 }, %struct.mt76_reg_pair { i32 4936, i32 664208 }, %struct.mt76_reg_pair { i32 4940, i32 1206918927 }, %struct.mt76_reg_pair { i32 4992, i32 2883804 }, %struct.mt76_reg_pair { i32 5088, i32 -470540284 }, %struct.mt76_reg_pair { i32 5092, i32 -470540156 }, %struct.mt76_reg_pair { i32 5096, i32 -470540028 }, %struct.mt76_reg_pair { i32 5100, i32 397311 }, %struct.mt76_reg_pair { i32 5120, i32 90007 }, %struct.mt76_reg_pair { i32 5128, i32 383 }, %struct.mt76_reg_pair { i32 5132, i32 16387 }, %struct.mt76_reg_pair { i32 5388, i32 3 }, %struct.mt76_reg_pair { i32 5640, i32 2 }, %struct.mt76_reg_pair { i32 2628, i32 0 }, %struct.mt76_reg_pair { i32 608, i32 0 }, %struct.mt76_reg_pair { i32 592, i32 0 }, %struct.mt76_reg_pair { i32 4620, i32 0 }, %struct.mt76_reg_pair { i32 4708, i32 0 }, %struct.mt76_reg_pair { i32 5056, i32 0 }, %struct.mt76_reg_pair { i32 5064, i32 0 }, %struct.mt76_reg_pair { i32 4884, i32 976894522 }, %struct.mt76_reg_pair { i32 4888, i32 976894522 }, %struct.mt76_reg_pair { i32 4892, i32 976894522 }, %struct.mt76_reg_pair { i32 4896, i32 976894522 }, %struct.mt76_reg_pair { i32 4900, i32 976894522 }, %struct.mt76_reg_pair { i32 5076, i32 976894522 }, %struct.mt76_reg_pair { i32 5080, i32 58 }, %struct.mt76_reg_pair { i32 5084, i32 58 }, %struct.mt76_reg_pair { i32 36, i32 53248 }, %struct.mt76_reg_pair { i32 2616, i32 10 }, %struct.mt76_reg_pair { i32 2084, i32 1614814232 }, %struct.mt76_reg_pair { i32 528, i32 -1795227648 }, %struct.mt76_reg_pair { i32 5240, i32 4 }, %struct.mt76_reg_pair { i32 4996, i32 6168 }, %struct.mt76_reg_pair { i32 4952, i32 -305419904 }, %struct.mt76_reg_pair { i32 5704, i32 8585347 }, %struct.mt76_reg_pair { i32 5136, i32 511 }, %struct.mt76_reg_pair { i32 4944, i32 4128 }], [112 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_write_mac_initvals = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_write_mac_initvals = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_write_mac_initvals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_write_mac_initvals to i32), ptr @__kstrtab_mt76_write_mac_initvals, ptr @__kstrtabns_mt76_write_mac_initvals }, section "___ksymtab_gpl+mt76_write_mac_initvals", align 4
@__kstrtab_mt76x2_init_txpower = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_init_txpower = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_init_txpower = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_init_txpower to i32), ptr @__kstrtab_mt76x2_init_txpower, ptr @__kstrtabns_mt76x2_init_txpower }, section "___ksymtab_gpl+mt76x2_init_txpower", align 4
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/init.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 109, i32 36 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mt76_write_mac_initvals, ptr @__ksymtab_mt76x2_init_txpower, ptr @__ksymtab_mt76x2_reset_wlan, ptr @__ksymtab_mt76x2_set_sar_specs, ptr @mt76_write_mac_initvals.vals], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_write_mac_initvals.vals to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_set_sar_specs(ptr noundef %hw, ptr noundef %sar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_level, align 4
  %mul = shl i32 %1, 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 5
  %call = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %chandef) #4
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt76_init_sar_power(ptr noundef %hw, ptr noundef %sar) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %call5 = tail call i32 @mt76_get_sar_power(ptr noundef %3, ptr noundef %5, i32 noundef %mul) #4
  %txpower_conf = getelementptr inbounds %struct.mt76x02_dev, ptr %3, i32 0, i32 20
  %sub = add i32 %call5, -6
  %6 = ptrtoint ptr %txpower_conf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %txpower_conf, align 64
  %state = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end3.out_crit_edge, label %if.then9

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76x2_phy_set_txpower(ptr noundef %3) #4
  br label %out

out:                                              ; preds = %if.then9, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end3.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_init_sar_power(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_sar_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_set_txpower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_reset_wlan(ptr noundef %dev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 128) #4
  %and = and i32 %call, -33
  %and1 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %and, 4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 128, i32 noundef %or) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 4294960) #4
  %and5 = and i32 %call, -37
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %val.0 = phi i32 [ %and5, %if.then3 ], [ %and, %if.end.if.end6_crit_edge ]
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %wr8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wr8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr8, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 128, i32 noundef %val.0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 4294960) #4
  br label %out

out:                                              ; preds = %if.end6, %entry.out_crit_edge
  %masksel.i = phi i32 [ 0, %entry.out_crit_edge ], [ 3, %if.end6 ]
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = tail call i32 %17(ptr noundef %dev, i32 noundef 128) #4
  %and.i = and i32 %call.i, -4
  %val.0.i = or i32 %and.i, %masksel.i
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr.i, align 4
  tail call void %21(ptr noundef %dev, i32 noundef 128, i32 noundef %val.0.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 4294960) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_write_mac_initvals(ptr noundef %dev) #0 align 64 {
entry:
  %prot_vals = alloca [6 x %struct.mt76_reg_pair], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prot_vals) #4
  %0 = ptrtoint ptr %prot_vals to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4964, ptr %prot_vals, align 4
  %value = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 0, i32 1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 133431299, ptr %value, align 4
  %arrayinit.element = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 1
  %2 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4968, ptr %arrayinit.element, align 4
  %value48 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 1, i32 1
  %3 = ptrtoint ptr %value48 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 133439492, ptr %value48, align 4
  %arrayinit.element100 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 2
  %4 = ptrtoint ptr %arrayinit.element100 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4972, ptr %arrayinit.element100, align 4
  %value102 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 2, i32 1
  %5 = ptrtoint ptr %value102 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24453124, ptr %value102, align 4
  %arrayinit.element170 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 3
  %6 = ptrtoint ptr %arrayinit.element170 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4976, ptr %arrayinit.element170, align 4
  %value172 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 3, i32 1
  %7 = ptrtoint ptr %value172 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 66396292, ptr %value172, align 4
  %arrayinit.element240 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 4
  %8 = ptrtoint ptr %arrayinit.element240 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4980, ptr %arrayinit.element240, align 4
  %value242 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 4, i32 1
  %9 = ptrtoint ptr %value242 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 24453124, ptr %value242, align 4
  %arrayinit.element310 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 5
  %10 = ptrtoint ptr %arrayinit.element310 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4984, ptr %arrayinit.element310, align 4
  %value312 = getelementptr inbounds %struct.mt76_reg_pair, ptr %prot_vals, i32 5, i32 1
  %11 = ptrtoint ptr %value312 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 66396292, ptr %value312, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr_rp = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %wr_rp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr_rp, align 4
  %call = tail call i32 %15(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @mt76_write_mac_initvals.vals, i32 noundef 54) #4
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr_rp381 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %wr_rp381 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr_rp381, align 4
  %call382 = call i32 %19(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %prot_vals, i32 noundef 6) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prot_vals) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_init_txpower(ptr noundef %dev, ptr nocapture noundef readonly %sband) #0 align 64 {
entry:
  %txp = alloca %struct.mt76x2_tx_power_info, align 1
  %t = alloca %struct.mt76_rate_power, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %txp) #4
  %0 = call ptr @memset(ptr %txp, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %t) #4
  %1 = call ptr @memset(ptr %t, i32 0, i32 48)
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23 = icmp sgt i32 %3, 0
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %sband to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sband, align 4
  %arrayidx = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.024
  call void @mt76x2_get_power_info(ptr noundef %dev, ptr noundef nonnull %txp, ptr noundef %arrayidx) #4
  call void @mt76x2_get_rate_power(ptr noundef %dev, ptr noundef nonnull %t, ptr noundef %arrayidx) #4
  %call = call i32 @mt76x02_get_max_rate_power(ptr noundef nonnull %t) #4
  %6 = ptrtoint ptr %txp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txp, align 1
  %conv = zext i8 %7 to i32
  %orig_mpwr = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.024, i32 11
  %add = add i32 %call, 1
  %sub = add i32 %add, %conv
  %div = sdiv i32 %sub, 2
  %add5 = add nsw i32 %div, 3
  %8 = ptrtoint ptr %orig_mpwr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add5, ptr %orig_mpwr, align 4
  %max_reg_power = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.024, i32 7
  %9 = ptrtoint ptr %max_reg_power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_reg_power, align 4
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 %add5)
  %max_power = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.024, i32 6
  %12 = ptrtoint ptr %max_power to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_power, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %13 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_channels, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %txp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_get_power_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_get_rate_power(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_get_max_rate_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_mt76x2_set_sar_specs, !1, !"__ksymtab_mt76x2_set_sar_specs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/init.c", i32 38, i32 1}
!2 = !{ptr @__ksymtab_mt76x2_reset_wlan, !3, !"__ksymtab_mt76x2_reset_wlan", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/init.c", i32 81, i32 1}
!4 = !{ptr @mt76_write_mac_initvals.vals, !5, !"vals", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/init.c", i32 109, i32 36}
!6 = !{ptr @__ksymtab_mt76_write_mac_initvals, !7, !"__ksymtab_mt76_write_mac_initvals", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/init.c", i32 178, i32 1}
!8 = !{ptr @__ksymtab_mt76x2_init_txpower, !9, !"__ksymtab_mt76x2_init_txpower", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/init.c", i32 204, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
