; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_rtw_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_pci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_pci_probe\09\09\09\09"
module asm "\09.long\09__crc_rtw_pci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_pci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_pci_remove\09\09\09\09"
module asm "\09.long\09__crc_rtw_pci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_pci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_pci_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_pci_shutdown\09\09\09\09"
module asm "\09.long\09__crc_rtw_pci_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_pci_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.135, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.133, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.rtw_txpwr_idx = type { %struct.rtw_2g_txpwr_idx, %struct.rtw_5g_txpwr_idx }
%struct.rtw_2g_txpwr_idx = type { [6 x i8], [5 x i8], %struct.rtw_2g_1s_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff }
%struct.rtw_2g_1s_pwr_idx_diff = type { i8 }
%struct.rtw_2g_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_txpwr_idx = type { [14 x i8], %struct.rtw_5g_ht_1s_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ofdm_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff }
%struct.rtw_5g_ht_1s_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ofdm_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_vht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_sec_desc = type { i8, i32, [32 x %struct.rtw_cam_entry], [1 x i32] }
%struct.rtw_cam_entry = type { i8, i8, [6 x i8], i8, ptr }
%struct.rtw_traffic_stats = type { i64, i64, i64, i64, i32, i32, %struct.ewma_tp, %struct.ewma_tp }
%struct.ewma_tp = type { i32 }
%struct.rtw_regd = type { i32, ptr, i32 }
%struct.rtw_bf_info = type { i8, i8, [1 x i32], i8 }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [4 x i16], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], i8, i8, i8, [4 x %struct.ewma_thermal], i8, i8, [4 x i32], [4 x [2 x [15 x i16]]], [4 x [2 x [2 x i8]]], %struct.rtw_dpk_info, %struct.rtw_cfo_track, [2 x [4 x i8]], i32, i8, [4 x i8], [4 x i8], [4 x i16], [4 x i8], i8, %struct.rtw_pkt_count, %struct.rtw_pkt_count, [4 x %struct.ewma_evm], [12 x %struct.ewma_snr], i32, %struct.rtw_iqk_info, %struct.rtw_gapk_info, i8, i8, i32, i8 }
%struct.ewma_thermal = type { i32 }
%struct.rtw_dpk_info = type { i8, i8, [1 x i32], [2 x i8], [2 x %struct.ewma_thermal], i32, i32, [4 x i8], [4 x i8], [4 x [20 x i32]], [4 x i16], [4 x i8], [4 x i8], i8, i8, i8 }
%struct.rtw_cfo_track = type { i8, i8, [4 x i32], [4 x i32], i32, i32 }
%struct.rtw_pkt_count = type { i16, [84 x i16] }
%struct.ewma_evm = type { i32 }
%struct.ewma_snr = type { i32 }
%struct.rtw_iqk_info = type { i8, %struct.anon.134 }
%struct.anon.134 = type { i32, i32, i32, i32 }
%struct.rtw_gapk_info = type { [5 x [11 x [4 x i32]]], [4 x [11 x i32]], i8, [11 x [4 x i8]], [11 x [4 x i8]], i8, i8 }
%struct.rtw_coex = type { %struct.mutex, %struct.sk_buff_head, %struct.wait_queue_head, i8, i8, i8, i8, i8, i8, %struct.rtw_coex_stat, %struct.rtw_coex_dm, %struct.rtw_coex_rfe, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rtw_tx_report = type { %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, %struct.timer_list }
%struct.anon.135 = type { i8, %struct.spinlock, i32 }
%struct.rtw_lps_conf = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.rtw_path_div = type { i32, i32, i32, i16, i16 }
%struct.rtw_fw_state = type { ptr, ptr, %struct.completion, %struct.rtw_fwcd_desc, i16, i8, i8, i16, i32 }
%struct.rtw_fwcd_desc = type { i32, ptr, ptr }
%struct.rtw_wow_param = type { ptr, [1 x i32], i8, i8, [12 x %struct.rtw_wow_pattern], i8, %struct.rtw_pno_request }
%struct.rtw_wow_pattern = type { i16, i8, i8, [16 x i8] }
%struct.rtw_pno_request = type { i8, i32, ptr, i8, ptr, %struct.cfg80211_sched_scan_plan }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.rtw_pci_tx_ring = type { %struct.rtw_pci_ring, %struct.sk_buff_head, i8 }
%struct.rtw_pci_ring = type { ptr, i32, i8, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.rtw_pci_rx_ring = type { %struct.rtw_pci_ring, [512 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.rtw_pci_rx_buffer_desc = type { i16, i16, i32 }
%struct.rtw_intf_phy_para_table = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.rtw_intf_phy_para = type { i16, i16, i16, i16, i16 }
%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_pci = type { ptr, %struct.spinlock, %struct.spinlock, [4 x i32], i8, i8, [18 x i8], %struct.net_device, %struct.napi_struct, i16, [1 x i32], [8 x %struct.rtw_pci_tx_ring], [2 x %struct.rtw_pci_rx_ring], i16, %struct.atomic_t, i8, [1 x i32], ptr, [52 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rtw_tx_pkt_info = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtw_pci_tx_buffer_desc = type { i16, i16, i32 }
%struct.rtw_rx_pkt_stat = type { i8, i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], [4 x i8], i16, i8, ptr, ptr, ptr }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>

@__param_str_disable_msi = internal constant [22 x i8] c"rtw88_pci.disable_msi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtw_disable_msi = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_msi = internal constant %struct.kernel_param { ptr @__param_str_disable_msi, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_disable_msi } }, section "__param", align 4
@__UNIQUE_ID_disable_msitype421 = internal constant [36 x i8] c"rtw88_pci.parmtype=disable_msi:bool\00", section ".modinfo", align 1
@__param_str_disable_aspm = internal constant [23 x i8] c"rtw88_pci.disable_aspm\00", align 1
@rtw_pci_disable_aspm = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_aspm = internal constant %struct.kernel_param { ptr @__param_str_disable_aspm, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_pci_disable_aspm } }, section "__param", align 4
@__UNIQUE_ID_disable_aspmtype422 = internal constant [37 x i8] c"rtw88_pci.parmtype=disable_aspm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_msi423 = internal constant [66 x i8] c"rtw88_pci.parm=disable_msi:Set Y to disable MSI interrupt support\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_aspm424 = internal constant [62 x i8] c"rtw88_pci.parm=disable_aspm:Set Y to disable PCI ASPM support\00", section ".modinfo", align 1
@rtw_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtw_pci_suspend, ptr @rtw_pci_resume, ptr @rtw_pci_suspend, ptr @rtw_pci_resume, ptr @rtw_pci_suspend, ptr @rtw_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_rtw_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_pm_ops to i32), ptr @__kstrtab_rtw_pm_ops, ptr @__kstrtabns_rtw_pm_ops }, section "___ksymtab+rtw_pm_ops", align 4
@rtw_ops = external dso_local constant %struct.ieee80211_ops, align 4
@rtw_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to allocate hw\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw88/pci.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_pci_probe._entry_ptr = internal global ptr @rtw_pci_probe._entry, section ".printk_index", align 4
@rtw_pci_ops = internal global { %struct.rtw_hci_ops, [60 x i8] } { %struct.rtw_hci_ops { ptr @rtw_pci_tx_write, ptr @rtw_pci_tx_kick_off, ptr @rtw_pci_flush_queues, ptr @rtw_pci_setup, ptr @rtw_pci_start, ptr @rtw_pci_stop, ptr @rtw_pci_deep_ps, ptr @rtw_pci_link_ps, ptr @rtw_pci_interface_cfg, ptr @rtw_pci_write_data_rsvd_page, ptr @rtw_pci_write_data_h2c, ptr @rtw_pci_read8, ptr @rtw_pci_read16, ptr @rtw_pci_read32, ptr @rtw_pci_write8, ptr @rtw_pci_write16, ptr @rtw_pci_write32 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rtw88 pci probe: vendor=0x%4.04X device=0x%4.04X rev=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1754, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim pci device\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_pci_probe._entry_ptr.8 = internal global ptr @rtw_pci_probe._entry.6, section ".printk_index", align 4
@rtw_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to setup pci resources\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw_pci_probe._entry_ptr.11 = internal global ptr @rtw_pci_probe._entry.9, section ".printk_index", align 4
@rtw_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to setup chip information\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw_pci_probe._entry_ptr.14 = internal global ptr @rtw_pci_probe._entry.12, section ".printk_index", align 4
@rtw_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1780, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register hw\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw_pci_probe._entry_ptr.17 = internal global ptr @rtw_pci_probe._entry.15, section ".printk_index", align 4
@__kstrtab_rtw_pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_pci_probe to i32), ptr @__kstrtab_rtw_pci_probe, ptr @__kstrtabns_rtw_pci_probe }, section "___ksymtab+rtw_pci_probe", align 4
@__kstrtab_rtw_pci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_pci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_pci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_pci_remove to i32), ptr @__kstrtab_rtw_pci_remove, ptr @__kstrtabns_rtw_pci_remove }, section "___ksymtab+rtw_pci_remove", align 4
@__kstrtab_rtw_pci_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_pci_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_pci_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_pci_shutdown to i32), ptr @__kstrtab_rtw_pci_shutdown, ptr @__kstrtabns_rtw_pci_shutdown }, section "___ksymtab+rtw_pci_shutdown", align 4
@__UNIQUE_ID_author432 = internal constant [37 x i8] c"rtw88_pci.author=Realtek Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description433 = internal constant [59 x i8] c"rtw88_pci.description=Realtek 802.11ac wireless PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file434 = internal constant [60 x i8] c"rtw88_pci.file=drivers/net/wireless/realtek/rtw88/rtw88_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license435 = internal constant [31 x i8] c"rtw88_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@rtw_pci_clkreq_pad_low._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read CLKREQ_L1, ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_pci_clkreq_pad_low\00", [41 x i8] zeroinitializer }, align 32
@rtw_pci_clkreq_pad_low._entry_ptr = internal global ptr @rtw_pci_clkreq_pad_low._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to read DBI register, addr=0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to write to DBI register, addr=0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@rtw_hw_queue_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ac_to_hwq = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rtw_pci_tx_queue_idx_addr = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 940, i32 936, i32 932, i32 928, i32 0, i32 944, i32 952, i32 4908], [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__pci_flush_queue._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 766, ptr @.str.26, ptr @.str.4 }, align 1
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timed out to flush pci tx ring[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__pci_flush_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__pci_flush_queue._entry_ptr = internal global ptr @__pci_flush_queue._entry, section ".printk_index", align 4
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"TX path not empty, cannot enter deep power save state\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw_pci_aspm_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read ASPM, ret=%d\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_pci_aspm_set\00", [47 x i8] zeroinitializer }, align 32
@rtw_pci_aspm_set._entry_ptr = internal global ptr @rtw_pci_aspm_set._entry, section ".printk_index", align 4
@rtw_pci_write_data_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 912, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write rsvd page data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw_pci_write_data_rsvd_page\00", [35 x i8] zeroinitializer }, align 32
@rtw_pci_write_data_rsvd_page._entry_ptr = internal global ptr @rtw_pci_write_data_rsvd_page._entry, section ".printk_index", align 4
@rtw_pci_write_data_h2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 936, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to write h2c data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_pci_write_data_h2c\00", [41 x i8] zeroinitializer }, align 32
@rtw_pci_write_data_h2c._entry_ptr = internal global ptr @rtw_pci_write_data_h2c._entry, section ".printk_index", align 4
@rtw_pci_claim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1555, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable pci device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_pci_claim\00", [18 x i8] zeroinitializer }, align 32
@rtw_pci_claim._entry_ptr = internal global ptr @rtw_pci_claim._entry, section ".printk_index", align 4
@rtw_pci_setup_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1583, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request pci io region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_pci_setup_resource\00", [41 x i8] zeroinitializer }, align 32
@rtw_pci_setup_resource._entry_ptr = internal global ptr @rtw_pci_setup_resource._entry, section ".printk_index", align 4
@rtw_pci_setup_resource._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate pci resources\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw_pci_setup_resource._entry_ptr.42 = internal global ptr @rtw_pci_setup_resource._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtw88_pci\00", [22 x i8] zeroinitializer }, align 32
@rtw_pci_io_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request pci regions\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_pci_io_mapping\00", [45 x i8] zeroinitializer }, align 32
@rtw_pci_io_mapping._entry_ptr = internal global ptr @rtw_pci_io_mapping._entry, section ".printk_index", align 4
@rtw_pci_io_mapping._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 1246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map pci memory\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_pci_io_mapping._entry_ptr.48 = internal global ptr @rtw_pci_io_mapping._entry.46, section ".printk_index", align 4
@rtw_pci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rtwpci->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@rtw_pci_init.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rtwpci->hwirq_lock\00", [44 x i8] zeroinitializer }, align 32
@rtw_pci_init_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"len %d exceeds maximum TX entries\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_pci_init_tx_ring\00", [43 x i8] zeroinitializer }, align 32
@rtw_pci_init_tx_ring._entry_ptr = internal global ptr @rtw_pci_init_tx_ring._entry, section ".printk_index", align 4
@rtw_pci_init_tx_ring._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate tx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_pci_init_tx_ring._entry_ptr.56 = internal global ptr @rtw_pci_init_tx_ring._entry.54, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rtw_pci_init_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate rx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_pci_init_rx_ring\00", [43 x i8] zeroinitializer }, align 32
@rtw_pci_init_rx_ring._entry_ptr = internal global ptr @rtw_pci_init_rx_ring._entry, section ".printk_index", align 4
@rtw_pci_init_rx_ring._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to init rx buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_pci_init_rx_ring._entry_ptr.62 = internal global ptr @rtw_pci_init_rx_ring._entry.60, section ".printk_index", align 4
@rtw_pci_rx_napi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx routine starvation\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw_pci_dma_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 732, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pci bus timeout, check dma status\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_pci_dma_check\00", [46 x i8] zeroinitializer }, align 32
@rtw_pci_dma_check._entry_ptr = internal global ptr @rtw_pci_dma_check._entry, section ".printk_index", align 4
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to write to MDIO register, addr=0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@rtw_pci_link_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1455, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read PCI cap, ret=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_pci_link_cfg\00", [47 x i8] zeroinitializer }, align 32
@rtw_pci_link_cfg._entry_ptr = internal global ptr @rtw_pci_link_cfg._entry, section ".printk_index", align 4
@rtw_pci_clkreq_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.69, ptr @.str.2, i32 1348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_pci_clkreq_set\00", [45 x i8] zeroinitializer }, align 32
@rtw_pci_clkreq_set._entry_ptr = internal global ptr @rtw_pci_clkreq_set._entry, section ".printk_index", align 4
@rtw_pci_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc PCI irq vectors\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_pci_request_irq\00", [44 x i8] zeroinitializer }, align 32
@rtw_pci_request_irq._entry_ptr = internal global ptr @rtw_pci_request_irq._entry, section ".printk_index", align 4
@rtw_pci_request_irq._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1648, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_pci_request_irq._entry_ptr.74 = internal global ptr @rtw_pci_request_irq._entry.72, section ".printk_index", align 4
@rtw_pci_tx_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 998, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"failed to dequeue %d skb TX queue %d, BD=0x%08x, rp %d -> %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_pci_tx_isr\00", [17 x i8] zeroinitializer }, align 32
@rtw_pci_tx_isr._entry_ptr = internal global ptr @rtw_pci_tx_isr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 7]
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"rtw_disable_msi\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 16, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"rtw_pci_disable_aspm\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 17, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"rtw_pm_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1546, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1730, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"rtw_pci_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1608, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1748, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1754, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1760, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1768, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1780, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1367, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1308, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1285, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [10 x i8] c"ac_to_hwq\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 672, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 326, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"rtw_pci_tx_queue_idx_addr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 23, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 766, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 638, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1389, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 912, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 936, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1555, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1583, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1589, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1236, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1238, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1246, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 393, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 394, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 193, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 199, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1984, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 272, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 315, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1109, i32 7 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 732, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1335, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1455, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1348, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1639, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1648, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw88/pci.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 997, i32 4 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author432, ptr @__UNIQUE_ID_description433, ptr @__UNIQUE_ID_disable_aspm424, ptr @__UNIQUE_ID_disable_aspmtype422, ptr @__UNIQUE_ID_disable_msi423, ptr @__UNIQUE_ID_disable_msitype421, ptr @__UNIQUE_ID_file434, ptr @__UNIQUE_ID_license435, ptr @__ksymtab_rtw_pci_probe, ptr @__ksymtab_rtw_pci_remove, ptr @__ksymtab_rtw_pci_shutdown, ptr @__ksymtab_rtw_pm_ops, ptr @__param_disable_aspm, ptr @__param_disable_msi, ptr @__pci_flush_queue._entry, ptr @__pci_flush_queue._entry_ptr, ptr @rtw_pci_aspm_set._entry, ptr @rtw_pci_aspm_set._entry_ptr, ptr @rtw_pci_claim._entry, ptr @rtw_pci_claim._entry_ptr, ptr @rtw_pci_clkreq_pad_low._entry, ptr @rtw_pci_clkreq_pad_low._entry_ptr, ptr @rtw_pci_clkreq_set._entry, ptr @rtw_pci_clkreq_set._entry_ptr, ptr @rtw_pci_dma_check._entry, ptr @rtw_pci_dma_check._entry_ptr, ptr @rtw_pci_init_rx_ring._entry, ptr @rtw_pci_init_rx_ring._entry.60, ptr @rtw_pci_init_rx_ring._entry_ptr, ptr @rtw_pci_init_rx_ring._entry_ptr.62, ptr @rtw_pci_init_tx_ring._entry, ptr @rtw_pci_init_tx_ring._entry.54, ptr @rtw_pci_init_tx_ring._entry_ptr, ptr @rtw_pci_init_tx_ring._entry_ptr.56, ptr @rtw_pci_io_mapping._entry, ptr @rtw_pci_io_mapping._entry.46, ptr @rtw_pci_io_mapping._entry_ptr, ptr @rtw_pci_io_mapping._entry_ptr.48, ptr @rtw_pci_link_cfg._entry, ptr @rtw_pci_link_cfg._entry_ptr, ptr @rtw_pci_probe._entry, ptr @rtw_pci_probe._entry.12, ptr @rtw_pci_probe._entry.15, ptr @rtw_pci_probe._entry.6, ptr @rtw_pci_probe._entry.9, ptr @rtw_pci_probe._entry_ptr, ptr @rtw_pci_probe._entry_ptr.11, ptr @rtw_pci_probe._entry_ptr.14, ptr @rtw_pci_probe._entry_ptr.17, ptr @rtw_pci_probe._entry_ptr.8, ptr @rtw_pci_request_irq._entry, ptr @rtw_pci_request_irq._entry.72, ptr @rtw_pci_request_irq._entry_ptr, ptr @rtw_pci_request_irq._entry_ptr.74, ptr @rtw_pci_setup_resource._entry, ptr @rtw_pci_setup_resource._entry.40, ptr @rtw_pci_setup_resource._entry_ptr, ptr @rtw_pci_setup_resource._entry_ptr.42, ptr @rtw_pci_tx_isr._entry, ptr @rtw_pci_tx_isr._entry_ptr, ptr @rtw_pci_write_data_h2c._entry, ptr @rtw_pci_write_data_h2c._entry_ptr, ptr @rtw_pci_write_data_rsvd_page._entry, ptr @rtw_pci_write_data_rsvd_page._entry_ptr, ptr @rtw_disable_msi, ptr @rtw_pci_disable_aspm, ptr @rtw_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtw_pci_ops, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ac_to_hwq, ptr @.str.22, ptr @.str.23, ptr @rtw_pci_tx_queue_idx_addr, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @rtw_pci_init.__key, ptr @.str.49, ptr @rtw_pci_init.__key.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @skb_queue_head_init.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_disable_msi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_disable_aspm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_clkreq_pad_low._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_to_hwq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_tx_queue_idx_addr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_aspm_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_write_data_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_write_data_h2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_claim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_setup_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_setup_resource._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_io_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_io_mapping._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_init.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_init_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_init_tx_ring._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_init_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_init_rx_ring._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_dma_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_link_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_clkreq_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_request_irq._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pci_tx_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1, align 4
  %id = getelementptr inbounds %struct.rtw_chip_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 8, i32 8
  %8 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rfe_option, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp5 = icmp eq i8 %9, 6
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_clkreq_pad_low(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1, align 4
  %id = getelementptr inbounds %struct.rtw_chip_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 8, i32 8
  %8 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rfe_option, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp5 = icmp eq i8 %9, 6
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_clkreq_pad_low(ptr noundef %3, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %link_ctrl.i.i = alloca i16, align 2
  %dma.i75.i.i.i = alloca i32, align 4
  %dma.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %0 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %1 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %1, 0
  br i1 %tobool.not.i.i, label %entry.pci_physfn.exit.i_crit_edge, label %if.then.i.i

entry.pci_physfn.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %entry.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %4, %if.then.i.i ], [ %pdev, %entry.pci_physfn.exit.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %8, null
  br i1 %tobool.not.i5.i, label %pci_physfn.exit.i.pci_upstream_bridge.exit_crit_edge, label %if.end.i

pci_physfn.exit.i.pci_upstream_bridge.exit_crit_edge: ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_upstream_bridge.exit

if.end.i:                                         ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %self.i, align 4
  br label %pci_upstream_bridge.exit

pci_upstream_bridge.exit:                         ; preds = %if.end.i, %pci_physfn.exit.i.pci_upstream_bridge.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ null, %pci_physfn.exit.i.pci_upstream_bridge.exit_crit_edge ]
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 27424, ptr noundef nonnull @rtw_ops, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %pci_upstream_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %pci_upstream_bridge.exit
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %12, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev4 = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %dev4, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  %17 = inttoptr i32 %16 to ptr
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 0, i32 4
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %chip, align 4
  %hci = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %hci to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rtw_pci_ops, ptr %hci, align 8
  %type = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %link_usage = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 4, i32 0, i32 5, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_usage, i32 noundef 4) #6
  %21 = ptrtoint ptr %link_usage to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %link_usage, align 4
  %call7 = tail call i32 @rtw_core_init(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_release_hw_crit_edge

if.end.err_release_hw_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release_hw

if.end10:                                         ; preds = %if.end
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %22 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vendor, align 8
  %conv = zext i16 %23 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %conv11 = zext i16 %25 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %26 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %revision, align 4
  %conv12 = zext i8 %27 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv12) #6
  %call.i108 = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.36) #9
  %30 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.7) #9
  br label %err_deinit_core

if.end20:                                         ; preds = %if.end10
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %12, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %driver_data.i.i.i, align 4
  %35 = load ptr, ptr %12, align 8
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56, i32 1
  %38 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev3, ptr %parent.i.i.i, align 8
  %priv.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 0, i32 45
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %pdev, ptr %priv.i, align 128
  %call.i.i110 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool.not.i.i111 = icmp eq i32 %call.i.i110, 0
  br i1 %tobool.not.i.i111, label %if.end.i.i, label %if.end20.do.end.i112_crit_edge

if.end20.do.end.i112_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i112

if.end.i.i:                                       ; preds = %if.end20
  %end.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %40 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i, label %if.end.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end.i.i.cond.end.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = add i32 %41, 1
  %add.i.i = sub i32 %sub.i.i, %43
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ 0, %if.end.i.i.cond.end.i.i_crit_edge ]
  %call8.i.i = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef %cond.i.i) #6
  %mmap.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %44 = ptrtoint ptr %mmap.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i, ptr %mmap.i.i, align 8
  %tobool10.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end.i113

if.then11.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %do.end.i112

do.end.i112:                                      ; preds = %if.then11.i.i, %if.end20.do.end.i112_crit_edge
  %.str.47.sink.i.i = phi ptr [ @.str.47, %if.then11.i.i ], [ @.str.44, %if.end20.do.end.i112_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -12, %if.then11.i.i ], [ %call.i.i110, %if.end20.do.end.i112_crit_edge ]
  %45 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.47.sink.i.i) #9
  %47 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.38) #9
  br label %do.end26

if.end.i113:                                      ; preds = %cond.end.i.i
  %irq_mask.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 19, i32 1, i32 1
  %49 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 17661, ptr %irq_mask.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 19, i32 1, i32 2
  %50 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 512, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 19, i32 1, i32 4
  %51 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65536, ptr %arrayidx4.i.i, align 4
  %irq_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @rtw_pci_init.__key, i16 noundef signext 3) #6
  %hwirq_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %hwirq_lock.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @rtw_pci_init.__key.50, i16 noundef signext 3) #6
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %tx_buf_desc_sz.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %tx_buf_desc_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_buf_desc_sz.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %55 to i32
  %tx_rings.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i113
  %i.0140.i.i.i = phi i32 [ 0, %if.end.i113 ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0140.i.i.i)
  %56 = icmp eq i32 %i.0140.i.i.i, 4
  %switch.select.i.i.i.i = select i1 %56, i32 1, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0140.i.i.i)
  %57 = icmp eq i32 %i.0140.i.i.i, 1
  %switch.select3.i.i.i.i = select i1 %57, i32 256, i32 %switch.select.i.i.i.i
  %58 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i.i.i) #6
  %60 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %dma.i.i.i.i, align 4, !annotation !200
  %mul.i.i.i.i = mul nuw nsw i32 %switch.select3.i.i.i.i, %conv.i.i.i.i
  %call.i.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %59, i32 noundef %mul.i.i.i.i, ptr noundef nonnull %dma.i.i.i.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %out.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.0140.i.i.i
  %queue.i.i.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.0140.i.i.i, i32 1
  %lock.i.i.i.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.0140.i.i.i, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %61 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %queue.i.i.i.i, ptr %queue.i.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.0140.i.i.i, i32 1, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %queue.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %qlen.i.i.i.i.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.0140.i.i.i, i32 1, i32 1
  %63 = ptrtoint ptr %qlen.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %qlen.i.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %65 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma.i.i.i.i, align 4
  %dma12.i.i.i.i = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %dma12.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %dma12.i.i.i.i, align 4
  %len14.i.i.i.i = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %len14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %switch.select3.i.i.i.i, ptr %len14.i.i.i.i, align 4
  %desc_size16.i.i.i.i = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx.i.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %desc_size16.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %55, ptr %desc_size16.i.i.i.i, align 4
  %wp.i.i.i.i = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %wp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %wp.i.i.i.i, align 4
  %rp.i.i.i.i = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx.i.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %rp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %rp.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i) #6
  %inc.i.i.i = add nuw nsw i32 %i.0140.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %rx_buf_desc_sz.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %53, i32 0, i32 7
  %72 = ptrtoint ptr %rx_buf_desc_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rx_buf_desc_sz.i.i.i, align 1
  %rx_rings.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 4
  %conv.i77.i.i.i = zext i8 %73 to i32
  %mul.i78.i.i.i = shl nuw nsw i32 %conv.i77.i.i.i, 9
  %74 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i75.i.i.i) #6
  %76 = ptrtoint ptr %dma.i75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %dma.i75.i.i.i, align 4, !annotation !200
  %call.i.i79.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %75, i32 noundef %mul.i78.i.i.i, ptr noundef nonnull %dma.i75.i.i.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i80.i.i.i = icmp eq ptr %call.i.i79.i.i.i, null
  br i1 %tobool.not.i80.i.i.i, label %for.end.i.i.i.out.thread.i.i.i_crit_edge, label %if.end.i.i.i.i

for.end.i.i.i.out.thread.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i.i
  %77 = ptrtoint ptr %rx_rings.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i.i79.i.i.i, ptr %rx_rings.i.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.i.i.i
  %i.014.i.i.i.i = phi i32 [ 0, %if.end.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 11478, i32 noundef 2592) #6
  %tobool6.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool6.not.i.i.i.i, label %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

for.body.i.i.i.i.err_out.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i.i, align 4
  %80 = call ptr @memset(ptr %79, i32 0, i32 11478)
  %arrayidx.i.i.i.i = getelementptr [2 x %struct.rtw_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 0, i32 1, i32 %i.014.i.i.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i.i.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %82 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev4, align 4
  %84 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i1.i.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %84) #6
  br i1 %call.i.i1.i.i.i.i, label %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge, label %dma_map_single_attrs.exit.i.i.i.i.i

if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge
  %j.0141.lcssa169.i.i.i = phi i32 [ 1, %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %.lcssa165.i.i.i = phi ptr [ %117, %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %75, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %call.i.i79.lcssa158.i.i.i = phi ptr [ %call.i.i79.1.i.i.i, %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %call.i.i79.i.i.i, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi ptr [ %125, %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %83, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %i.014.i.lcssa150.i.i.i = phi i32 [ %i.014.i.1.i.i.i, %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %i.014.i.i.i.i, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %call.i.i.i.lcssa146.i.i.i = phi ptr [ %call.i.i.i.1.i.i.i, %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %call.i.i.i.i.i.i, %if.end.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %.b1.i.i.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i, !prof !201

land.rhs.i.i.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i.i.i = call ptr @dev_driver_string(ptr noundef %.lcssa.i.i.i) #6
  %init_name.i.i.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %.lcssa.i.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %init_name.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %.lcssa.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i.i.i

dev_name.exit.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %88, %if.end.i.i.i.i.i.i.i ], [ %86, %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i.i.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i.i.i.i.i

dma_map_single_attrs.exit.thread.i.i.i.i.i:       ; preds = %dev_name.exit.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i.i.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %.lcssa.i.i.i, i32 noundef -1) #6
  br label %if.then12.i.i.i.i

dma_map_single_attrs.exit.i.i.i.i.i:              ; preds = %if.end.i.i.i.i.i
  call void @debug_dma_map_single(ptr noundef %83, ptr noundef %84, i32 noundef 11478) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %89 = load ptr, ptr @mem_map, align 4
  %90 = ptrtoint ptr %84 to i32
  %sub.i.i.i.i.i.i = add i32 %90, 1073741824
  %shr.i.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i.i, 12
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.page, ptr %89, i32 %shr.i.i.i.i.i.i
  %and.i.i.i.i.i.i = and i32 %90, 4095
  %call41.i.i.i.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %83, ptr noundef %add.ptr.i.i.i.i.i.i, i32 noundef %and.i.i.i.i.i.i, i32 noundef 11478, i32 noundef 2, i32 noundef 0) #6
  call void @debug_dma_mapping_error(ptr noundef %83, i32 noundef %call41.i.i.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %call41.i.i.i.i.i.i, -1
  br i1 %cmp.i.i.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge, label %for.inc.i.i.i.i

dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge, %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i.i.i
  %j.0141174.i.i.i = phi i32 [ %j.0141.lcssa169.i.i.i, %dma_map_single_attrs.exit.thread.i.i.i.i.i ], [ 1, %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge ], [ 0, %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge ]
  %91 = phi ptr [ %.lcssa165.i.i.i, %dma_map_single_attrs.exit.thread.i.i.i.i.i ], [ %117, %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge ], [ %75, %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge ]
  %call.i.i79162.i.i.i = phi ptr [ %call.i.i79.lcssa158.i.i.i, %dma_map_single_attrs.exit.thread.i.i.i.i.i ], [ %call.i.i79.1.i.i.i, %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge ], [ %call.i.i79.i.i.i, %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge ]
  %i.014.i154.i.i.i = phi i32 [ %i.014.i.lcssa150.i.i.i, %dma_map_single_attrs.exit.thread.i.i.i.i.i ], [ %i.014.i.1.i.i.i, %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge ], [ %i.014.i.i.i.i, %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge ]
  %call.i.i.i149.i.i.i = phi ptr [ %call.i.i.i.lcssa146.i.i.i, %dma_map_single_attrs.exit.thread.i.i.i.i.i ], [ %call.i.i.i.1.i.i.i, %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge ], [ %call.i.i.i.i.i.i, %dma_map_single_attrs.exit.i.i.i.i.i.if.then12.i.i.i.i_crit_edge ]
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i149.i.i.i, i32 noundef 1) #6
  br label %err_out.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %dma_map_single_attrs.exit.i.i.i.i.i
  %cb.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %cb.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call41.i.i.i.i.i.i, ptr %cb.i.i.i.i.i, align 8
  %93 = ptrtoint ptr %rx_rings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_rings.i.i.i, align 4
  %mul.i.i.i.i.i = mul nuw nsw i32 %i.014.i.i.i.i, %conv.i77.i.i.i
  %add.ptr7.i.i.i.i.i = getelementptr i8, ptr %94, i32 %mul.i.i.i.i.i
  %95 = ptrtoint ptr %add.ptr7.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 -3014034050617704448, ptr %add.ptr7.i.i.i.i.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %call41.i.i.i.i.i.i) #6
  %dma8.i.i.i.i.i = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, ptr %add.ptr7.i.i.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %dma8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %dma8.i.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %i.014.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 512
  br i1 %exitcond.not.i.i.i.i, label %for.inc17.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

err_out.i.i.i.i:                                  ; preds = %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge, %if.then12.i.i.i.i, %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge
  %j.0141173.i.i.i = phi i32 [ %j.0141174.i.i.i, %if.then12.i.i.i.i ], [ 1, %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge ]
  %98 = phi ptr [ %91, %if.then12.i.i.i.i ], [ %117, %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge ], [ %75, %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge ]
  %call.i.i79161.i.i.i = phi ptr [ %call.i.i79162.i.i.i, %if.then12.i.i.i.i ], [ %call.i.i79.1.i.i.i, %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge ], [ %call.i.i79.i.i.i, %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge ]
  %i.014.i153.i.i.i = phi i32 [ %i.014.i154.i.i.i, %if.then12.i.i.i.i ], [ %i.014.i.1.i.i.i, %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge ], [ %i.014.i.i.i.i, %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge ]
  %ret.0.i.i.i.i = phi i32 [ -16, %if.then12.i.i.i.i ], [ -12, %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge ], [ -12, %for.body.i.i.i.i.err_out.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014.i153.i.i.i)
  %cmp2315.not.i.i.i.i = icmp eq i32 %i.014.i153.i.i.i, 0
  br i1 %cmp2315.not.i.i.i.i, label %err_out.i.i.i.i.for.end36.i.i.i.i_crit_edge, label %err_out.i.i.i.i.for.body25.i.i.i.i_crit_edge

err_out.i.i.i.i.for.body25.i.i.i.i_crit_edge:     ; preds = %err_out.i.i.i.i
  br label %for.body25.i.i.i.i

err_out.i.i.i.i.for.end36.i.i.i.i_crit_edge:      ; preds = %err_out.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end36.i.i.i.i

for.body25.i.i.i.i:                               ; preds = %for.inc34.i.i.i.i.for.body25.i.i.i.i_crit_edge, %err_out.i.i.i.i.for.body25.i.i.i.i_crit_edge
  %i.116.i.i.i.i = phi i32 [ %inc35.i.i.i.i, %for.inc34.i.i.i.i.for.body25.i.i.i.i_crit_edge ], [ 0, %err_out.i.i.i.i.for.body25.i.i.i.i_crit_edge ]
  %arrayidx27.i.i.i.i = getelementptr [2 x %struct.rtw_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 %j.0141173.i.i.i, i32 1, i32 %i.116.i.i.i.i
  %99 = ptrtoint ptr %arrayidx27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx27.i.i.i.i, align 4
  %tobool28.not.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool28.not.i.i.i.i, label %for.body25.i.i.i.i.for.inc34.i.i.i.i_crit_edge, label %if.end30.i.i.i.i

for.body25.i.i.i.i.for.inc34.i.i.i.i_crit_edge:   ; preds = %for.body25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i.i.i.i

if.end30.i.i.i.i:                                 ; preds = %for.body25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cb.i.i.i.i, align 8
  %103 = ptrtoint ptr %dma.i75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %dma.i75.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %98, i32 noundef %102, i32 noundef 11478, i32 noundef 2, i32 noundef 0) #6
  call void @__dev_kfree_skb_any(ptr noundef nonnull %100, i32 noundef 1) #6
  %104 = ptrtoint ptr %arrayidx27.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %arrayidx27.i.i.i.i, align 4
  br label %for.inc34.i.i.i.i

for.inc34.i.i.i.i:                                ; preds = %if.end30.i.i.i.i, %for.body25.i.i.i.i.for.inc34.i.i.i.i_crit_edge
  %inc35.i.i.i.i = add nuw nsw i32 %i.116.i.i.i.i, 1
  %exitcond28.not.i.i.i.i = icmp eq i32 %inc35.i.i.i.i, %i.014.i153.i.i.i
  br i1 %exitcond28.not.i.i.i.i, label %for.inc34.i.i.i.i.for.end36.i.i.i.i_crit_edge, label %for.inc34.i.i.i.i.for.body25.i.i.i.i_crit_edge

for.inc34.i.i.i.i.for.body25.i.i.i.i_crit_edge:   ; preds = %for.inc34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i.i.i.i

for.inc34.i.i.i.i.for.end36.i.i.i.i_crit_edge:    ; preds = %for.inc34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end36.i.i.i.i

for.end36.i.i.i.i:                                ; preds = %for.inc34.i.i.i.i.for.end36.i.i.i.i_crit_edge, %err_out.i.i.i.i.for.end36.i.i.i.i_crit_edge
  %105 = ptrtoint ptr %dma.i75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma.i75.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %98, i32 noundef %mul.i78.i.i.i, ptr noundef nonnull %call.i.i79161.i.i.i, i32 noundef %106, i32 noundef 0) #6
  br label %out.thread.i.i.i

out.thread.i.i.i:                                 ; preds = %for.inc17.i.i.i.out.thread.i.i.i_crit_edge, %for.end36.i.i.i.i, %for.end.i.i.i.out.thread.i.i.i_crit_edge
  %.str.58.sink.i.i.i = phi ptr [ @.str.61, %for.end36.i.i.i.i ], [ @.str.58, %for.inc17.i.i.i.out.thread.i.i.i_crit_edge ], [ @.str.58, %for.end.i.i.i.out.thread.i.i.i_crit_edge ]
  %j.0141172.i.i.i = phi i32 [ %j.0141173.i.i.i, %for.end36.i.i.i.i ], [ 1, %for.inc17.i.i.i.out.thread.i.i.i_crit_edge ], [ 0, %for.end.i.i.i.out.thread.i.i.i_crit_edge ]
  %retval.0.i83.ph.i.i.i = phi i32 [ %ret.0.i.i.i.i, %for.end36.i.i.i.i ], [ -12, %for.inc17.i.i.i.out.thread.i.i.i_crit_edge ], [ -12, %for.end.i.i.i.out.thread.i.i.i_crit_edge ]
  %107 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull %.str.58.sink.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i75.i.i.i) #6
  br label %for.body23.lr.ph.i.i.i

for.inc17.i.i.i:                                  ; preds = %for.inc.i.i.i.i
  %109 = ptrtoint ptr %dma.i75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma.i75.i.i.i, align 4
  %dma15.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 8
  %111 = ptrtoint ptr %dma15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %dma15.i.i.i.i, align 4
  %len17.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 2
  %112 = ptrtoint ptr %len17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 512, ptr %len17.i.i.i.i, align 4
  %desc_size19.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 12
  %113 = ptrtoint ptr %desc_size19.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %73, ptr %desc_size19.i.i.i.i, align 4
  %wp.i81.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 6
  %114 = ptrtoint ptr %wp.i81.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %wp.i81.i.i.i, align 4
  %rp.i82.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 10
  %115 = ptrtoint ptr %rp.i82.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %rp.i82.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i75.i.i.i) #6
  %arrayidx11.1.i.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 25
  %116 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i75.i.i.i) #6
  %118 = ptrtoint ptr %dma.i75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %dma.i75.i.i.i, align 4, !annotation !200
  %call.i.i79.1.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %117, i32 noundef %mul.i78.i.i.i, ptr noundef nonnull %dma.i75.i.i.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i80.1.i.i.i = icmp eq ptr %call.i.i79.1.i.i.i, null
  br i1 %tobool.not.i80.1.i.i.i, label %for.inc17.i.i.i.out.thread.i.i.i_crit_edge, label %if.end.i.1.i.i.i

for.inc17.i.i.i.out.thread.i.i.i_crit_edge:       ; preds = %for.inc17.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread.i.i.i

if.end.i.1.i.i.i:                                 ; preds = %for.inc17.i.i.i
  %119 = ptrtoint ptr %arrayidx11.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i.i79.1.i.i.i, ptr %arrayidx11.1.i.i.i, align 4
  br label %for.body.i.1.i.i.i

for.body.i.1.i.i.i:                               ; preds = %for.inc.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge, %if.end.i.1.i.i.i
  %i.014.i.1.i.i.i = phi i32 [ 0, %if.end.i.1.i.i.i ], [ %inc.i.1.i.i.i, %for.inc.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge ]
  %call.i.i.i.1.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 11478, i32 noundef 2592) #6
  %tobool6.not.i.1.i.i.i = icmp eq ptr %call.i.i.i.1.i.i.i, null
  br i1 %tobool6.not.i.1.i.i.i, label %for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge, label %if.end.i.i.1.i.i.i

for.body.i.1.i.i.i.err_out.i.i.i.i_crit_edge:     ; preds = %for.body.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i.i.i.i

if.end.i.i.1.i.i.i:                               ; preds = %for.body.i.1.i.i.i
  %data.i.1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.1.i.i.i, i32 0, i32 19
  %120 = ptrtoint ptr %data.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i.1.i.i.i, align 4
  %122 = call ptr @memset(ptr %121, i32 0, i32 11478)
  %arrayidx.i.1.i.i.i = getelementptr [2 x %struct.rtw_pci_rx_ring], ptr %rx_rings.i.i.i, i32 0, i32 1, i32 1, i32 %i.014.i.1.i.i.i
  %123 = ptrtoint ptr %arrayidx.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i.i.i.1.i.i.i, ptr %arrayidx.i.1.i.i.i, align 4
  %124 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev4, align 4
  %126 = load ptr, ptr %data.i.1.i.i.i, align 4
  %call.i.i1.i.1.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %126) #6
  br i1 %call.i.i1.i.1.i.i.i, label %if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge, label %dma_map_single_attrs.exit.i.i.1.i.i.i

if.end.i.i.1.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i.i.i.i

dma_map_single_attrs.exit.i.i.1.i.i.i:            ; preds = %if.end.i.i.1.i.i.i
  call void @debug_dma_map_single(ptr noundef %125, ptr noundef %126, i32 noundef 11478) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %127 = load ptr, ptr @mem_map, align 4
  %128 = ptrtoint ptr %126 to i32
  %sub.i.i.i.1.i.i.i = add i32 %128, 1073741824
  %shr.i.i.i.1.i.i.i = lshr i32 %sub.i.i.i.1.i.i.i, 12
  %add.ptr.i.i.i.1.i.i.i = getelementptr %struct.page, ptr %127, i32 %shr.i.i.i.1.i.i.i
  %and.i.i.i.1.i.i.i = and i32 %128, 4095
  %call41.i.i.i.1.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %125, ptr noundef %add.ptr.i.i.i.1.i.i.i, i32 noundef %and.i.i.i.1.i.i.i, i32 noundef 11478, i32 noundef 2, i32 noundef 0) #6
  call void @debug_dma_mapping_error(ptr noundef %125, i32 noundef %call41.i.i.i.1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.1.i.i.i)
  %cmp.i.i.i.1.i.i.i = icmp eq i32 %call41.i.i.i.1.i.i.i, -1
  br i1 %cmp.i.i.i.1.i.i.i, label %dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge, label %for.inc.i.1.i.i.i

dma_map_single_attrs.exit.i.i.1.i.i.i.if.then12.i.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i.i.i.i

for.inc.i.1.i.i.i:                                ; preds = %dma_map_single_attrs.exit.i.i.1.i.i.i
  %cb.i.i.1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.1.i.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %cb.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call41.i.i.i.1.i.i.i, ptr %cb.i.i.1.i.i.i, align 8
  %130 = ptrtoint ptr %arrayidx11.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx11.1.i.i.i, align 4
  %mul.i.i.1.i.i.i = mul nuw nsw i32 %i.014.i.1.i.i.i, %conv.i77.i.i.i
  %add.ptr7.i.i.1.i.i.i = getelementptr i8, ptr %131, i32 %mul.i.i.1.i.i.i
  %132 = ptrtoint ptr %add.ptr7.i.i.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 -3014034050617704448, ptr %add.ptr7.i.i.1.i.i.i, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %call41.i.i.i.1.i.i.i) #6
  %dma8.i.i.1.i.i.i = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, ptr %add.ptr7.i.i.1.i.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %dma8.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %dma8.i.i.1.i.i.i, align 4
  %inc.i.1.i.i.i = add nuw nsw i32 %i.014.i.1.i.i.i, 1
  %exitcond.not.i.1.i.i.i = icmp eq i32 %inc.i.1.i.i.i, 512
  br i1 %exitcond.not.i.1.i.i.i, label %if.end28, label %for.inc.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge

for.inc.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge:   ; preds = %for.inc.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.1.i.i.i

out.i.i.i:                                        ; preds = %for.body.i.i.i
  %135 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.55) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0140.i.i.i)
  %cmp21142.not.i.i.i = icmp eq i32 %i.0140.i.i.i, 0
  br i1 %cmp21142.not.i.i.i, label %out.i.i.i.do.end7.i_crit_edge, label %out.i.i.i.for.body23.lr.ph.i.i.i_crit_edge

out.i.i.i.for.body23.lr.ph.i.i.i_crit_edge:       ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.lr.ph.i.i.i

out.i.i.i.do.end7.i_crit_edge:                    ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

for.body23.lr.ph.i.i.i:                           ; preds = %out.i.i.i.for.body23.lr.ph.i.i.i_crit_edge, %out.thread.i.i.i
  %ret.0204.i.i.i = phi i32 [ %retval.0.i83.ph.i.i.i, %out.thread.i.i.i ], [ -12, %out.i.i.i.for.body23.lr.ph.i.i.i_crit_edge ]
  %j.1202.i.i.i = phi i32 [ %j.0141172.i.i.i, %out.thread.i.i.i ], [ 0, %out.i.i.i.for.body23.lr.ph.i.i.i_crit_edge ]
  %i.0139201.i.i.i = phi i32 [ 8, %out.thread.i.i.i ], [ %i.0140.i.i.i, %out.i.i.i.for.body23.lr.ph.i.i.i_crit_edge ]
  br label %for.body23.i.i.i

for.cond29.preheader.i.i.i:                       ; preds = %for.body23.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1202.i.i.i)
  %cmp30144.i.i.i = icmp sgt i32 %j.1202.i.i.i, 0
  br i1 %cmp30144.i.i.i, label %for.body32.lr.ph.i.i.i, label %for.cond29.preheader.i.i.i.do.end7.i_crit_edge

for.cond29.preheader.i.i.i.do.end7.i_crit_edge:   ; preds = %for.cond29.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

for.body32.lr.ph.i.i.i:                           ; preds = %for.cond29.preheader.i.i.i
  %rx_rings33.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 4
  %desc_size.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 12
  %len.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 2
  %dma.i89.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 8
  %cmp30.not.i.i.i = icmp eq i32 %j.1202.i.i.i, 1
  br label %for.body32.i.i.i

for.body23.i.i.i:                                 ; preds = %for.body23.i.i.i.for.body23.i.i.i_crit_edge, %for.body23.lr.ph.i.i.i
  %i.1143.i.i.i = phi i32 [ 0, %for.body23.lr.ph.i.i.i ], [ %inc27.i.i.i, %for.body23.i.i.i.for.body23.i.i.i_crit_edge ]
  %arrayidx25.i.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i.i, i32 0, i32 %i.1143.i.i.i
  call fastcc void @rtw_pci_free_tx_ring(ptr noundef %12, ptr noundef %arrayidx25.i.i.i) #6
  %inc27.i.i.i = add nuw nsw i32 %i.1143.i.i.i, 1
  %exitcond196.not.i.i.i = icmp eq i32 %inc27.i.i.i, %i.0139201.i.i.i
  br i1 %exitcond196.not.i.i.i, label %for.cond29.preheader.i.i.i, label %for.body23.i.i.i.for.body23.i.i.i_crit_edge

for.body23.i.i.i.for.body23.i.i.i_crit_edge:      ; preds = %for.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.i.i.i

for.body32.i.i.i:                                 ; preds = %rtw_pci_free_rx_ring.exit.i.i.i.for.body32.i.i.i_crit_edge, %for.body32.lr.ph.i.i.i
  %137 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev4, align 4
  %139 = ptrtoint ptr %rx_rings33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rx_rings33.i.i.i, align 4
  %141 = ptrtoint ptr %desc_size.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %desc_size.i.i.i.i, align 4
  %143 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp11.not.i.i.i.i.i = icmp eq i32 %144, 0
  br i1 %cmp11.not.i.i.i.i.i, label %for.body32.i.i.i.rtw_pci_free_rx_ring.exit.i.i.i_crit_edge, label %for.body32.i.i.i.for.body.i.i.i.i.i_crit_edge

for.body32.i.i.i.for.body.i.i.i.i.i_crit_edge:    ; preds = %for.body32.i.i.i
  br label %for.body.i.i.i.i.i

for.body32.i.i.i.rtw_pci_free_rx_ring.exit.i.i.i_crit_edge: ; preds = %for.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_rx_ring.exit.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body32.i.i.i.for.body.i.i.i.i.i_crit_edge
  %i.012.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %for.body32.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.rtw_pci_rx_ring, ptr %rx_rings33.i.i.i, i32 0, i32 1, i32 %i.012.i.i.i.i.i
  %145 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, label %if.end.i.i86.i.i.i

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i.i

if.end.i.i86.i.i.i:                               ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i.i85.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %cb.i.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cb.i.i85.i.i.i, align 8
  call void @dma_unmap_page_attrs(ptr noundef %138, i32 noundef %148, i32 noundef 11478, i32 noundef 2, i32 noundef 0) #6
  call void @consume_skb(ptr noundef nonnull %146) #6
  %149 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx.i.i.i.i.i, align 4
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %if.end.i.i86.i.i.i, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %inc.i.i.i.i.i = add nuw i32 %i.012.i.i.i.i.i, 1
  %150 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ult i32 %inc.i.i.i.i.i, %151
  br i1 %cmp.i.i.i.i.i, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.rtw_pci_free_rx_ring.exit.i.i.i_crit_edge

for.inc.i.i.i.i.i.rtw_pci_free_rx_ring.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_rx_ring.exit.i.i.i

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i.i

rtw_pci_free_rx_ring.exit.i.i.i:                  ; preds = %for.inc.i.i.i.i.i.rtw_pci_free_rx_ring.exit.i.i.i_crit_edge, %for.body32.i.i.i.rtw_pci_free_rx_ring.exit.i.i.i_crit_edge
  %conv.i87.i.i.i = zext i8 %142 to i32
  %mul.i88.i.i.i = mul i32 %144, %conv.i87.i.i.i
  %152 = ptrtoint ptr %dma.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma.i89.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %138, i32 noundef %mul.i88.i.i.i, ptr noundef %140, i32 noundef %153, i32 noundef 0) #6
  br i1 %cmp30.not.i.i.i, label %rtw_pci_free_rx_ring.exit.i.i.i.do.end7.i_crit_edge, label %rtw_pci_free_rx_ring.exit.i.i.i.for.body32.i.i.i_crit_edge

rtw_pci_free_rx_ring.exit.i.i.i.for.body32.i.i.i_crit_edge: ; preds = %rtw_pci_free_rx_ring.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32.i.i.i

rtw_pci_free_rx_ring.exit.i.i.i.do.end7.i_crit_edge: ; preds = %rtw_pci_free_rx_ring.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %rtw_pci_free_rx_ring.exit.i.i.i.do.end7.i_crit_edge, %for.cond29.preheader.i.i.i.do.end7.i_crit_edge, %out.i.i.i.do.end7.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ -12, %out.i.i.i.do.end7.i_crit_edge ], [ %ret.0204.i.i.i, %for.cond29.preheader.i.i.i.do.end7.i_crit_edge ], [ %ret.0204.i.i.i, %rtw_pci_free_rx_ring.exit.i.i.i.do.end7.i_crit_edge ]
  %154 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.41) #9
  %156 = ptrtoint ptr %mmap.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmap.i.i, align 8
  %tobool.not.i21.i = icmp eq ptr %157, null
  br i1 %tobool.not.i21.i, label %do.end7.i.do.end26_crit_edge, label %if.then.i.i114

do.end7.i.do.end26_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.then.i.i114:                                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %157) #6
  call void @pci_release_regions(ptr noundef %pdev) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then.i.i114, %do.end7.i.do.end26_crit_edge, %do.end.i112
  %retval.0.i115.ph = phi i32 [ %retval.0.i.i.ph.i, %if.then.i.i114 ], [ %retval.0.i.i.ph.i, %do.end7.i.do.end26_crit_edge ], [ %retval.0.ph.i.i, %do.end.i112 ]
  %158 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.10) #9
  br label %err_pci_declaim

if.end28:                                         ; preds = %for.inc.i.1.i.i.i
  %160 = ptrtoint ptr %dma.i75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dma.i75.i.i.i, align 4
  %dma15.i.1.i.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 29
  %162 = ptrtoint ptr %dma15.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %dma15.i.1.i.i.i, align 4
  %len17.i.1.i.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 37
  %163 = ptrtoint ptr %len17.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 512, ptr %len17.i.1.i.i.i, align 4
  %desc_size19.i.1.i.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 33
  %164 = ptrtoint ptr %desc_size19.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %73, ptr %desc_size19.i.1.i.i.i, align 4
  %wp.i81.1.i.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 41
  %165 = ptrtoint ptr %wp.i81.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %wp.i81.1.i.i.i, align 4
  %rp.i82.1.i.i.i = getelementptr %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 45
  %166 = ptrtoint ptr %rp.i82.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %rp.i82.1.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i75.i.i.i) #6
  %netdev.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 19, i32 1, i32 4, i32 7
  %call.i116 = call i32 @init_dummy_netdev(ptr noundef %netdev.i) #6
  %napi.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 6, i32 0, i32 1, i32 10
  call void @netif_napi_add(ptr noundef %netdev.i, ptr noundef %napi.i, ptr noundef nonnull @rtw_pci_napi_poll, i32 noundef 64) #6
  %call29 = call i32 @rtw_chip_info_setup(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.13) #9
  br label %err_destroy_pci

if.end36:                                         ; preds = %if.end28
  %169 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14303, i16 %170)
  %cmp = icmp eq i16 %170, -14303
  br i1 %cmp, label %land.lhs.true, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end36
  %vendor40 = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i, i32 0, i32 7
  %171 = ptrtoint ptr %vendor40 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vendor40, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %172)
  %cmp42 = icmp eq i16 %172, -32634
  br i1 %cmp42, label %if.then44, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %rx_no_aspm = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 4, i32 0, i32 5, i32 47
  %173 = ptrtoint ptr %rx_no_aspm to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 1, ptr %rx_no_aspm, align 64
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %174 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %chip, align 4
  %cut_version.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 0, i32 5, i32 2
  %176 = ptrtoint ptr %cut_version.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %cut_version.i, align 8
  %conv.i = zext i8 %177 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %intf_table.i = getelementptr inbounds %struct.rtw_chip_info, ptr %175, i32 0, i32 37
  %178 = ptrtoint ptr %intf_table.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %intf_table.i, align 4
  %n_gen1_para110.i = getelementptr inbounds %struct.rtw_intf_phy_para_table, ptr %179, i32 0, i32 6
  %180 = ptrtoint ptr %n_gen1_para110.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %n_gen1_para110.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp112.not.i = icmp eq i8 %181, 0
  br i1 %cmp112.not.i, label %if.end45.for.end.i_crit_edge, label %if.end45.for.body.i_crit_edge

if.end45.for.body.i_crit_edge:                    ; preds = %if.end45
  br label %for.body.i

if.end45.for.end.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end45.for.body.i_crit_edge
  %182 = phi ptr [ %213, %for.inc.i.for.body.i_crit_edge ], [ %179, %if.end45.for.body.i_crit_edge ]
  %i.0113.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %gen1_para.i = getelementptr inbounds %struct.rtw_intf_phy_para_table, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %gen1_para.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %gen1_para.i, align 4
  %cut_mask.i = getelementptr %struct.rtw_intf_phy_para, ptr %184, i32 %i.0113.i, i32 3
  %185 = ptrtoint ptr %cut_mask.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %cut_mask.i, align 2
  %conv6.i = zext i16 %186 to i32
  %and.i = and i32 %shl.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i117 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i117, label %for.body.i.for.inc.i_crit_edge, label %if.end.i118

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i118:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.rtw_intf_phy_para, ptr %184, i32 %i.0113.i
  %187 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %188)
  %cmp10.i = icmp eq i16 %188, -1
  br i1 %cmp10.i, label %if.end.i118.for.end.i_crit_edge, label %if.end13.i

if.end.i118.for.end.i_crit_edge:                  ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end13.i:                                       ; preds = %if.end.i118
  %value15.i = getelementptr %struct.rtw_intf_phy_para, ptr %184, i32 %i.0113.i, i32 1
  %189 = ptrtoint ptr %value15.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %value15.i, align 2
  %ip_sel.i = getelementptr %struct.rtw_intf_phy_para, ptr %184, i32 %i.0113.i, i32 2
  %191 = ptrtoint ptr %ip_sel.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %ip_sel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %cmp17.i = icmp eq i16 %192, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i = trunc i16 %188 to i8
  call fastcc void @rtw_mdio_write(ptr noundef %12, i8 noundef zeroext %conv20.i, i16 noundef zeroext %190, i1 noundef zeroext true) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end13.i
  %conv21.i = trunc i16 %190 to i8
  %conv.i.i = zext i16 %188 to i32
  %and.i.i = and i16 %188, 3
  %and3.i.i = and i16 %188, 4092
  %193 = shl nuw i16 4096, %and.i.i
  %or52.i.i = or i16 %193, %and3.i.i
  %194 = or i16 %and.i.i, 1000
  %add.i.i119 = zext i16 %194 to i32
  %195 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %196, i32 0, i32 14
  %197 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write8.i.i.i, align 4
  call void %198(ptr noundef %12, i32 noundef %add.i.i119, i8 noundef zeroext %conv21.i) #6
  %199 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hci, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %200, i32 0, i32 15
  %201 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write16.i.i.i, align 4
  call void %202(ptr noundef %12, i32 noundef 1008, i16 noundef zeroext %or52.i.i) #6
  %203 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci, align 8
  %write8.i55.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %204, i32 0, i32 14
  %205 = ptrtoint ptr %write8.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write8.i55.i.i, align 4
  call void %206(ptr noundef %12, i32 noundef 1010, i8 noundef zeroext 1) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i121.for.body.i.i_crit_edge, %if.else.i
  %cnt.057.i.i = phi i8 [ 0, %if.else.i ], [ %inc.i.i, %if.end.i.i121.for.body.i.i_crit_edge ]
  %207 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hci, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %208, i32 0, i32 11
  %209 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %210(ptr noundef %12, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp15.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %cmp15.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %if.end.i.i121

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i121:                                    ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %211(i32 noundef 2147480) #6
  %inc.i.i = add nuw nsw i8 %cnt.057.i.i, 1
  %cmp.i.i120 = icmp ult i8 %cnt.057.i.i, 19
  br i1 %cmp.i.i120, label %if.end.i.i121.for.body.i.i_crit_edge, label %do.end.i.i

if.end.i.i121.for.body.i.i_crit_edge:             ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %conv.i.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.i, %for.body.i.i.for.inc.i_crit_edge, %if.then19.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0113.i, 1
  %212 = ptrtoint ptr %intf_table.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %intf_table.i, align 4
  %n_gen1_para.i = getelementptr inbounds %struct.rtw_intf_phy_para_table, ptr %213, i32 0, i32 6
  %214 = ptrtoint ptr %n_gen1_para.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %n_gen1_para.i, align 2
  %conv3.i = zext i8 %215 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i118.for.end.i_crit_edge, %if.end45.for.end.i_crit_edge
  %216 = ptrtoint ptr %intf_table.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %intf_table.i, align 4
  %n_gen2_para115.i = getelementptr inbounds %struct.rtw_intf_phy_para_table, ptr %217, i32 0, i32 7
  %218 = ptrtoint ptr %n_gen2_para115.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %n_gen2_para115.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %cmp26117.not.i = icmp eq i8 %219, 0
  br i1 %cmp26117.not.i, label %for.end.i.for.end57.i_crit_edge, label %for.end.i.for.body28.i_crit_edge

for.end.i.for.body28.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body28.i

for.end.i.for.end57.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end57.i

for.body28.i:                                     ; preds = %for.inc55.i.for.body28.i_crit_edge, %for.end.i.for.body28.i_crit_edge
  %220 = phi ptr [ %251, %for.inc55.i.for.body28.i_crit_edge ], [ %217, %for.end.i.for.body28.i_crit_edge ]
  %i.1118.i = phi i32 [ %inc56.i, %for.inc55.i.for.body28.i_crit_edge ], [ 0, %for.end.i.for.body28.i_crit_edge ]
  %gen2_para.i = getelementptr inbounds %struct.rtw_intf_phy_para_table, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %gen2_para.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %gen2_para.i, align 4
  %cut_mask31.i = getelementptr %struct.rtw_intf_phy_para, ptr %222, i32 %i.1118.i, i32 3
  %223 = ptrtoint ptr %cut_mask31.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %cut_mask31.i, align 2
  %conv32.i = zext i16 %224 to i32
  %and34.i = and i32 %shl.i, %conv32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %for.body28.i.for.inc55.i_crit_edge, label %if.end37.i

for.body28.i.for.inc55.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55.i

if.end37.i:                                       ; preds = %for.body28.i
  %arrayidx30.i = getelementptr %struct.rtw_intf_phy_para, ptr %222, i32 %i.1118.i
  %225 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %226)
  %cmp40.i = icmp eq i16 %226, -1
  br i1 %cmp40.i, label %if.end37.i.for.end57.i_crit_edge, label %if.end43.i

if.end37.i.for.end57.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end57.i

if.end43.i:                                       ; preds = %if.end37.i
  %value45.i = getelementptr %struct.rtw_intf_phy_para, ptr %222, i32 %i.1118.i, i32 1
  %227 = ptrtoint ptr %value45.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %value45.i, align 2
  %ip_sel46.i = getelementptr %struct.rtw_intf_phy_para, ptr %222, i32 %i.1118.i, i32 2
  %229 = ptrtoint ptr %ip_sel46.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %ip_sel46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %cmp48.i = icmp eq i16 %230, 0
  br i1 %cmp48.i, label %if.then50.i, label %if.else52.i

if.then50.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv51.i = trunc i16 %226 to i8
  call fastcc void @rtw_mdio_write(ptr noundef %12, i8 noundef zeroext %conv51.i, i16 noundef zeroext %228, i1 noundef zeroext false) #6
  br label %for.inc55.i

if.else52.i:                                      ; preds = %if.end43.i
  %conv53.i = trunc i16 %228 to i8
  %conv.i88.i = zext i16 %226 to i32
  %and.i89.i = and i16 %226, 3
  %and3.i90.i = and i16 %226, 4092
  %231 = shl nuw i16 4096, %and.i89.i
  %or52.i91.i = or i16 %231, %and3.i90.i
  %232 = or i16 %and.i89.i, 1000
  %add.i92.i = zext i16 %232 to i32
  %233 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hci, align 8
  %write8.i.i94.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %234, i32 0, i32 14
  %235 = ptrtoint ptr %write8.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write8.i.i94.i, align 4
  call void %236(ptr noundef %12, i32 noundef %add.i92.i, i8 noundef zeroext %conv53.i) #6
  %237 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hci, align 8
  %write16.i.i95.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %238, i32 0, i32 15
  %239 = ptrtoint ptr %write16.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write16.i.i95.i, align 4
  call void %240(ptr noundef %12, i32 noundef 1008, i16 noundef zeroext %or52.i91.i) #6
  %241 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hci, align 8
  %write8.i55.i96.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %242, i32 0, i32 14
  %243 = ptrtoint ptr %write8.i55.i96.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write8.i55.i96.i, align 4
  call void %244(ptr noundef %12, i32 noundef 1010, i8 noundef zeroext 1) #6
  br label %for.body.i101.i

for.body.i101.i:                                  ; preds = %if.end.i104.i.for.body.i101.i_crit_edge, %if.else52.i
  %cnt.057.i97.i = phi i8 [ 0, %if.else52.i ], [ %inc.i102.i, %if.end.i104.i.for.body.i101.i_crit_edge ]
  %245 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %hci, align 8
  %read8.i.i98.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %246, i32 0, i32 11
  %247 = ptrtoint ptr %read8.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %read8.i.i98.i, align 4
  %call.i.i99.i = call zeroext i8 %248(ptr noundef %12, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i99.i)
  %cmp15.i100.i = icmp eq i8 %call.i.i99.i, 0
  br i1 %cmp15.i100.i, label %for.body.i101.i.for.inc55.i_crit_edge, label %if.end.i104.i

for.body.i101.i.for.inc55.i_crit_edge:            ; preds = %for.body.i101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55.i

if.end.i104.i:                                    ; preds = %for.body.i101.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %249(i32 noundef 2147480) #6
  %inc.i102.i = add nuw nsw i8 %cnt.057.i97.i, 1
  %cmp.i103.i = icmp ult i8 %cnt.057.i97.i, 19
  br i1 %cmp.i103.i, label %if.end.i104.i.for.body.i101.i_crit_edge, label %do.end.i105.i

if.end.i104.i.for.body.i101.i_crit_edge:          ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i101.i

do.end.i105.i:                                    ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %conv.i88.i) #6
  br label %for.inc55.i

for.inc55.i:                                      ; preds = %do.end.i105.i, %for.body.i101.i.for.inc55.i_crit_edge, %if.then50.i, %for.body28.i.for.inc55.i_crit_edge
  %inc56.i = add nuw nsw i32 %i.1118.i, 1
  %250 = ptrtoint ptr %intf_table.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %intf_table.i, align 4
  %n_gen2_para.i = getelementptr inbounds %struct.rtw_intf_phy_para_table, ptr %251, i32 0, i32 7
  %252 = ptrtoint ptr %n_gen2_para.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %n_gen2_para.i, align 1
  %conv25.i = zext i8 %253 to i32
  %cmp26.i = icmp ult i32 %inc56.i, %conv25.i
  br i1 %cmp26.i, label %for.inc55.i.for.body28.i_crit_edge, label %for.inc55.i.for.end57.i_crit_edge

for.inc55.i.for.end57.i_crit_edge:                ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end57.i

for.inc55.i.for.body28.i_crit_edge:               ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28.i

for.end57.i:                                      ; preds = %for.inc55.i.for.end57.i_crit_edge, %if.end37.i.for.end57.i_crit_edge, %for.end.i.for.end57.i_crit_edge
  %254 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %chip, align 4
  %256 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %priv.i, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_ctrl.i.i) #6
  %258 = ptrtoint ptr %link_ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 -1, ptr %link_ctrl.i.i, align 2, !annotation !200
  %id.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %255, i32 0, i32 1
  %259 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %260)
  %cmp.i107.i = icmp eq i8 %260, 1
  br i1 %cmp.i107.i, label %if.then.i.i122, label %for.end57.i.if.end.i108.i_crit_edge

for.end57.i.if.end.i108.i_crit_edge:              ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108.i

if.then.i.i122:                                   ; preds = %for.end57.i
  %261 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %262, i32 0, i32 14
  %263 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write8.i.i.i.i, align 4
  call void %264(ptr noundef %12, i32 noundef 1001, i8 noundef zeroext 0) #6
  %265 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hci, align 8
  %write16.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %266, i32 0, i32 15
  %267 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %write16.i.i.i.i, align 4
  call void %268(ptr noundef %12, i32 noundef 1008, i16 noundef zeroext 10020) #6
  %269 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hci, align 8
  %write8.i55.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %270, i32 0, i32 14
  %271 = ptrtoint ptr %write8.i55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write8.i55.i.i.i, align 4
  call void %272(ptr noundef %12, i32 noundef 1010, i8 noundef zeroext 1) #6
  br label %for.body.i.i.i123

for.body.i.i.i123:                                ; preds = %if.end.i.i.i.for.body.i.i.i123_crit_edge, %if.then.i.i122
  %cnt.057.i.i.i = phi i8 [ 0, %if.then.i.i122 ], [ %inc.i.i.i124, %if.end.i.i.i.for.body.i.i.i123_crit_edge ]
  %273 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hci, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %274, i32 0, i32 11
  %275 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i8 %276(ptr noundef %12, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i.i)
  %cmp15.i.i.i = icmp eq i8 %call.i.i.i.i, 0
  br i1 %cmp15.i.i.i, label %for.body.i.i.i123.if.end.i108.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i123.if.end.i108.i_crit_edge:        ; preds = %for.body.i.i.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %277(i32 noundef 2147480) #6
  %inc.i.i.i124 = add nuw nsw i8 %cnt.057.i.i.i, 1
  %cmp.i.i.i = icmp ult i8 %cnt.057.i.i.i, 19
  br i1 %cmp.i.i.i, label %if.end.i.i.i.for.body.i.i.i123_crit_edge, label %do.end.i.i.i

if.end.i.i.i.for.body.i.i.i123_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i123

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef 1829) #6
  br label %if.end.i108.i

if.end.i108.i:                                    ; preds = %do.end.i.i.i, %for.body.i.i.i123.if.end.i108.i_crit_edge, %for.end57.i.if.end.i108.i_crit_edge
  %call.i.i125 = call i32 @pcie_capability_read_word(ptr noundef %257, i32 noundef 16, ptr noundef nonnull %link_ctrl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %call.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end5.i.i, label %do.end.i109.i

do.end.i109.i:                                    ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  %278 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.67, i32 noundef %call.i.i125) #9
  br label %rtw_pci_phy_cfg.exit

if.end5.i.i:                                      ; preds = %if.end.i108.i
  %280 = ptrtoint ptr %link_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %link_ctrl.i.i, align 2
  %282 = and i16 %281, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %282)
  %tobool7.not.i.i = icmp eq i16 %282, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end9.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %283 = load i8, ptr @rtw_pci_disable_aspm, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i.i.i = icmp eq i8 %283, 0
  br i1 %tobool.not.i.i.i, label %if.end.i21.i.i, label %if.then8.i.i.if.end9.i.i_crit_edge

if.then8.i.i.if.end9.i.i_crit_edge:               ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.end.i21.i.i:                                   ; preds = %if.then8.i.i
  %284 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %hci, align 8
  %write16.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %285, i32 0, i32 15
  %286 = ptrtoint ptr %write16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %write16.i.i.i.i.i, align 4
  call void %287(ptr noundef %12, i32 noundef 1008, i16 noundef zeroext 1816) #6
  %288 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hci, align 8
  %write8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %289, i32 0, i32 14
  %290 = ptrtoint ptr %write8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write8.i.i.i.i.i, align 4
  call void %291(ptr noundef %12, i32 noundef 1010, i8 noundef zeroext 2) #6
  br label %for.body.i.i.i.i128

for.body.i.i.i.i128:                              ; preds = %if.end.i.i.i.i130.for.body.i.i.i.i128_crit_edge, %if.end.i21.i.i
  %cnt.06.i.i.i.i = phi i8 [ 0, %if.end.i21.i.i ], [ %inc.i.i.i.i129, %if.end.i.i.i.i130.for.body.i.i.i.i128_crit_edge ]
  %292 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %hci, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %293, i32 0, i32 11
  %294 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i.i.i.i127 = call zeroext i8 %295(ptr noundef %12, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i.i.i127)
  %cmp5.i.i.i.i = icmp eq i8 %call.i.i.i.i.i127, 0
  br i1 %cmp5.i.i.i.i, label %if.then5.i.i.i, label %if.end.i.i.i.i130

if.end.i.i.i.i130:                                ; preds = %for.body.i.i.i.i128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %296(i32 noundef 2147480) #6
  %inc.i.i.i.i129 = add nuw nsw i8 %cnt.06.i.i.i.i, 1
  %cmp.i.i.i.i = icmp ult i8 %cnt.06.i.i.i.i, 19
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i130.for.body.i.i.i.i128_crit_edge, label %do.end.i22.i.i

if.end.i.i.i.i130.for.body.i.i.i.i128_crit_edge:  ; preds = %if.end.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i128

do.end.i22.i.i:                                   ; preds = %if.end.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1308, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef 1817) #6
  %297 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.18, i32 noundef -5) #9
  br label %if.end9.i.i

if.then5.i.i.i:                                   ; preds = %for.body.i.i.i.i128
  %299 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hci, align 8
  %read8.i4.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %300, i32 0, i32 11
  %301 = ptrtoint ptr %read8.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %read8.i4.i.i.i.i, align 4
  %call.i5.i.i.i.i = call zeroext i8 %302(ptr noundef %12, i32 noundef 1005) #6
  %303 = or i8 %call.i5.i.i.i.i, 16
  %304 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %hci, align 8
  %write8.i.i2.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %305, i32 0, i32 14
  %306 = ptrtoint ptr %write8.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write8.i.i2.i.i.i, align 4
  call void %307(ptr noundef %12, i32 noundef 1001, i8 noundef zeroext %303) #6
  %308 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %hci, align 8
  %write16.i.i3.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %309, i32 0, i32 15
  %310 = ptrtoint ptr %write16.i.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %write16.i.i3.i.i.i, align 4
  call void %311(ptr noundef %12, i32 noundef 1008, i16 noundef zeroext 10008) #6
  %312 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %hci, align 8
  %write8.i55.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %313, i32 0, i32 14
  %314 = ptrtoint ptr %write8.i55.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write8.i55.i.i.i.i, align 4
  call void %315(ptr noundef %12, i32 noundef 1010, i8 noundef zeroext 1) #6
  br label %for.body.i6.i.i.i

for.body.i6.i.i.i:                                ; preds = %if.end.i9.i.i.i.for.body.i6.i.i.i_crit_edge, %if.then5.i.i.i
  %cnt.057.i.i.i.i = phi i8 [ 0, %if.then5.i.i.i ], [ %inc.i7.i.i.i, %if.end.i9.i.i.i.for.body.i6.i.i.i_crit_edge ]
  %316 = ptrtoint ptr %hci to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %hci, align 8
  %read8.i.i4.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %317, i32 0, i32 11
  %318 = ptrtoint ptr %read8.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %read8.i.i4.i.i.i, align 4
  %call.i.i5.i.i.i = call zeroext i8 %319(ptr noundef %12, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i5.i.i.i)
  %cmp15.i.i.i.i = icmp eq i8 %call.i.i5.i.i.i, 0
  br i1 %cmp15.i.i.i.i, label %for.body.i6.i.i.i.if.end9.i.i_crit_edge, label %if.end.i9.i.i.i

for.body.i6.i.i.i.if.end9.i.i_crit_edge:          ; preds = %for.body.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.end.i9.i.i.i:                                  ; preds = %for.body.i6.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %320 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %320(i32 noundef 2147480) #6
  %inc.i7.i.i.i = add nuw nsw i8 %cnt.057.i.i.i.i, 1
  %cmp.i8.i.i.i = icmp ult i8 %cnt.057.i.i.i.i, 19
  br i1 %cmp.i8.i.i.i, label %if.end.i9.i.i.i.for.body.i6.i.i.i_crit_edge, label %do.end.i10.i.i.i

if.end.i9.i.i.i.for.body.i6.i.i.i_crit_edge:      ; preds = %if.end.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i6.i.i.i

do.end.i10.i.i.i:                                 ; preds = %if.end.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef 1817) #6
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end.i10.i.i.i, %for.body.i6.i.i.i.if.end9.i.i_crit_edge, %do.end.i22.i.i, %if.then8.i.i.if.end9.i.i_crit_edge, %if.end5.i.i.if.end9.i.i_crit_edge
  %321 = ptrtoint ptr %link_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %link_ctrl.i.i, align 2
  %link_ctrl10.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 4, i32 0, i32 5, i32 39
  %323 = ptrtoint ptr %link_ctrl10.i.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %322, ptr %link_ctrl10.i.i, align 8
  br label %rtw_pci_phy_cfg.exit

rtw_pci_phy_cfg.exit:                             ; preds = %if.end9.i.i, %do.end.i109.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_ctrl.i.i) #6
  %call46 = call i32 @rtw_register_hw(ptr noundef %12, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %rtw_pci_phy_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %324 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.16) #9
  br label %err_destroy_pci

if.end53:                                         ; preds = %rtw_pci_phy_cfg.exit
  %326 = load i8, ptr @rtw_disable_msi, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool.not.i131 = icmp eq i8 %326, 0
  %spec.select.i = select i1 %tobool.not.i131, i32 3, i32 1
  %call.i.i132 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef %spec.select.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %cmp.i133 = icmp slt i32 %call.i.i132, 0
  %327 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dev4, align 4
  br i1 %cmp.i133, label %do.end.i135, label %if.end2.i

do.end.i135:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %328, ptr noundef nonnull @.str.70) #9
  br label %if.then56

if.end2.i:                                        ; preds = %if.end53
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %329 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %irq.i, align 4
  %call4.i = call i32 @devm_request_threaded_irq(ptr noundef %328, i32 noundef %330, ptr noundef nonnull @rtw_pci_interrupt_handler, ptr noundef nonnull @rtw_pci_interrupt_threadfn, i32 noundef 128, ptr noundef nonnull @.str.43, ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end2.i.cleanup_crit_edge, label %do.end9.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end9.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %331 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %332, ptr noundef nonnull @.str.73, i32 noundef %call4.i) #9
  call void @pci_free_irq_vectors(ptr noundef %pdev) #6
  br label %if.then56

if.then56:                                        ; preds = %do.end9.i, %do.end.i135
  %retval.0.i136.ph = phi i32 [ %call4.i, %do.end9.i ], [ %call.i.i132, %do.end.i135 ]
  call void @ieee80211_unregister_hw(ptr noundef nonnull %call.i) #6
  br label %err_destroy_pci

err_destroy_pci:                                  ; preds = %if.then56, %do.end51, %do.end34
  %ret.0 = phi i32 [ %call29, %do.end34 ], [ %call46, %do.end51 ], [ %retval.0.i136.ph, %if.then56 ]
  %flags.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 2
  %call.i.i137 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137)
  %tobool.not.i.i138 = icmp eq i32 %call.i.i137, 0
  br i1 %tobool.not.i.i138, label %err_destroy_pci.rtw_pci_napi_deinit.exit_crit_edge, label %if.end.i.i139

err_destroy_pci.rtw_pci_napi_deinit.exit_crit_edge: ; preds = %err_destroy_pci
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_napi_deinit.exit

if.end.i.i139:                                    ; preds = %err_destroy_pci
  %state.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %12, i32 1, i32 5, i32 24, i32 6, i32 0, i32 2, i32 4
  %333 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i1.i.i.i = and i32 %334, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i.i)
  %tobool.not2.i.i.i = icmp eq i32 %and1.i1.i.i.i, 0
  br i1 %tobool.not2.i.i.i, label %if.end.i.i139.napi_synchronize.exit.i.i_crit_edge, label %if.end.i.i139.while.body.i.i.i_crit_edge

if.end.i.i139.while.body.i.i.i_crit_edge:         ; preds = %if.end.i.i139
  br label %while.body.i.i.i

if.end.i.i139.napi_synchronize.exit.i.i_crit_edge: ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i139.while.body.i.i.i_crit_edge
  call void @msleep(i32 noundef 1) #6
  %335 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %336, 1
  %tobool.not.i.i.i140 = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i140, label %while.body.i.i.i.napi_synchronize.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

while.body.i.i.i.napi_synchronize.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i.i

napi_synchronize.exit.i.i:                        ; preds = %while.body.i.i.i.napi_synchronize.exit.i.i_crit_edge, %if.end.i.i139.napi_synchronize.exit.i.i_crit_edge
  call void @napi_disable(ptr noundef %napi.i) #6
  br label %rtw_pci_napi_deinit.exit

rtw_pci_napi_deinit.exit:                         ; preds = %napi_synchronize.exit.i.i, %err_destroy_pci.rtw_pci_napi_deinit.exit_crit_edge
  call void @__netif_napi_del(ptr noundef %napi.i) #6
  call void @synchronize_net() #6
  call fastcc void @rtw_pci_destroy(ptr noundef %12, ptr noundef %pdev)
  br label %err_pci_declaim

err_pci_declaim:                                  ; preds = %rtw_pci_napi_deinit.exit, %do.end26
  %ret.1 = phi i32 [ %retval.0.i115.ph, %do.end26 ], [ %ret.0, %rtw_pci_napi_deinit.exit ]
  call void @pci_clear_master(ptr noundef %pdev) #6
  call void @pci_disable_device(ptr noundef %pdev) #6
  br label %err_deinit_core

err_deinit_core:                                  ; preds = %err_pci_declaim, %do.end18
  %ret.2 = phi i32 [ %call.i108, %do.end18 ], [ %ret.1, %err_pci_declaim ]
  call void @rtw_core_deinit(ptr noundef %12) #6
  br label %err_release_hw

err_release_hw:                                   ; preds = %err_deinit_core, %if.end.err_release_hw_crit_edge
  %ret.3 = phi i32 [ %call7, %if.end.err_release_hw_crit_edge ], [ %ret.2, %err_deinit_core ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_release_hw, %if.end2.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.3, %err_release_hw ], [ -12, %do.end ], [ 0, %if.end2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_core_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_chip_info_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_register_hw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_pci_destroy(ptr noundef %rtwdev, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %tx_rings.i.i) #6
  %arrayidx.1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 1, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.1.i.i) #6
  %arrayidx.2.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 2, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.2.i.i) #6
  %arrayidx.3.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 0, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.3.i.i) #6
  %arrayidx.4.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 1, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.4.i.i) #6
  %arrayidx.5.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 2, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.5.i.i) #6
  %arrayidx.6.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 0, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.6.i.i) #6
  %arrayidx.7.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 1, i32 0, i32 4
  tail call fastcc void @rtw_pci_free_tx_ring(ptr noundef %rtwdev, ptr noundef %arrayidx.7.i.i) #6
  %rx_rings.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 4
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i.i, align 4
  %2 = ptrtoint ptr %rx_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_rings.i.i, align 4
  %desc_size.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 12
  %4 = ptrtoint ptr %desc_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %desc_size.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 2
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp11.not.i.i.i.i, label %entry.rtw_pci_free_rx_ring.exit.i.i_crit_edge, label %entry.for.body.i.i.i.i_crit_edge

entry.for.body.i.i.i.i_crit_edge:                 ; preds = %entry
  br label %for.body.i.i.i.i

entry.rtw_pci_free_rx_ring.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_rx_ring.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry.for.body.i.i.i.i_crit_edge
  %i.012.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [2 x %struct.rtw_pci_rx_ring], ptr %rx_rings.i.i, i32 0, i32 0, i32 1, i32 %i.012.i.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i.i.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %11, i32 noundef 11478, i32 noundef 2, i32 noundef 0) #6
  tail call void @consume_skb(ptr noundef nonnull %9) #6
  %12 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i.i.i.i, align 4
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %i.012.i.i.i.i, 1
  %13 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i, align 4
  %cmp.i.i.i.i = icmp ult i32 %inc.i.i.i.i, %14
  br i1 %cmp.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.rtw_pci_free_rx_ring.exit.i.i_crit_edge

for.inc.i.i.i.i.rtw_pci_free_rx_ring.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_rx_ring.exit.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

rtw_pci_free_rx_ring.exit.i.i:                    ; preds = %for.inc.i.i.i.i.rtw_pci_free_rx_ring.exit.i.i_crit_edge, %entry.rtw_pci_free_rx_ring.exit.i.i_crit_edge
  %conv.i.i.i = zext i8 %5 to i32
  %mul.i.i.i = mul i32 %7, %conv.i.i.i
  %dma.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 8
  %15 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma.i.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %mul.i.i.i, ptr noundef %3, i32 noundef %16, i32 noundef 0) #6
  %arrayidx4.1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 25
  %17 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i.i, align 4
  %19 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.1.i.i, align 4
  %desc_size.i.1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 33
  %21 = ptrtoint ptr %desc_size.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %desc_size.i.1.i.i, align 4
  %len.i.1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 37
  %23 = ptrtoint ptr %len.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp11.not.i.i.1.i.i = icmp eq i32 %24, 0
  br i1 %cmp11.not.i.i.1.i.i, label %rtw_pci_free_rx_ring.exit.i.i.rtw_pci_deinit.exit_crit_edge, label %rtw_pci_free_rx_ring.exit.i.i.for.body.i.i.1.i.i_crit_edge

rtw_pci_free_rx_ring.exit.i.i.for.body.i.i.1.i.i_crit_edge: ; preds = %rtw_pci_free_rx_ring.exit.i.i
  br label %for.body.i.i.1.i.i

rtw_pci_free_rx_ring.exit.i.i.rtw_pci_deinit.exit_crit_edge: ; preds = %rtw_pci_free_rx_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_deinit.exit

for.body.i.i.1.i.i:                               ; preds = %for.inc.i.i.1.i.i.for.body.i.i.1.i.i_crit_edge, %rtw_pci_free_rx_ring.exit.i.i.for.body.i.i.1.i.i_crit_edge
  %i.012.i.i.1.i.i = phi i32 [ %inc.i.i.1.i.i, %for.inc.i.i.1.i.i.for.body.i.i.1.i.i_crit_edge ], [ 0, %rtw_pci_free_rx_ring.exit.i.i.for.body.i.i.1.i.i_crit_edge ]
  %arrayidx.i.i.1.i.i = getelementptr [2 x %struct.rtw_pci_rx_ring], ptr %rx_rings.i.i, i32 0, i32 1, i32 1, i32 %i.012.i.i.1.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.1.i.i, align 4
  %tobool.not.i.i.1.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.1.i.i, label %for.body.i.i.1.i.i.for.inc.i.i.1.i.i_crit_edge, label %if.end.i.i.1.i.i

for.body.i.i.1.i.i.for.inc.i.i.1.i.i_crit_edge:   ; preds = %for.body.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.1.i.i

if.end.i.i.1.i.i:                                 ; preds = %for.body.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i.i.1.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i.i.1.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %28, i32 noundef 11478, i32 noundef 2, i32 noundef 0) #6
  tail call void @consume_skb(ptr noundef nonnull %26) #6
  %29 = ptrtoint ptr %arrayidx.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.i.i.1.i.i, align 4
  br label %for.inc.i.i.1.i.i

for.inc.i.i.1.i.i:                                ; preds = %if.end.i.i.1.i.i, %for.body.i.i.1.i.i.for.inc.i.i.1.i.i_crit_edge
  %inc.i.i.1.i.i = add nuw i32 %i.012.i.i.1.i.i, 1
  %30 = ptrtoint ptr %len.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.1.i.i, align 4
  %cmp.i.i.1.i.i = icmp ult i32 %inc.i.i.1.i.i, %31
  br i1 %cmp.i.i.1.i.i, label %for.inc.i.i.1.i.i.for.body.i.i.1.i.i_crit_edge, label %for.inc.i.i.1.i.i.rtw_pci_deinit.exit_crit_edge

for.inc.i.i.1.i.i.rtw_pci_deinit.exit_crit_edge:  ; preds = %for.inc.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_deinit.exit

for.inc.i.i.1.i.i.for.body.i.i.1.i.i_crit_edge:   ; preds = %for.inc.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.1.i.i

rtw_pci_deinit.exit:                              ; preds = %for.inc.i.i.1.i.i.rtw_pci_deinit.exit_crit_edge, %rtw_pci_free_rx_ring.exit.i.i.rtw_pci_deinit.exit_crit_edge
  %conv.i.1.i.i = zext i8 %22 to i32
  %mul.i.1.i.i = mul i32 %24, %conv.i.1.i.i
  %dma.i.1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 1, i32 2, i32 5, i32 29
  %32 = ptrtoint ptr %dma.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma.i.1.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef %mul.i.1.i.i, ptr noundef %20, i32 noundef %33, i32 noundef 0) #6
  %mmap.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmap.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %rtw_pci_deinit.exit.rtw_pci_io_unmapping.exit_crit_edge, label %if.then.i

rtw_pci_deinit.exit.rtw_pci_io_unmapping.exit_crit_edge: ; preds = %rtw_pci_deinit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_io_unmapping.exit

if.then.i:                                        ; preds = %rtw_pci_deinit.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %35) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %rtw_pci_io_unmapping.exit

rtw_pci_io_unmapping.exit:                        ; preds = %if.then.i, %rtw_pci_deinit.exit.rtw_pci_io_unmapping.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @rtw_unregister_hw(ptr noundef %3, ptr noundef nonnull %1) #6
  %hwirq_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %irq_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 1, i32 5, i32 19, i32 1, i32 4, i32 1
  %4 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_enabled.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.rtw_pci_disable_interrupt.exit_crit_edge, label %if.end.i

if.end.rtw_pci_disable_interrupt.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_disable_interrupt.exit

if.end.i:                                         ; preds = %if.end
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %3, i32 noundef 176, i32 noundef 0) #6
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i17.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %write32.i17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i17.i, align 4
  tail call void %13(ptr noundef %3, i32 noundef 184, i32 noundef 0) #6
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i19.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %write32.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i19.i, align 4
  tail call void %21(ptr noundef %3, i32 noundef 4280, i32 noundef 0) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %22 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %irq_enabled.i, align 4
  br label %rtw_pci_disable_interrupt.exit

rtw_pci_disable_interrupt.exit:                   ; preds = %if.end7.i, %if.end.rtw_pci_disable_interrupt.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i) #6
  %flags.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 2
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %rtw_pci_disable_interrupt.exit.rtw_pci_napi_deinit.exit_crit_edge, label %if.end.i.i

rtw_pci_disable_interrupt.exit.rtw_pci_napi_deinit.exit_crit_edge: ; preds = %rtw_pci_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_napi_deinit.exit

if.end.i.i:                                       ; preds = %rtw_pci_disable_interrupt.exit
  %napi.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 1, i32 5, i32 24, i32 6, i32 0, i32 1, i32 10
  %state.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 1, i32 5, i32 24, i32 6, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i1.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i.i)
  %tobool.not2.i.i.i = icmp eq i32 %and1.i1.i.i.i, 0
  br i1 %tobool.not2.i.i.i, label %if.end.i.i.napi_synchronize.exit.i.i_crit_edge, label %if.end.i.i.while.body.i.i.i_crit_edge

if.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %while.body.i.i.i

if.end.i.i.napi_synchronize.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.while.body.i.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %25 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %26, 1
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.napi_synchronize.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

while.body.i.i.i.napi_synchronize.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i.i

napi_synchronize.exit.i.i:                        ; preds = %while.body.i.i.i.napi_synchronize.exit.i.i_crit_edge, %if.end.i.i.napi_synchronize.exit.i.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i.i) #6
  br label %rtw_pci_napi_deinit.exit

rtw_pci_napi_deinit.exit:                         ; preds = %napi_synchronize.exit.i.i, %rtw_pci_disable_interrupt.exit.rtw_pci_napi_deinit.exit_crit_edge
  %napi.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 1, i32 5, i32 24, i32 6, i32 0, i32 1, i32 10
  tail call void @__netif_napi_del(ptr noundef %napi.i) #6
  tail call void @synchronize_net() #6
  tail call fastcc void @rtw_pci_destroy(ptr noundef %3, ptr noundef %pdev)
  tail call void @pci_clear_master(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %28, i32 noundef %30, ptr noundef %3) #6
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #6
  tail call void @rtw_core_deinit(ptr noundef %3) #6
  tail call void @ieee80211_free_hw(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %rtw_pci_napi_deinit.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_unregister_hw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_pci_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %shutdown = getelementptr inbounds %struct.rtw_chip_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shutdown, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %3) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_pci_clkreq_pad_low(ptr noundef %rtwdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 1008, i16 noundef zeroext 1816) #6
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1010, i8 noundef zeroext 2) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %cnt.06.i = phi i8 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %cmp5.i = icmp eq i8 %call.i.i, 0
  br i1 %cmp5.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #6
  %inc.i = add nuw nsw i8 %cnt.06.i, 1
  %cmp.i = icmp ult i8 %cnt.06.i, 19
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %do.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1308, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef 1817) #6
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef -5) #9
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %read8.i4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %read8.i4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8.i4.i, align 4
  %call.i5.i = tail call zeroext i8 %18(ptr noundef %rtwdev, i32 noundef 1005) #6
  %19 = and i8 %call.i5.i, -2
  %not.enable = xor i1 %enable, true
  %masksel = zext i1 %not.enable to i8
  %storemerge = or i8 %19, %masksel
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i12 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %write8.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8.i.i12, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 1001, i8 noundef zeroext %storemerge) #6
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i13 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %write16.i.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write16.i.i13, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 1008, i16 noundef zeroext 10008) #6
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %write8.i55.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %write8.i55.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8.i55.i, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 1010, i8 noundef zeroext 1) #6
  br label %for.body.i16

for.body.i16:                                     ; preds = %if.end.i19.for.body.i16_crit_edge, %if.end
  %cnt.057.i = phi i8 [ 0, %if.end ], [ %inc.i17, %if.end.i19.for.body.i16_crit_edge ]
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i14 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %read8.i.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8.i.i14, align 4
  %call.i.i15 = tail call zeroext i8 %35(ptr noundef %rtwdev, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i15)
  %cmp15.i = icmp eq i8 %call.i.i15, 0
  br i1 %cmp15.i, label %for.body.i16.cleanup_crit_edge, label %if.end.i19

for.body.i16.cleanup_crit_edge:                   ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i19:                                       ; preds = %for.body.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #6
  %inc.i17 = add nuw nsw i8 %cnt.057.i, 1
  %cmp.i18 = icmp ult i8 %cnt.057.i, 19
  br i1 %cmp.i18, label %if.end.i19.for.body.i16_crit_edge, label %do.end.i20

if.end.i19.for.body.i16_crit_edge:                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i16

do.end.i20:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef 1817) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i20, %for.body.i16.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_tx_write(ptr noundef %rtwdev, ptr noundef %pkt_info, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping.i.i, align 8
  %6 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.i.i = icmp eq i16 %6, -32768
  br i1 %cmp.i.i, label %entry.rtw_hw_queue_mapping.exit_crit_edge, label %if.else.i, !prof !203

entry.rtw_hw_queue_mapping.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_hw_queue_mapping.exit

if.else.i:                                        ; preds = %entry
  %7 = trunc i16 %3 to i12
  %trunc.i = and i12 %7, -1024
  %8 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc.i, label %if.else14.i [
    i12 0, label %if.else.i.rtw_hw_queue_mapping.exit_crit_edge
    i12 1024, label %if.else.i.rtw_hw_queue_mapping.exit_crit_edge24
  ], !prof !204

if.else.i.rtw_hw_queue_mapping.exit_crit_edge24:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_hw_queue_mapping.exit

if.else.i.rtw_hw_queue_mapping.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_hw_queue_mapping.exit

if.else14.i:                                      ; preds = %if.else.i
  %9 = and i16 %5, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp.i = icmp ugt i16 %9, 3
  br i1 %cmp.i, label %land.rhs.i, label %if.else63.i

land.rhs.i:                                       ; preds = %if.else14.i
  %.b73.i = load i1, ptr @rtw_hw_queue_mapping.__already_done, align 1
  br i1 %.b73.i, label %land.rhs.i.rtw_hw_queue_mapping.exit_crit_edge, label %if.then32.i, !prof !201

land.rhs.i.rtw_hw_queue_mapping.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_hw_queue_mapping.exit

if.then32.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtw_hw_queue_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 692, i32 noundef 9, ptr noundef null) #6
  br label %rtw_hw_queue_mapping.exit

if.else63.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv15.i = zext i16 %9 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @ac_to_hwq, i32 0, i32 %conv15.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  br label %rtw_hw_queue_mapping.exit

rtw_hw_queue_mapping.exit:                        ; preds = %if.else63.i, %if.then32.i, %land.rhs.i.rtw_hw_queue_mapping.exit_crit_edge, %if.else.i.rtw_hw_queue_mapping.exit_crit_edge, %if.else.i.rtw_hw_queue_mapping.exit_crit_edge24, %entry.rtw_hw_queue_mapping.exit_crit_edge
  %queue.0.i = phi i8 [ %11, %if.else63.i ], [ 4, %entry.rtw_hw_queue_mapping.exit_crit_edge ], [ 1, %if.then32.i ], [ 5, %if.else.i.rtw_hw_queue_mapping.exit_crit_edge ], [ 1, %land.rhs.i.rtw_hw_queue_mapping.exit_crit_edge ], [ 5, %if.else.i.rtw_hw_queue_mapping.exit_crit_edge24 ]
  %call1 = tail call fastcc i32 @rtw_pci_tx_write_data(ptr noundef %rtwdev, ptr noundef %pkt_info, ptr noundef %skb, i8 noundef zeroext %queue.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %rtw_hw_queue_mapping.exit.cleanup_crit_edge

rtw_hw_queue_mapping.exit.cleanup_crit_edge:      ; preds = %rtw_hw_queue_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtw_hw_queue_mapping.exit
  %tx_rings = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 4
  %idxprom = zext i8 %queue.0.i to i32
  %arrayidx = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %wp = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 4
  %12 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wp, align 4
  %rp = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 5
  %14 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rp, align 4
  %len = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i23 = icmp ugt i32 %15, %13
  %18 = xor i32 %13, -1
  %sub1.i = add i32 %15, %18
  %sub3.i = select i1 %cmp.i23, i32 0, i32 %17
  %retval.0.i = add i32 %sub1.i, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 2
  br i1 %cmp, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtwdev, align 8
  %21 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %queue_mapping.i.i, align 8
  %conv = zext i16 %22 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %20, i32 noundef %conv) #6
  %queue_stopped = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom, i32 2
  %23 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %queue_stopped, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %rtw_hw_queue_mapping.exit.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_tx_kick_off(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queued = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %call.1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %call.2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %call.3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %call.4 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %call.5 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %call.6 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 6)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %call.7 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %tx_queued) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 7)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_flush_queues(ptr noundef %rtwdev, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %queues1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queues1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues1, align 4
  %conv = zext i16 %3 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %queues)
  %cmp = icmp eq i32 %sub, %queues
  br i1 %cmp, label %entry.if.end14_crit_edge, label %for.cond.preheader

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp723.not = icmp eq i16 %3, 0
  br i1 %cmp723.not, label %for.cond.preheader.if.end14_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv326 = phi i32 [ %conv3, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.025 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pci_queues.024 = phi i32 [ %pci_queues.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %shl10 = shl nuw i32 1, %conv326
  %and = and i32 %shl10, %queues
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x i8], ptr @ac_to_hwq, i32 0, i32 %conv326
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %5 to i32
  %shl13 = shl nuw i32 1, %conv12
  %or = or i32 %shl13, %pci_queues.024
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %pci_queues.1 = phi i32 [ %or, %if.then11 ], [ %pci_queues.024, %for.body.for.inc_crit_edge ]
  %inc = add i8 %i.025, 1
  %conv3 = zext i8 %inc to i32
  %6 = zext i8 %inc to i16
  %cmp7 = icmp ugt i16 %3, %6
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.if.end14_crit_edge

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %for.cond.preheader.if.end14_crit_edge, %entry.if.end14_crit_edge
  %pci_queues.2 = phi i32 [ 255, %entry.if.end14_crit_edge ], [ 0, %for.cond.preheader.if.end14_crit_edge ], [ %pci_queues.1, %for.inc.if.end14_crit_edge ]
  %tx_rings.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 4
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14
  %indvars.iv.i = phi i32 [ 0, %if.end14 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = trunc i32 %indvars.iv.i to i8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %7, label %if.end.i [
    i8 4, label %for.body.i.for.inc.i_crit_edge
    i8 7, label %for.body.i.for.inc.i_crit_edge27
  ]

for.body.i.for.inc.i_crit_edge27:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and.i = and i32 %shl.i, %pci_queues.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then9.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end.i
  %arrayidx.i.i.i = getelementptr [8 x i32], ptr @rtw_pci_tx_queue_idx_addr, i32 0, i32 %indvars.iv.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %10, 2
  %wp.i.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings.i.i, i32 0, i32 %indvars.iv.i, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then9.i
  %i.015.i.i = phi i8 [ 0, %if.then9.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i.i, align 8
  %read16.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %14(ptr noundef %rtwdev, i32 noundef %add.i.i.i) #6
  %15 = and i16 %call.i.i.i.i, 4095
  %and.i.i.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and.i.i.i)
  %cmp2.i.i = icmp eq i32 %17, %and.i.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %inc.i.i = add nuw nsw i8 %i.015.i.i, 1
  %cmp.i.i = icmp ult i8 %i.015.i.i, 29
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end.i.i
  br i1 %drop, label %for.end.i.i.for.inc.i_crit_edge, label %do.end.i.i

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef %indvars.iv.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.i, %for.end.i.i.for.inc.i_crit_edge, %for.body.i.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge27
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %__rtw_pci_flush_queues.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

__rtw_pci_flush_queues.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_setup(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtw_pci_reset_trx_ring(ptr noundef %rtwdev)
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 768) #6
  %or.i.i = or i32 %call.i.i.i, 1081344
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 768, i32 noundef %or.i.i) #6
  %rx_tag.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 6, i32 2, i32 5, i32 10
  %8 = ptrtoint ptr %rx_tag.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %rx_tag.i, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_start(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 45
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rtw_pci_napi_start.exit_crit_edge

entry.rtw_pci_napi_start.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_napi_start.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %napi.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 6, i32 0, i32 1, i32 10
  tail call void @napi_enable(ptr noundef %napi.i) #6
  br label %rtw_pci_napi_start.exit

rtw_pci_napi_start.exit:                          ; preds = %if.end.i, %entry.rtw_pci_napi_start.exit_crit_edge
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %running = getelementptr inbounds %struct.rtw_pci, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %running, align 1
  %hwirq_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %irq_mask.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 19, i32 1, i32 1
  %1 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_mask.i, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %3 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i, align 4
  tail call void %6(ptr noundef %rtwdev, i32 noundef 176, i32 noundef %2) #6
  %arrayidx6.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 19, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6.i, align 4
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %write32.i20.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i20.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 184, i32 noundef %8) #6
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %13 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then.i, label %rtw_pci_napi_start.exit.rtw_pci_enable_interrupt.exit_crit_edge

rtw_pci_napi_start.exit.rtw_pci_enable_interrupt.exit_crit_edge: ; preds = %rtw_pci_napi_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_enable_interrupt.exit

if.then.i:                                        ; preds = %rtw_pci_napi_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 19, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i, align 4
  %19 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i, align 8
  %write32.i22.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %write32.i22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i22.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 4280, i32 noundef %18) #6
  br label %rtw_pci_enable_interrupt.exit

rtw_pci_enable_interrupt.exit:                    ; preds = %if.then.i, %rtw_pci_napi_start.exit.rtw_pci_enable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 19, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %irq_enabled.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_stop(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 45
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 128
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %running = getelementptr inbounds %struct.rtw_pci, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %running, align 1
  %hwirq_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %irq_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 19, i32 1, i32 4, i32 1
  %3 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %irq_enabled.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.rtw_pci_disable_interrupt.exit_crit_edge, label %if.end.i

entry.rtw_pci_disable_interrupt.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_disable_interrupt.exit

if.end.i:                                         ; preds = %entry
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 176, i32 noundef 0) #6
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %write32.i17.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %write32.i17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i17.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 184, i32 noundef 0) #6
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %13 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %write32.i19.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %write32.i19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i19.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 4280, i32 noundef 0) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %21 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %irq_enabled.i, align 4
  br label %rtw_pci_disable_interrupt.exit

rtw_pci_disable_interrupt.exit:                   ; preds = %if.end7.i, %entry.rtw_pci_disable_interrupt.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %23) #6
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i15 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i15, label %rtw_pci_disable_interrupt.exit.rtw_pci_napi_stop.exit_crit_edge, label %if.end.i16

rtw_pci_disable_interrupt.exit.rtw_pci_napi_stop.exit_crit_edge: ; preds = %rtw_pci_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_napi_stop.exit

if.end.i16:                                       ; preds = %rtw_pci_disable_interrupt.exit
  %napi.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 6, i32 0, i32 1, i32 10
  %state.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 6, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i, align 4
  %and1.i1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i)
  %tobool.not2.i.i = icmp eq i32 %and1.i1.i.i, 0
  br i1 %tobool.not2.i.i, label %if.end.i16.napi_synchronize.exit.i_crit_edge, label %if.end.i16.while.body.i.i_crit_edge

if.end.i16.while.body.i.i_crit_edge:              ; preds = %if.end.i16
  br label %while.body.i.i

if.end.i16.napi_synchronize.exit.i_crit_edge:     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i16.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %27, 1
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.napi_synchronize.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.napi_synchronize.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit.i

napi_synchronize.exit.i:                          ; preds = %while.body.i.i.napi_synchronize.exit.i_crit_edge, %if.end.i16.napi_synchronize.exit.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i) #6
  br label %rtw_pci_napi_stop.exit

rtw_pci_napi_stop.exit:                           ; preds = %napi_synchronize.exit.i, %rtw_pci_disable_interrupt.exit.rtw_pci_napi_stop.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  tail call fastcc void @rtw_pci_reset_trx_ring(ptr noundef %rtwdev) #6
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %rtw_pci_free_tx_ring_skbs.exit.i.for.body.i_crit_edge, %rtw_pci_napi_stop.exit
  %indvars.iv.i = phi i32 [ 0, %rtw_pci_napi_stop.exit ], [ %indvars.iv.next.i, %rtw_pci_free_tx_ring_skbs.exit.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %queue.i.i = getelementptr %struct.rtw_pci, ptr %priv, i32 0, i32 11, i32 %indvars.iv.i, i32 1
  %30 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %31, %queue.i.i
  br i1 %cmp.not16.i.i, label %for.body.i.rtw_pci_free_tx_ring_skbs.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.rtw_pci_free_tx_ring_skbs.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_tx_ring_skbs.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %qlen.i.i.i = getelementptr %struct.rtw_pci, ptr %priv, i32 0, i32 11, i32 %indvars.iv.i, i32 1, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %skb.017.i.i = phi ptr [ %31, %for.body.lr.ph.i.i ], [ %tmp1.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %skb.017.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp1.0.i.i = load ptr, ptr %skb.017.i.i, align 8
  %33 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %35 = load ptr, ptr %skb.017.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb.017.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %skb.017.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %37, ptr %prev17.i.i.i, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %35, ptr %37, align 8
  %status_driver_data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.017.i.i, i32 0, i32 3, i32 32
  %40 = ptrtoint ptr %status_driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status_driver_data.i.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.017.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %41, i32 noundef %43, i32 noundef 1, i32 noundef 0) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.017.i.i, i32 noundef 1) #6
  %cmp.not.i.i = icmp eq ptr %tmp1.0.i.i, %queue.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.rtw_pci_free_tx_ring_skbs.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.rtw_pci_free_tx_ring_skbs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_tx_ring_skbs.exit.i

rtw_pci_free_tx_ring_skbs.exit.i:                 ; preds = %for.body.i.i.rtw_pci_free_tx_ring_skbs.exit.i_crit_edge, %for.body.i.rtw_pci_free_tx_ring_skbs.exit.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %rtw_pci_dma_release.exit, label %rtw_pci_free_tx_ring_skbs.exit.i.for.body.i_crit_edge

rtw_pci_free_tx_ring_skbs.exit.i.for.body.i_crit_edge: ; preds = %rtw_pci_free_tx_ring_skbs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtw_pci_dma_release.exit:                         ; preds = %rtw_pci_free_tx_ring_skbs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_deep_ps(ptr noundef %rtwdev, i1 noundef zeroext %enter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %enter, label %land.lhs.true, label %land.lhs.true4.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %feature1.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %feature1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %feature1.i.i, align 4
  %and.i.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body.i, label %if.then.enter_deep_ps.i_crit_edge

if.then.enter_deep_ps.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %enter_deep_ps.i

do.body.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i.if.end36.i_crit_edge, label %land.rhs.i

do.body.i.if.end36.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 10
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end36.i_crit_edge, !prof !203

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 617, i32 noundef 9, ptr noundef null) #6
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end36.i_crit_edge, %do.body.i.if.end36.i_crit_edge
  %qlen.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool39.not.i = icmp eq i32 %7, 0
  br i1 %tobool39.not.i, label %if.end36.1.i, label %if.end36.i.if.then43.critedge.i_crit_edge

if.end36.i.if.then43.critedge.i_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.critedge.i

if.end36.1.i:                                     ; preds = %if.end36.i
  %qlen.i.1.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 1, i32 2, i32 8
  %8 = ptrtoint ptr %qlen.i.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool39.not.1.i = icmp eq i32 %9, 0
  br i1 %tobool39.not.1.i, label %if.end36.2.i, label %if.end36.1.i.if.then43.critedge.i_crit_edge

if.end36.1.i.if.then43.critedge.i_crit_edge:      ; preds = %if.end36.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.critedge.i

if.end36.2.i:                                     ; preds = %if.end36.1.i
  %qlen.i.2.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 2, i32 2, i32 8
  %10 = ptrtoint ptr %qlen.i.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool39.not.2.i = icmp eq i32 %11, 0
  br i1 %tobool39.not.2.i, label %if.end36.3.i, label %if.end36.2.i.if.then43.critedge.i_crit_edge

if.end36.2.i.if.then43.critedge.i_crit_edge:      ; preds = %if.end36.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.critedge.i

if.end36.3.i:                                     ; preds = %if.end36.2.i
  %qlen.i.3.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %qlen.i.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool39.not.3.i = icmp eq i32 %13, 0
  br i1 %tobool39.not.3.i, label %if.end36.5.i, label %if.end36.3.i.if.then43.critedge.i_crit_edge

if.end36.3.i.if.then43.critedge.i_crit_edge:      ; preds = %if.end36.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.critedge.i

if.end36.5.i:                                     ; preds = %if.end36.3.i
  %qlen.i.5.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 2, i32 2, i32 8
  %14 = ptrtoint ptr %qlen.i.5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool39.not.5.i = icmp eq i32 %15, 0
  br i1 %tobool39.not.5.i, label %if.end36.6.i, label %if.end36.5.i.if.then43.critedge.i_crit_edge

if.end36.5.i.if.then43.critedge.i_crit_edge:      ; preds = %if.end36.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.critedge.i

if.end36.6.i:                                     ; preds = %if.end36.5.i
  %qlen.i.6.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %qlen.i.6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not.6.i = icmp eq i32 %17, 0
  br i1 %tobool39.not.6.i, label %if.end36.6.i.enter_deep_ps.i_crit_edge, label %if.end36.6.i.if.then43.critedge.i_crit_edge

if.end36.6.i.if.then43.critedge.i_crit_edge:      ; preds = %if.end36.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.critedge.i

if.end36.6.i.enter_deep_ps.i_crit_edge:           ; preds = %if.end36.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %enter_deep_ps.i

if.then43.critedge.i:                             ; preds = %if.end36.6.i.if.then43.critedge.i_crit_edge, %if.end36.5.i.if.then43.critedge.i_crit_edge, %if.end36.3.i.if.then43.critedge.i_crit_edge, %if.end36.2.i.if.then43.critedge.i_crit_edge, %if.end36.1.i.if.then43.critedge.i_crit_edge, %if.end36.i.if.then43.critedge.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.27) #6
  br label %if.end10

enter_deep_ps.i:                                  ; preds = %if.end36.6.i.enter_deep_ps.i_crit_edge, %if.then.enter_deep_ps.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #6
  tail call void @rtw_power_mode_change(ptr noundef %rtwdev, i1 noundef zeroext true) #6
  br label %if.end10

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %tobool2.not, label %land.lhs.true4.critedge.if.end10_crit_edge, label %if.then9

land.lhs.true4.critedge.if.end10_crit_edge:       ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true4.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i21 = icmp eq i32 %18, 0
  br i1 %tobool.not.i21, label %if.then9.if.end.i_crit_edge, label %land.rhs.i25

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i25:                                     ; preds = %if.then9
  %dep_map.i22 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 10
  %call.i.i23 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i22, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %cmp.not.i24 = icmp eq i32 %call.i.i23, 0
  br i1 %cmp.not.i24, label %do.end.i26, label %land.rhs.i25.if.end.i_crit_edge, !prof !203

land.rhs.i25.if.end.i_crit_edge:                  ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i26:                                       ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 651, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i26, %land.rhs.i25.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge
  %call25.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end10_crit_edge, label %if.then27.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_power_mode_change(ptr noundef %rtwdev, i1 noundef zeroext false) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then27.i, %if.end.i.if.end10_crit_edge, %land.lhs.true4.critedge.if.end10_crit_edge, %enter_deep_ps.i, %if.then43.critedge.i, %land.lhs.true.if.end10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_link_ps(ptr noundef %rtwdev, i1 noundef zeroext %enter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %link_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 0, i32 5, i32 39
  %0 = ptrtoint ptr %link_ctrl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %link_ctrl, align 8
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_usage = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 0, i32 5, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_usage, i32 noundef 4) #6
  br i1 %enter, label %land.lhs.true, label %land.lhs.true5.critedge

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %link_usage to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %link_usage, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %land.lhs.true
  %c.0.i.i = phi i32 [ %4, %land.lhs.true ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  %sub.i.i = add i32 %c.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.cleanup_crit_edge, label %do.cond3.i.i, !prof !203

do.body1.i.i.cleanup_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %link_usage, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %link_usage, ptr %link_usage, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %link_usage) #6, !srcloc !206
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !207
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %atomic_dec_if_positive.exit, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !201

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i

atomic_dec_if_positive.exit:                      ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp = icmp eq i32 %sub.i.i, 0
  br i1 %cmp, label %atomic_dec_if_positive.exit.if.then10_crit_edge, label %atomic_dec_if_positive.exit.cleanup_crit_edge

atomic_dec_if_positive.exit.cleanup_crit_edge:    ; preds = %atomic_dec_if_positive.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

atomic_dec_if_positive.exit.if.then10_crit_edge:  ; preds = %atomic_dec_if_positive.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

land.lhs.true5.critedge:                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %link_usage, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %link_usage, ptr %link_usage, i32 1, ptr elementtype(i32) %link_usage) #6, !srcloc !209
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp8 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp8, label %land.lhs.true5.critedge.if.then10_crit_edge, label %land.lhs.true5.critedge.cleanup_crit_edge

land.lhs.true5.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true5.critedge.if.then10_crit_edge:      ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %land.lhs.true5.critedge.if.then10_crit_edge, %atomic_dec_if_positive.exit.if.then10_crit_edge
  %7 = load i8, ptr @rtw_pci_disable_aspm, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 1008, i16 noundef zeroext 1816) #6
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1010, i8 noundef zeroext 2) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i
  %cnt.06.i.i = phi i8 [ 0, %if.end.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %19(ptr noundef %rtwdev, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp5.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %cmp5.i.i, label %if.end3.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #6
  %inc.i.i = add nuw nsw i8 %cnt.06.i.i, 1
  %cmp.i.i19 = icmp ult i8 %cnt.06.i.i, 19
  br i1 %cmp.i.i19, label %if.end.i.i.for.body.i.i_crit_edge, label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1308, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef 1817) #6
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef -5) #9
  br label %cleanup

if.end3.i:                                        ; preds = %for.body.i.i
  %23 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i4.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %read8.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8.i4.i.i, align 4
  %call.i5.i.i = tail call zeroext i8 %26(ptr noundef %rtwdev, i32 noundef 1005) #6
  %27 = and i8 %call.i5.i.i, -9
  %masksel.i = select i1 %enter, i8 8, i8 0
  %storemerge.i = or i8 %27, %masksel.i
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i15.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %write8.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8.i.i15.i, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 1001, i8 noundef zeroext %storemerge.i) #6
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %write16.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i16.i, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 1008, i16 noundef zeroext 10008) #6
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i55.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %write8.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8.i55.i.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 1010, i8 noundef zeroext 1) #6
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %if.end.i22.i.for.body.i19.i_crit_edge, %if.end3.i
  %cnt.057.i.i = phi i8 [ 0, %if.end3.i ], [ %inc.i20.i, %if.end.i22.i.for.body.i19.i_crit_edge ]
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i17.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %read8.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read8.i.i17.i, align 4
  %call.i.i18.i = tail call zeroext i8 %43(ptr noundef %rtwdev, i32 noundef 1010) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i18.i)
  %cmp15.i.i = icmp eq i8 %call.i.i18.i, 0
  br i1 %cmp15.i.i, label %for.body.i19.i.cleanup_crit_edge, label %if.end.i22.i

for.body.i19.i.cleanup_crit_edge:                 ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i22.i:                                     ; preds = %for.body.i19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #6
  %inc.i20.i = add nuw nsw i8 %cnt.057.i.i, 1
  %cmp.i21.i = icmp ult i8 %cnt.057.i.i, 19
  br i1 %cmp.i21.i, label %if.end.i22.i.for.body.i19.i_crit_edge, label %do.end.i23.i

if.end.i22.i.for.body.i19.i_crit_edge:            ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19.i

do.end.i23.i:                                     ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef 1817) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i23.i, %for.body.i19.i.cleanup_crit_edge, %do.end.i, %if.then10.cleanup_crit_edge, %land.lhs.true5.critedge.cleanup_crit_edge, %atomic_dec_if_positive.exit.cleanup_crit_edge, %do.body1.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_interface_cfg(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %id = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cond = icmp eq i8 %3, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %cut_version = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %cut_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cut_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %rtwdev, i32 noundef 1020) #6
  %or.i = or i32 %call.i.i, 67108864
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 1020, i32 noundef %or.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_write_data_rsvd_page(ptr noundef %rtwdev, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %pkt_info = alloca %struct.rtw_tx_pkt_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pkt_info) #6
  %0 = call ptr @memset(ptr %pkt_info, i32 0, i32 36)
  %call = call ptr @rtw_tx_write_data_rsvd_page_get(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info, ptr noundef %buf, i32 noundef %size) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @rtw_pci_tx_write_data(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info, ptr noundef nonnull %call, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %3 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read8.i, align 4
  %call.i = call zeroext i8 %6(ptr noundef %rtwdev, i32 noundef 899) #6
  %7 = or i8 %call.i, 16
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8.i, align 4
  call void %11(ptr noundef %rtwdev, i32 noundef 899, i8 noundef zeroext %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_write_data_h2c(ptr noundef %rtwdev, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %pkt_info = alloca %struct.rtw_tx_pkt_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pkt_info) #6
  %0 = call ptr @memset(ptr %pkt_info, i32 0, i32 36)
  %call = call ptr @rtw_tx_write_data_h2c_get(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info, ptr noundef %buf, i32 noundef %size) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @rtw_pci_tx_write_data(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info, ptr noundef nonnull %call, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext 7)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rtw_pci_read8(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmap, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @rtw_pci_read16(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmap, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !213
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_read32(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmap, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !215
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_write8(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %mmap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmap, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !218
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_write16(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %mmap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %1 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmap, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #6, !srcloc !220
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_pci_write32(ptr nocapture noundef readonly %rtwdev, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %mmap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 25, i32 4, i32 1, i32 0, i32 6
  %1 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmap, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !222
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_pci_tx_write_data(ptr noundef %rtwdev, ptr noundef %pkt_info, ptr noundef %skb, i8 noundef zeroext %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 45
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %tx_pkt_desc_sz2 = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_pkt_desc_sz2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_pkt_desc_sz2, align 4
  %conv = zext i8 %3 to i32
  %tx_buf_desc_sz3 = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tx_buf_desc_sz3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_buf_desc_sz3, align 1
  %conv4 = zext i8 %5 to i32
  %tx_rings = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 4
  %idxprom = zext i8 %queue to i32
  %arrayidx = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %queue)
  %cmp = icmp eq i8 %queue, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue.i = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom, i32 1
  %call.i = tail call ptr @skb_dequeue(ptr noundef %queue.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end11.thread_crit_edge, label %if.end.i

if.then.if.end11.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %status_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 32
  %8 = ptrtoint ptr %status_driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_driver_data.i.i, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef %13, i32 noundef 1, i32 noundef 0) #6
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #6
  br label %if.end11.thread

if.else:                                          ; preds = %entry
  %wp = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 4
  %14 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wp, align 4
  %rp = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 5
  %16 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rp, align 4
  %len9 = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i = icmp ugt i32 %17, %15
  %20 = xor i32 %15, -1
  %sub1.i = add i32 %17, %20
  %sub3.i = select i1 %cmp.i, i32 0, i32 %19
  %retval.0.i = sub i32 0, %sub3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %sub1.i, %retval.0.i
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.thread:                                  ; preds = %if.end.i, %if.then.if.end11.thread_crit_edge
  %21 = ptrtoint ptr %tx_pkt_desc_sz2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_pkt_desc_sz2, align 4
  %conv13127 = zext i8 %22 to i32
  %call14128 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv13127) #6
  %23 = call ptr @memset(ptr %call14128, i32 0, i32 %conv)
  br label %rtw_pci_get_tx_qsel.exit

if.end11:                                         ; preds = %if.else
  %24 = ptrtoint ptr %tx_pkt_desc_sz2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_pkt_desc_sz2, align 4
  %conv13 = zext i8 %25 to i32
  %call14 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv13) #6
  %26 = call ptr @memset(ptr %call14, i32 0, i32 %conv)
  %switch.tableidx = add i8 %queue, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %27 = icmp ult i8 %switch.tableidx, 3
  br i1 %27, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %28 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %priority.i, align 4
  %conv4.i = trunc i32 %29 to i8
  br label %rtw_pci_get_tx_qsel.exit

switch.lookup:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 1249554, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %rtw_pci_get_tx_qsel.exit

rtw_pci_get_tx_qsel.exit:                         ; preds = %switch.lookup, %sw.default.i, %if.end11.thread
  %retval.0.i122 = phi i8 [ %conv4.i, %sw.default.i ], [ 16, %if.end11.thread ], [ %switch.masked, %switch.lookup ]
  %qsel = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 6
  %30 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.i122, ptr %qsel, align 1
  tail call void @rtw_tx_fill_tx_desc(ptr noundef %pkt_info, ptr noundef %skb) #6
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %call.i123 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #6
  br i1 %call.i123, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %rtw_pci_get_tx_qsel.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !201

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %rtw_pci_get_tx_qsel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %34, i32 noundef %36) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %34 to i32
  %sub.i = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %41, i32 %shr.i
  %and.i = and i32 %42, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %36, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i124 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 128
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev19, i32 noundef %retval.0.i124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i124)
  %cmp.i125 = icmp eq i32 %retval.0.i124, -1
  br i1 %cmp.i125, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end23

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %dma_map_single_attrs.exit
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %wp.i = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 4
  %47 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wp.i, align 4
  %mul.i = mul i32 %48, %conv4
  %add.ptr.i126 = getelementptr i8, ptr %46, i32 %mul.i
  %49 = call ptr @memset(ptr %add.ptr.i126, i32 0, i32 %conv4)
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %sub = add i32 %51, -1
  %div121 = lshr i32 %sub, 7
  %add = add nuw nsw i32 %div121, 1
  %or = or i32 %add, 32768
  %spec.select = select i1 %cmp, i32 %or, i32 %add
  %conv31 = trunc i32 %spec.select to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv31)
  %psb_len33 = getelementptr inbounds %struct.rtw_pci_tx_buffer_desc, ptr %add.ptr.i126, i32 0, i32 1
  %53 = ptrtoint ptr %psb_len33 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %psb_len33, align 2
  %conv34 = zext i8 %3 to i16
  %54 = shl nuw i16 %conv34, 8
  %55 = ptrtoint ptr %add.ptr.i126 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %add.ptr.i126, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i124)
  %dma37 = getelementptr inbounds %struct.rtw_pci_tx_buffer_desc, ptr %add.ptr.i126, i32 0, i32 2
  %57 = ptrtoint ptr %dma37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dma37, align 4
  %conv38 = trunc i32 %7 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv38)
  %arrayidx39 = getelementptr %struct.rtw_pci_tx_buffer_desc, ptr %add.ptr.i126, i32 1
  %59 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx39, align 4
  %add41 = add i32 %retval.0.i124, %conv
  %60 = tail call i32 @llvm.bswap.i32(i32 %add41)
  %dma43 = getelementptr %struct.rtw_pci_tx_buffer_desc, ptr %add.ptr.i126, i32 1, i32 2
  %61 = ptrtoint ptr %dma43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dma43, align 4
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %62 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i124, ptr %status_driver_data.i, align 4
  %sn = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 9
  %63 = ptrtoint ptr %sn to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sn, align 4
  %sn46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %65 = ptrtoint ptr %sn46 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sn46, align 4
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %queue47 = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom, i32 1
  tail call void @skb_queue_tail(ptr noundef %queue47, ptr noundef %skb) #6
  br i1 %cmp, label %if.end23.out_unlock_crit_edge, label %if.end52

if.end23.out_unlock_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end52:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %tx_queued = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7
  tail call void @_set_bit(i32 noundef %idxprom, ptr noundef %tx_queued) #6
  %66 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wp.i, align 4
  %inc = add i32 %67, 1
  %len58 = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 3
  %68 = ptrtoint ptr %len58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %69)
  %cmp59.not = icmp ult i32 %inc, %69
  %spec.store.select = select i1 %cmp59.not, i32 %inc, i32 0
  %70 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select, ptr %wp.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end52, %if.end23.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_unlock ], [ -28, %if.else.cleanup_crit_edge ], [ -16, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_tx_fill_tx_desc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_pci_tx_kick_off_queue(ptr noundef %rtwdev, i8 noundef zeroext %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %queue to i32
  %arrayidx2 = getelementptr [8 x i32], ptr @rtw_pci_tx_queue_idx_addr, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 10
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !203

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 651, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %call25.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end_crit_edge, label %if.then27.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_power_mode_change(ptr noundef %rtwdev, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then27.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_rings = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 4
  %wp = getelementptr [8 x %struct.rtw_pci_tx_ring], ptr %tx_rings, i32 0, i32 %idxprom, i32 0, i32 4
  %5 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wp, align 4
  %7 = trunc i32 %6 to i16
  %conv = and i16 %7, 4095
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef %1, i16 noundef zeroext %conv) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_power_mode_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_pci_reset_trx_ring(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 771) #6
  %4 = or i8 %call.i.i, -9
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 771, i8 noundef zeroext %4) #6
  %dma2.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 1, i32 0, i32 8
  %9 = ptrtoint ptr %dma2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma2.i, align 4
  %11 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i.i, align 4
  tail call void %14(ptr noundef %rtwdev, i32 noundef 776, i32 noundef %10) #6
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %15 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 1
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len7.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len7.i, align 4
  %dma11.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 1, i32 0, i32 8
  %21 = ptrtoint ptr %dma11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma11.i, align 4
  %rp.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 1, i32 1, i32 10
  %23 = ptrtoint ptr %rp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rp.i, align 4
  %wp.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 1, i32 1, i32 6
  %24 = ptrtoint ptr %wp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %wp.i, align 4
  %25 = trunc i32 %20 to i16
  %conv18.i = and i16 %25, 4095
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 4904, i16 noundef zeroext %conv18.i) #6
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %write32.i221.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %write32.i221.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i221.i, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 4896, i32 noundef %22) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %len22.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %len22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len22.i, align 4
  %dma26.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 0, i32 8
  %36 = ptrtoint ptr %dma26.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma26.i, align 4
  %rp30.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 1, i32 10
  %38 = ptrtoint ptr %rp30.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %rp30.i, align 4
  %wp34.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 0, i32 1, i32 6
  %39 = ptrtoint ptr %wp34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wp34.i, align 8
  %40 = trunc i32 %35 to i16
  %conv36.i = and i16 %40, 4095
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %write16.i223.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %write16.i223.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16.i223.i, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef 906, i16 noundef zeroext %conv36.i) #6
  %45 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i, align 8
  %write32.i225.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %write32.i225.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i225.i, align 4
  tail call void %48(ptr noundef %rtwdev, i32 noundef 816, i32 noundef %37) #6
  %len40.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 1, i32 1, i32 2
  %49 = ptrtoint ptr %len40.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len40.i, align 4
  %dma44.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 1, i32 0, i32 8
  %51 = ptrtoint ptr %dma44.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma44.i, align 4
  %rp48.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 1, i32 1, i32 10
  %53 = ptrtoint ptr %rp48.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rp48.i, align 4
  %wp52.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 1, i32 1, i32 6
  %54 = ptrtoint ptr %wp52.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %wp52.i, align 4
  %55 = trunc i32 %50 to i16
  %conv54.i = and i16 %55, 4095
  %56 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i, align 8
  %write16.i227.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %write16.i227.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write16.i227.i, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 904, i16 noundef zeroext %conv54.i) #6
  %60 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i, align 8
  %write32.i229.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %write32.i229.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i229.i, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 808, i32 noundef %52) #6
  %len58.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %len58.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len58.i, align 4
  %dma62.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 0, i32 0, i32 8
  %66 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma62.i, align 4
  %rp66.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 0, i32 1, i32 10
  %68 = ptrtoint ptr %rp66.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %rp66.i, align 4
  %wp70.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 0, i32 1, i32 6
  %69 = ptrtoint ptr %wp70.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %wp70.i, align 4
  %70 = trunc i32 %65 to i16
  %conv72.i = and i16 %70, 4095
  %71 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i, align 8
  %write16.i231.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %write16.i231.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16.i231.i, align 4
  tail call void %74(ptr noundef %rtwdev, i32 noundef 900, i16 noundef zeroext %conv72.i) #6
  %75 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i, align 8
  %write32.i233.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %write32.i233.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i233.i, align 4
  tail call void %78(ptr noundef %rtwdev, i32 noundef 792, i32 noundef %67) #6
  %len76.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 2, i32 1, i32 2
  %79 = ptrtoint ptr %len76.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len76.i, align 4
  %dma80.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 2, i32 0, i32 8
  %81 = ptrtoint ptr %dma80.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma80.i, align 4
  %rp84.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 2, i32 1, i32 10
  %83 = ptrtoint ptr %rp84.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %rp84.i, align 4
  %wp88.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 7, i32 2, i32 1, i32 6
  %84 = ptrtoint ptr %wp88.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %wp88.i, align 8
  %85 = trunc i32 %80 to i16
  %conv90.i = and i16 %85, 4095
  %86 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i, align 8
  %write16.i235.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %write16.i235.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write16.i235.i, align 4
  tail call void %89(ptr noundef %rtwdev, i32 noundef 902, i16 noundef zeroext %conv90.i) #6
  %90 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i, align 8
  %write32.i237.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %write32.i237.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i237.i, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 800, i32 noundef %82) #6
  %len94.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 2, i32 1, i32 2
  %94 = ptrtoint ptr %len94.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len94.i, align 4
  %dma98.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 2, i32 0, i32 8
  %96 = ptrtoint ptr %dma98.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma98.i, align 4
  %rp102.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 2, i32 1, i32 10
  %98 = ptrtoint ptr %rp102.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %rp102.i, align 4
  %wp106.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 8, i32 2, i32 1, i32 6
  %99 = ptrtoint ptr %wp106.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %wp106.i, align 4
  %100 = trunc i32 %95 to i16
  %conv108.i = and i16 %100, 4095
  %101 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i, align 8
  %write16.i239.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %102, i32 0, i32 15
  %103 = ptrtoint ptr %write16.i239.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write16.i239.i, align 4
  tail call void %104(ptr noundef %rtwdev, i32 noundef 896, i16 noundef zeroext %conv108.i) #6
  %105 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i, align 8
  %write32.i241.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %106, i32 0, i32 16
  %107 = ptrtoint ptr %write32.i241.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32.i241.i, align 4
  tail call void %108(ptr noundef %rtwdev, i32 noundef 784, i32 noundef %97) #6
  %len112.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 0, i32 1, i32 2
  %109 = ptrtoint ptr %len112.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len112.i, align 4
  %dma116.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 0, i32 0, i32 8
  %111 = ptrtoint ptr %dma116.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma116.i, align 4
  %rp120.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 0, i32 1, i32 10
  %113 = ptrtoint ptr %rp120.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %rp120.i, align 4
  %wp124.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 0, i32 1, i32 6
  %114 = ptrtoint ptr %wp124.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %wp124.i, align 8
  %115 = trunc i32 %110 to i16
  %conv126.i = and i16 %115, 4095
  %116 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i, align 8
  %write16.i243.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 15
  %118 = ptrtoint ptr %write16.i243.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write16.i243.i, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef 908, i16 noundef zeroext %conv126.i) #6
  %120 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hci.i.i, align 8
  %write32.i245.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %121, i32 0, i32 16
  %122 = ptrtoint ptr %write32.i245.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i245.i, align 4
  tail call void %123(ptr noundef %rtwdev, i32 noundef 832, i32 noundef %112) #6
  %len129.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 2
  %124 = ptrtoint ptr %len129.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len129.i, align 4
  %dma133.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 0, i32 8
  %126 = ptrtoint ptr %dma133.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma133.i, align 4
  %rp137.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 10
  %128 = ptrtoint ptr %rp137.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %rp137.i, align 4
  %wp141.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 1, i32 5, i32 24, i32 9, i32 2, i32 1, i32 6
  %129 = ptrtoint ptr %wp141.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %wp141.i, align 8
  %130 = trunc i32 %125 to i16
  %conv143.i = and i16 %130, 4095
  %131 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i, align 8
  %write16.i247.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 15
  %133 = ptrtoint ptr %write16.i247.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write16.i247.i, align 4
  tail call void %134(ptr noundef %rtwdev, i32 noundef 898, i16 noundef zeroext %conv143.i) #6
  %135 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i, align 8
  %write32.i249.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %136, i32 0, i32 16
  %137 = ptrtoint ptr %write32.i249.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write32.i249.i, align 4
  tail call void %138(ptr noundef %rtwdev, i32 noundef 824, i32 noundef %127) #6
  %139 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i, align 8
  %write32.i251.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %140, i32 0, i32 16
  %141 = ptrtoint ptr %write32.i251.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i251.i, align 4
  tail call void %142(ptr noundef %rtwdev, i32 noundef 924, i32 noundef -1) #6
  %143 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i253.i = getelementptr inbounds %struct.rtw_chip_info, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %wlan_cpu.i253.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %wlan_cpu.i253.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp.i254.i = icmp eq i32 %146, 0
  br i1 %cmp.i254.i, label %if.then145.i, label %if.end.i.rtw_pci_reset_buf_desc.exit_crit_edge

if.end.i.rtw_pci_reset_buf_desc.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_reset_buf_desc.exit

if.then145.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %148, i32 0, i32 13
  %149 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %150(ptr noundef %rtwdev, i32 noundef 4912) #6
  %or.i.i = or i32 %call.i.i.i, 65792
  %151 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %152, i32 0, i32 16
  %153 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %154(ptr noundef %rtwdev, i32 noundef 4912, i32 noundef %or.i.i) #6
  br label %rtw_pci_reset_buf_desc.exit

rtw_pci_reset_buf_desc.exit:                      ; preds = %if.then145.i, %if.end.i.rtw_pci_reset_buf_desc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_tx_write_data_rsvd_page_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_tx_write_data_h2c_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_pci_free_tx_ring(ptr nocapture noundef readonly %rtwdev, ptr noundef %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %len3 = getelementptr inbounds %struct.rtw_pci_ring, ptr %tx_ring, i32 0, i32 3
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len3, align 4
  %desc_size = getelementptr inbounds %struct.rtw_pci_ring, ptr %tx_ring, i32 0, i32 2
  %6 = ptrtoint ptr %desc_size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %desc_size, align 4
  %queue.i = getelementptr inbounds %struct.rtw_pci_tx_ring, ptr %tx_ring, i32 0, i32 1
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue.i, align 4
  %cmp.not16.i = icmp eq ptr %9, %queue.i
  br i1 %cmp.not16.i, label %entry.rtw_pci_free_tx_ring_skbs.exit_crit_edge, label %for.body.lr.ph.i

entry.rtw_pci_free_tx_ring_skbs.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_tx_ring_skbs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.rtw_pci_tx_ring, ptr %tx_ring, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.017.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %tmp1.0.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %skb.017.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp1.0.i = load ptr, ptr %skb.017.i, align 8
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %13 = load ptr, ptr %skb.017.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %skb.017.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.017.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %prev17.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %15, align 8
  %status_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.017.i, i32 0, i32 3, i32 32
  %18 = ptrtoint ptr %status_driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status_driver_data.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.017.i, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.017.i, i32 noundef 1) #6
  %cmp.not.i = icmp eq ptr %tmp1.0.i, %queue.i
  br i1 %cmp.not.i, label %for.body.i.rtw_pci_free_tx_ring_skbs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.rtw_pci_free_tx_ring_skbs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_free_tx_ring_skbs.exit

rtw_pci_free_tx_ring_skbs.exit:                   ; preds = %for.body.i.rtw_pci_free_tx_ring_skbs.exit_crit_edge, %entry.rtw_pci_free_tx_ring_skbs.exit_crit_edge
  %conv = zext i8 %7 to i32
  %mul = mul i32 %5, %conv
  %dma = getelementptr inbounds %struct.rtw_pci_ring, ptr %tx_ring, i32 0, i32 1
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %mul, ptr noundef %3, i32 noundef %23, i32 noundef 0) #6
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tx_ring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %pkt_stat.i = alloca %struct.rtw_rx_pkt_stat, align 4
  %rx_status.i = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -2432
  %add.ptr3 = getelementptr i8, ptr %napi, i32 -22300
  %rx_no_aspm = getelementptr i8, ptr %napi, i32 5056
  %0 = ptrtoint ptr %rx_no_aspm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_no_aspm, align 64, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_pci_link_ps(ptr noundef %add.ptr3, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip1.i = getelementptr i8, ptr %napi, i32 -22264
  %rx_rings.i = getelementptr i8, ptr %napi, i32 904
  %rp.i = getelementptr i8, ptr %napi, i32 924
  %hci.i.i.i = getelementptr i8, ptr %napi, i32 -22292
  %wp.i.i = getelementptr i8, ptr %napi, i32 920
  %len.i.i = getelementptr i8, ptr %napi, i32 916
  %rx_tag.i.i = getelementptr i8, ptr %napi, i32 224
  %dev.i.i = getelementptr i8, ptr %napi, i32 -22296
  %drv_info_sz.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat.i, i32 0, i32 8
  %shift.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat.i, i32 0, i32 9
  %pkt_len.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat.i, i32 0, i32 6
  %is_c2h.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat.i, i32 0, i32 4
  %vif.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat.i, i32 0, i32 24
  br label %while.cond

while.cond:                                       ; preds = %rtw_pci_rx_napi.exit.while.cond_crit_edge, %if.end
  %work_done.0 = phi i32 [ 0, %if.end ], [ %add, %rtw_pci_rx_napi.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %cmp = icmp slt i32 %work_done.0, %budget
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %budget, %work_done.0
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pkt_stat.i) #6
  %4 = call ptr @memset(ptr %pkt_stat.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status.i) #6
  %5 = call ptr @memset(ptr %rx_status.i, i32 255, i32 48)
  %6 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rp.i, align 4
  %rx_pkt_desc_sz.i = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %rx_pkt_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_pkt_desc_sz.i, align 2
  %conv.i = zext i8 %9 to i32
  %rx_buf_desc_sz.i = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %rx_buf_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_buf_desc_sz.i, align 1
  %conv3.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = call i32 %15(ptr noundef %add.ptr3, i32 noundef 948) #6
  %and.i.i.i = lshr i32 %call.i.i.i, 16
  %div12.i.i.i = and i32 %and.i.i.i, 4095
  %16 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.i.i.i, i32 %17)
  %cmp.not.i.i = icmp ult i32 %div12.i.i.i, %17
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %div12.i.i.i, %17
  br label %rtw_pci_get_hw_rx_ring_nr.exit.i

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %sub7.neg.i.i = sub i32 %div12.i.i.i, %17
  %sub8.i.i = add i32 %sub7.neg.i.i, %19
  br label %rtw_pci_get_hw_rx_ring_nr.exit.i

rtw_pci_get_hw_rx_ring_nr.exit.i:                 ; preds = %if.else.i.i, %if.then.i.i
  %count.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub8.i.i, %if.else.i.i ]
  %20 = call i32 @llvm.umin.i32(i32 %count.0.i.i, i32 %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not8.i = icmp eq i32 %20, 0
  br i1 %tobool.not8.i, label %rtw_pci_get_hw_rx_ring_nr.exit.i.rtw_pci_rx_napi.exit_crit_edge, label %rtw_pci_get_hw_rx_ring_nr.exit.i.while.body.i_crit_edge

rtw_pci_get_hw_rx_ring_nr.exit.i.while.body.i_crit_edge: ; preds = %rtw_pci_get_hw_rx_ring_nr.exit.i
  br label %while.body.i

rtw_pci_get_hw_rx_ring_nr.exit.i.rtw_pci_rx_napi.exit_crit_edge: ; preds = %rtw_pci_get_hw_rx_ring_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_rx_napi.exit

while.body.i:                                     ; preds = %next_rp.i.while.body.i_crit_edge, %rtw_pci_get_hw_rx_ring_nr.exit.i.while.body.i_crit_edge
  %dec11.in.i = phi i32 [ %dec11.i, %next_rp.i.while.body.i_crit_edge ], [ %20, %rtw_pci_get_hw_rx_ring_nr.exit.i.while.body.i_crit_edge ]
  %rx_done.010.i = phi i32 [ %rx_done.1.i, %next_rp.i.while.body.i_crit_edge ], [ 0, %rtw_pci_get_hw_rx_ring_nr.exit.i.while.body.i_crit_edge ]
  %cur_rp.09.i = phi i32 [ %spec.store.select.i, %next_rp.i.while.body.i_crit_edge ], [ %7, %rtw_pci_get_hw_rx_ring_nr.exit.i.while.body.i_crit_edge ]
  %dec11.i = add i32 %dec11.in.i, -1
  %21 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip1.i, align 4
  %rx_buf_desc_sz.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %rx_buf_desc_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rx_buf_desc_sz.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_rings.i, align 4
  %mul.i.i = mul i32 %cur_rp.09.i, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %mul.i.i
  %total_pkt_size2.i.i = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, ptr %add.ptr.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %total_pkt_size2.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %total_pkt_size2.i.i, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28) #6
  %30 = ptrtoint ptr %rx_tag.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_tag.i.i, align 32
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp.not.i3.i = icmp eq i16 %29, %31
  br i1 %cmp.not.i3.i, label %while.body.i.rtw_pci_dma_check.exit.i_crit_edge, label %do.end.i.i

while.body.i.rtw_pci_dma_check.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_dma_check.exit.i

do.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.64) #9
  br label %rtw_pci_dma_check.exit.i

rtw_pci_dma_check.exit.i:                         ; preds = %do.end.i.i, %while.body.i.rtw_pci_dma_check.exit.i_crit_edge
  %34 = ptrtoint ptr %rx_tag.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_tag.i.i, align 32
  %36 = add i16 %35, 1
  %37 = and i16 %36, 8191
  store i16 %37, ptr %rx_tag.i.i, align 32
  %arrayidx5.i = getelementptr %struct.rtw_pci, ptr %add.ptr, i32 0, i32 12, i32 0, i32 1, i32 %cur_rp.09.i
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx5.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cb.i, align 8
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %43, i32 noundef %41, i32 noundef 11478, i32 noundef 2) #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %query_rx_desc.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %query_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %query_rx_desc.i, align 4
  call void %49(ptr noundef %add.ptr3, ptr noundef %45, ptr noundef nonnull %pkt_stat.i, ptr noundef nonnull %rx_status.i) #6
  %50 = ptrtoint ptr %drv_info_sz.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %drv_info_sz.i, align 1
  %conv6.i = zext i8 %51 to i32
  %add.i = add nuw nsw i32 %conv6.i, %conv.i
  %52 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shift.i, align 4
  %conv7.i = zext i8 %53 to i32
  %add8.i = add nuw nsw i32 %add.i, %conv7.i
  %54 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pkt_len.i, align 4
  %conv9.i = zext i16 %55 to i32
  %add10.i = add nuw nsw i32 %add8.i, %conv9.i
  %call.i.i4.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add10.i, i32 noundef 2592) #6
  %tobool12.not.i = icmp eq ptr %call.i.i4.i, null
  br i1 %tobool12.not.i, label %land.rhs.i, label %if.end53.critedge.i

land.rhs.i:                                       ; preds = %rtw_pci_dma_check.exit.i
  %.b1.i = load i1, ptr @rtw_pci_rx_napi.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.next_rp.i_crit_edge, label %if.then.i, !prof !201

land.rhs.i.next_rp.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_rp.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtw_pci_rx_napi.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1109, i32 noundef 9, ptr noundef nonnull @.str.63) #6
  br label %next_rp.i

if.end53.critedge.i:                              ; preds = %rtw_pci_dma_check.exit.i
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i4.i, i32 noundef %add10.i) #6
  %58 = call ptr @memcpy(ptr %call.i.i, ptr %57, i32 %add10.i)
  %59 = ptrtoint ptr %is_c2h.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_c2h.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool56.not.i = icmp eq i8 %60, 0
  br i1 %tobool56.not.i, label %if.else.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end53.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtw_fw_c2h_cmd_rx_irqsafe(ptr noundef %add.ptr3, i32 noundef %add8.i, ptr noundef nonnull %call.i.i4.i) #6
  br label %next_rp.i

if.else.i:                                        ; preds = %if.end53.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call58.i = call ptr @skb_pull(ptr noundef nonnull %call.i.i4.i, i32 noundef %add8.i) #6
  %61 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vif.i, align 4
  call void @rtw_rx_stats(ptr noundef %add.ptr3, ptr noundef %62, ptr noundef nonnull %call.i.i4.i) #6
  %cb59.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i4.i, i32 0, i32 3
  %63 = call ptr @memcpy(ptr %cb59.i, ptr %rx_status.i, i32 48)
  %64 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr3, align 8
  call void @ieee80211_rx_napi(ptr noundef %65, ptr noundef null, ptr noundef nonnull %call.i.i4.i, ptr noundef %napi) #6
  %inc.i = add i32 %rx_done.010.i, 1
  br label %next_rp.i

next_rp.i:                                        ; preds = %if.else.i, %if.then57.i, %if.then.i, %land.rhs.i.next_rp.i_crit_edge
  %rx_done.1.i = phi i32 [ %rx_done.010.i, %if.then57.i ], [ %inc.i, %if.else.i ], [ %rx_done.010.i, %if.then.i ], [ %rx_done.010.i, %land.rhs.i.next_rp.i_crit_edge ]
  %66 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %67, i32 noundef %41, i32 noundef 11478, i32 noundef 2) #6
  %68 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_rings.i, align 4
  %mul.i5.i = mul i32 %cur_rp.09.i, %conv3.i
  %add.ptr.i6.i = getelementptr i8, ptr %69, i32 %mul.i5.i
  %70 = ptrtoint ptr %add.ptr.i6.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 -3014034050617704448, ptr %add.ptr.i6.i, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %41) #6
  %dma2.i.i = getelementptr inbounds %struct.rtw_pci_rx_buffer_desc, ptr %add.ptr.i6.i, i32 0, i32 2
  %72 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dma2.i.i, align 4
  %inc62.i = add i32 %cur_rp.09.i, 1
  %73 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc62.i, i32 %74)
  %cmp64.not.i = icmp ult i32 %inc62.i, %74
  %spec.store.select.i = select i1 %cmp64.not.i, i32 %inc62.i, i32 0
  %tobool.not.i = icmp eq i32 %dec11.i, 0
  br i1 %tobool.not.i, label %next_rp.i.rtw_pci_rx_napi.exit_crit_edge, label %next_rp.i.while.body.i_crit_edge

next_rp.i.while.body.i_crit_edge:                 ; preds = %next_rp.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

next_rp.i.rtw_pci_rx_napi.exit_crit_edge:         ; preds = %next_rp.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_rx_napi.exit

rtw_pci_rx_napi.exit:                             ; preds = %next_rp.i.rtw_pci_rx_napi.exit_crit_edge, %rtw_pci_get_hw_rx_ring_nr.exit.i.rtw_pci_rx_napi.exit_crit_edge
  %cur_rp.0.lcssa.i = phi i32 [ %7, %rtw_pci_get_hw_rx_ring_nr.exit.i.rtw_pci_rx_napi.exit_crit_edge ], [ %spec.store.select.i, %next_rp.i.rtw_pci_rx_napi.exit_crit_edge ]
  %rx_done.0.lcssa.i = phi i32 [ 0, %rtw_pci_get_hw_rx_ring_nr.exit.i.rtw_pci_rx_napi.exit_crit_edge ], [ %rx_done.1.i, %next_rp.i.rtw_pci_rx_napi.exit_crit_edge ]
  %75 = ptrtoint ptr %rp.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cur_rp.0.lcssa.i, ptr %rp.i, align 4
  %76 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cur_rp.0.lcssa.i, ptr %wp.i.i, align 4
  %conv73.i = trunc i32 %cur_rp.0.lcssa.i to i16
  %77 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write16.i.i, align 4
  call void %80(ptr noundef %add.ptr3, i32 noundef 948, i16 noundef zeroext %conv73.i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pkt_stat.i) #6
  %cmp4 = icmp eq i32 %rx_done.0.lcssa.i, 0
  %add = add i32 %rx_done.0.lcssa.i, %work_done.0
  br i1 %cmp4, label %rtw_pci_rx_napi.exit.while.end_crit_edge, label %rtw_pci_rx_napi.exit.while.cond_crit_edge

rtw_pci_rx_napi.exit.while.cond_crit_edge:        ; preds = %rtw_pci_rx_napi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

rtw_pci_rx_napi.exit.while.end_crit_edge:         ; preds = %rtw_pci_rx_napi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %rtw_pci_rx_napi.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %work_done.2 = phi i32 [ %add, %rtw_pci_rx_napi.exit.while.end_crit_edge ], [ %work_done.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.2, i32 %budget)
  %cmp7 = icmp slt i32 %work_done.2, %budget
  br i1 %cmp7, label %if.then8, label %while.end.if.end18_crit_edge

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %while.end
  %call9 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.2) #6
  %irq_lock = getelementptr i8, ptr %napi, i32 -2384
  call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %running = getelementptr i8, ptr %napi, i32 -2323
  %81 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %running, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool10.not = icmp eq i8 %82, 0
  br i1 %tobool10.not, label %if.then8.if.end12_crit_edge, label %if.then11

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.then8
  %hwirq_lock.i = getelementptr i8, ptr %napi, i32 -2428
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %irq_mask.i = getelementptr i8, ptr %napi, i32 -2340
  %83 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq_mask.i, align 4
  %85 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %86, i32 0, i32 16
  %87 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i, align 4
  call void %88(ptr noundef %add.ptr3, i32 noundef 176, i32 noundef %84) #6
  %arrayidx6.i = getelementptr i8, ptr %napi, i32 -2336
  %89 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx6.i, align 4
  %91 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i20.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write32.i20.i, align 4
  call void %94(ptr noundef %add.ptr3, i32 noundef 184, i32 noundef %90) #6
  %95 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chip1.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i = icmp eq i32 %98, 0
  br i1 %cmp.i.i, label %if.then.i48, label %if.then11.rtw_pci_enable_interrupt.exit_crit_edge

if.then11.rtw_pci_enable_interrupt.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_enable_interrupt.exit

if.then.i48:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9.i = getelementptr i8, ptr %napi, i32 -2328
  %99 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx9.i, align 4
  %101 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i22.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %write32.i22.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write32.i22.i, align 4
  call void %104(ptr noundef %add.ptr3, i32 noundef 4280, i32 noundef %100) #6
  br label %rtw_pci_enable_interrupt.exit

rtw_pci_enable_interrupt.exit:                    ; preds = %if.then.i48, %if.then11.rtw_pci_enable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr i8, ptr %napi, i32 -2324
  %105 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %irq_enabled.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i) #6
  br label %if.end12

if.end12:                                         ; preds = %rtw_pci_enable_interrupt.exit, %if.then8.if.end12_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  %106 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %107, i32 0, i32 13
  %108 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read32.i.i, align 4
  %call.i.i50 = call i32 %109(ptr noundef %add.ptr3, i32 noundef 948) #6
  %and.i.i = lshr i32 %call.i.i50, 16
  %div12.i.i = and i32 %and.i.i, 4095
  %110 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %wp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.i.i, i32 %111)
  %cmp.not.i = icmp ult i32 %div12.i.i, %111
  br i1 %cmp.not.i, label %if.else.i53, label %if.then.i51

if.then.i51:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %div12.i.i, %111
  br label %rtw_pci_get_hw_rx_ring_nr.exit

if.else.i53:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i.i, align 4
  %sub7.neg.i = sub i32 %div12.i.i, %111
  %sub8.i = add i32 %sub7.neg.i, %113
  br label %rtw_pci_get_hw_rx_ring_nr.exit

rtw_pci_get_hw_rx_ring_nr.exit:                   ; preds = %if.else.i53, %if.then.i51
  %count.0.i = phi i32 [ %sub.i, %if.then.i51 ], [ %sub8.i, %if.else.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool15.not = icmp eq i32 %count.0.i, 0
  br i1 %tobool15.not, label %rtw_pci_get_hw_rx_ring_nr.exit.if.end18_crit_edge, label %if.then16

rtw_pci_get_hw_rx_ring_nr.exit.if.end18_crit_edge: ; preds = %rtw_pci_get_hw_rx_ring_nr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %rtw_pci_get_hw_rx_ring_nr.exit
  %call.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i54, label %if.then16.if.end18_crit_edge

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then.i54:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  call void @__napi_schedule(ptr noundef %napi) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then.i54, %if.then16.if.end18_crit_edge, %rtw_pci_get_hw_rx_ring_nr.exit.if.end18_crit_edge, %while.end.if.end18_crit_edge
  %114 = ptrtoint ptr %rx_no_aspm to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %rx_no_aspm, align 64, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool20.not = icmp eq i8 %115, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtw_pci_link_ps(ptr noundef %add.ptr3, i1 noundef zeroext true)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  ret i32 %work_done.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_c2h_cmd_rx_irqsafe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_rx_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_mdio_write(ptr noundef %rtwdev, i8 noundef zeroext %addr, i16 noundef zeroext %data, i1 noundef zeroext %g1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 1012, i16 noundef zeroext %data) #6
  %conv = zext i8 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %addr)
  %cmp = icmp ugt i8 %addr, 31
  %cond4 = select i1 %g1, i8 0, i8 2
  %conv5 = zext i1 %cmp to i8
  %add = or i8 %cond4, %conv5
  %and = and i8 %addr, 31
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1016, i8 noundef zeroext %and) #6
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write8.i53 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %write8.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8.i53, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 1019, i8 noundef zeroext %add) #6
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 1016) #6
  %or.i = or i32 %call.i.i, 32
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 1016, i32 noundef %or.i) #6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %cnt.057 = phi i8 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i.i55 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i55, align 4
  %call.i.i56 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 1016) #6
  %24 = and i32 %call.i.i56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp14 = icmp eq i32 %24, 0
  br i1 %cmp14, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #6
  %inc = add nuw nsw i8 %cnt.057, 1
  %cmp10 = icmp ult i8 %cnt.057, 19
  br i1 %cmp10, label %if.end.for.body_crit_edge, label %do.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1335, i32 noundef 9, ptr noundef nonnull @.str.66, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_interrupt_handler(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %irq_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 19, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_enabled.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.rtw_pci_disable_interrupt.exit_crit_edge, label %if.end.i

entry.rtw_pci_disable_interrupt.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_disable_interrupt.exit

if.end.i:                                         ; preds = %entry
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %dev, i32 noundef 176, i32 noundef 0) #6
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i17.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i17.i, align 4
  tail call void %9(ptr noundef %dev, i32 noundef 184, i32 noundef 0) #6
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write32.i19.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %write32.i19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i19.i, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 4280, i32 noundef 0) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %18 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_enabled.i, align 4
  br label %rtw_pci_disable_interrupt.exit

rtw_pci_disable_interrupt.exit:                   ; preds = %if.end7.i, %entry.rtw_pci_disable_interrupt.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i) #6
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_pci_interrupt_threadfn(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 0, i32 45
  %irq_lock = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #6
  %hwirq_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %dev, i32 noundef 180) #6
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i50.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i50.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i50.i, align 4
  %call.i51.i = tail call i32 %7(ptr noundef %dev, i32 noundef 188) #6
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read32.i53.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i53.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i53.i, align 4
  %call.i54.i = tail call i32 %15(ptr noundef %dev, i32 noundef 4284) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %.sink.i = phi i32 [ %call.i54.i, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  %irq_mask.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 19, i32 1, i32 1
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_mask.i, align 4
  %and.i = and i32 %17, %call.i.i
  %arrayidx15.i = getelementptr %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 19, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.i, align 4
  %and17.i = and i32 %19, %call.i51.i
  %arrayidx19.i = getelementptr %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 19, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19.i, align 4
  %and21.i = and i32 %21, %.sink.i
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i, align 4
  tail call void %25(ptr noundef %dev, i32 noundef 180, i32 noundef %and.i) #6
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i57.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i57.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i57.i, align 4
  tail call void %29(ptr noundef %dev, i32 noundef 188, i32 noundef %and17.i) #6
  %30 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i59.i = getelementptr inbounds %struct.rtw_chip_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %wlan_cpu.i59.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wlan_cpu.i59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i60.i = icmp eq i32 %33, 0
  br i1 %cmp.i60.i, label %if.then25.i, label %if.end.i.rtw_pci_irq_recognized.exit_crit_edge

if.end.i.rtw_pci_irq_recognized.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_irq_recognized.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i62.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %write32.i62.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i62.i, align 4
  tail call void %37(ptr noundef %dev, i32 noundef 4284, i32 noundef %and21.i) #6
  br label %rtw_pci_irq_recognized.exit

rtw_pci_irq_recognized.exit:                      ; preds = %if.then25.i, %if.end.i.rtw_pci_irq_recognized.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i) #6
  %and = and i32 %and.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rtw_pci_irq_recognized.exit.if.end_crit_edge, label %if.then

rtw_pci_irq_recognized.exit.if.end_crit_edge:     ; preds = %rtw_pci_irq_recognized.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %rtw_pci_irq_recognized.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 5)
  br label %if.end

if.end:                                           ; preds = %if.then, %rtw_pci_irq_recognized.exit.if.end_crit_edge
  %and3 = and i32 %and.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 6)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %and8 = and i32 %and.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %and13 = and i32 %and.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %and18 = and i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 3)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %and23 = and i32 %and.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end26_crit_edge, label %if.then25

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 2)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %and28 = and i32 %and21.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtw_pci_tx_isr(ptr noundef %dev, ptr noundef %priv, i8 noundef zeroext 7)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %and33 = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end36_crit_edge, label %if.then35

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end31
  %napi1.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 24, i32 6, i32 0, i32 1, i32 10
  %call.i.i71 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi1.i) #6
  br i1 %call.i.i71, label %if.then.i.i, label %if.then35.if.end36_crit_edge

if.then35.if.end36_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then.i.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi1.i) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then.i.i, %if.then35.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  %and38 = and i32 %and.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then42, !prof !201

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_fw_c2h_cmd_isr(ptr noundef %dev) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end36.if.end43_crit_edge
  %running = getelementptr inbounds %struct.rtw_pci, ptr %priv, i32 0, i32 5
  %38 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %running, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool44.not = icmp eq i8 %39, 0
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  %40 = xor i32 %and.i, -1
  %call2.i73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hwirq_lock.i) #6
  %41 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_mask.i, align 4
  %neg.i93 = or i32 %40, -2
  %and.i75 = and i32 %42, %neg.i93
  %43 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i77 = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %write32.i.i77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i.i77, align 4
  tail call void %46(ptr noundef %dev, i32 noundef 176, i32 noundef %and.i75) #6
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15.i, align 4
  %49 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i, align 8
  %write32.i20.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %write32.i20.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i20.i, align 4
  tail call void %52(ptr noundef %dev, i32 noundef 184, i32 noundef %48) #6
  %53 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i79 = getelementptr inbounds %struct.rtw_chip_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %wlan_cpu.i.i79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wlan_cpu.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i80 = icmp eq i32 %56, 0
  br i1 %cmp.i.i80, label %if.then.i81, label %if.then45.rtw_pci_enable_interrupt.exit_crit_edge

if.then45.rtw_pci_enable_interrupt.exit_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtw_pci_enable_interrupt.exit

if.then.i81:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx19.i, align 4
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %write32.i22.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %write32.i22.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i22.i, align 4
  tail call void %62(ptr noundef %dev, i32 noundef 4280, i32 noundef %58) #6
  br label %rtw_pci_enable_interrupt.exit

rtw_pci_enable_interrupt.exit:                    ; preds = %if.then.i81, %if.then45.rtw_pci_enable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %dev, i32 1, i32 5, i32 19, i32 1, i32 4, i32 1
  %63 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %irq_enabled.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hwirq_lock.i, i32 noundef %call2.i73) #6
  br label %if.end47

if.end47:                                         ; preds = %rtw_pci_enable_interrupt.exit, %if.end43.if.end47_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_pci_tx_isr(ptr noundef %rtwdev, ptr noundef %rtwpci, i8 noundef zeroext %hw_queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %idxprom = zext i8 %hw_queue to i32
  %arrayidx = getelementptr %struct.rtw_pci, ptr %rtwpci, i32 0, i32 11, i32 %idxprom
  %arrayidx3 = getelementptr [8 x i32], ptr @rtw_pci_tx_queue_idx_addr, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef %3) #6
  %shr = lshr i32 %call.i, 16
  %and = and i32 %shr, 4095
  %rp = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp.not = icmp ult i32 %and, %9
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %and, %9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 3
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub11.neg = sub i32 %and, %9
  %sub12 = add i32 %sub11.neg, %11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count.0 = phi i32 [ %sub, %if.then ], [ %sub12, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool.not110113 = icmp eq i32 %count.0, 0
  br i1 %tobool.not110113, label %if.end.while.end_crit_edge, label %while.body.lr.ph.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %queue = getelementptr %struct.rtw_pci, ptr %rtwpci, i32 0, i32 11, i32 %idxprom, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %hw_queue)
  %cmp23 = icmp eq i8 %hw_queue, 7
  %queue_stopped = getelementptr %struct.rtw_pci, ptr %rtwpci, i32 0, i32 11, i32 %idxprom, i32 2
  %wp = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 4
  %len31 = getelementptr inbounds %struct.rtw_pci_ring, ptr %arrayidx, i32 0, i32 3
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %dec109115.in = phi i32 [ %count.0, %while.body.lr.ph.lr.ph ], [ %dec111, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %rp_idx.0.ph114 = phi i32 [ %9, %while.body.lr.ph.lr.ph ], [ %spec.store.select, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then25.while.body_crit_edge, %while.body.lr.ph
  %dec111.in = phi i32 [ %dec109115.in, %while.body.lr.ph ], [ %dec111, %if.then25.while.body_crit_edge ]
  %dec111 = add i32 %dec111.in, -1
  %call13 = tail call ptr @skb_dequeue(ptr noundef %queue) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end18

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.75, i32 noundef %dec111, i32 noundef %idxprom, i32 noundef %call.i, i32 noundef %15, i32 noundef %and) #9
  br label %while.end

if.end18:                                         ; preds = %while.body
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 32
  %16 = ptrtoint ptr %rtwpci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtwpci, align 128
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status_driver_data.i, align 4
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 6
  %20 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev20, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #6
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end18
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call13, i32 noundef 1) #6
  %tobool.not = icmp eq i32 %dec111, 0
  br i1 %tobool.not, label %if.then25.while.end_crit_edge, label %if.then25.while.body_crit_edge

if.then25.while.body_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.then25.while.end_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end26:                                         ; preds = %if.end18
  %22 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %queue_stopped, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not = icmp eq i8 %23, 0
  br i1 %tobool27.not, label %if.end26.if.end39_crit_edge, label %land.lhs.true

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end26
  %24 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wp, align 4
  %26 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rp_idx.0.ph114, i32 %25)
  %cmp.i = icmp ugt i32 %rp_idx.0.ph114, %25
  %28 = xor i32 %25, -1
  %sub1.i = add i32 %rp_idx.0.ph114, %28
  %sub3.i = select i1 %cmp.i, i32 0, i32 %27
  %retval.0.i = add i32 %sub1.i, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp33 = icmp sgt i32 %retval.0.i, 4
  br i1 %cmp33, label %if.then35, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 10
  %29 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %queue_mapping.i, align 8
  %conv37 = zext i16 %30 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %1, i32 noundef %conv37) #6
  %31 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %queue_stopped, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %inc = add i32 %rp_idx.0.ph114, 1
  %32 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %33)
  %cmp42.not = icmp ult i32 %inc, %33
  %spec.store.select = select i1 %cmp42.not, i32 %inc, i32 0
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %tx_pkt_desc_sz = getelementptr inbounds %struct.rtw_chip_info, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %tx_pkt_desc_sz to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_pkt_desc_sz, align 4
  %conv46 = zext i8 %37 to i32
  %call47 = tail call ptr @skb_pull(ptr noundef nonnull %call13, i32 noundef %conv46) #6
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cb.i, align 8
  %and49 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %sn = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 36
  %40 = ptrtoint ptr %sn to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sn, align 4
  tail call void @rtw_tx_report_enqueue(ptr noundef %rtwdev, ptr noundef nonnull %call13, i8 noundef zeroext %41) #6
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end52, %if.then51
  %tobool.not110 = icmp eq i32 %dec111, 0
  br i1 %tobool.not110, label %while.cond.outer.backedge.while.end_crit_edge, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end52:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %and54 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %storemerge.v = select i1 %tobool55.not, i32 512, i32 -2147483648
  %storemerge = or i32 %storemerge.v, %39
  %42 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %cb.i, align 8
  %count.i = getelementptr %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 9
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 12
  %44 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 15
  %45 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 18
  %46 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 20
  %47 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %1, ptr noundef nonnull %call13) #6
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %while.cond.outer.backedge.while.end_crit_edge, %if.then25.while.end_crit_edge, %do.end, %if.end.while.end_crit_edge
  %48 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and, ptr %rp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_c2h_cmd_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_tx_report_enqueue(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !82, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !166, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__param_disable_msi, !1, !"__param_disable_msi", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_msitype421, !1, !"__UNIQUE_ID_disable_msitype421", i1 false, i1 false}
!3 = !{ptr @__param_disable_aspm, !4, !"__param_disable_aspm", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_disable_aspmtype422, !4, !"__UNIQUE_ID_disable_aspmtype422", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_disable_msi423, !7, !"__UNIQUE_ID_disable_msi423", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 20, i32 1}
!8 = !{ptr @__UNIQUE_ID_disable_aspm424, !9, !"__UNIQUE_ID_disable_aspm424", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 21, i32 1}
!10 = !{ptr @rtw_pm_ops, !11, !"rtw_pm_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1546, i32 1}
!12 = !{ptr @__ksymtab_rtw_pm_ops, !13, !"__ksymtab_rtw_pm_ops", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1547, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1730, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rtw_pci_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtw_pci_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1748, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1754, i32 3}
!26 = !{ptr @rtw_pci_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtw_pci_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1760, i32 3}
!30 = !{ptr @rtw_pci_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtw_pci_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1768, i32 3}
!34 = !{ptr @rtw_pci_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtw_pci_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1780, i32 3}
!38 = !{ptr @rtw_pci_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtw_pci_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_rtw_pci_probe, !41, !"__ksymtab_rtw_pci_probe", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1807, i32 1}
!42 = !{ptr @__ksymtab_rtw_pci_remove, !43, !"__ksymtab_rtw_pci_remove", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1830, i32 1}
!44 = !{ptr @__ksymtab_rtw_pci_shutdown, !45, !"__ksymtab_rtw_pci_shutdown", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1849, i32 1}
!46 = !{ptr @__UNIQUE_ID_author432, !47, !"__UNIQUE_ID_author432", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1851, i32 1}
!48 = !{ptr @__UNIQUE_ID_description433, !49, !"__UNIQUE_ID_description433", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1852, i32 1}
!50 = !{ptr @__UNIQUE_ID_file434, !51, !"__UNIQUE_ID_file434", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1853, i32 1}
!52 = !{ptr @__UNIQUE_ID_license435, !51, !"__UNIQUE_ID_license435", i1 false, i1 false}
!53 = !{ptr @rtw_disable_msi, !54, !"rtw_disable_msi", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 16, i32 13}
!55 = !{ptr @rtw_pci_disable_aspm, !56, !"rtw_pci_disable_aspm", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 17, i32 13}
!57 = !{ptr @__param_str_disable_msi, !1, !"__param_str_disable_msi", i1 false, i1 false}
!58 = !{ptr @__param_str_disable_aspm, !4, !"__param_str_disable_aspm", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1367, i32 3}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rtw_pci_clkreq_pad_low._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtw_pci_clkreq_pad_low._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1308, i32 2}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1285, i32 2}
!68 = !{ptr @rtw_pci_ops, !69, !"rtw_pci_ops", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1608, i32 27}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 692, i32 11}
!72 = !{ptr @ac_to_hwq, !73, !"ac_to_hwq", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 672, i32 11}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rtw_pci_tx_queue_idx_addr, !79, !"rtw_pci_tx_queue_idx_addr", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 23, i32 12}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 766, i32 3}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__pci_flush_queue._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @__pci_flush_queue._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 638, i32 3}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1389, i32 3}
!90 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rtw_pci_aspm_set._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rtw_pci_aspm_set._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtw88/hci.h", i32 236, i32 2}
!95 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 912, i32 3}
!98 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rtw_pci_write_data_rsvd_page._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rtw_pci_write_data_rsvd_page._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 936, i32 3}
!103 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rtw_pci_write_data_h2c._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rtw_pci_write_data_h2c._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1555, i32 3}
!108 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rtw_pci_claim._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rtw_pci_claim._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1583, i32 3}
!113 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rtw_pci_setup_resource._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rtw_pci_setup_resource._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1589, i32 3}
!118 = !{ptr @rtw_pci_setup_resource._entry.40, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @rtw_pci_setup_resource._entry_ptr.42, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1236, i32 34}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1238, i32 3}
!124 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @rtw_pci_io_mapping._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @rtw_pci_io_mapping._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1246, i32 3}
!129 = !{ptr @rtw_pci_io_mapping._entry.46, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rtw_pci_io_mapping._entry_ptr.48, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @rtw_pci_init.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 393, i32 2}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rtw_pci_init.__key.50, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 394, i32 2}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 193, i32 3}
!139 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @rtw_pci_init_tx_ring._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtw_pci_init_tx_ring._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 199, i32 3}
!144 = !{ptr @rtw_pci_init_tx_ring._entry.54, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rtw_pci_init_tx_ring._entry_ptr.56, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @skb_queue_head_init.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!148 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 272, i32 3}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @rtw_pci_init_rx_ring._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @rtw_pci_init_rx_ring._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 315, i32 2}
!156 = !{ptr @rtw_pci_init_rx_ring._entry.60, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @rtw_pci_init_rx_ring._entry_ptr.62, !155, !"_entry_ptr", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1109, i32 7}
!160 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 732, i32 3}
!163 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @rtw_pci_dma_check._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @rtw_pci_dma_check._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1335, i32 2}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1455, i32 3}
!170 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @rtw_pci_link_cfg._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @rtw_pci_link_cfg._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1348, i32 3}
!175 = !{ptr @rtw_pci_clkreq_set._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @rtw_pci_clkreq_set._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.70, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1639, i32 3}
!179 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @rtw_pci_request_irq._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @rtw_pci_request_irq._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.73, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 1648, i32 3}
!184 = !{ptr @rtw_pci_request_irq._entry.72, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @rtw_pci_request_irq._entry_ptr.74, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.75, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtw88/pci.c", i32 997, i32 4}
!188 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @rtw_pci_tx_isr._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @rtw_pci_tx_isr._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"auto-init"}
!201 = !{!"branch_weights", i32 2000, i32 1}
!202 = !{i8 0, i8 2}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!205 = !{i64 2148488402}
!206 = !{i64 871088, i64 871112, i64 871133, i64 871150, i64 871167}
!207 = !{i64 2148488628}
!208 = !{i64 2148471990}
!209 = !{i64 2148387275, i64 2148387307, i64 2148387336, i64 2148387370, i64 2148387401, i64 2148387424}
!210 = !{i64 2148472219}
!211 = !{i64 5026560}
!212 = !{i64 2158030537}
!213 = !{i64 5025942}
!214 = !{i64 2158031031}
!215 = !{i64 5026780}
!216 = !{i64 2158031525}
!217 = !{i64 2158031741}
!218 = !{i64 5026165}
!219 = !{i64 2158032012}
!220 = !{i64 5025742}
!221 = !{i64 2158032405}
!222 = !{i64 5026362}
